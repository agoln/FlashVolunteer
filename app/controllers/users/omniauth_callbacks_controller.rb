class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    include UsersHelper
    skip_authorization_check
    def facebook
        sign_in_with_third_party(request.env["omniauth.auth"])
    end

    def google_oauth2
        sign_in_with_third_party(request.env["omniauth.auth"])
    end

    def should_remove_returns_to?
        false
    end
end
