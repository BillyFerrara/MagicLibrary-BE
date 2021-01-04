class SpellbooksController < ApplicationController
  before_action :set_spellbook, only: [:show, :update, :destroy]

  # GET /spellbooks
  def index
    @spellbooks = Spellbook.all

    render json: @spellbooks
  end

  # GET /spellbooks/1
  def show
    render json: @spellbook
  end

  # POST /spellbooks
  def create
    @spellbook = Spellbook.new(spellbook_params)

    if @spellbook.save
      render json: @spellbook, status: :created, location: @spellbook
    else
      render json: @spellbook.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spellbooks/1
  def update
    if @spellbook.update(spellbook_params)
      render json: @spellbook
    else
      render json: @spellbook.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spellbooks/1
  def destroy
    @spellbook.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spellbook
      @spellbook = Spellbook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spellbook_params
      params.require(:spellbook).permit(:title)
    end
end
