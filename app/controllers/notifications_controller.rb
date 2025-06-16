class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def unread_count
    render json: { unread_count: current_user.unread_messages_count }
  end
end
