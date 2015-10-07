class ServiceAttributeValuesController < ApplicationController
  before_action :set_service_attribute_value, only: [:show, :edit, :update, :destroy]

  # GET /service_attribute_values
  def index
    @service_attribute_values = ServiceAttributeValue.all
  end

  # GET /service_attribute_values/1
  def show
  end

  # GET /service_attribute_values/new
  def new
    @service_attribute_value = ServiceAttributeValue.new
  end

  # GET /service_attribute_values/1/edit
  def edit
  end

  # POST /service_attribute_values
  def create
    @service_attribute_value = ServiceAttributeValue.new(service_attribute_value_params)

    if @service_attribute_value.save
      redirect_to @service_attribute_value, notice: 'Service attribute value was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /service_attribute_values/1
  def update
    if @service_attribute_value.update(service_attribute_value_params)
      redirect_to @service_attribute_value, notice: 'Service attribute value was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /service_attribute_values/1
  def destroy
    @service_attribute_value.destroy
    redirect_to service_attribute_values_url, notice: 'Service attribute value was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_attribute_value
      @service_attribute_value = ServiceAttributeValue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_attribute_value_params
      params.require(:service_attribute_value).permit(:service_attribute_id, :key, :name)
    end
end
