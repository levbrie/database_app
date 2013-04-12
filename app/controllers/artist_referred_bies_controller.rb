class ArtistReferredBiesController < ApplicationController
  
  # GET /artist_referred_bies/new
  # GET /artist_referred_bies/new.json
  def new
    @artist_referred_by = ArtistReferredBy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist_referred_by }
    end
  end

  # GET /artist_referred_bies/1/edit
  def edit
    @artist_referred_by = ArtistReferredBy.find(params[:id])
  end

  # POST /artist_referred_bies
  # POST /artist_referred_bies.json
  def create
    @artist_referred_by = ArtistReferredBy.new(params[:artist_referred_by])

    respond_to do |format|
      if @artist_referred_by.save
        format.html { redirect_to @artist_referred_by, notice: 'Artist referred by was successfully created.' }
        format.json { render json: @artist_referred_by, status: :created, location: @artist_referred_by }
      else
        format.html { render action: "new" }
        format.json { render json: @artist_referred_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artist_referred_bies/1
  # PUT /artist_referred_bies/1.json
  def update
    @artist_referred_by = ArtistReferredBy.find(params[:id])

    respond_to do |format|
      if @artist_referred_by.update_attributes(params[:artist_referred_by])
        format.html { redirect_to @artist_referred_by, notice: 'Artist referred by was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artist_referred_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_referred_bies/1
  # DELETE /artist_referred_bies/1.json
  def destroy
    @artist_referred_by = ArtistReferredBy.find(params[:id])
    @artist_referred_by.destroy

    respond_to do |format|
      format.html { redirect_to artist_referred_bies_url }
      format.json { head :no_content }
    end
  end
end
