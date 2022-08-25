# typed: strict
# frozen_string_literal: true

########################################################################################################################
# This file is auto-generated. If you have an issue, please create a GitHub issue.                                     #
########################################################################################################################

$VERBOSE = nil
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require "webmock/minitest"

require "new_shopify_api"
require_relative "../../test_helper"

class Theme202207Test < Test::Unit::TestCase
  def setup
    super

    test_session = NewShopifyAPI::Auth::Session.new(id: "id", shop: "test-shop.myshopify.io", access_token: "this_is_a_test_token")
    NewShopifyAPI::Context.activate_session(test_session)
    modify_context(api_version: "2022-07")
  end

  def teardown
    super

    NewShopifyAPI::Context.deactivate_session
  end

  sig do
    void
  end
  def test_1()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2022-07/themes.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"themes" => [{"id" => 828155753, "name" => "Comfort", "created_at" => "2022-07-02T01:51:59-04:00", "updated_at" => "2022-07-02T01:51:59-04:00", "role" => "main", "theme_store_id" => nil, "previewable" => true, "processing" => false, "admin_graphql_api_id" => "gid://shopify/Theme/828155753"}, {"id" => 976877075, "name" => "Preview of Parallax", "created_at" => "2022-07-02T01:51:59-04:00", "updated_at" => "2022-07-02T01:51:59-04:00", "role" => "demo", "theme_store_id" => 688, "previewable" => true, "processing" => false, "admin_graphql_api_id" => "gid://shopify/Theme/976877075"}, {"id" => 752253240, "name" => "Sandbox", "created_at" => "2022-07-02T01:51:59-04:00", "updated_at" => "2022-07-02T01:51:59-04:00", "role" => "unpublished", "theme_store_id" => nil, "previewable" => true, "processing" => false, "admin_graphql_api_id" => "gid://shopify/Theme/752253240"}]}), headers: {})

    NewShopifyAPI::Theme.all()

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2022-07/themes.json")
  end

  sig do
    void
  end
  def test_2()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-07/themes.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "theme" => hash_including({"name" => "Lemongrass", "src" => "http://themes.shopify.com/theme.zip", "role" => "main"}) }
      )
      .to_return(status: 200, body: JSON.generate({"theme" => {"id" => 1049083723, "name" => "Lemongrass", "created_at" => "2022-07-02T02:02:56-04:00", "updated_at" => "2022-07-02T02:02:56-04:00", "role" => "unpublished", "theme_store_id" => nil, "previewable" => false, "processing" => true, "admin_graphql_api_id" => "gid://shopify/Theme/1049083723"}}), headers: {})

    theme = NewShopifyAPI::Theme.new
    theme.name = "Lemongrass"
    theme.src = "http://themes.shopify.com/theme.zip"
    theme.role = "main"
    theme.save()

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-07/themes.json")
  end

  sig do
    void
  end
  def test_3()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2022-07/themes/828155753.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"theme" => {"id" => 828155753, "name" => "Comfort", "created_at" => "2022-07-02T01:51:59-04:00", "updated_at" => "2022-07-02T01:51:59-04:00", "role" => "main", "theme_store_id" => nil, "previewable" => true, "processing" => false, "admin_graphql_api_id" => "gid://shopify/Theme/828155753"}}), headers: {})

    NewShopifyAPI::Theme.find(
      id: 828155753,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2022-07/themes/828155753.json")
  end

  sig do
    void
  end
  def test_4()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2022-07/themes/752253240.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "theme" => hash_including({"name" => "Experimental"}) }
      )
      .to_return(status: 200, body: JSON.generate({"theme" => {"name" => "Experimental", "role" => "unpublished", "id" => 752253240, "created_at" => "2022-07-02T01:51:59-04:00", "updated_at" => "2022-07-02T02:02:58-04:00", "theme_store_id" => nil, "previewable" => true, "processing" => false, "admin_graphql_api_id" => "gid://shopify/Theme/752253240"}}), headers: {})

    theme = NewShopifyAPI::Theme.new
    theme.id = 752253240
    theme.name = "Experimental"
    theme.save()

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2022-07/themes/752253240.json")
  end

  sig do
    void
  end
  def test_5()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2022-07/themes/752253240.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "theme" => hash_including({"role" => "main"}) }
      )
      .to_return(status: 200, body: JSON.generate({"theme" => {"role" => "main", "id" => 752253240, "name" => "Sandbox", "created_at" => "2022-07-02T01:51:59-04:00", "updated_at" => "2022-07-02T02:02:59-04:00", "theme_store_id" => nil, "previewable" => true, "processing" => false, "admin_graphql_api_id" => "gid://shopify/Theme/752253240"}}), headers: {})

    theme = NewShopifyAPI::Theme.new
    theme.id = 752253240
    theme.role = "main"
    theme.save()

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2022-07/themes/752253240.json")
  end

  sig do
    void
  end
  def test_6()
    stub_request(:delete, "https://test-shop.myshopify.io/admin/api/2022-07/themes/752253240.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"id" => 752253240, "name" => "Sandbox", "created_at" => "2022-07-02T01:51:59-04:00", "updated_at" => "2022-07-02T01:51:59-04:00", "role" => "unpublished", "theme_store_id" => nil, "previewable" => true, "processing" => false, "admin_graphql_api_id" => "gid://shopify/Theme/752253240"}), headers: {})

    NewShopifyAPI::Theme.delete(
      id: 752253240,
    )

    assert_requested(:delete, "https://test-shop.myshopify.io/admin/api/2022-07/themes/752253240.json")
  end

end
