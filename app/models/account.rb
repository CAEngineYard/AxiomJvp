require 'onelogin/ruby-saml/settings'

class Account < ActiveRecord::Base

  def Account.get_saml_settings
    # should retrieve SAML-settings based on subdomain, IP-address, NameID or similar
    settings = Onelogin::Saml::Settings.new


    settings.assertion_consumer_service_url   = 'http://corpappsdev.careerbuilder.com/saml/consume'
    settings.issuer                           = 'http://corpappsdev.careerbuilder.com'
    settings.idp_sso_target_url               = 'https://cbtest.okta.com/app/template_saml_2_0/k4lymtarUFNMMBSZZSOI/sso/saml'
    settings.idp_cert_fingerprint             =  '02:05:79:D8:96:CC:CA:54:2F:16:E2:6E:7D:32:F3:54:95:61:89:71'
    settings.name_identifier_format           = "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"

    settings
  end


end
