class CustomHeadersController < ApplicationController
  def index
    custom_headers = {}
    request.headers.each do |k, v|
      if k =~ /^HTTP_(.+)/
        custom_headers[$1] = v
      end
    end
    render json: custom_headers
  end
end
