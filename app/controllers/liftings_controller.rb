class LiftingsController < ApplicationController
  # GET /liftings
  # GET /liftings.json
  def index
    @liftings = Lifting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @liftings }
    end
  end

  # GET /liftings/1
  # GET /liftings/1.json
  def show
    @lifting = Lifting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lifting }
    end
  end

  # GET /liftings/new
  # GET /liftings/new.json
  def new
    @lifting = Lifting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lifting }
    end
  end

  # GET /liftings/1/edit
  def edit
    @lifting = Lifting.find(params[:id])
  end

  # POST /liftings
  # POST /liftings.json
  def create
    @lifting = Lifting.new(params[:lifting])

    respond_to do |format|
      if @lifting.save
        format.html { redirect_to @lifting, notice: 'Lifting was successfully created.' }
        format.json { render json: @lifting, status: :created, location: @lifting }
      else
        format.html { render action: "new" }
        format.json { render json: @lifting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /liftings/1
  # PUT /liftings/1.json
  def update
    @lifting = Lifting.find(params[:id])

    respond_to do |format|
      if @lifting.update_attributes(params[:lifting])
        format.html { redirect_to @lifting, notice: 'Lifting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lifting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liftings/1
  # DELETE /liftings/1.json
  def destroy
    @lifting = Lifting.find(params[:id])
    @lifting.destroy

    respond_to do |format|
      format.html { redirect_to liftings_url }
      format.json { head :no_content }
    end
  end
end
