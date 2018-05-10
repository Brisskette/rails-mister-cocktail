class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
   # raise
   @dose = Dose.new(user_params)
   if @dose.save
     @dose.save
     redirect_to doses_path(@dose)
   else
    render :new
  end
end

  def show
    @dose = Dose.find(params[:id])
  end

private
  def user_params
    params.require(:dose).permit(:description)
  end

end
