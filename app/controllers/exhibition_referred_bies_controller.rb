class ExhibitionReferredBiesController < ApplicationController
  # GET /exhibition_referred_bies/new
  # GET /exhibition_referred_bies/new.json
  def new
    @exhibition_referred_by = ExhibitionReferredBy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exhibition_referred_by }
    end
  end

  # GET /exhibition_referred_bies/1/edit
  def edit
    @exhibition_referred_by = ExhibitionReferredBy.find(params[:id])
  end

  # POST /exhibition_referred_bies
  # POST /exhibition_referred_bies.json
  def create
    @exhibition_referred_by = ExhibitionReferredBy.new(params[:exhibition_referred_by])

    respond_to do |format|
      if @exhibition_referred_by.save
        format.html { redirect_to @exhibition_referred_by, notice: 'Exhibition referred by was successfully created.' }
        format.json { render json: @exhibition_referred_by, status: :created, location: @exhibition_referred_by }
      else
        format.html { render action: "new" }
        format.json { render json: @exhibition_referred_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exhibition_referred_bies/1
  # PUT /exhibition_referred_bies/1.json
  def update
    @exhibition_referred_by = ExhibitionReferredBy.find(params[:id])

    respond_to do |format|
      if @exhibition_referred_by.update_attributes(params[:exhibition_referred_by])
        format.html { redirect_to @exhibition_referred_by, notice: 'Exhibition referred by was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exhibition_referred_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibition_referred_bies/1
  # DELETE /exhibition_referred_bies/1.json
  def destroy
    @exhibition_referred_by = ExhibitionReferredBy.find(params[:id])
    @exhibition_referred_by.destroy

    respond_to do |format|
      format.html { redirect_to exhibition_referred_bies_url }
      format.json { head :no_content }
    end
  end
end
