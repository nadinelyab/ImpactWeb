class RegistrationsController < Devise::RegistrationsController
  def new
  	super
  end

  def create
    if verify_recaptcha
    	super
    else
    	render 'new'
    end
  end

end
