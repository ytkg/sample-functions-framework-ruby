require "rspec"
require "functions_framework/testing"

describe "hello function" do
  include FunctionsFramework::Testing

  let(:response) do
    load_temporary "app.rb" do
      request = make_get_request "http://example.com:8080/"
      call_http("hello", request)
    end
  end

  it 'return status code 200' do
    expect(response.status).to eq 200
  end

  it 'return hello message' do
    expect(response.body.join).to eq "Hello, world!\n"
  end
end
