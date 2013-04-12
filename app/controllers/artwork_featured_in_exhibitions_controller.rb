class ArtworkFeaturedInExhibitionsController < ApplicationController
  
  # GET /artwork_featured_in_exhibitions/new
  # GET /artwork_featured_in_exhibitions/new.json
  def new
    @artwork_featured_in_exhibition = ArtworkFeaturedInExhibition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artwork_featured_in_exhibition }
    end
  end

  # GET /artwork_featured_in_exhibitions/1/edit
  def edit
    @artwork_featured_in_exhibition = ArtworkFeaturedInExhibition.find(params[:id])
  end

  # POST /artwork_featured_in_exhibitions
  # POST /artwork_featured_in_exhibitions.json
  def create
    @artwork_featured_in_exhibition = ArtworkFeaturedInExhibition.new(params[:artwork_featured_in_exhibition])

    respond_to do |format|
      if @artwork_featured_in_exhibition.save
        format.html { redirect_to @artwork_featured_in_exhibition, notice: 'Artwork featured in exhibition was successfully created.' }
        format.json { render json: @artwork_featured_in_exhibition, status: :created, location: @artwork_featured_in_exhibition }
      else
        format.html { render action: "new" }
        format.json { render json: @artwork_featured_in_exhibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artwork_featured_in_exhibitions/1
  # PUT /artwork_featured_in_exhibitions/1.json
  def update
    @artwork_featured_in_exhibition = ArtworkFeaturedInExhibition.find(params[:id])

    respond_to do |format|
      if @artwork_featured_in_exhibition.update_attributes(params[:artwork_featured_in_exhibition])
        format.html { redirect_to @artwork_featured_in_exhibition, notice: 'Artwork featured in exhibition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artwork_featured_in_exhibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artwork_featured_in_exhibitions/1
  # DELETE /artwork_featured_in_exhibitions/1.json
  def destroy
    @artwork_featured_in_exhibition = ArtworkFeaturedInExhibition.find(params[:id])
    @artwork_featured_in_exhibition.destroy

    respond_to do |format|
      format.html { redirect_to artwork_featured_in_exhibitions_url }
      format.json { head :no_content }
    end
  end
end
