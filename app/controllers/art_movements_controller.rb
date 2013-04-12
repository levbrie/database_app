class ArtMovementsController < ApplicationController
  # GET /art_movements
  # GET /art_movements.json
  def index
    @art_movements = ArtMovement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @art_movements }
    end
  end

  # GET /art_movements/1
  # GET /art_movements/1.json
  def show
    @art_movement = ArtMovement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @art_movement }
    end
  end

  # GET /art_movements/new
  # GET /art_movements/new.json
  def new
    @art_movement = ArtMovement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @art_movement }
    end
  end

  # GET /art_movements/1/edit
  def edit
    @art_movement = ArtMovement.find(params[:id])
  end

  # POST /art_movements
  # POST /art_movements.json
  def create
    @art_movement = ArtMovement.new(params[:art_movement])

    respond_to do |format|
      if @art_movement.save
        format.html { redirect_to @art_movement, notice: 'Art movement was successfully created.' }
        format.json { render json: @art_movement, status: :created, location: @art_movement }
      else
        format.html { render action: "new" }
        format.json { render json: @art_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /art_movements/1
  # PUT /art_movements/1.json
  def update
    @art_movement = ArtMovement.find(params[:id])

    respond_to do |format|
      if @art_movement.update_attributes(params[:art_movement])
        format.html { redirect_to @art_movement, notice: 'Art movement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @art_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_movements/1
  # DELETE /art_movements/1.json
  def destroy
    @art_movement = ArtMovement.find(params[:id])
    @art_movement.destroy

    respond_to do |format|
      format.html { redirect_to art_movements_url }
      format.json { head :no_content }
    end
  end
end
