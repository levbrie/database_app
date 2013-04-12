class ArtPartOfMovementsController < ApplicationController

  # GET /art_part_of_movements/new
  # GET /art_part_of_movements/new.json
  def new
    @art_part_of_movement = ArtPartOfMovement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @art_part_of_movement }
    end
  end

  # GET /art_part_of_movements/1/edit
  def edit
    @art_part_of_movement = ArtPartOfMovement.find(params[:id])
  end

  # POST /art_part_of_movements
  # POST /art_part_of_movements.json
  def create
    @art_part_of_movement = ArtPartOfMovement.new(params[:art_part_of_movement])

    respond_to do |format|
      if @art_part_of_movement.save
        format.html { redirect_to @art_part_of_movement, notice: 'Art part of movement was successfully created.' }
        format.json { render json: @art_part_of_movement, status: :created, location: @art_part_of_movement }
      else
        format.html { render action: "new" }
        format.json { render json: @art_part_of_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /art_part_of_movements/1
  # PUT /art_part_of_movements/1.json
  def update
    @art_part_of_movement = ArtPartOfMovement.find(params[:id])

    respond_to do |format|
      if @art_part_of_movement.update_attributes(params[:art_part_of_movement])
        format.html { redirect_to @art_part_of_movement, notice: 'Art part of movement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @art_part_of_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_part_of_movements/1
  # DELETE /art_part_of_movements/1.json
  def destroy
    @art_part_of_movement = ArtPartOfMovement.find(params[:id])
    @art_part_of_movement.destroy

    respond_to do |format|
      format.html { redirect_to art_part_of_movements_url }
      format.json { head :no_content }
    end
  end
end
