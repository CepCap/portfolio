class PortfoliosController < ApplicationController
  before_action :find_tags, only: [:edit, :new]
  before_action :find_portfolio, only: [:show, :edit, :destroy]
  before_action :find_portfolios, only: [:index]

  def destroy
    @portfolio.destroy
  end

  def create
    @portfolio = Portfolio.create(portfolio_params)
    @portfolio.tags = Tag.where(id: params['portfolio']['tags'])
    if @portfolio.save
      redirect_to @portfolio, notice: "Your portfolio successfully created."
    else
      render :new
    end
  end

  def update
    @portfolio = Portfolio.update(portfolio_params)
    @portfolio.tags = Tag.where(id: params['portfolio']['tags'])
    if @portfolio.save
      redirect_to @portfolio, notice: "Your portfolio successfully created."
    else
      render :new
    end
  end

  def new
    @portfolio = Portfolio.new
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:first_name, :last_name, :about,
                                      :photo_link)
  end

  def find_portfolio
    @portfolio = Portfolio.find(params['id'])
  end

  def find_tags
    @tags = Tag.all
  end

  def find_portfolios
    @portfolios = Portfolio.all
  end
end
