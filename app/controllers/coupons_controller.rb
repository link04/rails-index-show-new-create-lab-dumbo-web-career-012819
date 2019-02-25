class CouponsController < ApplicationController

  before_action :get_coupon, only: [:update, :show, :edit]

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    @coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(@coupon)
  end

  def show
  end

  def edit
  end

  def update
    @coupon.update(coupon_params)
    redirect_to coupon_path(@coupon)
  end

  def coupon_params
     params.require(:coupon).permit(:coupon_code, :store)
  end

  private

  def get_coupon
    @coupon = Coupon.find(params[:id])
  end

end
