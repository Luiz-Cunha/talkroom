class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :signup_page ]

  def home
  end

  def signup_page
  end
end
