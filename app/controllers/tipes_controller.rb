class TipesController < ApplicationController
  def index
    @tipes = Tipe.all
  end

  def show
    @tipe = Tipe.find(params[:id])
  end

  def new
    @tipe = Tipe.new
  end

  def create
    @tipe = Tipe.new(params[:tipe])
    if @tipe.save
      redirect_to @tipe, :notice => "Successfully created tipe."
    else
      render :action => 'new'
    end
  end

  def edit
    @tipe = Tipe.find(params[:id])
  end

  def update
    @tipe = Tipe.find(params[:id])
    if @tipe.update_attributes(params[:tipe])
      redirect_to @tipe, :notice  => "Successfully updated tipe."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @tipe = Tipe.find(params[:id])
    @tipe.destroy
    redirect_to tipes_url, :notice => "Successfully destroyed tipe."
  end
end
