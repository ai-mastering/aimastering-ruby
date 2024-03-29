=begin
#AI Mastering API

#This is a AI Mastering API document. You can use the mastering feature of [AI Mastering](https://aimastering.com) through this API.

OpenAPI spec version: 1.0.0
Contact: info@bakuage.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'aimastering/api_client'
require 'aimastering/api_error'
require 'aimastering/version'
require 'aimastering/configuration'

# Models
require 'aimastering/models/access_token'
require 'aimastering/models/amazon_subscription'
require 'aimastering/models/anonymized_mastering'
require 'aimastering/models/audio'
require 'aimastering/models/audio_analysis'
require 'aimastering/models/audio_download_token'
require 'aimastering/models/config'
require 'aimastering/models/config_auth0'
require 'aimastering/models/config_paypal'
require 'aimastering/models/config_stripe'
require 'aimastering/models/config_version'
require 'aimastering/models/external_search_result'
require 'aimastering/models/external_search_result_itunes'
require 'aimastering/models/external_search_result_youtube'
require 'aimastering/models/group_buy_statistics'
require 'aimastering/models/jwt'
require 'aimastering/models/kpi'
require 'aimastering/models/library_audio'
require 'aimastering/models/library_audio_analysis'
require 'aimastering/models/library_audio_like'
require 'aimastering/models/mastering'
require 'aimastering/models/payment'
require 'aimastering/models/payment_customer'
require 'aimastering/models/plan'
require 'aimastering/models/sp_subscription'
require 'aimastering/models/subscription'
require 'aimastering/models/user'
require 'aimastering/models/user_statistics'
require 'aimastering/models/video'
require 'aimastering/models/video_download_token'

# APIs
require 'aimastering/api/access_token_api'
require 'aimastering/api/amazon_subscription_api'
require 'aimastering/api/audio_api'
require 'aimastering/api/config_api'
require 'aimastering/api/external_search_api'
require 'aimastering/api/library_audio_api'
require 'aimastering/api/mastering_api'
require 'aimastering/api/payment_api'
require 'aimastering/api/payment_customer_api'
require 'aimastering/api/plan_api'
require 'aimastering/api/sp_subscription_api'
require 'aimastering/api/statistics_api'
require 'aimastering/api/subscription_api'
require 'aimastering/api/user_api'
require 'aimastering/api/video_api'

module Aimastering
  class << self
    # Customize default settings for the SDK using block.
    #   Aimastering.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
