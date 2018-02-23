class AdService
  def self.all_ads
    request = Faraday.get 'http://mockbin.org/bin/fcb30500-7b98-476f-810d-463a0b8fc3df'

    if request.success?
      response = JSON.parse(request.body)
      response['ads'].map do |ad|
        OpenStruct.new(
          reference:   ad['reference'],
          status:      ad['status'],
          description: ad['description']
        )
      end
    end
  end
end
