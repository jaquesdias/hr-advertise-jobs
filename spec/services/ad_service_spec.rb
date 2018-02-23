require 'rails_helper'

RSpec.describe AdService do
  let(:ad1) { OpenStruct.new(reference: '1', status: 'enabled', description: 'Description for campaign 11') }
  let(:ad2) { OpenStruct.new(reference: '2', status: 'disabled', description: 'Description for campaign 12') }
  let(:ad3) { OpenStruct.new(reference: '3', status: 'enabled', description: 'Description for campaign 13') }

  describe '.all_ads' do
    context 'When the API call is successful' do
      it 'Returns an array of OpenStruct' do
        expect(AdService.all_ads).to eq([ad1, ad2, ad3])
      end
    end
  end
end
