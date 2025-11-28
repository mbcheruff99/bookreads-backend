class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    render :index
  end

  def show
    @author = Author.find(params[:id])
    render :show
  end

  def create 
    @author = Author.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      bio: params[:bio]
    )

    if @author.save
      render :show
    else
      render json: { errors: @author.errors }, status: :unprocessable_entity
    end
  end


end
