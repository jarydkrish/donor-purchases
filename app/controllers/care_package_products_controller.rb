class CarePackageProductsController < ApplicationController
  before_action :set_care_package_product, only: %i[ show edit update destroy ]

  # GET /care_package_products or /care_package_products.json
  def index
    @care_package_products = CarePackageProduct.all
  end

  # GET /care_package_products/1 or /care_package_products/1.json
  def show
  end

  # GET /care_package_products/new
  def new
    @care_package_product = CarePackageProduct.new
  end

  # GET /care_package_products/1/edit
  def edit
  end

  # POST /care_package_products or /care_package_products.json
  def create
    @care_package_product = CarePackageProduct.new(care_package_product_params)

    respond_to do |format|
      if @care_package_product.save
        format.html { redirect_to care_package_product_url(@care_package_product), notice: "Care package product was successfully created." }
        format.json { render :show, status: :created, location: @care_package_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @care_package_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /care_package_products/1 or /care_package_products/1.json
  def update
    respond_to do |format|
      if @care_package_product.update(care_package_product_params)
        format.html { redirect_to care_package_product_url(@care_package_product), notice: "Care package product was successfully updated." }
        format.json { render :show, status: :ok, location: @care_package_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @care_package_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /care_package_products/1 or /care_package_products/1.json
  def destroy
    @care_package_product.destroy

    respond_to do |format|
      format.html { redirect_to care_package_products_url, notice: "Care package product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_care_package_product
      @care_package_product = CarePackageProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def care_package_product_params
      params.require(:care_package_product).permit(:care_package_id, :product_id, :quantity)
    end
end
