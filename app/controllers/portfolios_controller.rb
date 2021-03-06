class PortfoliosController < ApplicationController
  def index
    # @portfolio_items = Portfolio.all.ruby_on_rails_portfolio_items
    @portfolio_items = Portfolio.all
  end

  def angular
    @portfolio_items = Portfolio.all.angular
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body,
      technologies_attributes: [:name]))
    respond_to do |format|
      if @portfolio_item.save
        # format.html { redirect_to @portfolio_item, notice: 'Your portfolio item is now live'}
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live'}
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    # perform the lookup
    @portfolio_item = Portfolio.find(params[:id])
    # destroy/delete the record
    @portfolio_item.destroy
    # redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio item was removed' }
    end
  end

end
