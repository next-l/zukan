class ControlledAccessPointsController < ApplicationController
  # GET /controlled_access_points
  # GET /controlled_access_points.json
  def index
    @controlled_access_points = ControlledAccessPoint.all
    @name_id = Name.where(:id => params[:name_id]).first.try(:id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @controlled_access_points }
    end
  end

  # GET /controlled_access_points/1
  # GET /controlled_access_points/1.json
  def show
    @controlled_access_point = ControlledAccessPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @controlled_access_point }
    end
  end

  # GET /controlled_access_points/new
  # GET /controlled_access_points/new.json
  def new
    @controlled_access_point = ControlledAccessPoint.new
    @controlled_access_point.name_id = params[:name_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @controlled_access_point }
    end
  end

  # GET /controlled_access_points/1/edit
  def edit
    @controlled_access_point = ControlledAccessPoint.find(params[:id])
    @controlled_access_point.name_id = params[:name_id]
  end

  # POST /controlled_access_points
  # POST /controlled_access_points.json
  def create
    @controlled_access_point = ControlledAccessPoint.new(params[:controlled_access_point])

    respond_to do |format|
      if @controlled_access_point.save
        name = Name.where(:id => @controlled_access_point.name_id).first
        @controlled_access_point.names << name if name
        format.html { redirect_to @controlled_access_point, notice: 'Controlled access point was successfully created.' }
        format.json { render json: @controlled_access_point, status: :created, location: @controlled_access_point }
      else
        format.html { render action: "new" }
        format.json { render json: @controlled_access_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /controlled_access_points/1
  # PUT /controlled_access_points/1.json
  def update
    @controlled_access_point = ControlledAccessPoint.find(params[:id])

    respond_to do |format|
      if @controlled_access_point.update_attributes(params[:controlled_access_point])
        name = Name.where(:id => @controlled_access_point.name_id).first
        @controlled_access_point.names << name if name
        format.html { redirect_to @controlled_access_point, notice: 'Controlled access point was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @controlled_access_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controlled_access_points/1
  # DELETE /controlled_access_points/1.json
  def destroy
    @controlled_access_point = ControlledAccessPoint.find(params[:id])
    @controlled_access_point.destroy

    respond_to do |format|
      format.html { redirect_to controlled_access_points_url }
      format.json { head :no_content }
    end
  end
end
