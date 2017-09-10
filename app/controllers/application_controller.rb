class ApplicationController < ActionController::Base
  #Provide Locale to theapp
  before_action :set_locale
  before_action :fetch_menu
  
  
  def fetch_menu
    if @menu_bar.nil? then
      @menu_bar = Menu.all()
    end
  end
  
  def set_locale
   I18n.locale = params[:locale] || I18n.default_locale
  end
  
  protect_from_forgery with: :exception

  def default_url_options 
    { locale: I18n.locale } 
  end 
  
  #User region
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
  #End user region
end
