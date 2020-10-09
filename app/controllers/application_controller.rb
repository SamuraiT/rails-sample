class ApplicationController < ActionController::Base

  def create_uuid
    cookies.signed.permanent[:uuid] = SecureRandom.uuid
  end

  def current_user
    if cookies.signed[:uuid].nil?
      create_uuid
    end
    cookies.signed[:uuid]
  end
end
