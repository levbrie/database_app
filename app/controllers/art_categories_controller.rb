class ArtCategoriesController < ApplicationController


  # GET /art_categories/new
  # GET /art_categories/new.json
  def new
    @art_category = ArtCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @art_category }
    end
  end

  # GET /art_categories/1/edit
  def edit
    @art_category = ArtCategory.find(params[:id])
  end

  # POST /art_categories
  # POST /art_categories.json
  def create
    @art_category = ArtCategory.new(params[:art_category])

    respond_to do |format|
      if @art_category.save
        format.html { redirect_to @art_category, notice: 'Art category was successfully created.' }
        format.json { render json: @art_category, status: :created, location: @art_category }
      else
        format.html { render action: "new" }
        format.json { render json: @art_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /art_categories/1
  # PUT /art_categories/1.json
  def update
    @art_category = ArtCategory.find(params[:id])

    respond_to do |format|
      if @art_category.update_attributes(params[:art_category])
        format.html { redirect_to @art_category, notice: 'Art category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @art_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_categories/1
  # DELETE /art_categories/1.json
  def destroy
    @art_category = ArtCategory.find(params[:id])
    @art_category.destroy

    respond_to do |format|
      format.html { redirect_to art_categories_url }
      format.json { head :no_content }
    end
  end
end
