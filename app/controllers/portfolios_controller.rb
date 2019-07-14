class PortfoliosController < ApplicationController
  expose :tags, -> { Tag.all }
  expose :portfolio
  expose :portfolios, -> { Portfolio.all }

  def destroy
    @id = portfolio.id
    portfolio.destroy
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
    @portfolio = Portfolio.create(portfolio_params)
    params['portfolio']['tags'].each { |tag_id| @portfolio.tags << Tag.find(tag_id) }
    if @portfolio.save
      redirect_to @portfolio, notice: "Your portfolio successfully created."
    else
      render :new
    end
  end

  def new
  end

  def edit
  end

  def show
    @tags = portfolio.tags
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:first_name, :last_name, :about,
                                      :photo_link)
  end
end
