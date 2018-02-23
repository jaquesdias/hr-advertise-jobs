class CampaignsController < ApplicationController
  def index
    upsert_campaign_instance.call
    campaigns = Campaign.all

    render json: campaigns
  end

  private

  def upsert_campaign_instance
    UpsertCampaignService.new(AdService.all_ads)
  end
end
