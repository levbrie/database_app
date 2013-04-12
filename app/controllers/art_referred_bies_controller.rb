class ArtReferredBiesController < ApplicationController
 
  # GET /art_referred_bies/new
  # GET /art_referred_bies/new.json
  def new
    @art_referred_by = ArtReferredBy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @art_referred_by }
    end
  end

  # GET /art_referred_bies/1/edit
  def edit
    @art_referred_by = ArtReferredBy.find(params[:id])
  end

  # POST /art_referred_bies
  # POST /art_referred_bies.json
  def create
    @art_referred_by = ArtReferredBy.new(params[:art_referred_by])

    respond_to do |format|
      if @art_referred_by.save
        format.html { redirect_to @art_referred_by, notice: 'Art referred by was successfully created.' }
        format.json { render json: @art_referred_by, status: :created, location: @art_referred_by }
      else
        format.html { render action: "new" }
        format.json { render json: @art_referred_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /art_referred_bies/1
  # PUT /art_referred_bies/1.json
  def update
    @art_referred_by = ArtReferredBy.find(params[:id])

    respond_to do |format|
      if @art_referred_by.update_attributes(params[:art_referred_by])
        format.html { redirect_to @art_referred_by, notice: 'Art referred by was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @art_referred_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_referred_bies/1
  # DELETE /art_referred_bies/1.json
  def destroy
    @art_referred_by = ArtReferredBy.find(params[:id])
    @art_referred_by.destroy

    respond_to do |format|
      format.html { redirect_to art_referred_bies_url }
      format.json { head :no_content }
    end
  end
end
