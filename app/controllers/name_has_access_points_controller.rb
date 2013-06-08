class NameHasAccessPointsController < ApplicationController
  # GET /name_has_access_points
  # GET /name_has_access_points.json
  def index
    @name_has_access_points = NameHasAccessPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @name_has_access_points }
    end
  end

  # GET /name_has_access_points/1
  # GET /name_has_access_points/1.json
  def show
    @name_has_access_point = NameHasAccessPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @name_has_access_point }
    end
  end

  # GET /name_has_access_points/new
  # GET /name_has_access_points/new.json
  def new
    @name_has_access_point = NameHasAccessPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @name_has_access_point }
    end
  end

  # GET /name_has_access_points/1/edit
  def edit
    @name_has_access_point = NameHasAccessPoint.find(params[:id])
  end

  # POST /name_has_access_points
  # POST /name_has_access_points.json
  def create
    @name_has_access_point = NameHasAccessPoint.new(params[:name_has_access_point])

    respond_to do |format|
      if @name_has_access_point.save
        format.html { redirect_to @name_has_access_point, notice: 'Name has access point was successfully created.' }
        format.json { render json: @name_has_access_point, status: :created, location: @name_has_access_point }
      else
        format.html { render action: "new" }
        format.json { render json: @name_has_access_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /name_has_access_points/1
  # PUT /name_has_access_points/1.json
  def update
    @name_has_access_point = NameHasAccessPoint.find(params[:id])

    respond_to do |format|
      if @name_has_access_point.update_attributes(params[:name_has_access_point])
        format.html { redirect_to @name_has_access_point, notice: 'Name has access point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @name_has_access_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /name_has_access_points/1
  # DELETE /name_has_access_points/1.json
  def destroy
    @name_has_access_point = NameHasAccessPoint.find(params[:id])
    @name_has_access_point.destroy

    respond_to do |format|
      format.html { redirect_to name_has_access_points_url }
      format.json { head :no_content }
    end
  end
end
