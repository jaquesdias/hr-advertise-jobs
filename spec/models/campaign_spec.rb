require 'rails_helper'

RSpec.describe Campaign, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:external_reference) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:ad_description) }
  end
end
