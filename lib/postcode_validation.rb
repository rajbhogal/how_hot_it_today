class PostcodeValidation
  def initialize(postcode)
    @postcode = postcode
  end

  def valid?
    UKPostcode.parse(postcode).valid?
  end

  private

  attr_accessor :postcode
end
