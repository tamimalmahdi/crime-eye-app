require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    @title = "The Great Chess Set #{rand(1000)}"
  end

  test 'should get index' do
    get products_url
    assert_response :success
  end

  test 'should get new' do
    get new_product_url
    assert_response :success
  end

  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html do
          redirect_to @product,
                      notice: 'Product was successfully created.'
        end
        format.json do
          render :show, status: :created,
                        location: @product
        end
      else
        puts @product.errors.full_messages
        format.html { render :new }
        format.json do
          render json: @product.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  test 'should create product' do
    assert_difference('Product.count') do
      post products_url, params: {
        product: {
          title: @title,
          description: @product.description,
          image_url: @product.image_url,
          price: @product.price
        }
      }
    end

    assert_redirected_to product_url(Product.last)
  end

  test 'should show product' do
    get product_url(@product)
    assert_response :success
  end

  test 'should get edit' do
    get edit_product_url(@product)
    assert_response :success
  end

  test 'should update product' do
    patch product_url(@product), params: {
      product: {
        title: @title,
        description: @product.description,
        image_url: @product.image_url,
        price: @product.price
      }
    }
    assert_redirected_to product_url(@product)
  end

  test 'should destroy product' do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
