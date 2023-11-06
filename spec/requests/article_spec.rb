# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

json_data = {
  data: [
    {
      id: 1,
      type: 'articles',
      attributes: {
        title: 'test title',
        content: 'test content',
        slug: 'test slug'
      }
    }
  ]
}

RSpec.describe Article, type: :request do
  # let (:article) { create(:article)}
  it '/index' do
    create :article
    get '/articles'
    # expect(response).to have_http_status(:ok)
    # expect(response.status).to eq(200)
    # expect(json_data.length).to eq(1)
    data = JSON.parse(response.body)
    p data
    # expect(result.id).to eq(article.id)
  end
  # it 'return proper json' do
  #   article = create :article
  #   get '/articles'
  #   body = JSON.parse(response.body).deep_symbolize_keys # hash轉字串
  #   expect(body).to eq(data)
  # end
  it 'return articles with proper data' do
    older_article = create :article, created_at: 1.hour.ago
    recent_article = create :article
    get '/articles'
    ids = json_data.map { |item| item['attributes']['id'] }
    expect(ids).to(eq([older_article.id, recent_article.id]))
  end
end
