require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # Contains installation experience properties for a Win32 App
        class Win32LobAppInstallExperience
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the type of restart action.
            @device_restart_behavior
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the type of execution context the app runs in.
            @run_as_account
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
            ## Instantiates a new win32LobAppInstallExperience and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a win32_lob_app_install_experience
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Win32LobAppInstallExperience.new
            end
            ## 
            ## Gets the deviceRestartBehavior property value. Indicates the type of restart action.
            ## @return a win32_lob_app_restart_behavior
            ## 
            def device_restart_behavior
                return @device_restart_behavior
            end
            ## 
            ## Sets the deviceRestartBehavior property value. Indicates the type of restart action.
            ## @param value Value to set for the device_restart_behavior property.
            ## @return a void
            ## 
            def device_restart_behavior=(value)
                @device_restart_behavior = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceRestartBehavior" => lambda {|n| @device_restart_behavior = n.get_enum_value(MicrosoftGraph::Models::Win32LobAppRestartBehavior) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "runAsAccount" => lambda {|n| @run_as_account = n.get_enum_value(MicrosoftGraph::Models::RunAsAccountType) },
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
            ## Gets the runAsAccount property value. Indicates the type of execution context the app runs in.
            ## @return a run_as_account_type
            ## 
            def run_as_account
                return @run_as_account
            end
            ## 
            ## Sets the runAsAccount property value. Indicates the type of execution context the app runs in.
            ## @param value Value to set for the run_as_account property.
            ## @return a void
            ## 
            def run_as_account=(value)
                @run_as_account = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("deviceRestartBehavior", @device_restart_behavior)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("runAsAccount", @run_as_account)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
