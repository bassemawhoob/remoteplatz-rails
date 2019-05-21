class ValidateController < ApplicationController
  # API call parameters validations
  include Rosebud
  params do requires :email end

  def check
    response = EmailValidationService.validate(params)
    status_code = response["error"] ? response["error"]["code"].to_i : 200
    render json: response, status: status_code
  end
end
