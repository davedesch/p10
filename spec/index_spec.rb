require 'spec_helper'

describe "Home Page" do
  "should be ok" do
    get '/'
    expect(last_response).to be_ok
  end
end