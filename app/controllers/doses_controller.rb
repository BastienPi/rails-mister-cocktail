class DosesController < ApplicationController

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.new(dose_params)

    if @dose.save
      redirect_to cocktails_path(@cocktails)
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_dose_path(@dose)
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
