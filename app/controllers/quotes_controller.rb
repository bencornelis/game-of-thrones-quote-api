class QuotesController < ApplicationController
  def index
    @quotes = Quote.random(quotes_count)
    render json: @quotes, status: :ok
  end

  def show
    @quote = Quote.random
    render json: @quote, status: :ok
  end

  private
  def quotes_count
    params[:count] || default_count
  end

  def default_count
    10
  end
end
