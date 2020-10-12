class PalletsController < ApplicationController
  before_action :set_pallet, only: %i[show edit update destroy]

  def index
    @pallets = Pallet.all
  end

  def show; end

  def new
    @pallet = Pallet.new
  end

  def edit; end

  def create
    @pallet = Pallet.new(pallet_params)

    if @pallet.save
      redirect_to @pallet, notice: 'Pallet was successfully created.'
    end
  end

  def update
    if @pallet.update(pallet_params)
      redirect_to @pallet, notice: 'Pallet was successfully updated.'
    end
  end

  def destroy
    @pallet.soft_delete

    redirect_to pallets_url, notice: 'Pallet was successfully destroyed.'
  end

  private

  def set_pallet
    @pallet = Pallet.find(params[:id])
  end

  def pallet_params
    params.fetch(:pallet, {})
  end
end
