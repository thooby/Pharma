class FamilleMedsController < ApplicationController
  def index
    @famille_meds = FamilleMed.all
  end

  def show
    @famille_med = FamilleMed.find(params[:id])
  end

  def new
    @famille_med = FamilleMed.new
  end

  def create
    @famille_med = FamilleMed.new(params[:famille_med])
    if @famille_med.save
      redirect_to @famille_med, :notice => "Successfully created famille med."
    else
      render :action => 'new'
    end
  end

  def edit
    @famille_med = FamilleMed.find(params[:id])
  end

  def update
    @famille_med = FamilleMed.find(params[:id])
    if @famille_med.update_attributes(params[:famille_med])
      redirect_to @famille_med, :notice  => "Successfully updated famille med."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @famille_med = FamilleMed.find(params[:id])
    @famille_med.destroy
    redirect_to famille_meds_url, :notice => "Successfully destroyed famille med."
  end
end
