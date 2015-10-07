class ServiceDefinitionsController < ApplicationController
  before_action :set_service_definition, only: [:show, :edit, :update, :destroy]

  # GET /service_definitions
  def index
    @service_definitions = ServiceDefinition.all
  end

  # GET /service_definitions/1
  def show
  end

  # GET /service_definitions/new
  def new
    @service_definition = ServiceDefinition.new
  end

  # GET /service_definitions/1/edit
  def edit
  end

  # POST /service_definitions
  def create
    @service_definition = ServiceDefinition.new(service_definition_params)
    if @service_definition.save
      redirect_to @service_definition, notice: 'Service definition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /service_definitions/1
  def update
    if @service_definition.update(service_definition_params)
      redirect_to @service_definition, notice: 'Service definition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /service_definitions/1
  def destroy
    @service_definition.destroy
    redirect_to service_definitions_url, notice: 'Service definition was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_definition
      @service_definition = ServiceDefinition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_definition_params
      # [ params[:service_id], params[:service_code] ]
      fail "#{params.inspect}"
    end
end
