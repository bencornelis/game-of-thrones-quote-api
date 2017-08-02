require "rails_helper"

describe "get random quotes route" do
  context "without count parameter" do
    before do
      create_list(:quote, 10)
      get "/quotes"
    end

    it "returns 10 quotes by default" do
      expect(parse_response(response).size).to eq 10
    end

    it "returns status code 200" do
      expect(response).to have_http_status :success
    end
  end

  context "with count parameter" do
    before do
      create_list(:quote, 3)
      get "/quotes?count=2"
    end

    it "returns that number of quotes" do
      expect(parse_response(response).size).to eq 2
    end

    it "returns status code 200" do
      expect(response).to have_http_status :success
    end
  end
end
