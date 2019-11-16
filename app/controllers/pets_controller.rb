class PetsController < ApplicationController
  before_action :set_pets, only: :index
  
  # GET /
  def index; end
  
  # GET /pets/all
  def all
    pets = Pet.paginate(page: params[:page])
    render json: pets, each_serializer: PetSerializer
  end
  
  # POST /pets
  def create
    pet = Pet.new(pet_params)

    if pet.save
      hash = { :success => I18n.t('success_create') }
    else
      hash = { :danger => I18n.t('error_create') }
    end

    redirect_to root_path, flash: hash
  end
  
  private
  
  def pet_params
    # whitelist params
    params.permit(:name, :birthday, :breed, :category)
  end

  def set_pets
    @pets = Pet
      .paginate(page: params[:page])
      .order(params[:sort])
  end

end
