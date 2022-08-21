class Request
  def self.call
    IEX::Api::Client.new(
      publishable_token: 'pk_7998298f9c6f49e5b7dbf7da4c352274',
      secret_token: 'sk_5fe8a27fc70248b59a5d17620acc0dee',
      endpoint: 'https://cloud.iexapis.com/v1'
    )
  end
end
