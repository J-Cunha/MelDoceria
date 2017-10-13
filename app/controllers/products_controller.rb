class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @categories = Category.all
    @flavors = Flavor.all
    @sizes = []

  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @product.product_sizes.build()
  end

  # GET /products/1/edit
  def edit
    @product.product_sizes.build()  if (@product.product_sizes.empty? || @product.product_sizes.nil?)


  end

  # POST /products
  # POST /products.json
  def crop

  end
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html {
          if product_params[:product_image].present?
            render :crop ## Render the view for cropping
          else
            redirect_to @product, notice: 'Product was successfully created.'
          end
        }
        format.json {render :show, status: :created, location: @product}

      else
        log.debug @product.errors.full_messages
        format.html {render :new}
        format.json {render json: @product.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update

    respond_to do |format|
      if @product.update(product_params)
        format.html {
          if product_params[:product_image].present?
            render :crop ## Render the view for cropping
            else
              redirect_to @product, notice: 'Product was successfully updated.'
          end
        }
        format.json {render :show, status: :ok, location: @product}
      else
        format.html {render :edit}
        format.json {render json: @product.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html {redirect_to products_url, notice: 'Product was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:product_image,
                                    :product_image_crop_x,
                                    :product_image_crop_y,
                                    :product_image_crop_w,
                                    :product_image_crop_h,
                                    :category_id,
                                    :description, :full_description,
                                    :name, product_sizes_attributes: [:id, :name, :weight, :height, :width, :depth, :value, :_destroy])
  end
end
