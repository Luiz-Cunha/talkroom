class CounsellorsController < ApplicationController
  def profile
    @counsellor = Counsellor.find(params[:id])
    @patients = @counsellor.users
  end
end
