class ExhibitionsController < ApplicationController
  # GET /exhibitions
  # GET /exhibitions.json
  def index
    @exhibitions = Exhibition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exhibitions }
    end
  end

  # GET /exhibitions/1
  # GET /exhibitions/1.json
  def show
    @exhibition = Exhibition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exhibition }
    end
  end

  # GET /exhibitions/new
  # GET /exhibitions/new.json
  def new
    @exhibition = Exhibition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exhibition }
    end
  end

  # GET /exhibitions/1/edit
  def edit
    @exhibition = Exhibition.find(params[:id])
  end

  # POST /exhibitions
  # POST /exhibitions.json
  def create
    @exhibition = Exhibition.new(params[:exhibition])

    respond_to do |format|
      if @exhibition.save
        format.html { redirect_to @exhibition, notice: 'Exhibition was successfully created.' }
        format.json { render json: @exhibition, status: :created, location: @exhibition }
      else
        format.html { render action: "new" }
        format.json { render json: @exhibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exhibitions/1
  # PUT /exhibitions/1.json
  def update
    @exhibition = Exhibition.find(params[:id])

    respond_to do |format|
      if @exhibition.update_attributes(params[:exhibition])
        format.html { redirect_to @exhibition, notice: 'Exhibition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exhibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibitions/1
  # DELETE /exhibitions/1.json
  def destroy
    @exhibition = Exhibition.find(params[:id])
    @exhibition.destroy

    respond_to do |format|
      format.html { redirect_to exhibitions_url }
      format.json { head :no_content }
    end
  end
end
