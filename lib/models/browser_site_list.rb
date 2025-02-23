require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # A singleton entity which is used to specify IE mode site list metadata
        class BrowserSiteList < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description for the site list
            @description
            ## 
            # Display name of this site list
            @display_name
            ## 
            # Name of the admin who made the last update on the site list
            @last_modified_by
            ## 
            # The datetime that the admin last updated the site list.
            @last_modified_date_time
            ## 
            # Name of the admin who published the site list
            @published_by
            ## 
            # The datetime that admin published the site list to users in their organization.
            @published_date_time
            ## 
            # Admin can have multiple revisions of the site list and the revision is generated whenever admin create/update the site list.
            @revision
            ## 
            # The sharedCookies property
            @shared_cookies
            ## 
            # The sites property
            @sites
            ## 
            # The status property
            @status
            ## 
            ## Instantiates a new browserSiteList and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a browser_site_list
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BrowserSiteList.new
            end
            ## 
            ## Gets the description property value. Description for the site list
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description for the site list
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name of this site list
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of this site list
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "publishedBy" => lambda {|n| @published_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "publishedDateTime" => lambda {|n| @published_date_time = n.get_date_time_value() },
                    "revision" => lambda {|n| @revision = n.get_string_value() },
                    "sharedCookies" => lambda {|n| @shared_cookies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BrowserSharedCookie.create_from_discriminator_value(pn) }) },
                    "sites" => lambda {|n| @sites = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraph::Models::BrowserSite.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraph::Models::BrowserSiteListStatus) },
                })
            end
            ## 
            ## Gets the lastModifiedBy property value. Name of the admin who made the last update on the site list
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Name of the admin who made the last update on the site list
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The datetime that the admin last updated the site list.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The datetime that the admin last updated the site list.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the publishedBy property value. Name of the admin who published the site list
            ## @return a identity_set
            ## 
            def published_by
                return @published_by
            end
            ## 
            ## Sets the publishedBy property value. Name of the admin who published the site list
            ## @param value Value to set for the published_by property.
            ## @return a void
            ## 
            def published_by=(value)
                @published_by = value
            end
            ## 
            ## Gets the publishedDateTime property value. The datetime that admin published the site list to users in their organization.
            ## @return a date_time
            ## 
            def published_date_time
                return @published_date_time
            end
            ## 
            ## Sets the publishedDateTime property value. The datetime that admin published the site list to users in their organization.
            ## @param value Value to set for the published_date_time property.
            ## @return a void
            ## 
            def published_date_time=(value)
                @published_date_time = value
            end
            ## 
            ## Gets the revision property value. Admin can have multiple revisions of the site list and the revision is generated whenever admin create/update the site list.
            ## @return a string
            ## 
            def revision
                return @revision
            end
            ## 
            ## Sets the revision property value. Admin can have multiple revisions of the site list and the revision is generated whenever admin create/update the site list.
            ## @param value Value to set for the revision property.
            ## @return a void
            ## 
            def revision=(value)
                @revision = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("publishedBy", @published_by)
                writer.write_date_time_value("publishedDateTime", @published_date_time)
                writer.write_string_value("revision", @revision)
                writer.write_collection_of_object_values("sharedCookies", @shared_cookies)
                writer.write_collection_of_object_values("sites", @sites)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the sharedCookies property value. The sharedCookies property
            ## @return a browser_shared_cookie
            ## 
            def shared_cookies
                return @shared_cookies
            end
            ## 
            ## Sets the sharedCookies property value. The sharedCookies property
            ## @param value Value to set for the shared_cookies property.
            ## @return a void
            ## 
            def shared_cookies=(value)
                @shared_cookies = value
            end
            ## 
            ## Gets the sites property value. The sites property
            ## @return a browser_site
            ## 
            def sites
                return @sites
            end
            ## 
            ## Sets the sites property value. The sites property
            ## @param value Value to set for the sites property.
            ## @return a void
            ## 
            def sites=(value)
                @sites = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a browser_site_list_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
