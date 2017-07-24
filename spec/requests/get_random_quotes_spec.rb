require 'rails_helper'

describe "get random quotes route" do
  context "with no parameters" do
    let!(:quote) { create(:quote) }
    before do
      get "/quotes/random"
    end

    it "returns the quote content" do
      expect(parse_response(response)["quote"]).to eq quote.content
    end

    it "returns the character that said the quote" do
      expect(parse_response(response)["character"]).to eq quote.character.name
    end

    it "returns status code 200" do
      expect(response).to have_http_status :success
    end
  end

  context "with count parameter" do
    before do
      create_list(:quote, 3)
      get "/quotes/random?count=2"
    end

    it "returns that number of quotes" do
      expect(parse_response(response).size).to eq 2
    end

    it "returns status code 200" do
      expect(response).to have_http_status :success
    end
  end
end
