module NavbarVisibility
  extend ActiveSupport::Concern

  included do
    before_action :set_show_navbar
  end

  private

  def set_show_navbar
    @show_navbar = true
  end

  def hide_navbar
    @show_navbar = false
  end
end