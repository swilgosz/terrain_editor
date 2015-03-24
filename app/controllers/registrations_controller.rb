class RegistrationsController < Devise::RegistrationsController
  before_action :configure_account_update_params

  protected

    def configure_account_update_params
      devise_parameter_sanitizer.for(:account_update) << [:nickname, :organization]
    end
end
