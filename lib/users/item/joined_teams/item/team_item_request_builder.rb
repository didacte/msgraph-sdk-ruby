require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../../models/team'
require_relative '../../../users'
require_relative '../../item'
require_relative '../joined_teams'
require_relative './all_channels/all_channels_request_builder'
require_relative './all_channels/item/channel_item_request_builder'
require_relative './channels/channels_request_builder'
require_relative './channels/item/channel_item_request_builder'
require_relative './group/group_request_builder'
require_relative './incoming_channels/incoming_channels_request_builder'
require_relative './incoming_channels/item/channel_item_request_builder'
require_relative './installed_apps/installed_apps_request_builder'
require_relative './installed_apps/item/teams_app_installation_item_request_builder'
require_relative './item'
require_relative './members/item/conversation_member_item_request_builder'
require_relative './members/members_request_builder'
require_relative './microsoft_graph_archive/microsoft_graph_archive_request_builder'
require_relative './microsoft_graph_clone/microsoft_graph_clone_request_builder'
require_relative './microsoft_graph_complete_migration/microsoft_graph_complete_migration_request_builder'
require_relative './microsoft_graph_send_activity_notification/microsoft_graph_send_activity_notification_request_builder'
require_relative './microsoft_graph_unarchive/microsoft_graph_unarchive_request_builder'
require_relative './operations/item/teams_async_operation_item_request_builder'
require_relative './operations/operations_request_builder'
require_relative './photo/photo_request_builder'
require_relative './primary_channel/primary_channel_request_builder'
require_relative './schedule/schedule_request_builder'
require_relative './tags/item/teamwork_tag_item_request_builder'
require_relative './tags/tags_request_builder'
require_relative './template/template_request_builder'

module MicrosoftGraph
    module Users
        module Item
            module JoinedTeams
                module Item
                    ## 
                    # Provides operations to manage the joinedTeams property of the microsoft.graph.user entity.
                    class TeamItemRequestBuilder
                        
                        ## 
                        # Provides operations to manage the allChannels property of the microsoft.graph.team entity.
                        def all_channels()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::AllChannels::AllChannelsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the channels property of the microsoft.graph.team entity.
                        def channels()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Channels::ChannelsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the group property of the microsoft.graph.team entity.
                        def group()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Group::GroupRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the incomingChannels property of the microsoft.graph.team entity.
                        def incoming_channels()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::IncomingChannels::IncomingChannelsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the installedApps property of the microsoft.graph.team entity.
                        def installed_apps()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::InstalledApps::InstalledAppsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the members property of the microsoft.graph.team entity.
                        def members()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the archive method.
                        def microsoft_graph_archive()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::MicrosoftGraphArchive::MicrosoftGraphArchiveRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the clone method.
                        def microsoft_graph_clone()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::MicrosoftGraphClone::MicrosoftGraphCloneRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the completeMigration method.
                        def microsoft_graph_complete_migration()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::MicrosoftGraphCompleteMigration::MicrosoftGraphCompleteMigrationRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the sendActivityNotification method.
                        def microsoft_graph_send_activity_notification()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::MicrosoftGraphSendActivityNotification::MicrosoftGraphSendActivityNotificationRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the unarchive method.
                        def microsoft_graph_unarchive()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::MicrosoftGraphUnarchive::MicrosoftGraphUnarchiveRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the operations property of the microsoft.graph.team entity.
                        def operations()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # Provides operations to manage the photo property of the microsoft.graph.team entity.
                        def photo()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Photo::PhotoRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the primaryChannel property of the microsoft.graph.team entity.
                        def primary_channel()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::PrimaryChannel::PrimaryChannelRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Provides operations to manage the schedule property of the microsoft.graph.team entity.
                        def schedule()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Schedule::ScheduleRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the tags property of the microsoft.graph.team entity.
                        def tags()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Tags::TagsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the template property of the microsoft.graph.team entity.
                        def template()
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Template::TemplateRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        ## Provides operations to manage the allChannels property of the microsoft.graph.team entity.
                        ## @param id Unique identifier of the item
                        ## @return a channel_item_request_builder
                        ## 
                        def all_channels_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["channel%2Did"] = id
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::AllChannels::Item::ChannelItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the channels property of the microsoft.graph.team entity.
                        ## @param id Unique identifier of the item
                        ## @return a channel_item_request_builder
                        ## 
                        def channels_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["channel%2Did"] = id
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Channels::Item::ChannelItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new TeamItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/users/{user%2Did}/joinedTeams/{team%2Did}{?%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Delete navigation property joinedTeams for users
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of void
                        ## 
                        def delete(request_configuration=nil)
                            request_info = self.to_delete_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, nil, error_mapping)
                        end
                        ## 
                        ## Get joinedTeams from users
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of team
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Team.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the incomingChannels property of the microsoft.graph.team entity.
                        ## @param id Unique identifier of the item
                        ## @return a channel_item_request_builder
                        ## 
                        def incoming_channels_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["channel%2Did"] = id
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::IncomingChannels::Item::ChannelItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the installedApps property of the microsoft.graph.team entity.
                        ## @param id Unique identifier of the item
                        ## @return a teams_app_installation_item_request_builder
                        ## 
                        def installed_apps_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["teamsAppInstallation%2Did"] = id
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::InstalledApps::Item::TeamsAppInstallationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the members property of the microsoft.graph.team entity.
                        ## @param id Unique identifier of the item
                        ## @return a conversation_member_item_request_builder
                        ## 
                        def members_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["conversationMember%2Did"] = id
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Members::Item::ConversationMemberItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the operations property of the microsoft.graph.team entity.
                        ## @param id Unique identifier of the item
                        ## @return a teams_async_operation_item_request_builder
                        ## 
                        def operations_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["teamsAsyncOperation%2Did"] = id
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Operations::Item::TeamsAsyncOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Update the navigation property joinedTeams in users
                        ## @param body The request body
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of team
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Team.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the tags property of the microsoft.graph.team entity.
                        ## @param id Unique identifier of the item
                        ## @return a teamwork_tag_item_request_builder
                        ## 
                        def tags_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["teamworkTag%2Did"] = id
                            return MicrosoftGraph::Users::Item::JoinedTeams::Item::Tags::Item::TeamworkTagItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Delete navigation property joinedTeams for users
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_delete_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :DELETE
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            return request_info
                        end
                        ## 
                        ## Get joinedTeams from users
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :GET
                            request_info.headers.add('Accept', 'application/json')
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                request_info.add_request_options(request_configuration.options)
                            end
                            return request_info
                        end
                        ## 
                        ## Update the navigation property joinedTeams in users
                        ## @param body The request body
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_patch_request_information(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :PATCH
                            request_info.headers.add('Accept', 'application/json')
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                            return request_info
                        end

                        ## 
                        # Configuration for the request such as headers, query parameters, and middleware options.
                        class TeamItemRequestBuilderDeleteRequestConfiguration
                            
                            ## 
                            # Request headers
                            attr_accessor :headers
                            ## 
                            # Request options
                            attr_accessor :options
                        end

                        ## 
                        # Get joinedTeams from users
                        class TeamItemRequestBuilderGetQueryParameters
                            
                            ## 
                            # Expand related entities
                            attr_accessor :expand
                            ## 
                            # Select properties to be returned
                            attr_accessor :select
                            ## 
                            ## Maps the query parameters names to their encoded names for the URI template parsing.
                            ## @param originalName The original query parameter name in the class.
                            ## @return a string
                            ## 
                            def get_query_parameter(original_name)
                                raise StandardError, 'original_name cannot be null' if original_name.nil?
                                case original_name
                                    when "expand"
                                        return "%24expand"
                                    when "select"
                                        return "%24select"
                                    else
                                        return original_name
                                end
                            end
                        end

                        ## 
                        # Configuration for the request such as headers, query parameters, and middleware options.
                        class TeamItemRequestBuilderGetRequestConfiguration
                            
                            ## 
                            # Request headers
                            attr_accessor :headers
                            ## 
                            # Request options
                            attr_accessor :options
                            ## 
                            # Request query parameters
                            attr_accessor :query_parameters
                        end

                        ## 
                        # Configuration for the request such as headers, query parameters, and middleware options.
                        class TeamItemRequestBuilderPatchRequestConfiguration
                            
                            ## 
                            # Request headers
                            attr_accessor :headers
                            ## 
                            # Request options
                            attr_accessor :options
                        end
                    end
                end
            end
        end
    end
end
