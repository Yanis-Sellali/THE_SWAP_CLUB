class PagesController < ApplicationController
  def home
    @jerseys = Jersey.includes(:team, :user).order(created_at: :desc).limit(6)
    @teams = Team.limit(10)

    if user_signed_in?
      exchanged_ids = current_user.given_reviews.pluck(:exchange_id)

      @pending_review = Exchange
        .where(status: "accepted")
        .where("sender_id = :id OR receiver_id = :id", id: current_user.id)
        .where.not(id: exchanged_ids)
        .order(updated_at: :desc)
        .first
    end
  end
end
