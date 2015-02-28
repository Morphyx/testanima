class DevicetypesController < ApplicationController
  before_action :set_devicetype, only: [:show, :edit, :update, :destroy]

  # GET /devicetypes
  # GET /devicetypes.json
  def index
    @devicetypes = Devicetype.all
  end

  # GET /devicetypes/1
  # GET /devicetypes/1.json
  def show
  end

  # GET /devicetypes/new
  def new
    @devicetype = Devicetype.new
  end

  # GET /devicetypes/1/edit
  def edit
  end

  # POST /devicetypes
  # POST /devicetypes.json
  def create
    @devicetype = Devicetype.new(devicetype_params)

    respond_to do |format|
      if @devicetype.save
        format.html { redirect_to @devicetype, notice: 'Devicetype was successfully created.' }
        format.json { render :show, status: :created, location: @devicetype }
      else
        format.html { render :new }
        format.json { render json: @devicetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devicetypes/1
  # PATCH/PUT /devicetypes/1.json
  def update
    respond_to do |format|
      if @devicetype.update(devicetype_params)
        format.html { redirect_to @devicetype, notice: 'Devicetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @devicetype }
      else
        format.html { render :edit }
        format.json { render json: @devicetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devicetypes/1
  # DELETE /devicetypes/1.json
  def destroy
    @devicetype.destroy
    respond_to do |format|
      format.html { redirect_to devicetypes_url, notice: 'Devicetype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devicetype
      @devicetype = Devicetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devicetype_params
      params.require(:devicetype).permit(:type)
    end
end
