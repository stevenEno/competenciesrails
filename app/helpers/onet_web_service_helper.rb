# app/helpers/onet_web_service_helper.rb

module OnetWebServiceHelper
    def onet_web_service
      username = "davincischools_insti"
      password = "8557xzm"
      @onet_web_service ||= OnetWebService.new(username, password)
    end
  end
  