# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe Article, type: :request do
  # let (:article) { create(:article)}
    it '/index' do
      article = create :article
      get '/articles'
      # expect(response).to have_http_status(:ok)
      # expect(response.status).to eq(200)
      # expect(json_data.length).to eq(1)
      data = JSON.parse(response.body).deep_symbolize_keys
      p data
      # expect(result.id).to eq(article.id)
    end
end
