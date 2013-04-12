class ReferenceMaterialsController < ApplicationController
  # GET /reference_materials
  # GET /reference_materials.json
  def index
    @reference_materials = ReferenceMaterial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reference_materials }
    end
  end

  # GET /reference_materials/1
  # GET /reference_materials/1.json
  def show
    @reference_material = ReferenceMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reference_material }
    end
  end

  # GET /reference_materials/new
  # GET /reference_materials/new.json
  def new
    @reference_material = ReferenceMaterial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reference_material }
    end
  end

  # GET /reference_materials/1/edit
  def edit
    @reference_material = ReferenceMaterial.find(params[:id])
  end

  # POST /reference_materials
  # POST /reference_materials.json
  def create
    @reference_material = ReferenceMaterial.new(params[:reference_material])

    respond_to do |format|
      if @reference_material.save
        format.html { redirect_to @reference_material, notice: 'Reference material was successfully created.' }
        format.json { render json: @reference_material, status: :created, location: @reference_material }
      else
        format.html { render action: "new" }
        format.json { render json: @reference_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reference_materials/1
  # PUT /reference_materials/1.json
  def update
    @reference_material = ReferenceMaterial.find(params[:id])

    respond_to do |format|
      if @reference_material.update_attributes(params[:reference_material])
        format.html { redirect_to @reference_material, notice: 'Reference material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reference_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reference_materials/1
  # DELETE /reference_materials/1.json
  def destroy
    @reference_material = ReferenceMaterial.find(params[:id])
    @reference_material.destroy

    respond_to do |format|
      format.html { redirect_to reference_materials_url }
      format.json { head :no_content }
    end
  end
end
