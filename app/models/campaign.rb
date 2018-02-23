class Campaign < ApplicationRecord
  validates_presence_of :external_reference, :status, :ad_description
end
