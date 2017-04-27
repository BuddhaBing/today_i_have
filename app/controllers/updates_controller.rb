class UpdatesController < ApplicationController
  before_action :set_update, only: [:show, :edit, :update, :destroy]

  def index
    @updates = Update.all
  end

  def show
  end

  def new
    @update = Update.new
  end

  def edit
  end

  def create
    @update = Update.new(update_params)
      if @update.save
        redirect_to @update, notice: 'Update was successfully created.'
      else
        render :new
      end
  end

  private

    def set_update
      @update = Update.find(params[:id])
    end

    def update_params
      params.require(:update).permit(:title, :details)
    end
end
