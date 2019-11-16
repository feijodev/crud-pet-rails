class PetsController < ApplicationController
  before_action :pets, only: :index
  
  # GET /
  def index; end

  private

  def pets
    @pets ||= Pet
      .paginate(page: params[:page])
      .order(params[:sort])
  end

end
