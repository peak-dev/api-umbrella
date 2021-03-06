class Admin::SessionsController < Devise::SessionsController
  before_filter :set_locale

  def new
  end

  def after_sign_out_path_for(resource_or_scope)
    admin_path
  end

  private

  def set_locale
    I18n.locale = http_accept_language.compatible_language_from(I18n.available_locales)
  end
end
