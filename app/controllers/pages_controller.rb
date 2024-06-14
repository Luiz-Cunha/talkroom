class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :signup_page ]
  before_action :redirect_if_logged_in, only: [:home]

  def home
    if params[:id]
      @counsellor = Counsellor.find(params[:id])
      @markers = {
        lat: @counsellor.latitude,
        lng: @counsellor.longitude,
      }
    else
      @counsellors = Counsellor.all
      @markers = @counsellors.map do |counsellor|
        {
          lat: counsellor.latitude,
          lng: counsellor.longitude,
        }
      end
    end
  end

  def signup_page
  end

  def how_does_it_work
  end

  def redirect_if_logged_in
    return unless request.referer == request.url

    if user_signed_in?
      redirect_to profile_user_path(current_user)
    elsif counsellor_signed_in?
      redirect_to profile_counsellor_path(current_counsellor)
    elsif supervisor_signed_in?
      redirect_to profile_supervisor_path(current_supervisor)
    end
  end

end
