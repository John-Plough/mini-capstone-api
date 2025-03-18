require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Order.count", 1 do
      post "/orders.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end

  test "show" do
    get "/orders/#{Order.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal [ "user_id", "product_id", "quantity", "subtotal", "tax", "created_at", "updated_at" ], data.keys
  end
end
