require "spec_helper"

describe "Picture" do
  describe "Factory" do
    context "given a simple picture creation" do
      it "should not raise" do
        Factory(:picture).should not_raise
      end
    end
  end
end
