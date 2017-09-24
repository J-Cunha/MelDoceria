class ProductSizeCategoriesController < ApplicationController
  before_action :set_product_size_category, only: [:show, :edit, :update, :destroy]

  # GET /product_size_categories
  # GET /product_size_categories.json
  def index
    @product_size_categories = ProductSizeCategory.all
  end

  # GET /product_size_categories/1
  # GET /product_size_categories/1.json
  def show
  end

  # GET /product_size_categories/new
  def new
    @product_size_category = ProductSizeCategory.new
  end

  # GET /product_size_categories/1/edit
  def edit
  end

  # POST /product_size_categories
  # POST /product_size_categories.json
  def create
    @product_size_category = ProductSizeCategory.new(product_size_category_params)

    respond_to do |format|
      if @product_size_category.save
        format.html { redirect_to @product_size_category, notice: 'Product size category was successfully created.' }
        format.json { render :show, status: :created, location: @product_size_category }
      else
        format.html { render :new }
        format.json { render json: @product_size_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_size_categories/1
  # PATCH/PUT /product_size_categories/1.json
  def update
    respond_to do |format|
      if @product_size_category.update(product_size_category_params)
        format.html { redirect_to @product_size_category, notice: 'Product size category was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_size_category }
      else
        format.html { render :edit }
        format.json { render json: @product_size_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_size_categories/1
  # DELETE /product_size_categories/1.json
  def destroy
    @product_size_category.destroy
    respond_to do |format|
      format.html { redirect_to product_size_categories_url, notice: 'Product size category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_size_category
      @product_size_category = ProductSizeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_size_category_params
      params.require(:product_size_category).permit(:name)
    end
end
