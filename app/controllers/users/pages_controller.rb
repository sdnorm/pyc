class Users::PagesController < ApplicationController
  before_action :authenticate_user!

  def dashboard
  end

  def profile
  end
end
