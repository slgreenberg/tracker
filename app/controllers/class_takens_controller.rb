class ClassTakensController < ApplicationController
  # GET /class_takens
  # GET /class_takens.json
  def index
    @class_takens = ClassTaken.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @class_takens }
    end
  end

  # GET /class_takens/1
  # GET /class_takens/1.json
  def show
    @class_taken = ClassTaken.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @class_taken }
    end
  end

  # GET /class_takens/new
  # GET /class_takens/new.json
  def new
    @class_taken = ClassTaken.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @class_taken }
    end
  end

  # GET /class_takens/1/edit
  def edit
    @class_taken = ClassTaken.find(params[:id])
  end

  # POST /class_takens
  # POST /class_takens.json
  def create
    @class_taken = ClassTaken.new(params[:class_taken])

    respond_to do |format|
      if @class_taken.save
        format.html { redirect_to @class_taken, notice: 'Class taken was successfully created.' }
        format.json { render json: @class_taken, status: :created, location: @class_taken }
      else
        format.html { render action: "new" }
        format.json { render json: @class_taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /class_takens/1
  # PUT /class_takens/1.json
  def update
    @class_taken = ClassTaken.find(params[:id])

    respond_to do |format|
      if @class_taken.update_attributes(params[:class_taken])
        format.html { redirect_to @class_taken, notice: 'Class taken was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @class_taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_takens/1
  # DELETE /class_takens/1.json
  def destroy
    @class_taken = ClassTaken.find(params[:id])
    @class_taken.destroy

    respond_to do |format|
      format.html { redirect_to class_takens_url }
      format.json { head :no_content }
    end
  end
end
