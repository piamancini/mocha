require 'mocha/ruby_version'

module Assertions
  def assert_method_visiblity(object, method_name, visiblity)
    method_key = Mocha::PRE_RUBY_V19 ? method_name.to_s : method_name.to_sym
    assert object.send("#{visiblity}_methods", false).include?(method_key), "#{method_name} is not #{visiblity}"
  end
end
