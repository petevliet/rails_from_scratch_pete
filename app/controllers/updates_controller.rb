class UpdatesController < ApplicationController

  def index
    @updates = Update.all
  end

  def show
    @update = Update.find(params[:id])
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)

    if @update.save
      redirect_to update_path(@update)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def update_params
    params.require(:update).permit(:status, :user)
  end
end
