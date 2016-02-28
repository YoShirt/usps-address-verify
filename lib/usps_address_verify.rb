require 'usps_address_verify/version'
require 'httparty'
require 'pp'

# This class wraps the USPS Web Tools API
class USPSAddressVeriify
  attr_accessor :user_id

  def initialize(user_id = nil)
    @user_id = user_id
  end

  def xml_request(address)
    "
    <AddressValidateRequest USERID='#{@user_id}'>
      <IncludeOptionalElements>true</IncludeOptionalElements>
      <ReturnCarrierRoute>true</ReturnCarrierRoute>
      <Address ID=\"0\">
        <FirmName />
        <Address1>#{address[:address1]}</Address1>
        <Address2>#{address[:address2]}</Address2>
        <City>#{address[:city]}</City>
        <State>#{address[:state]}</State>
        <Zip5>#{address[:zip5]}</Zip5>
        <Zip4>#{address[:zip4]}</Zip4>
      </Address>
    </AddressValidateRequest>
    "
  end

  def request_url(xml)
    "http://production.shippingapis.com/ShippingAPI.dll?API=Verify&XML=#{xml}"
  end

  def verify_address(address)
    pp(HTTParty.get(request_url(xml_request(address))))
  end
end
