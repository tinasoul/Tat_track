class TattoosController < ApplicationController

# GET /tatoos  # GET /tat_trackers.json
  def index
    @tat_trackers = TatTracker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tat_trackers }
    end
  end

  # GET /tat_trackers/1
  # GET /tat_trackers/1.json
  def show
    @tat_tracker = TatTracker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tat_tracker }
    end
  end

  # GET /tat_trackers/new
  # GET /tat_trackers/new.json
  def new
    @tat_tracker = TatTracker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tat_tracker }
    end
  end

  # GET /tat_trackers/1/edit
  def edit
    @tat_tracker = TatTracker.find(params[:id])
  end

  # POST /tatoos  # POST /tat_trackers.json
  def create
    @tat_tracker = TatTracker.new(params[:tat_tracker])

    respond_to do |format|
      if @tat_tracker.save
        format.html { redirect_to @tat_tracker, notice: 'Tat tracker was successfully created.' }
        format.json { render json: @tat_tracker, status: :created, location: @tat_tracker }
      else
        format.html { render action: "new" }
        format.json { render json: @tat_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tat_trackers/1
  # PUT /tat_trackers/1.json
  def update
    @tat_tracker = TatTracker.find(params[:id])

    respond_to do |format|
      if @tat_tracker.update_attributes(params[:tat_tracker])
        format.html { redirect_to @tat_tracker, notice: 'Tat tracker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tat_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tat_trackers/1
  # DELETE /tat_trackers/1.json
  def destroy
    @tat_tracker = TatTracker.find(params[:id])
    @tat_tracker.destroy

    respond_to do |format|
      format.html { redirect_to tat_trackers_url }
      format.json { head :no_content }
    end
  end
end
