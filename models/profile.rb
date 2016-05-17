class Profile

  attr_accessor :address, :building, :postcode, :phone

  def initialize (address, building, postcode, phone )
      @address = address
      @building = building
      @postcode = postcode
      @phone = phone
  end


  def upcase
    return @profile.postcode.upcase
  end


  def camelcase
    return "code_clan".split('_').collect(&:capitalize).join
  end

end