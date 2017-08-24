class ApplicationController < ActionController::Base
  #Provide Locale to theapp
  before_action :set_locale
  
  def set_locale
   I18n.locale = params[:locale] || I18n.default_locale
  end
  
  protect_from_forgery with: :exception

end
