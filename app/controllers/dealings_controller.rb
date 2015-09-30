class DealingsController < ApplicationController
  before_action :set_dealing, only: [:show, :edit, :update, :destroy]

  # GET /dealings
  def index
    @dealings = Dealing.all
  end

  # GET /dealings/1
  def show
  end

  # GET /dealings/new
  def new
    @dealing = Dealing.new
  end

  # GET /dealings/1/edit
  def edit
  end

  # POST /dealings
  def create
    @dealing = Dealing.new(dealing_params)

    if @dealing.save
      redirect_to @dealing, notice: 'Dealing was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dealings/1
  def update
    if @dealing.update(dealing_params)
      redirect_to @dealing, notice: 'Dealing was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dealings/1
  def destroy
    @dealing.destroy
    redirect_to dealings_url, notice: 'Dealing was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealing
      @dealing = Dealing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dealing_params
      params.require(:dealing).permit(:amount, :receiver, :deal_type)
    end
end
