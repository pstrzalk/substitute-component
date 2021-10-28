require_relative "./../automated_init"

context "Service" do
  context "Success" do
    service = Service.new
    result = service.do_service_stuff(6)

    test "result value" do
      assert result == true
    end
  end
end
