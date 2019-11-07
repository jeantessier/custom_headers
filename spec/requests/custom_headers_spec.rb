require 'rails_helper'

RSpec.describe "Custom Headers", type: :request do
  describe "GET /custom_headers" do
    let(:header_name) { "X-Custom-Header-#{rand 1_000...10_000}" }
    let(:header_value) { "custom value #{rand 1_000...10_000}" }
    let(:headers) { { header_name => header_value } }

    let(:expected_header_name) { header_name.upcase.gsub('-', '_') }

    before(:example) do
      get custom_headers_path, headers: headers
    end

    it { expect(response).to have_http_status(:ok) }
    it { expect(json).to have_key(expected_header_name) }
    it { expect(json).to include(expected_header_name => header_value) }
  end
end
