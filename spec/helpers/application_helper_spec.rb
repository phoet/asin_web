require 'rails_helper'

describe ApplicationHelper do
  it "creates subtitle" do
    expect(subtitle).to eql("examples using the ASIN gem")
  end
end
