class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :nif
    devise_parameter_sanitizer.for(:sign_up) << :nombre
    devise_parameter_sanitizer.for(:sign_up) << :apellidos
    devise_parameter_sanitizer.for(:sign_up) << :nombre_comercial
    devise_parameter_sanitizer.for(:sign_up) << :telefono
    devise_parameter_sanitizer.for(:sign_up) << :fax
    devise_parameter_sanitizer.for(:sign_up) << :telf_movil
    devise_parameter_sanitizer.for(:sign_up) << :web
  end

  protect_from_forgery with: :exception
end
