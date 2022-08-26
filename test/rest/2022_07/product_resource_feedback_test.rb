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

class ProductResourceFeedback202207Test < Test::Unit::TestCase
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
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-07/products/632910392/resource_feedback.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "resource_feedback" => hash_including({"state" => "requires_action", "messages" => ["Needs at least one image."], "resource_updated_at" => "2022-07-02T01:51:59-04:00", "feedback_generated_at" => "2022-07-02T05:58:43.075441Z"}) }
      )
      .to_return(status: 200, body: JSON.generate({"resource_feedback" => {"created_at" => "2022-07-02T01:58:43-04:00", "updated_at" => "2022-07-02T01:58:43-04:00", "resource_id" => 632910392, "resource_type" => "Product", "resource_updated_at" => "2022-07-02T01:51:59-04:00", "messages" => ["Needs at least one image."], "feedback_generated_at" => "2022-07-02T01:58:43-04:00", "state" => "requires_action"}}), headers: {})

    product_resource_feedback = NewShopifyAPI::ProductResourceFeedback.new
    product_resource_feedback.product_id = 632910392
    product_resource_feedback.state = "requires_action"
    product_resource_feedback.messages = [
      "Needs at least one image."
    ]
    product_resource_feedback.resource_updated_at = "2022-07-02T01:51:59-04:00"
    product_resource_feedback.feedback_generated_at = "2022-07-02T05:58:43.075441Z"
    product_resource_feedback.save()

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-07/products/632910392/resource_feedback.json")
  end

  sig do
    void
  end
  def test_2()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-07/products/632910392/resource_feedback.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "resource_feedback" => hash_including({"state" => "success", "resource_updated_at" => "2022-07-02T01:51:59-04:00", "feedback_generated_at" => "2022-07-02T05:58:44.188216Z"}) }
      )
      .to_return(status: 200, body: JSON.generate({"resource_feedback" => {"created_at" => "2022-07-02T01:58:44-04:00", "updated_at" => "2022-07-02T01:58:44-04:00", "resource_id" => 632910392, "resource_type" => "Product", "resource_updated_at" => "2022-07-02T01:51:59-04:00", "messages" => [], "feedback_generated_at" => "2022-07-02T01:58:44-04:00", "state" => "success"}}), headers: {})

    product_resource_feedback = NewShopifyAPI::ProductResourceFeedback.new
    product_resource_feedback.product_id = 632910392
    product_resource_feedback.state = "success"
    product_resource_feedback.resource_updated_at = "2022-07-02T01:51:59-04:00"
    product_resource_feedback.feedback_generated_at = "2022-07-02T05:58:44.188216Z"
    product_resource_feedback.save()

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-07/products/632910392/resource_feedback.json")
  end

  sig do
    void
  end
  def test_3()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2022-07/products/632910392/resource_feedback.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"resource_feedback" => [{"created_at" => "2022-07-02T01:58:42-04:00", "updated_at" => "2022-07-02T01:58:42-04:00", "resource_id" => 632910392, "resource_type" => "Product", "resource_updated_at" => "2022-07-02T01:51:59-04:00", "messages" => ["Needs at least one image."], "feedback_generated_at" => "2022-07-02T00:58:42-04:00", "state" => "requires_action"}]}), headers: {})

    NewShopifyAPI::ProductResourceFeedback.all(
      product_id: 632910392,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2022-07/products/632910392/resource_feedback.json")
  end

end