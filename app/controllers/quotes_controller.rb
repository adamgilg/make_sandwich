class QuotesController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index]
  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
      flash[:notice] = "Your quote was successfully saved."
      redirect_to :back
    else
      flash[:alert] = "Your quote could not be saved. Try again!"
      redirect_to :back
    end
  end

  def index
    @quotes = Quote.all
  end
end