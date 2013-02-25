class TorneotiposController < ApplicationController
  # GET /torneotipos
  # GET /torneotipos.json
  def index
    @torneotipos = Torneotipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @torneotipos }
    end
  end

  # GET /torneotipos/1
  # GET /torneotipos/1.json
  def show
    @torneotipo = Torneotipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @torneotipo }
    end
  end

  # GET /torneotipos/new
  # GET /torneotipos/new.json
  def new
    @torneotipo = Torneotipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @torneotipo }
    end
  end

  # GET /torneotipos/1/edit
  def edit
    @torneotipo = Torneotipo.find(params[:id])
  end

  # POST /torneotipos
  # POST /torneotipos.json
  def create
    @torneotipo = Torneotipo.new(params[:torneotipo])

    respond_to do |format|
      if @torneotipo.save
        format.html { redirect_to @torneotipo, notice: 'Torneotipo was successfully created.' }
        format.json { render json: @torneotipo, status: :created, location: @torneotipo }
      else
        format.html { render action: "new" }
        format.json { render json: @torneotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /torneotipos/1
  # PUT /torneotipos/1.json
  def update
    @torneotipo = Torneotipo.find(params[:id])

    respond_to do |format|
      if @torneotipo.update_attributes(params[:torneotipo])
        format.html { redirect_to @torneotipo, notice: 'Torneotipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @torneotipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /torneotipos/1
  # DELETE /torneotipos/1.json
  def destroy
    @torneotipo = Torneotipo.find(params[:id])
    @torneotipo.destroy

    respond_to do |format|
      format.html { redirect_to torneotipos_url }
      format.json { head :no_content }
    end
  end
end
