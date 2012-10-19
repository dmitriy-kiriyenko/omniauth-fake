require "omniauth"
require "omniauth/multipassword/base"

module OmniAuth
  module Strategies
    class Fake
      include OmniAuth::Strategy
      include OmniAuth::MultiPassword::Base

      info do
        { username: username }
      end

      def model
        options[:model] || ::User
      end

      def authenticate(username, password)
        model.fake_authenticate(username)
      end
    end
  end
end
