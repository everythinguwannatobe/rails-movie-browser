class ApplicationController < ActionController::Base
  def hello
    render html: "Hello Y'all!"
  end
end
