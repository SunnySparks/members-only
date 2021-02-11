class ClubhousesController < ApplicationController
  before_action :set_clubhouse, only: %i[ show edit update destroy ]

  # GET /clubhouses or /clubhouses.json
  def index
    @clubhouses = Clubhouse.all
  end

  # GET /clubhouses/1 or /clubhouses/1.json
  def show
  end

  # GET /clubhouses/new
  def new
    @clubhouse = Clubhouse.new
  end

  # GET /clubhouses/1/edit
  def edit
  end

  # POST /clubhouses or /clubhouses.json
  def create
    @clubhouse = Clubhouse.new(clubhouse_params)

    respond_to do |format|
      if @clubhouse.save
        format.html { redirect_to @clubhouse, notice: "Clubhouse was successfully created." }
        format.json { render :show, status: :created, location: @clubhouse }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clubhouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubhouses/1 or /clubhouses/1.json
  def update
    respond_to do |format|
      if @clubhouse.update(clubhouse_params)
        format.html { redirect_to @clubhouse, notice: "Clubhouse was successfully updated." }
        format.json { render :show, status: :ok, location: @clubhouse }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clubhouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubhouses/1 or /clubhouses/1.json
  def destroy
    @clubhouse.destroy
    respond_to do |format|
      format.html { redirect_to clubhouses_url, notice: "Clubhouse was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clubhouse
      @clubhouse = Clubhouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clubhouse_params
      params.fetch(:clubhouse, {})
    end
end
