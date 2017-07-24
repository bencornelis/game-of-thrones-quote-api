class QuotesController < ApplicationController
  def random
    @quote = Quote.random(params[:count])
    render json: @quote, status: :ok
  end
end
