require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../models'
require_relative './security'

module MicrosoftGraph
    module Models
        module Security
            class LoggedOnUser
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # User account name of the logged-on user.
                @account_name
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # User account domain of the logged-on user.
                @domain_name
                ## 
                # The OdataType property
                @odata_type
                ## 
                ## Gets the accountName property value. User account name of the logged-on user.
                ## @return a string
                ## 
                def account_name
                    return @account_name
                end
                ## 
                ## Sets the accountName property value. User account name of the logged-on user.
                ## @param value Value to set for the account_name property.
                ## @return a void
                ## 
                def account_name=(value)
                    @account_name = value
                end
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new loggedOnUser and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a logged_on_user
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LoggedOnUser.new
                end
                ## 
                ## Gets the domainName property value. User account domain of the logged-on user.
                ## @return a string
                ## 
                def domain_name
                    return @domain_name
                end
                ## 
                ## Sets the domainName property value. User account domain of the logged-on user.
                ## @param value Value to set for the domain_name property.
                ## @return a void
                ## 
                def domain_name=(value)
                    @domain_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "accountName" => lambda {|n| @account_name = n.get_string_value() },
                        "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the @odata.type property value. The OdataType property
                ## @return a string
                ## 
                def odata_type
                    return @odata_type
                end
                ## 
                ## Sets the @odata.type property value. The OdataType property
                ## @param value Value to set for the odata_type property.
                ## @return a void
                ## 
                def odata_type=(value)
                    @odata_type = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("accountName", @account_name)
                    writer.write_string_value("domainName", @domain_name)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
