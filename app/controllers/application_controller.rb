class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  add_flash_types :success, :info, :warining, :danger
  
  include SessionsHelper
end
