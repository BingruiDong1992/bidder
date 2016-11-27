class UsersController < ApplicationController
  def show
  	@bid_records = BidRecord.where(user_id: current_user).order("created_at DESC").first(30)
  	@sell_items = current_user.sell_items.order("created_at DESC").first(30)
  	@buy_items = current_user.buy_items.order("created_at DESC").first(30)
  end
end
