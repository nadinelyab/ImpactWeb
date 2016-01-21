class RegistrationsController < Devise::RegistrationsController
  def new
  	super
  end

  def create
    if verify_recaptcha
    	super
    else
    	redirect_to new_user_registration_path(resource)
    end
  end

end
