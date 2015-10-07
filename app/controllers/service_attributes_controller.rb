class ServiceAttributesController < ApplicationController
  before_action :set_service_attribute, only: [:show, :edit, :update, :destroy]

  # GET /service_attributes
  def index
    @service_attributes = ServiceAttribute.all
  end

  # GET /service_attributes/1
  def show
  end

  # GET /service_attributes/new
  def new
    @service_attribute = ServiceAttribute.new
  end

  # GET /service_attributes/1/edit
  def edit
  end

  # POST /service_attributes
  def create
    @service_attribute = ServiceAttribute.new(service_attribute_params)

    if @service_attribute.save
      redirect_to @service_attribute, notice: 'Service attribute was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /service_attributes/1
  def update
    if @service_attribute.update(service_attribute_params)
      redirect_to @service_attribute, notice: 'Service attribute was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /service_attributes/1
  def destroy
    @service_attribute.destroy
    redirect_to service_attributes_url, notice: 'Service attribute was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_attribute
      @service_attribute = ServiceAttribute.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_attribute_params
      params.require(:service_attribute).permit(:service_id, :variable, :code, :datatype, :required, :datatype_description, :order, :description)
    end
end
