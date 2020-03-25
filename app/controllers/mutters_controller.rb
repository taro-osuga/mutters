class MuttersController < ApplicationController
  before_action :set_mutter, only: [:show, :edit, :update, :destroy]
  def index
    @mutters = Mutter.all
  end
  def new
    @mutter = Mutter.new
  end
  def create
    @mutter = Mutter.new(mutter_params)
    if params[:back]
      render :new
    else
      if @mutter.save
        redirect_to mutters_path, notice: "新しくつぶやきました！"
      else
        render :new
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @mutter.update(mutter_params)
      redirect_to mutters_path, notice: "編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @mutter.destroy
    redirect_to mutters_path, notice:"削除しました！"
  end
  def confirm
    @mutter = Mutter.new(mutter_params)
    render :new  if @mutter.invalid?
  end
  private
  def mutter_params
    params.require(:mutter).permit(:title, :content)
  end
  def set_mutter
    @mutter = Mutter.find(params[:id])
  end
end
