class MulhersController < ApplicationController
  def index
  	@mulhers = Mulher.all
  end

  def new
  end

  def create
  	valores = params.require(:mulher).permit :nome, :email, :formacao, :temas
  	mulher = Mulher.create valores
  	redirect_to root_url
  end

  def show
  	@mulher = Mulher.find(params[:id])
  end

  def edit
  	@mulher = Mulher.find(params[:id])
  end

  def update
  	@mulher = Mulher.find(params[:id])
  	valores = params.require(:mulher).permit :nome, :email, :formacao, :temas
  	@mulher.update valores
  	redirect_to @mulher
  end

end
