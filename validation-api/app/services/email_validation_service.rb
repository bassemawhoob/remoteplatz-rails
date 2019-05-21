module EmailValidationService
  class << self
    include HTTParty
    def validate(params)
      url = "http://apilayer.net/api/check?access_key=#{Rails.application.credentials.dig(:mailboxlayer, :api_key)}&email=#{params[:email]}&smtp=1&format=1"
      response = HTTParty.get(url)
      is_valid = response["success"].to_s == "false" ? response : {"valid": response["smtp_check"]}
    end
  end
end
