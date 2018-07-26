class ApplicationController < ActionController::Base
  before_action :authenticate_tenant!
end
