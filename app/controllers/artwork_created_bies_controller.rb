class ArtworkCreatedBiesController < ApplicationController
  # GET /artwork_created_bies/new
  # GET /artwork_created_bies/new.json
  def new
    @artwork_created_by = ArtworkCreatedBy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artwork_created_by }
    end
  end

  # GET /artwork_created_bies/1/edit
  def edit
    @artwork_created_by = ArtworkCreatedBy.find(params[:id])
  end

  # POST /artwork_created_bies
  # POST /artwork_created_bies.json
  def create
    @artwork_created_by = ArtworkCreatedBy.new(params[:artwork_created_by])

    respond_to do |format|
      if @artwork_created_by.save
        format.html { redirect_to @artwork_created_by, notice: 'Artwork created by was successfully created.' }
        format.json { render json: @artwork_created_by, status: :created, location: @artwork_created_by }
      else
        format.html { render action: "new" }
        format.json { render json: @artwork_created_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artwork_created_bies/1
  # PUT /artwork_created_bies/1.json
  def update
    @artwork_created_by = ArtworkCreatedBy.find(params[:id])

    respond_to do |format|
      if @artwork_created_by.update_attributes(params[:artwork_created_by])
        format.html { redirect_to @artwork_created_by, notice: 'Artwork created by was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artwork_created_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artwork_created_bies/1
  # DELETE /artwork_created_bies/1.json
  def destroy
    @artwork_created_by = ArtworkCreatedBy.find(params[:id])
    @artwork_created_by.destroy

    respond_to do |format|
      format.html { redirect_to artwork_created_bies_url }
      format.json { head :no_content }
    end
  end
end
