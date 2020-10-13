# frozen_string_literal: true

class GradingPalletsController < ApplicationController
  before_action :set_grading_pallet, only: %i[show edit update destroy]

  def index
    @grading_pallets = GradingPallet.active
  end

  def show; end

  def new
    @grading_pallet = GradingPallet.new
  end

  def edit; end

  def create
    @grading_pallet = GradingPallet.new(grading_pallet_params)

    if @grading_pallet.save
      redirect_to grading_pallets_path, notice: 'Grading pallet was successfully created.'
    else
      render :new
    end
  end

  def update
    if @grading_pallet.update(grading_pallet_params)
      redirect_to @grading_pallet, notice: 'Grading pallet was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @grading_pallet.soft_delete

    redirect_to grading_pallets_path, notice: 'Grading pallet was successfully deleted.'
  end

  private
    def set_grading_pallet
      @grading_pallet = GradingPallet.find(params[:id])
    end

    def grading_pallet_params
      params.require(:grading_pallet).permit(:label, :category_id, :value, :pallet_type_id)
    end
end
