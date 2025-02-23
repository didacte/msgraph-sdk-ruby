require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/entitlement_management'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../identity_governance'
require_relative './access_package_assignment_approvals/access_package_assignment_approvals_request_builder'
require_relative './access_package_assignment_approvals/item/approval_item_request_builder'
require_relative './access_packages/access_packages_request_builder'
require_relative './access_packages/item/access_package_item_request_builder'
require_relative './assignment_policies/assignment_policies_request_builder'
require_relative './assignment_policies/item/access_package_assignment_policy_item_request_builder'
require_relative './assignment_requests/assignment_requests_request_builder'
require_relative './assignment_requests/item/access_package_assignment_request_item_request_builder'
require_relative './assignments/assignments_request_builder'
require_relative './assignments/item/access_package_assignment_item_request_builder'
require_relative './catalogs/catalogs_request_builder'
require_relative './catalogs/item/access_package_catalog_item_request_builder'
require_relative './connected_organizations/connected_organizations_request_builder'
require_relative './connected_organizations/item/connected_organization_item_request_builder'
require_relative './entitlement_management'
require_relative './settings/settings_request_builder'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            ## 
            # Provides operations to manage the entitlementManagement property of the microsoft.graph.identityGovernance entity.
            class EntitlementManagementRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the accessPackageAssignmentApprovals property of the microsoft.graph.entitlementManagement entity.
                def access_package_assignment_approvals()
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentApprovals::AccessPackageAssignmentApprovalsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackages property of the microsoft.graph.entitlementManagement entity.
                def access_packages()
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::AccessPackagesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the assignmentPolicies property of the microsoft.graph.entitlementManagement entity.
                def assignment_policies()
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AssignmentPolicies::AssignmentPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the assignmentRequests property of the microsoft.graph.entitlementManagement entity.
                def assignment_requests()
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AssignmentRequests::AssignmentRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the assignments property of the microsoft.graph.entitlementManagement entity.
                def assignments()
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the catalogs property of the microsoft.graph.entitlementManagement entity.
                def catalogs()
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::Catalogs::CatalogsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the connectedOrganizations property of the microsoft.graph.entitlementManagement entity.
                def connected_organizations()
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::ConnectedOrganizationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the settings property of the microsoft.graph.entitlementManagement entity.
                def settings()
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Provides operations to manage the accessPackageAssignmentApprovals property of the microsoft.graph.entitlementManagement entity.
                ## @param id Unique identifier of the item
                ## @return a approval_item_request_builder
                ## 
                def access_package_assignment_approvals_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["approval%2Did"] = id
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentApprovals::Item::ApprovalItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the accessPackages property of the microsoft.graph.entitlementManagement entity.
                ## @param id Unique identifier of the item
                ## @return a access_package_item_request_builder
                ## 
                def access_packages_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["accessPackage%2Did"] = id
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AccessPackages::Item::AccessPackageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the assignmentPolicies property of the microsoft.graph.entitlementManagement entity.
                ## @param id Unique identifier of the item
                ## @return a access_package_assignment_policy_item_request_builder
                ## 
                def assignment_policies_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["accessPackageAssignmentPolicy%2Did"] = id
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AssignmentPolicies::Item::AccessPackageAssignmentPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the assignmentRequests property of the microsoft.graph.entitlementManagement entity.
                ## @param id Unique identifier of the item
                ## @return a access_package_assignment_request_item_request_builder
                ## 
                def assignment_requests_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["accessPackageAssignmentRequest%2Did"] = id
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::AssignmentRequests::Item::AccessPackageAssignmentRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the assignments property of the microsoft.graph.entitlementManagement entity.
                ## @param id Unique identifier of the item
                ## @return a access_package_assignment_item_request_builder
                ## 
                def assignments_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["accessPackageAssignment%2Did"] = id
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::Assignments::Item::AccessPackageAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the catalogs property of the microsoft.graph.entitlementManagement entity.
                ## @param id Unique identifier of the item
                ## @return a access_package_catalog_item_request_builder
                ## 
                def catalogs_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["accessPackageCatalog%2Did"] = id
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::Catalogs::Item::AccessPackageCatalogItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the connectedOrganizations property of the microsoft.graph.entitlementManagement entity.
                ## @param id Unique identifier of the item
                ## @return a connected_organization_item_request_builder
                ## 
                def connected_organizations_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["connectedOrganization%2Did"] = id
                    return MicrosoftGraph::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::Item::ConnectedOrganizationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new EntitlementManagementRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property entitlementManagement for identityGovernance
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Get entitlementManagement from identityGovernance
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of entitlement_management
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EntitlementManagement.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property entitlementManagement in identityGovernance
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of entitlement_management
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::EntitlementManagement.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property entitlementManagement for identityGovernance
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Get entitlementManagement from identityGovernance
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Update the navigation property entitlementManagement in identityGovernance
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                    return request_info
                end

                ## 
                # Get entitlementManagement from identityGovernance
                class EntitlementManagementRequestBuilderGetQueryParameters
                    
                    ## 
                    # Expand related entities
                    attr_accessor :expand
                    ## 
                    # Select properties to be returned
                    attr_accessor :select
                    ## 
                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                    ## @param original_name The original query parameter name in the class.
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
            end
        end
    end
end
