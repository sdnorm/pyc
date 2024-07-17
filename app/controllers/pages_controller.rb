class PagesController < ApplicationController
  before_action :hide_navbar, only: [:index]

  def index
  end

  def terms_of_service
  end
end
