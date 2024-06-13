class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :signup_page ]

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
end

