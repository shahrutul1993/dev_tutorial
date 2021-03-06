class PortfoliosController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
	layout 'portfolio'
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :update, :edit]}, site_admin: :all

	def index
		@portfolio_item = Portfolio.all
	end

	def angular
		@angular_item = Portfolio.angular
	end

	def new
		@portfolio_item = Portfolio.new
	end

	def create

		@portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: 'Blog was successfully created.' }
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
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'portfolio was successfully updated.' }
      else
        format.html { render :new }
      end
    end
	end	

	def show
	@portfolio_item = Portfolio.find(params[:id])
	end	

	def destroy
	@portfolio_item = Portfolio.find(params[:id])

    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'record was successfully destroyed.' }
    end
  end
	
	private

	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body)
	end

	def set_portfolio_item
	    @portfolio_item = Portfolio.find(params[:id])
	end	
end