require 'spec_helper'

describe "Index Page" do
  it "should be ok" do
    get '/'
    expect(last_response).to be_ok
  end
end