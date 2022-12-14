# typed: strict
# frozen_string_literal: true

module NewShopifyAPI
  module Auth
    extend T::Sig

    class << self
      extend T::Sig

      sig { params(host: T.nilable(String)).returns(String) }
      def embedded_app_url(host)
        unless Context.setup?
          raise Errors::ContextNotSetupError, "NewShopifyAPI::Context not setup, please call NewShopifyAPI::Context.setup"
        end

        unless host
          raise Errors::MissingRequiredArgumentError, "host argument is required"
        end

        decoded_host = Base64.decode64(host)
        "https://#{decoded_host}/apps/#{Context.api_key}"
      end
    end
  end
end
