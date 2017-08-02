require "rails_helper"

describe "get random quote route" do
  let!(:quote) { create(:quote) }
  before do
    get "/quote"
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
