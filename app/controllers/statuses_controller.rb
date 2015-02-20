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
    @status = Status.find(params[:id])
  end

  def update
    @status = Status.find(params[:id])
    @status.update(status_params)

    redirect_to status_path, notice: 'Status was successfully updated.'
  end

  def destroy
    @status = Status.find(params[:id])

    @status.destroy
    redirect_to statuses_path, notice: 'Status was successfully destroyed.'
  end

  private
  def status_params
    params.require(:status).permit(:status, :user, :likes)
  end

end
