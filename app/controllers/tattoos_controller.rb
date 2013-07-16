class TattoosController < ApplicationController

  def index
    @tattoos = Tattoo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tattoos }
    end
  end

  def show
    @tattoo = Tattoo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tattoo }
    end
  end

  def new
    @tattoo = Tattoo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tattoo }
    end
  end

  def edit
    @tattoo = Tattoo.find(params[:id])
  end

  def create
    @tattoo = Tattoo.new(params[:tattoo])

    respond_to do |format|
      if @tattoo.save
        format.html { redirect_to @tattoo, notice: 'Your tattoo was saved to tat_tracker!' }
        format.json { render json: @tattoo, status: :created, location: @tattoo }
      else
        format.html { render action: "new" }
        format.json { render json: @tattoo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tattoo = Tattoo.find(params[:id])

    respond_to do |format|
      if @tattoo.update_attributes(params[:tattoo])
        format.html { redirect_to @tattoo, notice: 'Tat tracker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tattoo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tattoo = Tattoo.find(params[:id])
    @tattoo.destroy

    respond_to do |format|
      format.html { redirect_to tattoos_url }
      format.json { head :no_content }
    end
  end
end
