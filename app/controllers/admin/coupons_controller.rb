class Admin::CouponsController < ApplicationController
  before_action :authenticate_user!

  def new
    @coupon = Coupon.new
  end

  def create 
    @coupon = current_user.coupons.create(coupon_params)
    redirect_to admin_coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  private

  def coupon_params
    params.require(:coupon).permit(:title, :description, :cost)
  end
end
