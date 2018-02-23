class UpsertCampaignService
  def initialize(service_ads)
    @service_ads = service_ads
  end

  def call
    @service_ads.each do |ad|
      upsert_campaign(ad)
    end
  end

  private

  def upsert_campaign(ad)
    campaign = Campaign.where(external_reference: ad.reference).first_or_initialize
    campaign.attributes = campaign_attributes(ad)

    campaign.save
  end

  def campaign_attributes(ad)
    {
      external_reference: ad.reference,
      status:             campaign_status(ad.status),
      ad_description:     ad.description
    }
  end

  def campaign_status(ad_status)
    case ad_status
    when 'enabled'
      'active'
    when 'disabled'
      'paused'
    else
      'deleted'
    end
  end
end
