require "test_helper"

class <%= class_name %>Test < ActiveSupport::TestCase

  should "be valid from the factory" do
    assert_valid Factory.build(:<%= singular_name %>)
  end

end
