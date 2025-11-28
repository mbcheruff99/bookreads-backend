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

  def update
    @author = Author.find(params[:id])
    @author.update(
      first_name: params[:first_name] || @author.first_name,
      last_name: params[:last_name] || @author.last_name,
      bio: params[:bio] || @author.bio
    )

    if @author.valid?
      render :show
    else
      render json: { errors: @author.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @author = Author.find(prams[:id])
    @author.delete
    render json: {message: "Author deleted"}
  end

end
