require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './replace_b'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module ReplaceB
                                class ReplaceBPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The newText property
                                    @new_text
                                    ## 
                                    # The numBytes property
                                    @num_bytes
                                    ## 
                                    # The oldText property
                                    @old_text
                                    ## 
                                    # The startNum property
                                    @start_num
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
                                    ## Instantiates a new replaceBPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a replace_b_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return ReplaceBPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "newText" => lambda {|n| @new_text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "numBytes" => lambda {|n| @num_bytes = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "oldText" => lambda {|n| @old_text = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "startNum" => lambda {|n| @start_num = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the newText property value. The newText property
                                    ## @return a json
                                    ## 
                                    def new_text
                                        return @new_text
                                    end
                                    ## 
                                    ## Sets the newText property value. The newText property
                                    ## @param value Value to set for the new_text property.
                                    ## @return a void
                                    ## 
                                    def new_text=(value)
                                        @new_text = value
                                    end
                                    ## 
                                    ## Gets the numBytes property value. The numBytes property
                                    ## @return a json
                                    ## 
                                    def num_bytes
                                        return @num_bytes
                                    end
                                    ## 
                                    ## Sets the numBytes property value. The numBytes property
                                    ## @param value Value to set for the num_bytes property.
                                    ## @return a void
                                    ## 
                                    def num_bytes=(value)
                                        @num_bytes = value
                                    end
                                    ## 
                                    ## Gets the oldText property value. The oldText property
                                    ## @return a json
                                    ## 
                                    def old_text
                                        return @old_text
                                    end
                                    ## 
                                    ## Sets the oldText property value. The oldText property
                                    ## @param value Value to set for the old_text property.
                                    ## @return a void
                                    ## 
                                    def old_text=(value)
                                        @old_text = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("newText", @new_text)
                                        writer.write_object_value("numBytes", @num_bytes)
                                        writer.write_object_value("oldText", @old_text)
                                        writer.write_object_value("startNum", @start_num)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the startNum property value. The startNum property
                                    ## @return a json
                                    ## 
                                    def start_num
                                        return @start_num
                                    end
                                    ## 
                                    ## Sets the startNum property value. The startNum property
                                    ## @param value Value to set for the start_num property.
                                    ## @return a void
                                    ## 
                                    def start_num=(value)
                                        @start_num = value
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
