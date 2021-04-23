class PlansController < ApplicationController
  def index
    # @plans = policy_scope(Plan).all
    @plans = Plan.all.limit(3)
  end

  def show
    # skip_authorization
    @plan = Plan.find(params[:id])
    @user = current_user
    # if @user.stripeid.nil?
    #   Stripe::Customer.create({
    #     email: @user.email,
    #     description: 'My First Test Customer (created for API docs)'
    #   })
    # end
  end
end
