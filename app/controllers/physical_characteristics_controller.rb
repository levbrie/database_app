class PhysicalCharacteristicsController < ApplicationController
 

  # GET /physical_characteristics/new
  # GET /physical_characteristics/new.json
  def new
    @physical_characteristic = PhysicalCharacteristic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @physical_characteristic }
    end
  end

  # GET /physical_characteristics/1/edit
  def edit
    @physical_characteristic = PhysicalCharacteristic.find(params[:id])
  end

  # POST /physical_characteristics
  # POST /physical_characteristics.json
  def create
    @physical_characteristic = PhysicalCharacteristic.new(params[:physical_characteristic])

    respond_to do |format|
      if @physical_characteristic.save
        format.html { redirect_to @physical_characteristic, notice: 'Physical characteristic was successfully created.' }
        format.json { render json: @physical_characteristic, status: :created, location: @physical_characteristic }
      else
        format.html { render action: "new" }
        format.json { render json: @physical_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /physical_characteristics/1
  # PUT /physical_characteristics/1.json
  def update
    @physical_characteristic = PhysicalCharacteristic.find(params[:id])

    respond_to do |format|
      if @physical_characteristic.update_attributes(params[:physical_characteristic])
        format.html { redirect_to @physical_characteristic, notice: 'Physical characteristic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @physical_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_characteristics/1
  # DELETE /physical_characteristics/1.json
  def destroy
    @physical_characteristic = PhysicalCharacteristic.find(params[:id])
    @physical_characteristic.destroy

    respond_to do |format|
      format.html { redirect_to physical_characteristics_url }
      format.json { head :no_content }
    end
  end
end
