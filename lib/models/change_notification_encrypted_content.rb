require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class ChangeNotificationEncryptedContent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Base64-encoded encrypted data that produces a full resource respresented as JSON. The data has been encrypted with the provided dataKey using an AES/CBC/PKCS5PADDING cipher suite.
            @data
            ## 
            # Base64-encoded symmetric key generated by Microsoft Graph to encrypt the data value and to generate the data signature. This key is encrypted with the certificate public key that was provided during the subscription. It must be decrypted with the certificate private key before it can be used to decrypt the data or verify the signature. This key has been encrypted with the following cipher suite: RSA/ECB/OAEPWithSHA1AndMGF1Padding.
            @data_key
            ## 
            # Base64-encoded HMAC-SHA256 hash of the data for validation purposes.
            @data_signature
            ## 
            # ID of the certificate used to encrypt the dataKey.
            @encryption_certificate_id
            ## 
            # Hexadecimal representation of the thumbprint of the certificate used to encrypt the dataKey.
            @encryption_certificate_thumbprint
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new changeNotificationEncryptedContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a change_notification_encrypted_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChangeNotificationEncryptedContent.new
            end
            ## 
            ## Gets the data property value. Base64-encoded encrypted data that produces a full resource respresented as JSON. The data has been encrypted with the provided dataKey using an AES/CBC/PKCS5PADDING cipher suite.
            ## @return a string
            ## 
            def data
                return @data
            end
            ## 
            ## Sets the data property value. Base64-encoded encrypted data that produces a full resource respresented as JSON. The data has been encrypted with the provided dataKey using an AES/CBC/PKCS5PADDING cipher suite.
            ## @param value Value to set for the data property.
            ## @return a void
            ## 
            def data=(value)
                @data = value
            end
            ## 
            ## Gets the dataKey property value. Base64-encoded symmetric key generated by Microsoft Graph to encrypt the data value and to generate the data signature. This key is encrypted with the certificate public key that was provided during the subscription. It must be decrypted with the certificate private key before it can be used to decrypt the data or verify the signature. This key has been encrypted with the following cipher suite: RSA/ECB/OAEPWithSHA1AndMGF1Padding.
            ## @return a string
            ## 
            def data_key
                return @data_key
            end
            ## 
            ## Sets the dataKey property value. Base64-encoded symmetric key generated by Microsoft Graph to encrypt the data value and to generate the data signature. This key is encrypted with the certificate public key that was provided during the subscription. It must be decrypted with the certificate private key before it can be used to decrypt the data or verify the signature. This key has been encrypted with the following cipher suite: RSA/ECB/OAEPWithSHA1AndMGF1Padding.
            ## @param value Value to set for the data_key property.
            ## @return a void
            ## 
            def data_key=(value)
                @data_key = value
            end
            ## 
            ## Gets the dataSignature property value. Base64-encoded HMAC-SHA256 hash of the data for validation purposes.
            ## @return a string
            ## 
            def data_signature
                return @data_signature
            end
            ## 
            ## Sets the dataSignature property value. Base64-encoded HMAC-SHA256 hash of the data for validation purposes.
            ## @param value Value to set for the data_signature property.
            ## @return a void
            ## 
            def data_signature=(value)
                @data_signature = value
            end
            ## 
            ## Gets the encryptionCertificateId property value. ID of the certificate used to encrypt the dataKey.
            ## @return a string
            ## 
            def encryption_certificate_id
                return @encryption_certificate_id
            end
            ## 
            ## Sets the encryptionCertificateId property value. ID of the certificate used to encrypt the dataKey.
            ## @param value Value to set for the encryption_certificate_id property.
            ## @return a void
            ## 
            def encryption_certificate_id=(value)
                @encryption_certificate_id = value
            end
            ## 
            ## Gets the encryptionCertificateThumbprint property value. Hexadecimal representation of the thumbprint of the certificate used to encrypt the dataKey.
            ## @return a string
            ## 
            def encryption_certificate_thumbprint
                return @encryption_certificate_thumbprint
            end
            ## 
            ## Sets the encryptionCertificateThumbprint property value. Hexadecimal representation of the thumbprint of the certificate used to encrypt the dataKey.
            ## @param value Value to set for the encryption_certificate_thumbprint property.
            ## @return a void
            ## 
            def encryption_certificate_thumbprint=(value)
                @encryption_certificate_thumbprint = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "data" => lambda {|n| @data = n.get_string_value() },
                    "dataKey" => lambda {|n| @data_key = n.get_string_value() },
                    "dataSignature" => lambda {|n| @data_signature = n.get_string_value() },
                    "encryptionCertificateId" => lambda {|n| @encryption_certificate_id = n.get_string_value() },
                    "encryptionCertificateThumbprint" => lambda {|n| @encryption_certificate_thumbprint = n.get_string_value() },
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
                writer.write_string_value("data", @data)
                writer.write_string_value("dataKey", @data_key)
                writer.write_string_value("dataSignature", @data_signature)
                writer.write_string_value("encryptionCertificateId", @encryption_certificate_id)
                writer.write_string_value("encryptionCertificateThumbprint", @encryption_certificate_thumbprint)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
