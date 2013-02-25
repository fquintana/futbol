class TorneosController < ApplicationController
  # GET /torneos
  # GET /torneos.json
  def index
    @torneos = Torneo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @torneos }
    end
  end

  # GET /torneos/1
  # GET /torneos/1.json
  def show
    @torneo = Torneo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @torneo }
    end
  end

  # GET /torneos/new
  # GET /torneos/new.json
  def new
    @torneo = Torneo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @torneo }
    end
  end

  # GET /torneos/1/edit
  def edit
    @torneo = Torneo.find(params[:id])
  end

  # POST /torneos
  # POST /torneos.json
  def create
    @torneo = Torneo.new(params[:torneo])

    respond_to do |format|
      if @torneo.save
        format.html { redirect_to @torneo, notice: 'Torneo was successfully created.' }
        format.json { render json: @torneo, status: :created, location: @torneo }
      else
        format.html { render action: "new" }
        format.json { render json: @torneo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /torneos/1
  # PUT /torneos/1.json
  def update
    @torneo = Torneo.find(params[:id])

    respond_to do |format|
      if @torneo.update_attributes(params[:torneo])
        format.html { redirect_to @torneo, notice: 'Torneo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @torneo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /torneos/1
  # DELETE /torneos/1.json
  def destroy
    @torneo = Torneo.find(params[:id])
    @torneo.destroy

    respond_to do |format|
      format.html { redirect_to torneos_url }
      format.json { head :no_content }
    end
  end
end
