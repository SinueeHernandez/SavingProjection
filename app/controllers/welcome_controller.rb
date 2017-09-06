class WelcomeController < ApplicationController
  before_action :authorize, only: [:edit, :update]
  def index
    flash[:notice] = t(:hello_flash)
  end
  def edit
  end
  def update
  end
end
