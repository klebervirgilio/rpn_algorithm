require 'minitest/spec'
require 'minitest/autorun'
require_relative '../rpn'

describe Rpn do
  it "must return 14" do
    rpn = Rpn.new("7 7 +")
    rpn.process!.must_equal 14
  end

  it "must return -40" do
    rpn = Rpn.new("2 6 7 * -")
    rpn.process!.must_equal -40
  end

  it "must return 80" do
    rpn = Rpn.new("20 10 10 * -")
    rpn.process!.must_equal -80
  end

  it "must return 1000" do
    rpn = Rpn.new("1000 0 0 * -")
    rpn.process!.must_equal 1000
  end
end