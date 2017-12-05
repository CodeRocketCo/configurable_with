require 'configurable_with'
require 'minitest/autorun'

describe ConfigurableWith do
	before do
		class TestClass
			include ConfigurableWith.options(:first_value, :second_value)
		end
	end

  describe "when the class has a configuration" do
    it "the configuration must have correct value" do
			TestClass.configure do |config|
  			config.first_value = "value 1"
  			config.second_value = "value 2"
			end

			TestClass.config.first_value.must_equal "value 1"
			TestClass.config.second_value.must_equal "value 2"
    end
  end

end
