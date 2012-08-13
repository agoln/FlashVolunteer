class Users::SessionsController < Devise::SessionsController
    include ApplicationHelper
    include UsersHelper
    skip_authorization_check


  def should_remove_returns_to?
      false
  end

  def new
      @title = "Sign in to your account | Flash Volunteer"
      super
  end

  def third_party
    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def mobile
    session[:api] = true
    case params[:provider]
    when "facebook"
      self.facebook
    when "google"
      self.google
    when "twitter"
      self.twitter
    end
  end

  def facebook
    token = params[:token]
    auth_hash = get_auth_hash(OmniAuth::Strategies::Facebook.new(ENV['FACEBOOK_API_KEY'], ENV['FACEBOOK_API_SECRET']),
                              ENV['FACEBOOK_API_KEY'],
                              ENV['FACEBOOK_API_SECRET'],
                              params[:token])
    sign_in_with_third_party(auth_hash)
  end

  def google
    token = params[:token]
    auth_hash = get_auth_hash(OmniAuth::Strategies::GoogleOauth2.new(ENV['GOOGLE_API_KEY'], session[:api] ? ENV['GOOGLE_CLIENT_API_SECRET'] : ENV['GOOGLE_API_SECRET']),
                              ENV['GOOGLE_API_KEY'],
                              session[:api] ? ENV['GOOGLE_CLIENT_API_SECRET'] : ENV['GOOGLE_API_SECRET'],
                              params[:token])
    sign_in_with_third_party(auth_hash)
  end

  def twitter
    token = params[:token]
    auth_hash = get_auth_hash(OmniAuth::Strategies::Twitter.new(ENV['TWITTER_API_KEY'], ENV['TWITTER_API_SECRET']),
                              ENV['TWITTER_API_KEY'],
                              ENV['TWITTER_API_SECRET'],
                              params[:token])
    sign_in_with_third_party(auth_hash)
  end

  # POST /resource/sign_in
  def create
    super
    if (params[:api])
      session[:api] = true
    end
    if (session[:sign_up_for_event])
        event = Event.find(session[:sign_up_for_event])
        if (event != nil)
          event.participants << current_user if !event.participants.include?(current_user)
        end
        session[:sign_up_for_event] = nil
    end
    store_original_user_logged_in(current_user)
  end

  private

  def get_auth_hash(strategy, key, secret, code)
    client = OAuth2::Client.new(key, secret, strategy.options.client_options)
    strategy.access_token = client.get_token(:headers => { :code => code })
    strategy.auth_hash
  end

end
