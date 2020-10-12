class BoxerPalletsController < ApplicationController
  before_action :set_boxer_pallet, only: %i[show edit update destroy]

  def index
    @boxer_pallets = BoxerPallet.active
  end

  def show; end

  def new
    @boxer_pallet = BoxerPallet.new
  end

  def edit; end

  def create
    @boxer_pallet = BoxerPallet.new(boxer_pallet_params)

    if @boxer_pallet.save
      redirect_to boxer_pallets_path, notice: 'Boxer pallet was successfully created.'
    else
      render :new
    end
  end

  def update
    if @boxer_pallet.update(boxer_pallet_params)
      redirect_to @boxer_pallet, notice: 'Boxer pallet was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @boxer_pallet.soft_delete

    redirect_to boxer_pallets_path, notice: 'Boxer pallet was successfully deleted.'
  end

  private
    def set_boxer_pallet
      @boxer_pallet = BoxerPallet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boxer_pallet_params
      params.require(:boxer_pallet).permit(:label, :category, :destination, :location, :pallet_type_id)
    end
end
