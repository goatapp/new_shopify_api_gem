# typed: strict
# frozen_string_literal: true

module NewShopifyAPI
  class Inflector < Zeitwerk::GemInflector
    extend T::Sig

    sig { params(basename: String, abspath: String).returns(String) }
    def camelize(basename, abspath)
      if basename =~ /\Anew_shopify_api(.*)/
        "NewShopifyAPI" + super(Regexp.last_match(1), abspath)
      else
        super
      end
    end
  end
end
