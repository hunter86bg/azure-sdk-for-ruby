# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2019-03-01/generated/azure_mgmt_storagesync/module_definition'
require 'ms_rest_azure'

module Azure::StorageSync::Mgmt::V2019_03_01
  autoload :Operations,                                         '2019-03-01/generated/azure_mgmt_storagesync/operations.rb'
  autoload :StorageSyncServices,                                '2019-03-01/generated/azure_mgmt_storagesync/storage_sync_services.rb'
  autoload :SyncGroups,                                         '2019-03-01/generated/azure_mgmt_storagesync/sync_groups.rb'
  autoload :CloudEndpoints,                                     '2019-03-01/generated/azure_mgmt_storagesync/cloud_endpoints.rb'
  autoload :ServerEndpoints,                                    '2019-03-01/generated/azure_mgmt_storagesync/server_endpoints.rb'
  autoload :RegisteredServers,                                  '2019-03-01/generated/azure_mgmt_storagesync/registered_servers.rb'
  autoload :Workflows,                                          '2019-03-01/generated/azure_mgmt_storagesync/workflows.rb'
  autoload :OperationStatusOperations,                          '2019-03-01/generated/azure_mgmt_storagesync/operation_status_operations.rb'
  autoload :StorageSyncManagementClient,                        '2019-03-01/generated/azure_mgmt_storagesync/storage_sync_management_client.rb'

  module Models
    autoload :ResourcesMoveInfo,                                  '2019-03-01/generated/azure_mgmt_storagesync/models/resources_move_info.rb'
    autoload :StorageSyncErrorDetails,                            '2019-03-01/generated/azure_mgmt_storagesync/models/storage_sync_error_details.rb'
    autoload :StorageSyncError,                                   '2019-03-01/generated/azure_mgmt_storagesync/models/storage_sync_error.rb'
    autoload :OperationDisplayInfo,                               '2019-03-01/generated/azure_mgmt_storagesync/models/operation_display_info.rb'
    autoload :ServerEndpointSyncStatus,                           '2019-03-01/generated/azure_mgmt_storagesync/models/server_endpoint_sync_status.rb'
    autoload :CloudEndpointArray,                                 '2019-03-01/generated/azure_mgmt_storagesync/models/cloud_endpoint_array.rb'
    autoload :OperationStatus,                                    '2019-03-01/generated/azure_mgmt_storagesync/models/operation_status.rb'
    autoload :SyncGroupArray,                                     '2019-03-01/generated/azure_mgmt_storagesync/models/sync_group_array.rb'
    autoload :RecallActionParameters,                             '2019-03-01/generated/azure_mgmt_storagesync/models/recall_action_parameters.rb'
    autoload :StorageSyncApiError,                                '2019-03-01/generated/azure_mgmt_storagesync/models/storage_sync_api_error.rb'
    autoload :StorageSyncServiceUpdateParameters,                 '2019-03-01/generated/azure_mgmt_storagesync/models/storage_sync_service_update_parameters.rb'
    autoload :SubscriptionState,                                  '2019-03-01/generated/azure_mgmt_storagesync/models/subscription_state.rb'
    autoload :RegisteredServerArray,                              '2019-03-01/generated/azure_mgmt_storagesync/models/registered_server_array.rb'
    autoload :StorageSyncServiceArray,                            '2019-03-01/generated/azure_mgmt_storagesync/models/storage_sync_service_array.rb'
    autoload :ServerEndpointArray,                                '2019-03-01/generated/azure_mgmt_storagesync/models/server_endpoint_array.rb'
    autoload :OperationEntity,                                    '2019-03-01/generated/azure_mgmt_storagesync/models/operation_entity.rb'
    autoload :FilesNotSyncingError,                               '2019-03-01/generated/azure_mgmt_storagesync/models/files_not_syncing_error.rb'
    autoload :OperationEntityListResult,                          '2019-03-01/generated/azure_mgmt_storagesync/models/operation_entity_list_result.rb'
    autoload :SyncActivityStatus,                                 '2019-03-01/generated/azure_mgmt_storagesync/models/sync_activity_status.rb'
    autoload :OperationDisplayResource,                           '2019-03-01/generated/azure_mgmt_storagesync/models/operation_display_resource.rb'
    autoload :TriggerChangeDetectionParameters,                   '2019-03-01/generated/azure_mgmt_storagesync/models/trigger_change_detection_parameters.rb'
    autoload :CheckNameAvailabilityParameters,                    '2019-03-01/generated/azure_mgmt_storagesync/models/check_name_availability_parameters.rb'
    autoload :WorkflowArray,                                      '2019-03-01/generated/azure_mgmt_storagesync/models/workflow_array.rb'
    autoload :CheckNameAvailabilityResult,                        '2019-03-01/generated/azure_mgmt_storagesync/models/check_name_availability_result.rb'
    autoload :ServerEndpointUpdateParameters,                     '2019-03-01/generated/azure_mgmt_storagesync/models/server_endpoint_update_parameters.rb'
    autoload :RestoreFileSpec,                                    '2019-03-01/generated/azure_mgmt_storagesync/models/restore_file_spec.rb'
    autoload :Resource,                                           '2019-03-01/generated/azure_mgmt_storagesync/models/resource.rb'
    autoload :PostRestoreRequest,                                 '2019-03-01/generated/azure_mgmt_storagesync/models/post_restore_request.rb'
    autoload :TriggerRolloverRequest,                             '2019-03-01/generated/azure_mgmt_storagesync/models/trigger_rollover_request.rb'
    autoload :PreRestoreRequest,                                  '2019-03-01/generated/azure_mgmt_storagesync/models/pre_restore_request.rb'
    autoload :StorageSyncServiceCreateParameters,                 '2019-03-01/generated/azure_mgmt_storagesync/models/storage_sync_service_create_parameters.rb'
    autoload :BackupRequest,                                      '2019-03-01/generated/azure_mgmt_storagesync/models/backup_request.rb'
    autoload :SyncSessionStatus,                                  '2019-03-01/generated/azure_mgmt_storagesync/models/sync_session_status.rb'
    autoload :PostBackupResponse,                                 '2019-03-01/generated/azure_mgmt_storagesync/models/post_backup_response.rb'
    autoload :StorageSyncService,                                 '2019-03-01/generated/azure_mgmt_storagesync/models/storage_sync_service.rb'
    autoload :ProxyResource,                                      '2019-03-01/generated/azure_mgmt_storagesync/models/proxy_resource.rb'
    autoload :SyncGroup,                                          '2019-03-01/generated/azure_mgmt_storagesync/models/sync_group.rb'
    autoload :CloudEndpoint,                                      '2019-03-01/generated/azure_mgmt_storagesync/models/cloud_endpoint.rb'
    autoload :SyncGroupCreateParameters,                          '2019-03-01/generated/azure_mgmt_storagesync/models/sync_group_create_parameters.rb'
    autoload :CloudEndpointCreateParameters,                      '2019-03-01/generated/azure_mgmt_storagesync/models/cloud_endpoint_create_parameters.rb'
    autoload :ServerEndpointCreateParameters,                     '2019-03-01/generated/azure_mgmt_storagesync/models/server_endpoint_create_parameters.rb'
    autoload :RegisteredServerCreateParameters,                   '2019-03-01/generated/azure_mgmt_storagesync/models/registered_server_create_parameters.rb'
    autoload :ServerEndpoint,                                     '2019-03-01/generated/azure_mgmt_storagesync/models/server_endpoint.rb'
    autoload :RegisteredServer,                                   '2019-03-01/generated/azure_mgmt_storagesync/models/registered_server.rb'
    autoload :Workflow,                                           '2019-03-01/generated/azure_mgmt_storagesync/models/workflow.rb'
    autoload :TrackedResource,                                    '2019-03-01/generated/azure_mgmt_storagesync/models/tracked_resource.rb'
    autoload :AzureEntityResource,                                '2019-03-01/generated/azure_mgmt_storagesync/models/azure_entity_resource.rb'
    autoload :Reason,                                             '2019-03-01/generated/azure_mgmt_storagesync/models/reason.rb'
    autoload :ChangeDetectionMode,                                '2019-03-01/generated/azure_mgmt_storagesync/models/change_detection_mode.rb'
    autoload :NameAvailabilityReason,                             '2019-03-01/generated/azure_mgmt_storagesync/models/name_availability_reason.rb'
  end
end
