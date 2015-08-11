class RollesController < ApplicationController
  before_action :set_rolle, only: [:show, :edit, :update, :destroy]

  # GET /rolles
  # GET /rolles.json
  def index
    @rolles = Rolle.all
  end

  # GET /rolles/1
  # GET /rolles/1.json
  def show
  end

  # GET /rolles/new
  def new
    @rolle = Rolle.new
  end

  # GET /rolles/1/edit
  def edit
  end

  # POST /rolles
  # POST /rolles.json
  def create
    @rolle = Rolle.new(rolle_params)

    respond_to do |format|
      if @rolle.save
        format.html { redirect_to @rolle, notice: 'Rolle was successfully created.' }
        format.json { render :show, status: :created, location: @rolle }
      else
        format.html { render :new }
        format.json { render json: @rolle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rolles/1
  # PATCH/PUT /rolles/1.json
  def update
    respond_to do |format|
      if @rolle.update(rolle_params)
        format.html { redirect_to @rolle, notice: 'Rolle was successfully updated.' }
        format.json { render :show, status: :ok, location: @rolle }
      else
        format.html { render :edit }
        format.json { render json: @rolle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rolles/1
  # DELETE /rolles/1.json
  def destroy
    @rolle.destroy
    respond_to do |format|
      format.html { redirect_to rolles_url, notice: 'Rolle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rolle
      @rolle = Rolle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rolle_params
      params[:rolle]
    end
end
