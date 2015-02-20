class StatusesController < ApplicationController

  def index
    @statuses = Status.all
  end

  def show
    @status = Status.find(params[:id])
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)

    if @status.save
      redirect_to @status, notice: 'Update successfully added'
    else
      flash[:alert] = 'Errors on the page. This isn\'t that difficult'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def status_params
    params.require(:status).permit(:status, :user, :likes)
  end

end
