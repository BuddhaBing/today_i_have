class UpdatesController < ApplicationController
  before_action :set_update, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create]

  respond_to do |format|
    format.html
    format.js
  end

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
    user = current_user
    @update = user.updates.build(update_params)
      if @update.save
        redirect_to root_path, notice: 'Update was successfully created.'
      else
        render :new
      end
  end

  private

    def set_update
      @update = Update.find(params[:id])
    end

    def update_params
      params.require(:update).permit(:title, :details, :tag_list)
    end
end
