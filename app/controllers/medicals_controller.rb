class MedicalsController < ApplicationController
  before_action :set_pet, only: [:index, :create]
  before_action :set_medical, only: :destroy
  
  # GET /pets/:pet_id/medicals
  def index; end
  
  # POST /pets/:pet_id/medicals
  def create
    medical = Medical.new(medical_params)

    if medical.save
      hash = { :success => I18n.t('success_create') }
    else
      hash = { :danger => I18n.t('error_create') }
    end

    redirect_to pet_medicals_path(pet_id: @pet.id), flash: hash
  end
  
  # DELETE /pets/:pet_id/medicals/:id
  def destroy
    @medical.destroy

    if @medical.destroy
      hash = { :success => I18n.t('success_destroy') }
    else
      hash = { :danger => I18n.t('error_destroy') }
    end

    redirect_to pet_medicals_path(pet_id: params[:pet_id]), flash: hash
  end
  
  private
  
  def medical_params
    # whitelist params
    params.permit(:treatment, :symptom, :pet_id)
  end

  def set_medical
    @medical = Medical.find(params[:id])
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end

end
