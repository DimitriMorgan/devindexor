class AdminController < ApplicationController
  layout 'admin'

  before_action :require_admin
  def index
  end

  private

  def require_admin
    unless user_signed_in? && current_user.role == 'admin'
      redirect_to :root
    end
  end
end
