class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname, :birthdate, :counseling_experience, :counseling_experience_description, :gender, :location, :received_counseling_before, :received_counseling_description, :university_name, :university_id, :degree_program, :year_of_study, :expected_graduation_date, :other_issues, :consent, :terms_conditions, issues_array: []])
  end
end
