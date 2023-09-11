// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.common.serializers; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_count.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_count_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_manufacturer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_total_memory_mi_b_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_total_memory_mib.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_address_transfer_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_address_transfer_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_reserved_instances_exchange_quote_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_reserved_instances_exchange_quote_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_multicast_domain_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_multicast_domain_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_peering_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_peering_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_vpc_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_transit_gateway_vpc_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_vpc_endpoint_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_vpc_endpoint_connections_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_vpc_peering_connection_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/accept_vpc_peering_connection_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_analysis_finding.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_path.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/access_scope_path_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/active_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/activity_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/add_ipam_operating_region.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/add_prefix_list_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/added_principal.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/additional_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/address_family.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/address_transfer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/address_transfer_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/advertise_byoip_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/advertise_byoip_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/affinity.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_address_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_hosts_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_hosts_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_ipam_pool_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_ipam_pool_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allowed_principal.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allows_multiple_instance_types.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/alternate_path_hint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/amd_sev_snp_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_acl_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_listener.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_target.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_packet_header.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_route_table_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_security_group_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/appliance_mode_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/apply_security_groups_to_client_vpn_target_network_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/apply_security_groups_to_client_vpn_target_network_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_ipv6_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_ipv6_addresses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_ip_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_ip_addresses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_nat_gateway_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_nat_gateway_address_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assigned_private_ip_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_address_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_client_vpn_target_network_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_client_vpn_target_network_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_dhcp_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_enclave_certificate_iam_role_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_enclave_certificate_iam_role_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_iam_instance_profile_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_iam_instance_profile_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_instance_event_window_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_instance_event_window_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_ipam_resource_discovery_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_ipam_resource_discovery_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_nat_gateway_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_nat_gateway_address_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_route_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_subnet_cidr_block_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_subnet_cidr_block_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_multicast_domain_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_multicast_domain_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_policy_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_policy_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_transit_gateway_route_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_trunk_interface_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_trunk_interface_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_vpc_cidr_block_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associate_vpc_cidr_block_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associated_network_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associated_role.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/associated_target_network.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/association_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/association_status_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/athena_integration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_classic_link_vpc_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_classic_link_vpc_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_internet_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_network_interface_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_network_interface_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_verified_access_trust_provider_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_verified_access_trust_provider_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_volume_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_vpn_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attach_vpn_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_ena_srd_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_ena_srd_udp_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorization_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_client_vpn_ingress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_client_vpn_ingress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_egress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_egress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_ingress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_ingress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_associations_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_attachments_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/auto_placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_message.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_opt_in_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/availability_zone_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/available_capacity.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bare_metal.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/baseline_ebs_bandwidth_mbps.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/baseline_ebs_bandwidth_mbps_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/batch_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bgp_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/blob_attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/burstable_performance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_batch_error_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_bundle_task_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_bundle_task_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_fleet_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_fleets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_fleets_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_conversion_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_export_task_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_image_launch_permission_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_image_launch_permission_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_import_task_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_import_task_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_reserved_instances_listing_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_reserved_instances_listing_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_success_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_request_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_requests_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_requests_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancelled_spot_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_allocation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet_cancellation_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_instance_platform.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_preference.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_tenancy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/certificate_authentication.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/certificate_authentication_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cidr_authorization_context.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cidr_block.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_dns_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/classic_load_balancer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/classic_load_balancers_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_certificate_revocation_list_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_certificate_revocation_list_status_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_connect_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_connect_response_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_login_banner_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_login_banner_response_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection_status_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_attribute_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_attribute_status_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_status_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cloud_watch_log_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cloud_watch_log_options_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/coip_address_usage.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/coip_cidr.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/coip_pool.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/confirm_product_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/confirm_product_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connection_log_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connection_log_response_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connectivity_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/container_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_fpga_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_fpga_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_snapshot_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_snapshot_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_tags_from_source.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_manufacturer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_capacity_reservation_fleet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_capacity_reservation_fleet_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_capacity_reservation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_capacity_reservation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_carrier_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_carrier_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_client_vpn_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_client_vpn_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_client_vpn_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_client_vpn_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_coip_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_coip_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_coip_pool_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_coip_pool_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_customer_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_customer_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_subnet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_subnet_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_vpc_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_default_vpc_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_dhcp_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_dhcp_options_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_egress_only_internet_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_egress_only_internet_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_fleet_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_flow_logs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_flow_logs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_fpga_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_fpga_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_connect_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_connect_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_event_window_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_event_window_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_export_task_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_instance_export_task_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_internet_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_internet_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_pool_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_pool_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_resource_discovery_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_resource_discovery_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_scope_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_ipam_scope_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_key_pair_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_launch_template_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_launch_template_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_launch_template_version_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_launch_template_version_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_virtual_interface_group_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_virtual_interface_group_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_vpc_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_local_gateway_route_table_vpc_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_managed_prefix_list_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_managed_prefix_list_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_nat_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_nat_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_acl_entry_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_acl_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_acl_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_insights_access_scope_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_insights_access_scope_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_insights_path_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_insights_path_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_interface_permission_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_interface_permission_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_interface_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_network_interface_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_placement_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_placement_group_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_public_ipv4_pool_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_public_ipv4_pool_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_replace_root_volume_task_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_replace_root_volume_task_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_reserved_instances_listing_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_reserved_instances_listing_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_restore_image_task_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_restore_image_task_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_security_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_security_group_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_snapshot_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_snapshots_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_snapshots_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_spot_datafeed_subscription_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_spot_datafeed_subscription_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_store_image_task_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_store_image_task_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_cidr_reservation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_cidr_reservation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_subnet_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_tags_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_rule_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_rule_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_session_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_session_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_target_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_target_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_peer_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_peer_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_request_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_multicast_domain_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_multicast_domain_request_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_multicast_domain_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_request_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_policy_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_policy_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_prefix_list_reference_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_prefix_list_reference_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_table_announcement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_table_announcement_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_route_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_vpc_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_vpc_attachment_request_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_vpc_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_endpoint_eni_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_endpoint_load_balancer_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_group_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_trust_provider_device_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_trust_provider_oidc_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_trust_provider_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_trust_provider_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_permission_modifications.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_connection_notification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_connection_notification_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_service_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_endpoint_service_configuration_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_peering_connection_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_peering_connection_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpc_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_connection_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_connection_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_connection_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_vpn_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/customer_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/data_query.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/data_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/datafeed_subscription_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_association_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_propagation_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/default_target_capacity_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_carrier_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_carrier_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_client_vpn_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_client_vpn_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_client_vpn_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_client_vpn_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_coip_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_coip_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_coip_pool_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_coip_pool_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_customer_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_dhcp_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_egress_only_internet_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_egress_only_internet_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleet_success_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleets_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_flow_logs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_flow_logs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fpga_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fpga_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_instance_connect_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_instance_connect_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_instance_event_window_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_instance_event_window_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_internet_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_pool_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_pool_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_resource_discovery_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_resource_discovery_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_scope_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_scope_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_key_pair_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_key_pair_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_response_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_response_success_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_launch_template_versions_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_virtual_interface_group_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_virtual_interface_group_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_vpc_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_local_gateway_route_table_vpc_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_managed_prefix_list_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_managed_prefix_list_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_nat_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_nat_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_acl_entry_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_acl_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_access_scope_analysis_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_access_scope_analysis_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_access_scope_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_access_scope_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_analysis_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_analysis_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_path_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_insights_path_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_interface_permission_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_interface_permission_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_network_interface_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_placement_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_public_ipv4_pool_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_public_ipv4_pool_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_error_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_security_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_snapshot_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_spot_datafeed_subscription_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_subnet_cidr_reservation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_subnet_cidr_reservation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_subnet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_tags_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_filter_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_filter_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_filter_rule_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_filter_rule_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_session_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_session_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_target_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_traffic_mirror_target_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_connect_peer_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_connect_peer_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_connect_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_connect_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_multicast_domain_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_multicast_domain_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_peering_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_peering_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_policy_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_policy_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_prefix_list_reference_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_prefix_list_reference_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_table_announcement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_table_announcement_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_route_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_vpc_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_transit_gateway_vpc_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_verified_access_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_verified_access_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_verified_access_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_verified_access_group_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_verified_access_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_verified_access_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_verified_access_trust_provider_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_verified_access_trust_provider_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_volume_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoint_connection_notifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoint_connection_notifications_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoint_service_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoint_service_configurations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_endpoints_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_peering_connection_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_peering_connection_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpc_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpn_connection_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpn_connection_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/delete_vpn_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_byoip_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_byoip_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_ipam_pool_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_ipam_pool_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_public_ipv4_pool_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deprovision_public_ipv4_pool_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_instance_event_notification_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_instance_event_notification_attributes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_instance_tag_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_members_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_members_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_sources_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_sources_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_address_transfers_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_address_transfers_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_aggregate_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_aggregate_id_format_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_availability_zones_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_availability_zones_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_aws_network_performance_metric_subscriptions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_aws_network_performance_metric_subscriptions_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_bundle_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_bundle_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_byoip_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_byoip_cidrs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservation_fleets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservation_fleets_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_carrier_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_carrier_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_classic_link_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_classic_link_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_authorization_rules_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_authorization_rules_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_connections_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_endpoints_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_routes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_routes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_target_networks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_target_networks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_coip_pools_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_coip_pools_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_conversion_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_conversion_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_customer_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_customer_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_dhcp_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_dhcp_options_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_egress_only_internet_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_egress_only_internet_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_elastic_gpus_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_elastic_gpus_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_image_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_image_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_success_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restore_success_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restores_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restores_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_history_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_history_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleets_instances.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleets_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_flow_logs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_flow_logs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_image_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_images_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_images_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservation_offerings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservation_offerings_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_hosts_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_hosts_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_iam_instance_profile_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_iam_instance_profile_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_id_format_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_identity_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_identity_id_format_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_images_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_images_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_image_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_image_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_snapshot_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_snapshot_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_connect_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_connect_endpoints_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_credit_specifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_credit_specifications_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_notification_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_notification_attributes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_windows_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_windows_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_status_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_type_offerings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_type_offerings_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_types_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_types_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_internet_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_internet_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_pools_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_pools_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_resource_discoveries_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_resource_discoveries_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_resource_discovery_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_resource_discovery_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_scopes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_scopes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipams_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipams_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipv6_pools_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipv6_pools_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_key_pairs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_key_pairs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_template_versions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_template_versions_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_templates_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_templates_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_virtual_interface_group_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_virtual_interface_group_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_vpc_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_vpc_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_tables_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_tables_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interface_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interface_groups_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interfaces_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interfaces_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_managed_prefix_lists_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_managed_prefix_lists_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_moving_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_moving_addresses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_nat_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_nat_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_acls_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_acls_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scope_analyses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scope_analyses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scopes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scopes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_analyses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_analyses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_paths_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_paths_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_permissions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_permissions_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interfaces_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interfaces_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_placement_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_placement_groups_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_prefix_lists_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_prefix_lists_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_principal_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_principal_id_format_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_public_ipv4_pools_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_public_ipv4_pools_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_regions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_regions_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_replace_root_volume_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_replace_root_volume_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_listings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_listings_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_modifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_modifications_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_offerings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_offerings_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_route_tables_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_route_tables_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instance_availability_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instance_availability_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_references_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_references_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_rules_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_rules_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_groups_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_tier_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_tier_status_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshots_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshots_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_datafeed_subscription_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_datafeed_subscription_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_instances_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_request_history_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_request_history_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_requests_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_requests_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_instance_requests_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_instance_requests_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_price_history_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_price_history_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_stale_security_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_stale_security_groups_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_store_image_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_store_image_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_subnets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_subnets_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_tags_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_tags_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_filters_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_filters_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_sessions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_sessions_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_targets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_targets_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_attachments_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_attachments_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connect_peers_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connect_peers_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connects_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connects_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_multicast_domains_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_multicast_domains_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_peering_attachments_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_peering_attachments_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_policy_tables_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_policy_tables_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_table_announcements_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_table_announcements_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_tables_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_tables_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_vpc_attachments_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_vpc_attachments_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_trunk_interface_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_trunk_interface_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_endpoints_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_groups_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_instance_logging_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_instance_logging_configurations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_trust_providers_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_trust_providers_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_status_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_modifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_modifications_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_dns_support_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_dns_support_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connection_notifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connection_notifications_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connections_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_configurations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_permissions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_permissions_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_services_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_services_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoints_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_peering_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_peering_connections_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpcs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpcs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_connections_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/destination_file_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/destination_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/destination_options_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_classic_link_vpc_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_classic_link_vpc_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_internet_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_network_interface_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_verified_access_trust_provider_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_verified_access_trust_provider_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_volume_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_vpn_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/device_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/device_trust_provider_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/device_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/directory_service_authentication.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/directory_service_authentication_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_address_transfer_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_address_transfer_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_aws_network_performance_metric_subscription_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_aws_network_performance_metric_subscription_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ebs_encryption_by_default_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ebs_encryption_by_default_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_launch_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_launch_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_state_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_state_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_success_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restores_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restores_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_image_deprecation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_image_deprecation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ipam_organization_admin_account_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ipam_organization_admin_account_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_serial_console_access_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_serial_console_access_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_transit_gateway_route_table_propagation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_transit_gateway_route_table_propagation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vgw_route_propagation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vpc_classic_link_dns_support_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vpc_classic_link_dns_support_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vpc_classic_link_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_vpc_classic_link_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_client_vpn_target_network_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_client_vpn_target_network_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_enclave_certificate_iam_role_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_enclave_certificate_iam_role_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_iam_instance_profile_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_iam_instance_profile_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_instance_event_window_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_instance_event_window_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_ipam_resource_discovery_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_ipam_resource_discovery_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_nat_gateway_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_nat_gateway_address_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_subnet_cidr_block_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_subnet_cidr_block_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_multicast_domain_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_multicast_domain_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_policy_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_policy_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_route_table_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_transit_gateway_route_table_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_trunk_interface_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_trunk_interface_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_vpc_cidr_block_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disassociate_vpc_cidr_block_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_volume_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disk_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_name_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_options_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_record_ip_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_servers_options_modify_structure.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/domain_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dynamic_routing_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_block_device.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_encryption_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_instance_block_device.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_instance_block_device_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_nvme_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_optimized_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_optimized_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ec2_instance_connect_endpoint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ec2_instance_connect_endpoint_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/efa_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/egress_only_internet_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_health.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpus.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_inference_accelerator.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_inference_accelerator_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ena_srd_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ena_srd_udp_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ena_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_address_transfer_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_address_transfer_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_aws_network_performance_metric_subscription_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_aws_network_performance_metric_subscription_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ebs_encryption_by_default_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ebs_encryption_by_default_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_launch_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_launch_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_state_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_state_error_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_success_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restores_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restores_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_image_deprecation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_image_deprecation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ipam_organization_admin_account_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ipam_organization_admin_account_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_reachability_analyzer_organization_sharing_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_reachability_analyzer_organization_sharing_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_serial_console_access_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_serial_console_access_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_transit_gateway_route_table_propagation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_transit_gateway_route_table_propagation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vgw_route_propagation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_volume_io_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vpc_classic_link_dns_support_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vpc_classic_link_dns_support_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vpc_classic_link_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_vpc_classic_link_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/end_date_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ephemeral_nvme_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/event_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/event_information.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/event_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/excess_capacity_termination_policy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/explanation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_certificate_revocation_list_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_certificate_revocation_list_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_configuration_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_environment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_s3_location.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_s3_location_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_to_s3_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_to_s3_task_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_transit_gateway_routes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_transit_gateway_routes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/failed_capacity_reservation_fleet_cancellation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/failed_queued_purchase_deletion.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_launch_template_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_launch_template_specification_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_snapshot_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_snapshot_configuration_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fast_launch_state_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fast_snapshot_restore_state_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/federated_authentication.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/federated_authentication_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/filter_port_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/findings_found.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/firewall_stateful_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/firewall_stateless_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_activity_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation_tenancy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation_usage_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_event_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_excess_capacity_termination_policy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_instance_match_criteria.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_config_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_overrides.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_overrides_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_on_demand_allocation_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_replacement_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_capacity_rebalance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_capacity_rebalance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_maintenance_strategies.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_maintenance_strategies_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_state_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/flow_log.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/flow_logs_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_device_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_device_memory_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image_state_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_association_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/gateway_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_enclave_certificate_iam_roles_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_enclave_certificate_iam_roles_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_ipv6_pool_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_ipv6_pool_cidrs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_aws_network_performance_data_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_aws_network_performance_data_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_capacity_reservation_usage_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_capacity_reservation_usage_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_coip_pool_usage_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_coip_pool_usage_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_console_output_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_console_output_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_console_screenshot_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_console_screenshot_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_default_credit_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_default_credit_specification_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ebs_default_kms_key_id_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ebs_default_kms_key_id_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ebs_encryption_by_default_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ebs_encryption_by_default_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_flow_logs_integration_template_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_flow_logs_integration_template_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_groups_for_capacity_reservation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_groups_for_capacity_reservation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_host_reservation_purchase_preview_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_host_reservation_purchase_preview_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_types_from_instance_requirements_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_types_from_instance_requirements_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_uefi_data_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_uefi_data_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_address_history_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_address_history_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_discovered_accounts_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_discovered_accounts_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_discovered_resource_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_discovered_resource_cidrs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_allocations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_allocations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_cidrs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_resource_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_resource_cidrs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_launch_template_data_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_launch_template_data_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_entries_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_entries_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_analysis_findings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_analysis_findings_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_content_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_content_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_password_data_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_password_data_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_reserved_instances_exchange_quote_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_reserved_instances_exchange_quote_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_serial_console_access_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_serial_console_access_status_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_spot_placement_scores_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_spot_placement_scores_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_subnet_cidr_reservations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_subnet_cidr_reservations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_attachment_propagations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_attachment_propagations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_multicast_domain_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_multicast_domain_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_entries_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_entries_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_prefix_list_references_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_prefix_list_references_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_propagations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_propagations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_verified_access_endpoint_policy_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_verified_access_endpoint_policy_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_verified_access_group_policy_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_verified_access_group_policy_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_sample_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_sample_configuration_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_types_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_types_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_tunnel_replacement_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_tunnel_replacement_status_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_device_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_device_memory_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/hibernation_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/hibernation_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/history_record.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/history_record_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_maintenance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_offering.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_properties.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_recovery.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_tenancy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/hostname_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/http_tokens_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/hypervisor_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/icmp_type_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/id_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/igmpv2_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ike_versions_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ike_versions_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image_disk_container.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image_recycle_bin_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image_type_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/imds_support_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_client_vpn_client_certificate_revocation_list_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_client_vpn_client_certificate_revocation_list_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_license_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_license_configuration_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_launch_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_task_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_volume_detail_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_key_pair_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_key_pair_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_task_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/inference_accelerator_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/inference_device_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/inference_device_memory_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_auto_recovery_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_boot_mode_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_capacity.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_count.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_association_target.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_disassociation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_state_change.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_time_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_time_range_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_export_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_family_credit_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_generation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_health_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv4_prefix.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_prefix.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_maintenance_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_maintenance_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_market_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_match_criteria.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_endpoint_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_protocol_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_tags_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_monitoring.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_private_ip_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_with_metadata_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_change.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_event.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status_summary.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_storage_encryption_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_storage_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_tag_notification_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_hypervisor.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info_from_instance_requirements.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_offering.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_usage.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/integrate_services.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/interface_permission_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/interface_protocol_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ip_address_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ip_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_address_history_record.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_address_history_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_associated_resource_discovery_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_cidr_authorization_context.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_compliance_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovered_account.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovered_resource_cidr.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovery_failure_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovery_failure_reason.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_management_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_operating_region.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_overlap_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_aws_service.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_failure_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_failure_reason.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_public_ip_source.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_cidr.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery_association_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_cidr_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_cidr_block.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_pool.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/key_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/key_pair.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/key_pair_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/key_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/last_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission_modifications.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_and_overrides_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_auto_recovery_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_block_device_mapping_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_capacity_reservation_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_capacity_reservation_specification_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_cpu_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_cpu_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_ebs_block_device.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_ebs_block_device_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_elastic_inference_accelerator.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_elastic_inference_accelerator_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_enclave_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_enclave_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_error_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_hibernation_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_hibernation_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_http_tokens_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_iam_instance_profile_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_iam_instance_profile_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_maintenance_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_maintenance_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_market_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_market_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_endpoint_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_protocol_ipv6.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_tags_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_network_interface_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_network_interface_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_license_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_license_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_overrides.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_placement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_private_dns_name_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_private_dns_name_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_spot_market_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_spot_market_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_tag_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_version.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_templates_monitoring.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_templates_monitoring_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/license_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/license_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/list_images_in_recycle_bin_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/list_images_in_recycle_bin_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/list_snapshots_in_recycle_bin_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/list_snapshots_in_recycle_bin_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/listing_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/listing_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/load_balancers_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission_modifications.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_mode.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_virtual_interface_group_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_storage.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_storage_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/location_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/log_destination_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/maintenance_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/managed_prefix_list.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/market_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/membership_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/memory_gi_b_per_v_cpu.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/memory_gi_b_per_v_cpu_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/memory_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/memory_mi_b_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/memory_mib.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/metric_point.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/metric_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_address_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_address_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_availability_zone_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_availability_zone_group_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_availability_zone_opt_in_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_capacity_reservation_fleet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_capacity_reservation_fleet_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_capacity_reservation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_capacity_reservation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_client_vpn_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_client_vpn_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_default_credit_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_default_credit_specification_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ebs_default_kms_key_id_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ebs_default_kms_key_id_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_fleet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_fleet_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_fpga_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_fpga_image_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_hosts_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_hosts_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_identity_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_capacity_reservation_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_capacity_reservation_attributes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_credit_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_credit_specification_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_event_start_time_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_event_start_time_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_event_window_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_event_window_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_maintenance_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_maintenance_options_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_metadata_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_metadata_options_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_placement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_instance_placement_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_pool_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_pool_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_resource_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_resource_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_resource_discovery_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_resource_discovery_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_scope_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_ipam_scope_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_launch_template_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_launch_template_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_local_gateway_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_local_gateway_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_managed_prefix_list_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_managed_prefix_list_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_network_interface_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_private_dns_name_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_private_dns_name_options_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_reserved_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_reserved_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_security_group_rules_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_security_group_rules_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_snapshot_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_snapshot_tier_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_snapshot_tier_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_spot_fleet_request_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_spot_fleet_request_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_subnet_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_network_services_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_network_services_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_rule_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_filter_rule_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_session_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_traffic_mirror_session_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_prefix_list_reference_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_prefix_list_reference_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_request_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_endpoint_eni_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_endpoint_load_balancer_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_endpoint_policy_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_endpoint_policy_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_group_policy_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_group_policy_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_group_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_instance_logging_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_instance_logging_configuration_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_trust_provider_oidc_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_trust_provider_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_verified_access_trust_provider_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_volume_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_volume_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_volume_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_connection_notification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_connection_notification_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_configuration_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_payer_responsibility_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_payer_responsibility_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_permissions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_endpoint_service_permissions_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_peering_connection_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_peering_connection_options_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_tenancy_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpc_tenancy_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_options_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_certificate_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_certificate_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_options_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_options_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/monitor_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/monitor_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/move_address_to_vpc_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/move_address_to_vpc_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/move_byoip_cidr_to_ipam_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/move_byoip_cidr_to_ipam_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/move_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/moving_address_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/multicast_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway_address_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_bandwidth_gbps.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_bandwidth_gbps_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_card_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_analysis.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_content.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_analysis.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_path.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment_changes.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_count.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_count_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_creation_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_ipv6_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission_state_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_private_ip_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/new_dhcp_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nitro_enclaves_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nitro_tpm_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nitro_tpm_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/offering_class_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/offering_type_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/oidc_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_allocation_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/operation_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/packet_header_statement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/packet_header_statement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/partition_load_frequency.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/path_component.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/path_filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/path_request_filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/path_statement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/path_statement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/payer_responsibility.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/payment_option.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/pci_id.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/peering_attachment_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/peering_connection_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/peering_connection_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/peering_tgw_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/period_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_dh_group_numbers_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_dh_group_numbers_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_encryption_algorithms_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_encryption_algorithms_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_integrity_algorithms_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase1_integrity_algorithms_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_dh_group_numbers_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_dh_group_numbers_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_encryption_algorithms_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_encryption_algorithms_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_integrity_algorithms_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/phase2_integrity_algorithms_request_list_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/pool_cidr_block.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_id.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/price_schedule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/price_schedule_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/pricing_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/principal_id_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/principal_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_on_launch.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/private_ip_address_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/processor_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/product_code_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/propagating_vgw.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/protocol.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/protocol_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_byoip_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_byoip_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_ipam_pool_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_ipam_pool_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_public_ipv4_pool_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_public_ipv4_pool_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provisioned_bandwidth.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ptr_update_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_host_reservation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_host_reservation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_reserved_instances_offering_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_reserved_instances_offering_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_scheduled_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_scheduled_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reboot_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/recurring_charge.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/recurring_charge_frequency.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/referenced_security_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/region.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_event_notification_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_event_notification_attributes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_tag_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_transit_gateway_multicast_group_members_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_transit_gateway_multicast_group_members_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_transit_gateway_multicast_group_sources_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_transit_gateway_multicast_group_sources_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_multicast_domain_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_multicast_domain_associations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_peering_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_peering_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_vpc_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_transit_gateway_vpc_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_vpc_endpoint_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_vpc_endpoint_connections_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_vpc_peering_connection_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reject_vpc_peering_connection_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/release_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/release_hosts_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/release_hosts_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/release_ipam_pool_allocation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/release_ipam_pool_allocation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/remove_ipam_operating_region.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/remove_prefix_list_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_iam_instance_profile_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_iam_instance_profile_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_network_acl_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_network_acl_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_network_acl_entry_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_route_table_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_route_table_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_transit_gateway_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_transit_gateway_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_vpn_tunnel_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_vpn_tunnel_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replacement_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/report_instance_reason_codes.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/report_instance_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/report_status_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_filter_port_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_ipam_resource_tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_launch_template_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_fleet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_fleet_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_launch_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_fleet_instance_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_limit_price.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_reservation_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_id.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_listing.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_modification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_modification_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_offering.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_address_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_address_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_ebs_default_kms_key_id_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_ebs_default_kms_key_id_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_image_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_instance_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_network_interface_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_snapshot_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/response_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/response_launch_template_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_address_to_classic_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_address_to_classic_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_image_from_recycle_bin_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_image_from_recycle_bin_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_managed_prefix_list_version_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_managed_prefix_list_version_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_snapshot_from_recycle_bin_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_snapshot_from_recycle_bin_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_snapshot_tier_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/restore_snapshot_tier_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_client_vpn_ingress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_client_vpn_ingress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_egress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_egress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_ingress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_ingress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/root_device_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/route_origin.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/route_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/route_table.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/rule_action.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/rule_group_rule_options_pair.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/rule_group_type_pair.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/rule_option.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_monitoring_enabled.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_scheduled_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_scheduled_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/s3_object_tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/s3_storage.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_availability.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_block_device_mapping.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_ebs.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_iam_instance_profile.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_ipv6_address.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_launch_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_monitoring.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_network_interface.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_private_ip_address_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scope.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_local_gateway_routes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_local_gateway_routes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_multicast_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_multicast_groups_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_routes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_routes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_identifier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_reference.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_update.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/self_service_portal.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/send_diagnostic_interrupt_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_connectivity_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_type_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/slot_date_time_range_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/slot_start_time_range_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_disk_container.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_recycle_bin_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_task_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_tier_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_allocation_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_capacity_rebalance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_datafeed_subscription.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_launch_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_monitoring.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_interruption_behavior.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state_fault.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_maintenance_strategies.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_market_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement_score.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_price.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spread_level.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/sse_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/stale_ip_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/stale_security_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_access_scope_analysis_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_access_scope_analysis_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_analysis_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_analysis_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_vpc_endpoint_service_private_dns_verification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_vpc_endpoint_service_private_dns_verification_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/state_reason.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/static_sources_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/statistic_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/status_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/status_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/stop_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/stop_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/storage.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/storage_location.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/storage_tier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/store_image_task_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_block_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_block_state_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_ipv6_cidr_block_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subscription.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/successful_instance_credit_specification_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/successful_queued_purchase_deletion.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/summary_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/supported_additional_processor_feature.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_specification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_unit_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_groups_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_network.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_reservation_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_storage_tier.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/telemetry_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_client_vpn_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_client_vpn_connections_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_connection_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/through_resources_statement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/through_resources_statement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tiering_operation_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/total_local_storage_gb.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/total_local_storage_gb_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tpm_support_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_direction.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule_field.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_network_service.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_port_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_port_range_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_rule_action.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session_field.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_bgp_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_propagation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_request_bgp_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_mulitcast_domain_association_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_deregistered_group_members.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_deregistered_group_sources.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_associations.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_registered_group_members.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_registered_group_sources.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_rule_meta_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_request_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement_direction.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_propagation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transport_protocol.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/trunk_interface_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/trust_provider_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_inside_ip_version.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_option.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_ipv6_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_ipv6_addresses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_private_ip_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_private_nat_gateway_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_private_nat_gateway_address_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unlimited_supported_instance_family.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unmonitor_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unmonitor_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_error_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_instance_credit_specification_item_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unsuccessful_item_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_egress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_egress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_ingress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_ingress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/usage_class_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_id_group_pair.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_trust_provider_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_count_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_count_range_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/validation_error.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/validation_warning.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_attachment_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_eni_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_load_balancer_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_protocol.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_status_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance_logging_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_cloud_watch_logs_destination.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_cloud_watch_logs_destination_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_delivery_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_delivery_status_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_kinesis_data_firehose_destination.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_kinesis_data_firehose_destination_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_s3_destination.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_s3_destination_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_logs.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_trust_provider.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_trust_provider_condensed.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vgw_telemetry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attachment_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_detail.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_action.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_attachment_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_details.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_event.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_info_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_attribute_name.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_state_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_classic_link.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint_connection.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_ipv6_cidr_block_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_options_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_state_reason.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_state_reason_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_vpc_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_tenancy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_device_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_options_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_ecmp_support_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_protocol.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_static_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_static_route_source.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_log_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_log_options_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_options_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/week_day.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/withdraw_byoip_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/withdraw_byoip_cidr_result.dart';

const List<_i1.SmithySerializer> serializers = [
  ...ResourceType.serializers,
  ...Tag.serializers,
  ...TagSpecification.serializers,
  ...AcceptAddressTransferRequest.serializers,
  ...AddressTransferStatus.serializers,
  ...AddressTransfer.serializers,
  ...AcceptAddressTransferResult.serializers,
  ...TargetConfigurationRequest.serializers,
  ...AcceptReservedInstancesExchangeQuoteRequest.serializers,
  ...AcceptReservedInstancesExchangeQuoteResult.serializers,
  ...AcceptTransitGatewayMulticastDomainAssociationsRequest.serializers,
  ...TransitGatewayAttachmentResourceType.serializers,
  ...TransitGatewayMulitcastDomainAssociationState.serializers,
  ...SubnetAssociation.serializers,
  ...TransitGatewayMulticastDomainAssociations.serializers,
  ...AcceptTransitGatewayMulticastDomainAssociationsResult.serializers,
  ...AcceptTransitGatewayPeeringAttachmentRequest.serializers,
  ...PeeringTgwInfo.serializers,
  ...DynamicRoutingValue.serializers,
  ...TransitGatewayPeeringAttachmentOptions.serializers,
  ...PeeringAttachmentStatus.serializers,
  ...TransitGatewayAttachmentState.serializers,
  ...TransitGatewayPeeringAttachment.serializers,
  ...AcceptTransitGatewayPeeringAttachmentResult.serializers,
  ...AcceptTransitGatewayVpcAttachmentRequest.serializers,
  ...DnsSupportValue.serializers,
  ...Ipv6SupportValue.serializers,
  ...ApplianceModeSupportValue.serializers,
  ...TransitGatewayVpcAttachmentOptions.serializers,
  ...TransitGatewayVpcAttachment.serializers,
  ...AcceptTransitGatewayVpcAttachmentResult.serializers,
  ...AcceptVpcEndpointConnectionsRequest.serializers,
  ...UnsuccessfulItemError.serializers,
  ...UnsuccessfulItem.serializers,
  ...AcceptVpcEndpointConnectionsResult.serializers,
  ...AcceptVpcPeeringConnectionRequest.serializers,
  ...Ipv6CidrBlock.serializers,
  ...CidrBlock.serializers,
  ...VpcPeeringConnectionOptionsDescription.serializers,
  ...VpcPeeringConnectionVpcInfo.serializers,
  ...VpcPeeringConnectionStateReasonCode.serializers,
  ...VpcPeeringConnectionStateReason.serializers,
  ...VpcPeeringConnection.serializers,
  ...AcceptVpcPeeringConnectionResult.serializers,
  ...AdvertiseByoipCidrRequest.serializers,
  ...ByoipCidrState.serializers,
  ...ByoipCidr.serializers,
  ...AdvertiseByoipCidrResult.serializers,
  ...DomainType.serializers,
  ...AllocateAddressRequest.serializers,
  ...AllocateAddressResult.serializers,
  ...AutoPlacement.serializers,
  ...HostRecovery.serializers,
  ...HostMaintenance.serializers,
  ...AllocateHostsRequest.serializers,
  ...AllocateHostsResult.serializers,
  ...AllocateIpamPoolCidrRequest.serializers,
  ...IpamPoolAllocationResourceType.serializers,
  ...IpamPoolAllocation.serializers,
  ...AllocateIpamPoolCidrResult.serializers,
  ...ApplySecurityGroupsToClientVpnTargetNetworkRequest.serializers,
  ...ApplySecurityGroupsToClientVpnTargetNetworkResult.serializers,
  ...AssignIpv6AddressesRequest.serializers,
  ...AssignIpv6AddressesResult.serializers,
  ...AssignPrivateIpAddressesRequest.serializers,
  ...AssignedPrivateIpAddress.serializers,
  ...Ipv4PrefixSpecification.serializers,
  ...AssignPrivateIpAddressesResult.serializers,
  ...AssignPrivateNatGatewayAddressRequest.serializers,
  ...NatGatewayAddressStatus.serializers,
  ...NatGatewayAddress.serializers,
  ...AssignPrivateNatGatewayAddressResult.serializers,
  ...AssociateAddressRequest.serializers,
  ...AssociateAddressResult.serializers,
  ...AssociateClientVpnTargetNetworkRequest.serializers,
  ...AssociationStatusCode.serializers,
  ...AssociationStatus.serializers,
  ...AssociateClientVpnTargetNetworkResult.serializers,
  ...AssociateDhcpOptionsRequest.serializers,
  ...AssociateEnclaveCertificateIamRoleRequest.serializers,
  ...AssociateEnclaveCertificateIamRoleResult.serializers,
  ...IamInstanceProfileSpecification.serializers,
  ...AssociateIamInstanceProfileRequest.serializers,
  ...IamInstanceProfile.serializers,
  ...IamInstanceProfileAssociationState.serializers,
  ...IamInstanceProfileAssociation.serializers,
  ...AssociateIamInstanceProfileResult.serializers,
  ...InstanceEventWindowAssociationRequest.serializers,
  ...AssociateInstanceEventWindowRequest.serializers,
  ...WeekDay.serializers,
  ...InstanceEventWindowTimeRange.serializers,
  ...InstanceEventWindowAssociationTarget.serializers,
  ...InstanceEventWindowState.serializers,
  ...InstanceEventWindow.serializers,
  ...AssociateInstanceEventWindowResult.serializers,
  ...AssociateIpamResourceDiscoveryRequest.serializers,
  ...IpamAssociatedResourceDiscoveryStatus.serializers,
  ...IpamResourceDiscoveryAssociationState.serializers,
  ...IpamResourceDiscoveryAssociation.serializers,
  ...AssociateIpamResourceDiscoveryResult.serializers,
  ...AssociateNatGatewayAddressRequest.serializers,
  ...AssociateNatGatewayAddressResult.serializers,
  ...AssociateRouteTableRequest.serializers,
  ...RouteTableAssociationStateCode.serializers,
  ...RouteTableAssociationState.serializers,
  ...AssociateRouteTableResult.serializers,
  ...AssociateSubnetCidrBlockRequest.serializers,
  ...SubnetCidrBlockStateCode.serializers,
  ...SubnetCidrBlockState.serializers,
  ...SubnetIpv6CidrBlockAssociation.serializers,
  ...AssociateSubnetCidrBlockResult.serializers,
  ...AssociateTransitGatewayMulticastDomainRequest.serializers,
  ...AssociateTransitGatewayMulticastDomainResult.serializers,
  ...AssociateTransitGatewayPolicyTableRequest.serializers,
  ...TransitGatewayAssociationState.serializers,
  ...TransitGatewayPolicyTableAssociation.serializers,
  ...AssociateTransitGatewayPolicyTableResult.serializers,
  ...AssociateTransitGatewayRouteTableRequest.serializers,
  ...TransitGatewayAssociation.serializers,
  ...AssociateTransitGatewayRouteTableResult.serializers,
  ...AssociateTrunkInterfaceRequest.serializers,
  ...InterfaceProtocolType.serializers,
  ...TrunkInterfaceAssociation.serializers,
  ...AssociateTrunkInterfaceResult.serializers,
  ...AssociateVpcCidrBlockRequest.serializers,
  ...VpcCidrBlockStateCode.serializers,
  ...VpcCidrBlockState.serializers,
  ...VpcIpv6CidrBlockAssociation.serializers,
  ...VpcCidrBlockAssociation.serializers,
  ...AssociateVpcCidrBlockResult.serializers,
  ...AttachClassicLinkVpcRequest.serializers,
  ...AttachClassicLinkVpcResult.serializers,
  ...AttachInternetGatewayRequest.serializers,
  ...EnaSrdUdpSpecification.serializers,
  ...EnaSrdSpecification.serializers,
  ...AttachNetworkInterfaceRequest.serializers,
  ...AttachNetworkInterfaceResult.serializers,
  ...AttachVerifiedAccessTrustProviderRequest.serializers,
  ...TrustProviderType.serializers,
  ...UserTrustProviderType.serializers,
  ...DeviceTrustProviderType.serializers,
  ...OidcOptions.serializers,
  ...DeviceOptions.serializers,
  ...VerifiedAccessTrustProvider.serializers,
  ...VerifiedAccessTrustProviderCondensed.serializers,
  ...VerifiedAccessInstance.serializers,
  ...AttachVerifiedAccessTrustProviderResult.serializers,
  ...AttachVolumeRequest.serializers,
  ...VolumeAttachmentState.serializers,
  ...VolumeAttachment.serializers,
  ...AttachVpnGatewayRequest.serializers,
  ...AttachmentStatus.serializers,
  ...VpcAttachment.serializers,
  ...AttachVpnGatewayResult.serializers,
  ...AuthorizeClientVpnIngressRequest.serializers,
  ...ClientVpnAuthorizationRuleStatusCode.serializers,
  ...ClientVpnAuthorizationRuleStatus.serializers,
  ...AuthorizeClientVpnIngressResult.serializers,
  ...IpRange.serializers,
  ...Ipv6Range.serializers,
  ...PrefixListId.serializers,
  ...UserIdGroupPair.serializers,
  ...IpPermission.serializers,
  ...AuthorizeSecurityGroupEgressRequest.serializers,
  ...ReferencedSecurityGroup.serializers,
  ...SecurityGroupRule.serializers,
  ...AuthorizeSecurityGroupEgressResult.serializers,
  ...AuthorizeSecurityGroupIngressRequest.serializers,
  ...AuthorizeSecurityGroupIngressResult.serializers,
  ...S3Storage.serializers,
  ...Storage.serializers,
  ...BundleInstanceRequest.serializers,
  ...BundleTaskError.serializers,
  ...BundleTaskState.serializers,
  ...BundleTask.serializers,
  ...BundleInstanceResult.serializers,
  ...CancelBundleTaskRequest.serializers,
  ...CancelBundleTaskResult.serializers,
  ...CancelCapacityReservationRequest.serializers,
  ...CancelCapacityReservationResult.serializers,
  ...CancelCapacityReservationFleetsRequest.serializers,
  ...CapacityReservationFleetState.serializers,
  ...CapacityReservationFleetCancellationState.serializers,
  ...CancelCapacityReservationFleetError.serializers,
  ...FailedCapacityReservationFleetCancellationResult.serializers,
  ...CancelCapacityReservationFleetsResult.serializers,
  ...CancelConversionRequest.serializers,
  ...CancelExportTaskRequest.serializers,
  ...CancelImageLaunchPermissionRequest.serializers,
  ...CancelImageLaunchPermissionResult.serializers,
  ...CancelImportTaskRequest.serializers,
  ...CancelImportTaskResult.serializers,
  ...CancelReservedInstancesListingRequest.serializers,
  ...ListingState.serializers,
  ...InstanceCount.serializers,
  ...CurrencyCodeValues.serializers,
  ...PriceSchedule.serializers,
  ...ListingStatus.serializers,
  ...ReservedInstancesListing.serializers,
  ...CancelReservedInstancesListingResult.serializers,
  ...CancelSpotFleetRequestsRequest.serializers,
  ...BatchState.serializers,
  ...CancelSpotFleetRequestsSuccessItem.serializers,
  ...CancelBatchErrorCode.serializers,
  ...CancelSpotFleetRequestsError.serializers,
  ...CancelSpotFleetRequestsErrorItem.serializers,
  ...CancelSpotFleetRequestsResponse.serializers,
  ...CancelSpotInstanceRequestsRequest.serializers,
  ...CancelSpotInstanceRequestState.serializers,
  ...CancelledSpotInstanceRequest.serializers,
  ...CancelSpotInstanceRequestsResult.serializers,
  ...ConfirmProductInstanceRequest.serializers,
  ...ConfirmProductInstanceResult.serializers,
  ...CopyFpgaImageRequest.serializers,
  ...CopyFpgaImageResult.serializers,
  ...CopyImageRequest.serializers,
  ...CopyImageResult.serializers,
  ...CopySnapshotRequest.serializers,
  ...CopySnapshotResult.serializers,
  ...CapacityReservationInstancePlatform.serializers,
  ...CapacityReservationTenancy.serializers,
  ...EndDateType.serializers,
  ...InstanceMatchCriteria.serializers,
  ...CreateCapacityReservationRequest.serializers,
  ...CapacityReservationState.serializers,
  ...AllocationType.serializers,
  ...CapacityAllocation.serializers,
  ...CapacityReservation.serializers,
  ...CreateCapacityReservationResult.serializers,
  ...InstanceType.serializers,
  ...ReservationFleetInstanceSpecification.serializers,
  ...FleetCapacityReservationTenancy.serializers,
  ...FleetInstanceMatchCriteria.serializers,
  ...CreateCapacityReservationFleetRequest.serializers,
  ...FleetCapacityReservation.serializers,
  ...CreateCapacityReservationFleetResult.serializers,
  ...CreateCarrierGatewayRequest.serializers,
  ...CarrierGatewayState.serializers,
  ...CarrierGateway.serializers,
  ...CreateCarrierGatewayResult.serializers,
  ...ClientVpnAuthenticationType.serializers,
  ...DirectoryServiceAuthenticationRequest.serializers,
  ...CertificateAuthenticationRequest.serializers,
  ...FederatedAuthenticationRequest.serializers,
  ...ClientVpnAuthenticationRequest.serializers,
  ...ConnectionLogOptions.serializers,
  ...TransportProtocol.serializers,
  ...SelfServicePortal.serializers,
  ...ClientConnectOptions.serializers,
  ...ClientLoginBannerOptions.serializers,
  ...CreateClientVpnEndpointRequest.serializers,
  ...ClientVpnEndpointStatusCode.serializers,
  ...ClientVpnEndpointStatus.serializers,
  ...CreateClientVpnEndpointResult.serializers,
  ...CreateClientVpnRouteRequest.serializers,
  ...ClientVpnRouteStatusCode.serializers,
  ...ClientVpnRouteStatus.serializers,
  ...CreateClientVpnRouteResult.serializers,
  ...CreateCoipCidrRequest.serializers,
  ...CoipCidr.serializers,
  ...CreateCoipCidrResult.serializers,
  ...CreateCoipPoolRequest.serializers,
  ...CoipPool.serializers,
  ...CreateCoipPoolResult.serializers,
  ...GatewayType.serializers,
  ...CreateCustomerGatewayRequest.serializers,
  ...CustomerGateway.serializers,
  ...CreateCustomerGatewayResult.serializers,
  ...CreateDefaultSubnetRequest.serializers,
  ...SubnetState.serializers,
  ...HostnameType.serializers,
  ...PrivateDnsNameOptionsOnLaunch.serializers,
  ...Subnet.serializers,
  ...CreateDefaultSubnetResult.serializers,
  ...CreateDefaultVpcRequest.serializers,
  ...VpcState.serializers,
  ...Tenancy.serializers,
  ...Vpc.serializers,
  ...CreateDefaultVpcResult.serializers,
  ...NewDhcpConfiguration.serializers,
  ...CreateDhcpOptionsRequest.serializers,
  ...AttributeValue.serializers,
  ...DhcpConfiguration.serializers,
  ...DhcpOptions.serializers,
  ...CreateDhcpOptionsResult.serializers,
  ...CreateEgressOnlyInternetGatewayRequest.serializers,
  ...InternetGatewayAttachment.serializers,
  ...EgressOnlyInternetGateway.serializers,
  ...CreateEgressOnlyInternetGatewayResult.serializers,
  ...SpotAllocationStrategy.serializers,
  ...FleetReplacementStrategy.serializers,
  ...FleetSpotCapacityRebalanceRequest.serializers,
  ...FleetSpotMaintenanceStrategiesRequest.serializers,
  ...SpotInstanceInterruptionBehavior.serializers,
  ...SpotOptionsRequest.serializers,
  ...FleetOnDemandAllocationStrategy.serializers,
  ...FleetCapacityReservationUsageStrategy.serializers,
  ...CapacityReservationOptionsRequest.serializers,
  ...OnDemandOptionsRequest.serializers,
  ...FleetExcessCapacityTerminationPolicy.serializers,
  ...FleetLaunchTemplateSpecificationRequest.serializers,
  ...Placement.serializers,
  ...VCpuCountRangeRequest.serializers,
  ...MemoryMiBRequest.serializers,
  ...CpuManufacturer.serializers,
  ...MemoryGiBPerVCpuRequest.serializers,
  ...InstanceGeneration.serializers,
  ...BareMetal.serializers,
  ...BurstablePerformance.serializers,
  ...NetworkInterfaceCountRequest.serializers,
  ...LocalStorage.serializers,
  ...LocalStorageType.serializers,
  ...TotalLocalStorageGbRequest.serializers,
  ...BaselineEbsBandwidthMbpsRequest.serializers,
  ...AcceleratorType.serializers,
  ...AcceleratorCountRequest.serializers,
  ...AcceleratorManufacturer.serializers,
  ...AcceleratorName.serializers,
  ...AcceleratorTotalMemoryMiBRequest.serializers,
  ...NetworkBandwidthGbpsRequest.serializers,
  ...InstanceRequirementsRequest.serializers,
  ...FleetLaunchTemplateOverridesRequest.serializers,
  ...FleetLaunchTemplateConfigRequest.serializers,
  ...DefaultTargetCapacityType.serializers,
  ...TargetCapacityUnitType.serializers,
  ...TargetCapacitySpecificationRequest.serializers,
  ...FleetType.serializers,
  ...CreateFleetRequest.serializers,
  ...FleetLaunchTemplateSpecification.serializers,
  ...PlacementResponse.serializers,
  ...VCpuCountRange.serializers,
  ...MemoryMib.serializers,
  ...MemoryGiBPerVCpu.serializers,
  ...NetworkInterfaceCount.serializers,
  ...TotalLocalStorageGb.serializers,
  ...BaselineEbsBandwidthMbps.serializers,
  ...AcceleratorCount.serializers,
  ...AcceleratorTotalMemoryMib.serializers,
  ...NetworkBandwidthGbps.serializers,
  ...InstanceRequirements.serializers,
  ...FleetLaunchTemplateOverrides.serializers,
  ...LaunchTemplateAndOverridesResponse.serializers,
  ...InstanceLifecycle.serializers,
  ...CreateFleetError.serializers,
  ...PlatformValues.serializers,
  ...CreateFleetInstance.serializers,
  ...CreateFleetResult.serializers,
  ...FlowLogsResourceType.serializers,
  ...TrafficType.serializers,
  ...LogDestinationType.serializers,
  ...DestinationFileFormat.serializers,
  ...DestinationOptionsRequest.serializers,
  ...CreateFlowLogsRequest.serializers,
  ...CreateFlowLogsResult.serializers,
  ...StorageLocation.serializers,
  ...CreateFpgaImageRequest.serializers,
  ...CreateFpgaImageResult.serializers,
  ...VolumeType.serializers,
  ...EbsBlockDevice.serializers,
  ...BlockDeviceMapping.serializers,
  ...CreateImageRequest.serializers,
  ...CreateImageResult.serializers,
  ...CreateInstanceConnectEndpointRequest.serializers,
  ...Ec2InstanceConnectEndpointState.serializers,
  ...Ec2InstanceConnectEndpoint.serializers,
  ...CreateInstanceConnectEndpointResult.serializers,
  ...InstanceEventWindowTimeRangeRequest.serializers,
  ...CreateInstanceEventWindowRequest.serializers,
  ...CreateInstanceEventWindowResult.serializers,
  ...ContainerFormat.serializers,
  ...DiskImageFormat.serializers,
  ...ExportToS3TaskSpecification.serializers,
  ...ExportEnvironment.serializers,
  ...CreateInstanceExportTaskRequest.serializers,
  ...ExportToS3Task.serializers,
  ...InstanceExportDetails.serializers,
  ...ExportTaskState.serializers,
  ...ExportTask.serializers,
  ...CreateInstanceExportTaskResult.serializers,
  ...CreateInternetGatewayRequest.serializers,
  ...InternetGateway.serializers,
  ...CreateInternetGatewayResult.serializers,
  ...AddIpamOperatingRegion.serializers,
  ...CreateIpamRequest.serializers,
  ...IpamOperatingRegion.serializers,
  ...IpamState.serializers,
  ...Ipam.serializers,
  ...CreateIpamResult.serializers,
  ...AddressFamily.serializers,
  ...RequestIpamResourceTag.serializers,
  ...IpamPoolAwsService.serializers,
  ...IpamPoolPublicIpSource.serializers,
  ...CreateIpamPoolRequest.serializers,
  ...IpamScopeType.serializers,
  ...IpamPoolState.serializers,
  ...IpamResourceTag.serializers,
  ...IpamPool.serializers,
  ...CreateIpamPoolResult.serializers,
  ...CreateIpamResourceDiscoveryRequest.serializers,
  ...IpamResourceDiscoveryState.serializers,
  ...IpamResourceDiscovery.serializers,
  ...CreateIpamResourceDiscoveryResult.serializers,
  ...CreateIpamScopeRequest.serializers,
  ...IpamScopeState.serializers,
  ...IpamScope.serializers,
  ...CreateIpamScopeResult.serializers,
  ...KeyType.serializers,
  ...KeyFormat.serializers,
  ...CreateKeyPairRequest.serializers,
  ...KeyPair.serializers,
  ...LaunchTemplateIamInstanceProfileSpecificationRequest.serializers,
  ...LaunchTemplateEbsBlockDeviceRequest.serializers,
  ...LaunchTemplateBlockDeviceMappingRequest.serializers,
  ...InstanceIpv6AddressRequest.serializers,
  ...PrivateIpAddressSpecification.serializers,
  ...Ipv4PrefixSpecificationRequest.serializers,
  ...Ipv6PrefixSpecificationRequest.serializers,
  ...LaunchTemplateInstanceNetworkInterfaceSpecificationRequest.serializers,
  ...LaunchTemplatesMonitoringRequest.serializers,
  ...LaunchTemplatePlacementRequest.serializers,
  ...ShutdownBehavior.serializers,
  ...LaunchTemplateTagSpecificationRequest.serializers,
  ...ElasticGpuSpecification.serializers,
  ...LaunchTemplateElasticInferenceAccelerator.serializers,
  ...MarketType.serializers,
  ...SpotInstanceType.serializers,
  ...InstanceInterruptionBehavior.serializers,
  ...LaunchTemplateSpotMarketOptionsRequest.serializers,
  ...LaunchTemplateInstanceMarketOptionsRequest.serializers,
  ...CreditSpecificationRequest.serializers,
  ...AmdSevSnpSpecification.serializers,
  ...LaunchTemplateCpuOptionsRequest.serializers,
  ...CapacityReservationPreference.serializers,
  ...CapacityReservationTarget.serializers,
  ...LaunchTemplateCapacityReservationSpecificationRequest.serializers,
  ...LaunchTemplateLicenseConfigurationRequest.serializers,
  ...LaunchTemplateHibernationOptionsRequest.serializers,
  ...LaunchTemplateHttpTokensState.serializers,
  ...LaunchTemplateInstanceMetadataEndpointState.serializers,
  ...LaunchTemplateInstanceMetadataProtocolIpv6.serializers,
  ...LaunchTemplateInstanceMetadataTagsState.serializers,
  ...LaunchTemplateInstanceMetadataOptionsRequest.serializers,
  ...LaunchTemplateEnclaveOptionsRequest.serializers,
  ...LaunchTemplatePrivateDnsNameOptionsRequest.serializers,
  ...LaunchTemplateAutoRecoveryState.serializers,
  ...LaunchTemplateInstanceMaintenanceOptionsRequest.serializers,
  ...RequestLaunchTemplateData.serializers,
  ...CreateLaunchTemplateRequest.serializers,
  ...LaunchTemplate.serializers,
  ...ValidationError.serializers,
  ...ValidationWarning.serializers,
  ...CreateLaunchTemplateResult.serializers,
  ...CreateLaunchTemplateVersionRequest.serializers,
  ...LaunchTemplateIamInstanceProfileSpecification.serializers,
  ...LaunchTemplateEbsBlockDevice.serializers,
  ...LaunchTemplateBlockDeviceMapping.serializers,
  ...InstanceIpv6Address.serializers,
  ...Ipv4PrefixSpecificationResponse.serializers,
  ...Ipv6PrefixSpecificationResponse.serializers,
  ...LaunchTemplateInstanceNetworkInterfaceSpecification.serializers,
  ...LaunchTemplatesMonitoring.serializers,
  ...LaunchTemplatePlacement.serializers,
  ...LaunchTemplateTagSpecification.serializers,
  ...ElasticGpuSpecificationResponse.serializers,
  ...LaunchTemplateElasticInferenceAcceleratorResponse.serializers,
  ...LaunchTemplateSpotMarketOptions.serializers,
  ...LaunchTemplateInstanceMarketOptions.serializers,
  ...CreditSpecification.serializers,
  ...LaunchTemplateCpuOptions.serializers,
  ...CapacityReservationTargetResponse.serializers,
  ...LaunchTemplateCapacityReservationSpecificationResponse.serializers,
  ...LaunchTemplateLicenseConfiguration.serializers,
  ...LaunchTemplateHibernationOptions.serializers,
  ...LaunchTemplateInstanceMetadataOptionsState.serializers,
  ...LaunchTemplateInstanceMetadataOptions.serializers,
  ...LaunchTemplateEnclaveOptions.serializers,
  ...LaunchTemplatePrivateDnsNameOptions.serializers,
  ...LaunchTemplateInstanceMaintenanceOptions.serializers,
  ...ResponseLaunchTemplateData.serializers,
  ...LaunchTemplateVersion.serializers,
  ...CreateLaunchTemplateVersionResult.serializers,
  ...CreateLocalGatewayRouteRequest.serializers,
  ...LocalGatewayRouteType.serializers,
  ...LocalGatewayRouteState.serializers,
  ...LocalGatewayRoute.serializers,
  ...CreateLocalGatewayRouteResult.serializers,
  ...LocalGatewayRouteTableMode.serializers,
  ...CreateLocalGatewayRouteTableRequest.serializers,
  ...StateReason.serializers,
  ...LocalGatewayRouteTable.serializers,
  ...CreateLocalGatewayRouteTableResult.serializers,
  ...CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      .serializers,
  ...LocalGatewayRouteTableVirtualInterfaceGroupAssociation.serializers,
  ...CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
      .serializers,
  ...CreateLocalGatewayRouteTableVpcAssociationRequest.serializers,
  ...LocalGatewayRouteTableVpcAssociation.serializers,
  ...CreateLocalGatewayRouteTableVpcAssociationResult.serializers,
  ...AddPrefixListEntry.serializers,
  ...CreateManagedPrefixListRequest.serializers,
  ...PrefixListState.serializers,
  ...ManagedPrefixList.serializers,
  ...CreateManagedPrefixListResult.serializers,
  ...ConnectivityType.serializers,
  ...CreateNatGatewayRequest.serializers,
  ...ProvisionedBandwidth.serializers,
  ...NatGatewayState.serializers,
  ...NatGateway.serializers,
  ...CreateNatGatewayResult.serializers,
  ...CreateNetworkAclRequest.serializers,
  ...NetworkAclAssociation.serializers,
  ...IcmpTypeCode.serializers,
  ...PortRange.serializers,
  ...RuleAction.serializers,
  ...NetworkAclEntry.serializers,
  ...NetworkAcl.serializers,
  ...CreateNetworkAclResult.serializers,
  ...CreateNetworkAclEntryRequest.serializers,
  ...Protocol.serializers,
  ...PacketHeaderStatementRequest.serializers,
  ...ResourceStatementRequest.serializers,
  ...PathStatementRequest.serializers,
  ...ThroughResourcesStatementRequest.serializers,
  ...AccessScopePathRequest.serializers,
  ...CreateNetworkInsightsAccessScopeRequest.serializers,
  ...NetworkInsightsAccessScope.serializers,
  ...PacketHeaderStatement.serializers,
  ...ResourceStatement.serializers,
  ...PathStatement.serializers,
  ...ThroughResourcesStatement.serializers,
  ...AccessScopePath.serializers,
  ...NetworkInsightsAccessScopeContent.serializers,
  ...CreateNetworkInsightsAccessScopeResult.serializers,
  ...RequestFilterPortRange.serializers,
  ...PathRequestFilter.serializers,
  ...CreateNetworkInsightsPathRequest.serializers,
  ...FilterPortRange.serializers,
  ...PathFilter.serializers,
  ...NetworkInsightsPath.serializers,
  ...CreateNetworkInsightsPathResult.serializers,
  ...NetworkInterfaceCreationType.serializers,
  ...CreateNetworkInterfaceRequest.serializers,
  ...NetworkInterfaceAssociation.serializers,
  ...AttachmentEnaSrdUdpSpecification.serializers,
  ...AttachmentEnaSrdSpecification.serializers,
  ...NetworkInterfaceAttachment.serializers,
  ...GroupIdentifier.serializers,
  ...NetworkInterfaceType.serializers,
  ...NetworkInterfaceIpv6Address.serializers,
  ...NetworkInterfacePrivateIpAddress.serializers,
  ...Ipv6PrefixSpecification.serializers,
  ...NetworkInterfaceStatus.serializers,
  ...NetworkInterface.serializers,
  ...CreateNetworkInterfaceResult.serializers,
  ...InterfacePermissionType.serializers,
  ...CreateNetworkInterfacePermissionRequest.serializers,
  ...NetworkInterfacePermissionStateCode.serializers,
  ...NetworkInterfacePermissionState.serializers,
  ...NetworkInterfacePermission.serializers,
  ...CreateNetworkInterfacePermissionResult.serializers,
  ...PlacementStrategy.serializers,
  ...SpreadLevel.serializers,
  ...CreatePlacementGroupRequest.serializers,
  ...PlacementGroupState.serializers,
  ...PlacementGroup.serializers,
  ...CreatePlacementGroupResult.serializers,
  ...CreatePublicIpv4PoolRequest.serializers,
  ...CreatePublicIpv4PoolResult.serializers,
  ...CreateReplaceRootVolumeTaskRequest.serializers,
  ...ReplaceRootVolumeTaskState.serializers,
  ...ReplaceRootVolumeTask.serializers,
  ...CreateReplaceRootVolumeTaskResult.serializers,
  ...PriceScheduleSpecification.serializers,
  ...CreateReservedInstancesListingRequest.serializers,
  ...CreateReservedInstancesListingResult.serializers,
  ...CreateRestoreImageTaskRequest.serializers,
  ...CreateRestoreImageTaskResult.serializers,
  ...CreateRouteRequest.serializers,
  ...CreateRouteResult.serializers,
  ...CreateRouteTableRequest.serializers,
  ...RouteTableAssociation.serializers,
  ...PropagatingVgw.serializers,
  ...RouteOrigin.serializers,
  ...RouteState.serializers,
  ...Route.serializers,
  ...RouteTable.serializers,
  ...CreateRouteTableResult.serializers,
  ...CreateSecurityGroupRequest.serializers,
  ...CreateSecurityGroupResult.serializers,
  ...CreateSnapshotRequest.serializers,
  ...SnapshotState.serializers,
  ...StorageTier.serializers,
  ...SseType.serializers,
  ...Snapshot.serializers,
  ...InstanceSpecification.serializers,
  ...CopyTagsFromSource.serializers,
  ...CreateSnapshotsRequest.serializers,
  ...SnapshotInfo.serializers,
  ...CreateSnapshotsResult.serializers,
  ...CreateSpotDatafeedSubscriptionRequest.serializers,
  ...SpotInstanceStateFault.serializers,
  ...DatafeedSubscriptionState.serializers,
  ...SpotDatafeedSubscription.serializers,
  ...CreateSpotDatafeedSubscriptionResult.serializers,
  ...S3ObjectTag.serializers,
  ...CreateStoreImageTaskRequest.serializers,
  ...CreateStoreImageTaskResult.serializers,
  ...CreateSubnetRequest.serializers,
  ...CreateSubnetResult.serializers,
  ...SubnetCidrReservationType.serializers,
  ...CreateSubnetCidrReservationRequest.serializers,
  ...SubnetCidrReservation.serializers,
  ...CreateSubnetCidrReservationResult.serializers,
  ...CreateTagsRequest.serializers,
  ...CreateTrafficMirrorFilterRequest.serializers,
  ...TrafficDirection.serializers,
  ...TrafficMirrorRuleAction.serializers,
  ...TrafficMirrorPortRange.serializers,
  ...TrafficMirrorFilterRule.serializers,
  ...TrafficMirrorNetworkService.serializers,
  ...TrafficMirrorFilter.serializers,
  ...CreateTrafficMirrorFilterResult.serializers,
  ...TrafficMirrorPortRangeRequest.serializers,
  ...CreateTrafficMirrorFilterRuleRequest.serializers,
  ...CreateTrafficMirrorFilterRuleResult.serializers,
  ...CreateTrafficMirrorSessionRequest.serializers,
  ...TrafficMirrorSession.serializers,
  ...CreateTrafficMirrorSessionResult.serializers,
  ...CreateTrafficMirrorTargetRequest.serializers,
  ...TrafficMirrorTargetType.serializers,
  ...TrafficMirrorTarget.serializers,
  ...CreateTrafficMirrorTargetResult.serializers,
  ...AutoAcceptSharedAttachmentsValue.serializers,
  ...DefaultRouteTableAssociationValue.serializers,
  ...DefaultRouteTablePropagationValue.serializers,
  ...VpnEcmpSupportValue.serializers,
  ...MulticastSupportValue.serializers,
  ...TransitGatewayRequestOptions.serializers,
  ...CreateTransitGatewayRequest.serializers,
  ...TransitGatewayState.serializers,
  ...TransitGatewayOptions.serializers,
  ...TransitGateway.serializers,
  ...CreateTransitGatewayResult.serializers,
  ...ProtocolValue.serializers,
  ...CreateTransitGatewayConnectRequestOptions.serializers,
  ...CreateTransitGatewayConnectRequest.serializers,
  ...TransitGatewayConnectOptions.serializers,
  ...TransitGatewayConnect.serializers,
  ...CreateTransitGatewayConnectResult.serializers,
  ...TransitGatewayConnectRequestBgpOptions.serializers,
  ...CreateTransitGatewayConnectPeerRequest.serializers,
  ...TransitGatewayConnectPeerState.serializers,
  ...BgpStatus.serializers,
  ...TransitGatewayAttachmentBgpConfiguration.serializers,
  ...TransitGatewayConnectPeerConfiguration.serializers,
  ...TransitGatewayConnectPeer.serializers,
  ...CreateTransitGatewayConnectPeerResult.serializers,
  ...Igmpv2SupportValue.serializers,
  ...StaticSourcesSupportValue.serializers,
  ...AutoAcceptSharedAssociationsValue.serializers,
  ...CreateTransitGatewayMulticastDomainRequestOptions.serializers,
  ...CreateTransitGatewayMulticastDomainRequest.serializers,
  ...TransitGatewayMulticastDomainOptions.serializers,
  ...TransitGatewayMulticastDomainState.serializers,
  ...TransitGatewayMulticastDomain.serializers,
  ...CreateTransitGatewayMulticastDomainResult.serializers,
  ...CreateTransitGatewayPeeringAttachmentRequestOptions.serializers,
  ...CreateTransitGatewayPeeringAttachmentRequest.serializers,
  ...CreateTransitGatewayPeeringAttachmentResult.serializers,
  ...CreateTransitGatewayPolicyTableRequest.serializers,
  ...TransitGatewayPolicyTableState.serializers,
  ...TransitGatewayPolicyTable.serializers,
  ...CreateTransitGatewayPolicyTableResult.serializers,
  ...CreateTransitGatewayPrefixListReferenceRequest.serializers,
  ...TransitGatewayPrefixListReferenceState.serializers,
  ...TransitGatewayPrefixListAttachment.serializers,
  ...TransitGatewayPrefixListReference.serializers,
  ...CreateTransitGatewayPrefixListReferenceResult.serializers,
  ...CreateTransitGatewayRouteRequest.serializers,
  ...TransitGatewayRouteAttachment.serializers,
  ...TransitGatewayRouteType.serializers,
  ...TransitGatewayRouteState.serializers,
  ...TransitGatewayRoute.serializers,
  ...CreateTransitGatewayRouteResult.serializers,
  ...CreateTransitGatewayRouteTableRequest.serializers,
  ...TransitGatewayRouteTableState.serializers,
  ...TransitGatewayRouteTable.serializers,
  ...CreateTransitGatewayRouteTableResult.serializers,
  ...CreateTransitGatewayRouteTableAnnouncementRequest.serializers,
  ...TransitGatewayRouteTableAnnouncementDirection.serializers,
  ...TransitGatewayRouteTableAnnouncementState.serializers,
  ...TransitGatewayRouteTableAnnouncement.serializers,
  ...CreateTransitGatewayRouteTableAnnouncementResult.serializers,
  ...CreateTransitGatewayVpcAttachmentRequestOptions.serializers,
  ...CreateTransitGatewayVpcAttachmentRequest.serializers,
  ...CreateTransitGatewayVpcAttachmentResult.serializers,
  ...VerifiedAccessEndpointType.serializers,
  ...VerifiedAccessEndpointAttachmentType.serializers,
  ...VerifiedAccessEndpointProtocol.serializers,
  ...CreateVerifiedAccessEndpointLoadBalancerOptions.serializers,
  ...CreateVerifiedAccessEndpointEniOptions.serializers,
  ...CreateVerifiedAccessEndpointRequest.serializers,
  ...VerifiedAccessEndpointLoadBalancerOptions.serializers,
  ...VerifiedAccessEndpointEniOptions.serializers,
  ...VerifiedAccessEndpointStatusCode.serializers,
  ...VerifiedAccessEndpointStatus.serializers,
  ...VerifiedAccessEndpoint.serializers,
  ...CreateVerifiedAccessEndpointResult.serializers,
  ...CreateVerifiedAccessGroupRequest.serializers,
  ...VerifiedAccessGroup.serializers,
  ...CreateVerifiedAccessGroupResult.serializers,
  ...CreateVerifiedAccessInstanceRequest.serializers,
  ...CreateVerifiedAccessInstanceResult.serializers,
  ...CreateVerifiedAccessTrustProviderOidcOptions.serializers,
  ...CreateVerifiedAccessTrustProviderDeviceOptions.serializers,
  ...CreateVerifiedAccessTrustProviderRequest.serializers,
  ...CreateVerifiedAccessTrustProviderResult.serializers,
  ...CreateVolumeRequest.serializers,
  ...VolumeState.serializers,
  ...Volume.serializers,
  ...CreateVpcRequest.serializers,
  ...CreateVpcResult.serializers,
  ...VpcEndpointType.serializers,
  ...IpAddressType.serializers,
  ...DnsRecordIpType.serializers,
  ...DnsOptionsSpecification.serializers,
  ...SubnetConfiguration.serializers,
  ...CreateVpcEndpointRequest.serializers,
  ...State.serializers,
  ...SecurityGroupIdentifier.serializers,
  ...DnsOptions.serializers,
  ...DnsEntry.serializers,
  ...LastError.serializers,
  ...VpcEndpoint.serializers,
  ...CreateVpcEndpointResult.serializers,
  ...CreateVpcEndpointConnectionNotificationRequest.serializers,
  ...ConnectionNotificationType.serializers,
  ...ConnectionNotificationState.serializers,
  ...ConnectionNotification.serializers,
  ...CreateVpcEndpointConnectionNotificationResult.serializers,
  ...CreateVpcEndpointServiceConfigurationRequest.serializers,
  ...ServiceType.serializers,
  ...ServiceTypeDetail.serializers,
  ...ServiceState.serializers,
  ...ServiceConnectivityType.serializers,
  ...DnsNameState.serializers,
  ...PrivateDnsNameConfiguration.serializers,
  ...PayerResponsibility.serializers,
  ...ServiceConfiguration.serializers,
  ...CreateVpcEndpointServiceConfigurationResult.serializers,
  ...CreateVpcPeeringConnectionRequest.serializers,
  ...CreateVpcPeeringConnectionResult.serializers,
  ...TunnelInsideIpVersion.serializers,
  ...Phase1EncryptionAlgorithmsRequestListValue.serializers,
  ...Phase2EncryptionAlgorithmsRequestListValue.serializers,
  ...Phase1IntegrityAlgorithmsRequestListValue.serializers,
  ...Phase2IntegrityAlgorithmsRequestListValue.serializers,
  ...Phase1DhGroupNumbersRequestListValue.serializers,
  ...Phase2DhGroupNumbersRequestListValue.serializers,
  ...IkeVersionsRequestListValue.serializers,
  ...CloudWatchLogOptionsSpecification.serializers,
  ...VpnTunnelLogOptionsSpecification.serializers,
  ...VpnTunnelOptionsSpecification.serializers,
  ...VpnConnectionOptionsSpecification.serializers,
  ...CreateVpnConnectionRequest.serializers,
  ...VpnState.serializers,
  ...GatewayAssociationState.serializers,
  ...Phase1EncryptionAlgorithmsListValue.serializers,
  ...Phase2EncryptionAlgorithmsListValue.serializers,
  ...Phase1IntegrityAlgorithmsListValue.serializers,
  ...Phase2IntegrityAlgorithmsListValue.serializers,
  ...Phase1DhGroupNumbersListValue.serializers,
  ...Phase2DhGroupNumbersListValue.serializers,
  ...IkeVersionsListValue.serializers,
  ...CloudWatchLogOptions.serializers,
  ...VpnTunnelLogOptions.serializers,
  ...TunnelOption.serializers,
  ...VpnConnectionOptions.serializers,
  ...VpnStaticRouteSource.serializers,
  ...VpnStaticRoute.serializers,
  ...TelemetryStatus.serializers,
  ...VgwTelemetry.serializers,
  ...VpnConnection.serializers,
  ...CreateVpnConnectionResult.serializers,
  ...CreateVpnConnectionRouteRequest.serializers,
  ...CreateVpnGatewayRequest.serializers,
  ...VpnGateway.serializers,
  ...CreateVpnGatewayResult.serializers,
  ...DeleteCarrierGatewayRequest.serializers,
  ...DeleteCarrierGatewayResult.serializers,
  ...DeleteClientVpnEndpointRequest.serializers,
  ...DeleteClientVpnEndpointResult.serializers,
  ...DeleteClientVpnRouteRequest.serializers,
  ...DeleteClientVpnRouteResult.serializers,
  ...DeleteCoipCidrRequest.serializers,
  ...DeleteCoipCidrResult.serializers,
  ...DeleteCoipPoolRequest.serializers,
  ...DeleteCoipPoolResult.serializers,
  ...DeleteCustomerGatewayRequest.serializers,
  ...DeleteDhcpOptionsRequest.serializers,
  ...DeleteEgressOnlyInternetGatewayRequest.serializers,
  ...DeleteEgressOnlyInternetGatewayResult.serializers,
  ...DeleteFleetsRequest.serializers,
  ...FleetStateCode.serializers,
  ...DeleteFleetSuccessItem.serializers,
  ...DeleteFleetErrorCode.serializers,
  ...DeleteFleetError.serializers,
  ...DeleteFleetErrorItem.serializers,
  ...DeleteFleetsResult.serializers,
  ...DeleteFlowLogsRequest.serializers,
  ...DeleteFlowLogsResult.serializers,
  ...DeleteFpgaImageRequest.serializers,
  ...DeleteFpgaImageResult.serializers,
  ...DeleteInstanceConnectEndpointRequest.serializers,
  ...DeleteInstanceConnectEndpointResult.serializers,
  ...DeleteInstanceEventWindowRequest.serializers,
  ...InstanceEventWindowStateChange.serializers,
  ...DeleteInstanceEventWindowResult.serializers,
  ...DeleteInternetGatewayRequest.serializers,
  ...DeleteIpamRequest.serializers,
  ...DeleteIpamResult.serializers,
  ...DeleteIpamPoolRequest.serializers,
  ...DeleteIpamPoolResult.serializers,
  ...DeleteIpamResourceDiscoveryRequest.serializers,
  ...DeleteIpamResourceDiscoveryResult.serializers,
  ...DeleteIpamScopeRequest.serializers,
  ...DeleteIpamScopeResult.serializers,
  ...DeleteKeyPairRequest.serializers,
  ...DeleteKeyPairResult.serializers,
  ...DeleteLaunchTemplateRequest.serializers,
  ...DeleteLaunchTemplateResult.serializers,
  ...DeleteLaunchTemplateVersionsRequest.serializers,
  ...DeleteLaunchTemplateVersionsResponseSuccessItem.serializers,
  ...LaunchTemplateErrorCode.serializers,
  ...ResponseError.serializers,
  ...DeleteLaunchTemplateVersionsResponseErrorItem.serializers,
  ...DeleteLaunchTemplateVersionsResult.serializers,
  ...DeleteLocalGatewayRouteRequest.serializers,
  ...DeleteLocalGatewayRouteResult.serializers,
  ...DeleteLocalGatewayRouteTableRequest.serializers,
  ...DeleteLocalGatewayRouteTableResult.serializers,
  ...DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      .serializers,
  ...DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
      .serializers,
  ...DeleteLocalGatewayRouteTableVpcAssociationRequest.serializers,
  ...DeleteLocalGatewayRouteTableVpcAssociationResult.serializers,
  ...DeleteManagedPrefixListRequest.serializers,
  ...DeleteManagedPrefixListResult.serializers,
  ...DeleteNatGatewayRequest.serializers,
  ...DeleteNatGatewayResult.serializers,
  ...DeleteNetworkAclRequest.serializers,
  ...DeleteNetworkAclEntryRequest.serializers,
  ...DeleteNetworkInsightsAccessScopeRequest.serializers,
  ...DeleteNetworkInsightsAccessScopeResult.serializers,
  ...DeleteNetworkInsightsAccessScopeAnalysisRequest.serializers,
  ...DeleteNetworkInsightsAccessScopeAnalysisResult.serializers,
  ...DeleteNetworkInsightsAnalysisRequest.serializers,
  ...DeleteNetworkInsightsAnalysisResult.serializers,
  ...DeleteNetworkInsightsPathRequest.serializers,
  ...DeleteNetworkInsightsPathResult.serializers,
  ...DeleteNetworkInterfaceRequest.serializers,
  ...DeleteNetworkInterfacePermissionRequest.serializers,
  ...DeleteNetworkInterfacePermissionResult.serializers,
  ...DeletePlacementGroupRequest.serializers,
  ...DeletePublicIpv4PoolRequest.serializers,
  ...DeletePublicIpv4PoolResult.serializers,
  ...DeleteQueuedReservedInstancesRequest.serializers,
  ...SuccessfulQueuedPurchaseDeletion.serializers,
  ...DeleteQueuedReservedInstancesErrorCode.serializers,
  ...DeleteQueuedReservedInstancesError.serializers,
  ...FailedQueuedPurchaseDeletion.serializers,
  ...DeleteQueuedReservedInstancesResult.serializers,
  ...DeleteRouteRequest.serializers,
  ...DeleteRouteTableRequest.serializers,
  ...DeleteSecurityGroupRequest.serializers,
  ...DeleteSnapshotRequest.serializers,
  ...DeleteSpotDatafeedSubscriptionRequest.serializers,
  ...DeleteSubnetRequest.serializers,
  ...DeleteSubnetCidrReservationRequest.serializers,
  ...DeleteSubnetCidrReservationResult.serializers,
  ...DeleteTagsRequest.serializers,
  ...DeleteTrafficMirrorFilterRequest.serializers,
  ...DeleteTrafficMirrorFilterResult.serializers,
  ...DeleteTrafficMirrorFilterRuleRequest.serializers,
  ...DeleteTrafficMirrorFilterRuleResult.serializers,
  ...DeleteTrafficMirrorSessionRequest.serializers,
  ...DeleteTrafficMirrorSessionResult.serializers,
  ...DeleteTrafficMirrorTargetRequest.serializers,
  ...DeleteTrafficMirrorTargetResult.serializers,
  ...DeleteTransitGatewayRequest.serializers,
  ...DeleteTransitGatewayResult.serializers,
  ...DeleteTransitGatewayConnectRequest.serializers,
  ...DeleteTransitGatewayConnectResult.serializers,
  ...DeleteTransitGatewayConnectPeerRequest.serializers,
  ...DeleteTransitGatewayConnectPeerResult.serializers,
  ...DeleteTransitGatewayMulticastDomainRequest.serializers,
  ...DeleteTransitGatewayMulticastDomainResult.serializers,
  ...DeleteTransitGatewayPeeringAttachmentRequest.serializers,
  ...DeleteTransitGatewayPeeringAttachmentResult.serializers,
  ...DeleteTransitGatewayPolicyTableRequest.serializers,
  ...DeleteTransitGatewayPolicyTableResult.serializers,
  ...DeleteTransitGatewayPrefixListReferenceRequest.serializers,
  ...DeleteTransitGatewayPrefixListReferenceResult.serializers,
  ...DeleteTransitGatewayRouteRequest.serializers,
  ...DeleteTransitGatewayRouteResult.serializers,
  ...DeleteTransitGatewayRouteTableRequest.serializers,
  ...DeleteTransitGatewayRouteTableResult.serializers,
  ...DeleteTransitGatewayRouteTableAnnouncementRequest.serializers,
  ...DeleteTransitGatewayRouteTableAnnouncementResult.serializers,
  ...DeleteTransitGatewayVpcAttachmentRequest.serializers,
  ...DeleteTransitGatewayVpcAttachmentResult.serializers,
  ...DeleteVerifiedAccessEndpointRequest.serializers,
  ...DeleteVerifiedAccessEndpointResult.serializers,
  ...DeleteVerifiedAccessGroupRequest.serializers,
  ...DeleteVerifiedAccessGroupResult.serializers,
  ...DeleteVerifiedAccessInstanceRequest.serializers,
  ...DeleteVerifiedAccessInstanceResult.serializers,
  ...DeleteVerifiedAccessTrustProviderRequest.serializers,
  ...DeleteVerifiedAccessTrustProviderResult.serializers,
  ...DeleteVolumeRequest.serializers,
  ...DeleteVpcRequest.serializers,
  ...DeleteVpcEndpointConnectionNotificationsRequest.serializers,
  ...DeleteVpcEndpointConnectionNotificationsResult.serializers,
  ...DeleteVpcEndpointServiceConfigurationsRequest.serializers,
  ...DeleteVpcEndpointServiceConfigurationsResult.serializers,
  ...DeleteVpcEndpointsRequest.serializers,
  ...DeleteVpcEndpointsResult.serializers,
  ...DeleteVpcPeeringConnectionRequest.serializers,
  ...DeleteVpcPeeringConnectionResult.serializers,
  ...DeleteVpnConnectionRequest.serializers,
  ...DeleteVpnConnectionRouteRequest.serializers,
  ...DeleteVpnGatewayRequest.serializers,
  ...DeprovisionByoipCidrRequest.serializers,
  ...DeprovisionByoipCidrResult.serializers,
  ...DeprovisionIpamPoolCidrRequest.serializers,
  ...IpamPoolCidrState.serializers,
  ...IpamPoolCidrFailureCode.serializers,
  ...IpamPoolCidrFailureReason.serializers,
  ...IpamPoolCidr.serializers,
  ...DeprovisionIpamPoolCidrResult.serializers,
  ...DeprovisionPublicIpv4PoolCidrRequest.serializers,
  ...DeprovisionPublicIpv4PoolCidrResult.serializers,
  ...DeregisterImageRequest.serializers,
  ...DeregisterInstanceTagAttributeRequest.serializers,
  ...DeregisterInstanceEventNotificationAttributesRequest.serializers,
  ...InstanceTagNotificationAttribute.serializers,
  ...DeregisterInstanceEventNotificationAttributesResult.serializers,
  ...DeregisterTransitGatewayMulticastGroupMembersRequest.serializers,
  ...TransitGatewayMulticastDeregisteredGroupMembers.serializers,
  ...DeregisterTransitGatewayMulticastGroupMembersResult.serializers,
  ...DeregisterTransitGatewayMulticastGroupSourcesRequest.serializers,
  ...TransitGatewayMulticastDeregisteredGroupSources.serializers,
  ...DeregisterTransitGatewayMulticastGroupSourcesResult.serializers,
  ...AccountAttributeName.serializers,
  ...DescribeAccountAttributesRequest.serializers,
  ...AccountAttributeValue.serializers,
  ...AccountAttribute.serializers,
  ...DescribeAccountAttributesResult.serializers,
  ...DescribeAddressTransfersRequest.serializers,
  ...DescribeAddressTransfersResult.serializers,
  ...Filter.serializers,
  ...DescribeAddressesRequest.serializers,
  ...Address.serializers,
  ...DescribeAddressesResult.serializers,
  ...AddressAttributeName.serializers,
  ...DescribeAddressesAttributeRequest.serializers,
  ...PtrUpdateStatus.serializers,
  ...AddressAttribute.serializers,
  ...DescribeAddressesAttributeResult.serializers,
  ...DescribeAggregateIdFormatRequest.serializers,
  ...IdFormat.serializers,
  ...DescribeAggregateIdFormatResult.serializers,
  ...DescribeAvailabilityZonesRequest.serializers,
  ...AvailabilityZoneState.serializers,
  ...AvailabilityZoneOptInStatus.serializers,
  ...AvailabilityZoneMessage.serializers,
  ...AvailabilityZone.serializers,
  ...DescribeAvailabilityZonesResult.serializers,
  ...DescribeAwsNetworkPerformanceMetricSubscriptionsRequest.serializers,
  ...MetricType.serializers,
  ...StatisticType.serializers,
  ...PeriodType.serializers,
  ...Subscription.serializers,
  ...DescribeAwsNetworkPerformanceMetricSubscriptionsResult.serializers,
  ...DescribeBundleTasksRequest.serializers,
  ...DescribeBundleTasksResult.serializers,
  ...DescribeByoipCidrsRequest.serializers,
  ...DescribeByoipCidrsResult.serializers,
  ...DescribeCapacityReservationFleetsRequest.serializers,
  ...CapacityReservationFleet.serializers,
  ...DescribeCapacityReservationFleetsResult.serializers,
  ...DescribeCapacityReservationsRequest.serializers,
  ...DescribeCapacityReservationsResult.serializers,
  ...DescribeCarrierGatewaysRequest.serializers,
  ...DescribeCarrierGatewaysResult.serializers,
  ...DescribeClassicLinkInstancesRequest.serializers,
  ...ClassicLinkInstance.serializers,
  ...DescribeClassicLinkInstancesResult.serializers,
  ...DescribeClientVpnAuthorizationRulesRequest.serializers,
  ...AuthorizationRule.serializers,
  ...DescribeClientVpnAuthorizationRulesResult.serializers,
  ...DescribeClientVpnConnectionsRequest.serializers,
  ...ClientVpnConnectionStatusCode.serializers,
  ...ClientVpnConnectionStatus.serializers,
  ...ClientVpnConnection.serializers,
  ...DescribeClientVpnConnectionsResult.serializers,
  ...DescribeClientVpnEndpointsRequest.serializers,
  ...VpnProtocol.serializers,
  ...AssociatedNetworkType.serializers,
  ...AssociatedTargetNetwork.serializers,
  ...DirectoryServiceAuthentication.serializers,
  ...CertificateAuthentication.serializers,
  ...FederatedAuthentication.serializers,
  ...ClientVpnAuthentication.serializers,
  ...ConnectionLogResponseOptions.serializers,
  ...ClientVpnEndpointAttributeStatusCode.serializers,
  ...ClientVpnEndpointAttributeStatus.serializers,
  ...ClientConnectResponseOptions.serializers,
  ...ClientLoginBannerResponseOptions.serializers,
  ...ClientVpnEndpoint.serializers,
  ...DescribeClientVpnEndpointsResult.serializers,
  ...DescribeClientVpnRoutesRequest.serializers,
  ...ClientVpnRoute.serializers,
  ...DescribeClientVpnRoutesResult.serializers,
  ...DescribeClientVpnTargetNetworksRequest.serializers,
  ...TargetNetwork.serializers,
  ...DescribeClientVpnTargetNetworksResult.serializers,
  ...DescribeCoipPoolsRequest.serializers,
  ...DescribeCoipPoolsResult.serializers,
  ...DescribeConversionTasksRequest.serializers,
  ...DiskImageDescription.serializers,
  ...DiskImageVolumeDescription.serializers,
  ...ImportInstanceVolumeDetailItem.serializers,
  ...ImportInstanceTaskDetails.serializers,
  ...ImportVolumeTaskDetails.serializers,
  ...ConversionTaskState.serializers,
  ...ConversionTask.serializers,
  ...DescribeConversionTasksResult.serializers,
  ...DescribeCustomerGatewaysRequest.serializers,
  ...DescribeCustomerGatewaysResult.serializers,
  ...DescribeDhcpOptionsRequest.serializers,
  ...DescribeDhcpOptionsResult.serializers,
  ...DescribeEgressOnlyInternetGatewaysRequest.serializers,
  ...DescribeEgressOnlyInternetGatewaysResult.serializers,
  ...DescribeElasticGpusRequest.serializers,
  ...ElasticGpuStatus.serializers,
  ...ElasticGpuHealth.serializers,
  ...ElasticGpuState.serializers,
  ...ElasticGpus.serializers,
  ...DescribeElasticGpusResult.serializers,
  ...DescribeExportImageTasksRequest.serializers,
  ...ExportTaskS3Location.serializers,
  ...ExportImageTask.serializers,
  ...DescribeExportImageTasksResult.serializers,
  ...DescribeExportTasksRequest.serializers,
  ...DescribeExportTasksResult.serializers,
  ...DescribeFastLaunchImagesRequest.serializers,
  ...FastLaunchResourceType.serializers,
  ...FastLaunchSnapshotConfigurationResponse.serializers,
  ...FastLaunchLaunchTemplateSpecificationResponse.serializers,
  ...FastLaunchStateCode.serializers,
  ...DescribeFastLaunchImagesSuccessItem.serializers,
  ...DescribeFastLaunchImagesResult.serializers,
  ...DescribeFastSnapshotRestoresRequest.serializers,
  ...FastSnapshotRestoreStateCode.serializers,
  ...DescribeFastSnapshotRestoreSuccessItem.serializers,
  ...DescribeFastSnapshotRestoresResult.serializers,
  ...FleetEventType.serializers,
  ...DescribeFleetHistoryRequest.serializers,
  ...EventInformation.serializers,
  ...HistoryRecordEntry.serializers,
  ...DescribeFleetHistoryResult.serializers,
  ...DescribeFleetInstancesRequest.serializers,
  ...InstanceHealthStatus.serializers,
  ...ActiveInstance.serializers,
  ...DescribeFleetInstancesResult.serializers,
  ...DescribeFleetsRequest.serializers,
  ...FleetActivityStatus.serializers,
  ...FleetLaunchTemplateConfig.serializers,
  ...TargetCapacitySpecification.serializers,
  ...FleetSpotCapacityRebalance.serializers,
  ...FleetSpotMaintenanceStrategies.serializers,
  ...SpotOptions.serializers,
  ...CapacityReservationOptions.serializers,
  ...OnDemandOptions.serializers,
  ...DescribeFleetError.serializers,
  ...DescribeFleetsInstances.serializers,
  ...FleetData.serializers,
  ...DescribeFleetsResult.serializers,
  ...DescribeFlowLogsRequest.serializers,
  ...DestinationOptionsResponse.serializers,
  ...FlowLog.serializers,
  ...DescribeFlowLogsResult.serializers,
  ...FpgaImageAttributeName.serializers,
  ...DescribeFpgaImageAttributeRequest.serializers,
  ...PermissionGroup.serializers,
  ...LoadPermission.serializers,
  ...ProductCodeValues.serializers,
  ...ProductCode.serializers,
  ...FpgaImageAttribute.serializers,
  ...DescribeFpgaImageAttributeResult.serializers,
  ...DescribeFpgaImagesRequest.serializers,
  ...PciId.serializers,
  ...FpgaImageStateCode.serializers,
  ...FpgaImageState.serializers,
  ...FpgaImage.serializers,
  ...DescribeFpgaImagesResult.serializers,
  ...DescribeHostReservationOfferingsRequest.serializers,
  ...PaymentOption.serializers,
  ...HostOffering.serializers,
  ...DescribeHostReservationOfferingsResult.serializers,
  ...DescribeHostReservationsRequest.serializers,
  ...ReservationState.serializers,
  ...HostReservation.serializers,
  ...DescribeHostReservationsResult.serializers,
  ...DescribeHostsRequest.serializers,
  ...InstanceCapacity.serializers,
  ...AvailableCapacity.serializers,
  ...HostProperties.serializers,
  ...HostInstance.serializers,
  ...AllocationState.serializers,
  ...AllowsMultipleInstanceTypes.serializers,
  ...Host.serializers,
  ...DescribeHostsResult.serializers,
  ...DescribeIamInstanceProfileAssociationsRequest.serializers,
  ...DescribeIamInstanceProfileAssociationsResult.serializers,
  ...DescribeIdFormatRequest.serializers,
  ...DescribeIdFormatResult.serializers,
  ...DescribeIdentityIdFormatRequest.serializers,
  ...DescribeIdentityIdFormatResult.serializers,
  ...ImageAttributeName.serializers,
  ...DescribeImageAttributeRequest.serializers,
  ...LaunchPermission.serializers,
  ...ImageAttribute.serializers,
  ...DescribeImagesRequest.serializers,
  ...ArchitectureValues.serializers,
  ...ImageTypeValues.serializers,
  ...ImageState.serializers,
  ...HypervisorType.serializers,
  ...DeviceType.serializers,
  ...VirtualizationType.serializers,
  ...BootModeValues.serializers,
  ...TpmSupportValues.serializers,
  ...ImdsSupportValues.serializers,
  ...Image.serializers,
  ...DescribeImagesResult.serializers,
  ...DescribeImportImageTasksRequest.serializers,
  ...UserBucketDetails.serializers,
  ...SnapshotDetail.serializers,
  ...ImportImageLicenseConfigurationResponse.serializers,
  ...ImportImageTask.serializers,
  ...DescribeImportImageTasksResult.serializers,
  ...DescribeImportSnapshotTasksRequest.serializers,
  ...SnapshotTaskDetail.serializers,
  ...ImportSnapshotTask.serializers,
  ...DescribeImportSnapshotTasksResult.serializers,
  ...InstanceAttributeName.serializers,
  ...DescribeInstanceAttributeRequest.serializers,
  ...EbsInstanceBlockDevice.serializers,
  ...InstanceBlockDeviceMapping.serializers,
  ...AttributeBooleanValue.serializers,
  ...EnclaveOptions.serializers,
  ...InstanceAttribute.serializers,
  ...DescribeInstanceConnectEndpointsRequest.serializers,
  ...DescribeInstanceConnectEndpointsResult.serializers,
  ...DescribeInstanceCreditSpecificationsRequest.serializers,
  ...InstanceCreditSpecification.serializers,
  ...DescribeInstanceCreditSpecificationsResult.serializers,
  ...DescribeInstanceEventNotificationAttributesRequest.serializers,
  ...DescribeInstanceEventNotificationAttributesResult.serializers,
  ...DescribeInstanceEventWindowsRequest.serializers,
  ...DescribeInstanceEventWindowsResult.serializers,
  ...DescribeInstanceStatusRequest.serializers,
  ...EventCode.serializers,
  ...InstanceStatusEvent.serializers,
  ...InstanceStateName.serializers,
  ...InstanceState.serializers,
  ...StatusName.serializers,
  ...StatusType.serializers,
  ...InstanceStatusDetails.serializers,
  ...SummaryStatus.serializers,
  ...InstanceStatusSummary.serializers,
  ...InstanceStatus.serializers,
  ...DescribeInstanceStatusResult.serializers,
  ...LocationType.serializers,
  ...DescribeInstanceTypeOfferingsRequest.serializers,
  ...InstanceTypeOffering.serializers,
  ...DescribeInstanceTypeOfferingsResult.serializers,
  ...DescribeInstanceTypesRequest.serializers,
  ...UsageClassType.serializers,
  ...RootDeviceType.serializers,
  ...InstanceTypeHypervisor.serializers,
  ...ArchitectureType.serializers,
  ...SupportedAdditionalProcessorFeature.serializers,
  ...ProcessorInfo.serializers,
  ...VCpuInfo.serializers,
  ...MemoryInfo.serializers,
  ...DiskType.serializers,
  ...DiskInfo.serializers,
  ...EphemeralNvmeSupport.serializers,
  ...InstanceStorageEncryptionSupport.serializers,
  ...InstanceStorageInfo.serializers,
  ...EbsOptimizedSupport.serializers,
  ...EbsEncryptionSupport.serializers,
  ...EbsOptimizedInfo.serializers,
  ...EbsNvmeSupport.serializers,
  ...EbsInfo.serializers,
  ...NetworkCardInfo.serializers,
  ...EnaSupport.serializers,
  ...EfaInfo.serializers,
  ...NetworkInfo.serializers,
  ...GpuDeviceMemoryInfo.serializers,
  ...GpuDeviceInfo.serializers,
  ...GpuInfo.serializers,
  ...FpgaDeviceMemoryInfo.serializers,
  ...FpgaDeviceInfo.serializers,
  ...FpgaInfo.serializers,
  ...PlacementGroupStrategy.serializers,
  ...PlacementGroupInfo.serializers,
  ...InferenceDeviceMemoryInfo.serializers,
  ...InferenceDeviceInfo.serializers,
  ...InferenceAcceleratorInfo.serializers,
  ...BootModeType.serializers,
  ...NitroEnclavesSupport.serializers,
  ...NitroTpmSupport.serializers,
  ...NitroTpmInfo.serializers,
  ...InstanceTypeInfo.serializers,
  ...DescribeInstanceTypesResult.serializers,
  ...DescribeInstancesRequest.serializers,
  ...MonitoringState.serializers,
  ...Monitoring.serializers,
  ...InstanceLifecycleType.serializers,
  ...ElasticGpuAssociation.serializers,
  ...ElasticInferenceAcceleratorAssociation.serializers,
  ...InstanceNetworkInterfaceAssociation.serializers,
  ...InstanceNetworkInterfaceAttachment.serializers,
  ...InstancePrivateIpAddress.serializers,
  ...InstanceIpv4Prefix.serializers,
  ...InstanceIpv6Prefix.serializers,
  ...InstanceNetworkInterface.serializers,
  ...CpuOptions.serializers,
  ...CapacityReservationSpecificationResponse.serializers,
  ...HibernationOptions.serializers,
  ...LicenseConfiguration.serializers,
  ...InstanceMetadataOptionsState.serializers,
  ...HttpTokensState.serializers,
  ...InstanceMetadataEndpointState.serializers,
  ...InstanceMetadataProtocolState.serializers,
  ...InstanceMetadataTagsState.serializers,
  ...InstanceMetadataOptionsResponse.serializers,
  ...PrivateDnsNameOptionsResponse.serializers,
  ...InstanceAutoRecoveryState.serializers,
  ...InstanceMaintenanceOptions.serializers,
  ...InstanceBootModeValues.serializers,
  ...Instance.serializers,
  ...Reservation.serializers,
  ...DescribeInstancesResult.serializers,
  ...DescribeInternetGatewaysRequest.serializers,
  ...DescribeInternetGatewaysResult.serializers,
  ...DescribeIpamPoolsRequest.serializers,
  ...DescribeIpamPoolsResult.serializers,
  ...DescribeIpamResourceDiscoveriesRequest.serializers,
  ...DescribeIpamResourceDiscoveriesResult.serializers,
  ...DescribeIpamResourceDiscoveryAssociationsRequest.serializers,
  ...DescribeIpamResourceDiscoveryAssociationsResult.serializers,
  ...DescribeIpamScopesRequest.serializers,
  ...DescribeIpamScopesResult.serializers,
  ...DescribeIpamsRequest.serializers,
  ...DescribeIpamsResult.serializers,
  ...DescribeIpv6PoolsRequest.serializers,
  ...PoolCidrBlock.serializers,
  ...Ipv6Pool.serializers,
  ...DescribeIpv6PoolsResult.serializers,
  ...DescribeKeyPairsRequest.serializers,
  ...KeyPairInfo.serializers,
  ...DescribeKeyPairsResult.serializers,
  ...DescribeLaunchTemplateVersionsRequest.serializers,
  ...DescribeLaunchTemplateVersionsResult.serializers,
  ...DescribeLaunchTemplatesRequest.serializers,
  ...DescribeLaunchTemplatesResult.serializers,
  ...DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest
      .serializers,
  ...DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
      .serializers,
  ...DescribeLocalGatewayRouteTableVpcAssociationsRequest.serializers,
  ...DescribeLocalGatewayRouteTableVpcAssociationsResult.serializers,
  ...DescribeLocalGatewayRouteTablesRequest.serializers,
  ...DescribeLocalGatewayRouteTablesResult.serializers,
  ...DescribeLocalGatewayVirtualInterfaceGroupsRequest.serializers,
  ...LocalGatewayVirtualInterfaceGroup.serializers,
  ...DescribeLocalGatewayVirtualInterfaceGroupsResult.serializers,
  ...DescribeLocalGatewayVirtualInterfacesRequest.serializers,
  ...LocalGatewayVirtualInterface.serializers,
  ...DescribeLocalGatewayVirtualInterfacesResult.serializers,
  ...DescribeLocalGatewaysRequest.serializers,
  ...LocalGateway.serializers,
  ...DescribeLocalGatewaysResult.serializers,
  ...DescribeManagedPrefixListsRequest.serializers,
  ...DescribeManagedPrefixListsResult.serializers,
  ...DescribeMovingAddressesRequest.serializers,
  ...MoveStatus.serializers,
  ...MovingAddressStatus.serializers,
  ...DescribeMovingAddressesResult.serializers,
  ...DescribeNatGatewaysRequest.serializers,
  ...DescribeNatGatewaysResult.serializers,
  ...DescribeNetworkAclsRequest.serializers,
  ...DescribeNetworkAclsResult.serializers,
  ...DescribeNetworkInsightsAccessScopeAnalysesRequest.serializers,
  ...AnalysisStatus.serializers,
  ...FindingsFound.serializers,
  ...NetworkInsightsAccessScopeAnalysis.serializers,
  ...DescribeNetworkInsightsAccessScopeAnalysesResult.serializers,
  ...DescribeNetworkInsightsAccessScopesRequest.serializers,
  ...DescribeNetworkInsightsAccessScopesResult.serializers,
  ...DescribeNetworkInsightsAnalysesRequest.serializers,
  ...AnalysisAclRule.serializers,
  ...AnalysisComponent.serializers,
  ...AnalysisPacketHeader.serializers,
  ...AnalysisRouteTableRoute.serializers,
  ...AnalysisSecurityGroupRule.serializers,
  ...RuleOption.serializers,
  ...RuleGroupTypePair.serializers,
  ...RuleGroupRuleOptionsPair.serializers,
  ...AdditionalDetail.serializers,
  ...TransitGatewayRouteTableRoute.serializers,
  ...AnalysisLoadBalancerListener.serializers,
  ...AnalysisLoadBalancerTarget.serializers,
  ...FirewallStatelessRule.serializers,
  ...FirewallStatefulRule.serializers,
  ...Explanation.serializers,
  ...PathComponent.serializers,
  ...AlternatePathHint.serializers,
  ...NetworkInsightsAnalysis.serializers,
  ...DescribeNetworkInsightsAnalysesResult.serializers,
  ...DescribeNetworkInsightsPathsRequest.serializers,
  ...DescribeNetworkInsightsPathsResult.serializers,
  ...NetworkInterfaceAttribute.serializers,
  ...DescribeNetworkInterfaceAttributeRequest.serializers,
  ...DescribeNetworkInterfaceAttributeResult.serializers,
  ...DescribeNetworkInterfacePermissionsRequest.serializers,
  ...DescribeNetworkInterfacePermissionsResult.serializers,
  ...DescribeNetworkInterfacesRequest.serializers,
  ...DescribeNetworkInterfacesResult.serializers,
  ...DescribePlacementGroupsRequest.serializers,
  ...DescribePlacementGroupsResult.serializers,
  ...DescribePrefixListsRequest.serializers,
  ...PrefixList.serializers,
  ...DescribePrefixListsResult.serializers,
  ...DescribePrincipalIdFormatRequest.serializers,
  ...PrincipalIdFormat.serializers,
  ...DescribePrincipalIdFormatResult.serializers,
  ...DescribePublicIpv4PoolsRequest.serializers,
  ...PublicIpv4PoolRange.serializers,
  ...PublicIpv4Pool.serializers,
  ...DescribePublicIpv4PoolsResult.serializers,
  ...DescribeRegionsRequest.serializers,
  ...Region.serializers,
  ...DescribeRegionsResult.serializers,
  ...DescribeReplaceRootVolumeTasksRequest.serializers,
  ...DescribeReplaceRootVolumeTasksResult.serializers,
  ...OfferingClassType.serializers,
  ...OfferingTypeValues.serializers,
  ...DescribeReservedInstancesRequest.serializers,
  ...RiProductDescription.serializers,
  ...ReservedInstanceState.serializers,
  ...RecurringChargeFrequency.serializers,
  ...RecurringCharge.serializers,
  ...Scope.serializers,
  ...ReservedInstances.serializers,
  ...DescribeReservedInstancesResult.serializers,
  ...DescribeReservedInstancesListingsRequest.serializers,
  ...DescribeReservedInstancesListingsResult.serializers,
  ...DescribeReservedInstancesModificationsRequest.serializers,
  ...ReservedInstancesConfiguration.serializers,
  ...ReservedInstancesModificationResult.serializers,
  ...ReservedInstancesId.serializers,
  ...ReservedInstancesModification.serializers,
  ...DescribeReservedInstancesModificationsResult.serializers,
  ...DescribeReservedInstancesOfferingsRequest.serializers,
  ...PricingDetail.serializers,
  ...ReservedInstancesOffering.serializers,
  ...DescribeReservedInstancesOfferingsResult.serializers,
  ...DescribeRouteTablesRequest.serializers,
  ...DescribeRouteTablesResult.serializers,
  ...SlotDateTimeRangeRequest.serializers,
  ...ScheduledInstanceRecurrenceRequest.serializers,
  ...DescribeScheduledInstanceAvailabilityRequest.serializers,
  ...ScheduledInstanceRecurrence.serializers,
  ...ScheduledInstanceAvailability.serializers,
  ...DescribeScheduledInstanceAvailabilityResult.serializers,
  ...SlotStartTimeRangeRequest.serializers,
  ...DescribeScheduledInstancesRequest.serializers,
  ...ScheduledInstance.serializers,
  ...DescribeScheduledInstancesResult.serializers,
  ...DescribeSecurityGroupReferencesRequest.serializers,
  ...SecurityGroupReference.serializers,
  ...DescribeSecurityGroupReferencesResult.serializers,
  ...DescribeSecurityGroupRulesRequest.serializers,
  ...DescribeSecurityGroupRulesResult.serializers,
  ...DescribeSecurityGroupsRequest.serializers,
  ...SecurityGroup.serializers,
  ...DescribeSecurityGroupsResult.serializers,
  ...SnapshotAttributeName.serializers,
  ...DescribeSnapshotAttributeRequest.serializers,
  ...CreateVolumePermission.serializers,
  ...DescribeSnapshotAttributeResult.serializers,
  ...DescribeSnapshotTierStatusRequest.serializers,
  ...TieringOperationStatus.serializers,
  ...SnapshotTierStatus.serializers,
  ...DescribeSnapshotTierStatusResult.serializers,
  ...DescribeSnapshotsRequest.serializers,
  ...DescribeSnapshotsResult.serializers,
  ...DescribeSpotDatafeedSubscriptionRequest.serializers,
  ...DescribeSpotDatafeedSubscriptionResult.serializers,
  ...DescribeSpotFleetInstancesRequest.serializers,
  ...DescribeSpotFleetInstancesResponse.serializers,
  ...EventType.serializers,
  ...DescribeSpotFleetRequestHistoryRequest.serializers,
  ...HistoryRecord.serializers,
  ...DescribeSpotFleetRequestHistoryResponse.serializers,
  ...DescribeSpotFleetRequestsRequest.serializers,
  ...ActivityStatus.serializers,
  ...AllocationStrategy.serializers,
  ...OnDemandAllocationStrategy.serializers,
  ...ReplacementStrategy.serializers,
  ...SpotCapacityRebalance.serializers,
  ...SpotMaintenanceStrategies.serializers,
  ...ExcessCapacityTerminationPolicy.serializers,
  ...SpotFleetMonitoring.serializers,
  ...InstanceNetworkInterfaceSpecification.serializers,
  ...SpotPlacement.serializers,
  ...SpotFleetTagSpecification.serializers,
  ...SpotFleetLaunchSpecification.serializers,
  ...LaunchTemplateOverrides.serializers,
  ...LaunchTemplateConfig.serializers,
  ...ClassicLoadBalancer.serializers,
  ...ClassicLoadBalancersConfig.serializers,
  ...TargetGroup.serializers,
  ...TargetGroupsConfig.serializers,
  ...LoadBalancersConfig.serializers,
  ...SpotFleetRequestConfigData.serializers,
  ...SpotFleetRequestConfig.serializers,
  ...DescribeSpotFleetRequestsResponse.serializers,
  ...DescribeSpotInstanceRequestsRequest.serializers,
  ...RunInstancesMonitoringEnabled.serializers,
  ...LaunchSpecification.serializers,
  ...SpotInstanceState.serializers,
  ...SpotInstanceStatus.serializers,
  ...SpotInstanceRequest.serializers,
  ...DescribeSpotInstanceRequestsResult.serializers,
  ...DescribeSpotPriceHistoryRequest.serializers,
  ...SpotPrice.serializers,
  ...DescribeSpotPriceHistoryResult.serializers,
  ...DescribeStaleSecurityGroupsRequest.serializers,
  ...StaleIpPermission.serializers,
  ...StaleSecurityGroup.serializers,
  ...DescribeStaleSecurityGroupsResult.serializers,
  ...DescribeStoreImageTasksRequest.serializers,
  ...StoreImageTaskResult.serializers,
  ...DescribeStoreImageTasksResult.serializers,
  ...DescribeSubnetsRequest.serializers,
  ...DescribeSubnetsResult.serializers,
  ...DescribeTagsRequest.serializers,
  ...TagDescription.serializers,
  ...DescribeTagsResult.serializers,
  ...DescribeTrafficMirrorFiltersRequest.serializers,
  ...DescribeTrafficMirrorFiltersResult.serializers,
  ...DescribeTrafficMirrorSessionsRequest.serializers,
  ...DescribeTrafficMirrorSessionsResult.serializers,
  ...DescribeTrafficMirrorTargetsRequest.serializers,
  ...DescribeTrafficMirrorTargetsResult.serializers,
  ...DescribeTransitGatewayAttachmentsRequest.serializers,
  ...TransitGatewayAttachmentAssociation.serializers,
  ...TransitGatewayAttachment.serializers,
  ...DescribeTransitGatewayAttachmentsResult.serializers,
  ...DescribeTransitGatewayConnectPeersRequest.serializers,
  ...DescribeTransitGatewayConnectPeersResult.serializers,
  ...DescribeTransitGatewayConnectsRequest.serializers,
  ...DescribeTransitGatewayConnectsResult.serializers,
  ...DescribeTransitGatewayMulticastDomainsRequest.serializers,
  ...DescribeTransitGatewayMulticastDomainsResult.serializers,
  ...DescribeTransitGatewayPeeringAttachmentsRequest.serializers,
  ...DescribeTransitGatewayPeeringAttachmentsResult.serializers,
  ...DescribeTransitGatewayPolicyTablesRequest.serializers,
  ...DescribeTransitGatewayPolicyTablesResult.serializers,
  ...DescribeTransitGatewayRouteTableAnnouncementsRequest.serializers,
  ...DescribeTransitGatewayRouteTableAnnouncementsResult.serializers,
  ...DescribeTransitGatewayRouteTablesRequest.serializers,
  ...DescribeTransitGatewayRouteTablesResult.serializers,
  ...DescribeTransitGatewayVpcAttachmentsRequest.serializers,
  ...DescribeTransitGatewayVpcAttachmentsResult.serializers,
  ...DescribeTransitGatewaysRequest.serializers,
  ...DescribeTransitGatewaysResult.serializers,
  ...DescribeTrunkInterfaceAssociationsRequest.serializers,
  ...DescribeTrunkInterfaceAssociationsResult.serializers,
  ...DescribeVerifiedAccessEndpointsRequest.serializers,
  ...DescribeVerifiedAccessEndpointsResult.serializers,
  ...DescribeVerifiedAccessGroupsRequest.serializers,
  ...DescribeVerifiedAccessGroupsResult.serializers,
  ...DescribeVerifiedAccessInstanceLoggingConfigurationsRequest.serializers,
  ...VerifiedAccessLogDeliveryStatusCode.serializers,
  ...VerifiedAccessLogDeliveryStatus.serializers,
  ...VerifiedAccessLogS3Destination.serializers,
  ...VerifiedAccessLogCloudWatchLogsDestination.serializers,
  ...VerifiedAccessLogKinesisDataFirehoseDestination.serializers,
  ...VerifiedAccessLogs.serializers,
  ...VerifiedAccessInstanceLoggingConfiguration.serializers,
  ...DescribeVerifiedAccessInstanceLoggingConfigurationsResult.serializers,
  ...DescribeVerifiedAccessInstancesRequest.serializers,
  ...DescribeVerifiedAccessInstancesResult.serializers,
  ...DescribeVerifiedAccessTrustProvidersRequest.serializers,
  ...DescribeVerifiedAccessTrustProvidersResult.serializers,
  ...VolumeAttributeName.serializers,
  ...DescribeVolumeAttributeRequest.serializers,
  ...DescribeVolumeAttributeResult.serializers,
  ...DescribeVolumeStatusRequest.serializers,
  ...VolumeStatusAction.serializers,
  ...VolumeStatusEvent.serializers,
  ...VolumeStatusName.serializers,
  ...VolumeStatusDetails.serializers,
  ...VolumeStatusInfoStatus.serializers,
  ...VolumeStatusInfo.serializers,
  ...VolumeStatusAttachmentStatus.serializers,
  ...VolumeStatusItem.serializers,
  ...DescribeVolumeStatusResult.serializers,
  ...DescribeVolumesRequest.serializers,
  ...DescribeVolumesResult.serializers,
  ...DescribeVolumesModificationsRequest.serializers,
  ...VolumeModificationState.serializers,
  ...VolumeModification.serializers,
  ...DescribeVolumesModificationsResult.serializers,
  ...VpcAttributeName.serializers,
  ...DescribeVpcAttributeRequest.serializers,
  ...DescribeVpcAttributeResult.serializers,
  ...DescribeVpcClassicLinkRequest.serializers,
  ...VpcClassicLink.serializers,
  ...DescribeVpcClassicLinkResult.serializers,
  ...DescribeVpcClassicLinkDnsSupportRequest.serializers,
  ...ClassicLinkDnsSupport.serializers,
  ...DescribeVpcClassicLinkDnsSupportResult.serializers,
  ...DescribeVpcEndpointConnectionNotificationsRequest.serializers,
  ...DescribeVpcEndpointConnectionNotificationsResult.serializers,
  ...DescribeVpcEndpointConnectionsRequest.serializers,
  ...VpcEndpointConnection.serializers,
  ...DescribeVpcEndpointConnectionsResult.serializers,
  ...DescribeVpcEndpointServiceConfigurationsRequest.serializers,
  ...DescribeVpcEndpointServiceConfigurationsResult.serializers,
  ...DescribeVpcEndpointServicePermissionsRequest.serializers,
  ...PrincipalType.serializers,
  ...AllowedPrincipal.serializers,
  ...DescribeVpcEndpointServicePermissionsResult.serializers,
  ...DescribeVpcEndpointServicesRequest.serializers,
  ...PrivateDnsDetails.serializers,
  ...ServiceDetail.serializers,
  ...DescribeVpcEndpointServicesResult.serializers,
  ...DescribeVpcEndpointsRequest.serializers,
  ...DescribeVpcEndpointsResult.serializers,
  ...DescribeVpcPeeringConnectionsRequest.serializers,
  ...DescribeVpcPeeringConnectionsResult.serializers,
  ...DescribeVpcsRequest.serializers,
  ...DescribeVpcsResult.serializers,
  ...DescribeVpnConnectionsRequest.serializers,
  ...DescribeVpnConnectionsResult.serializers,
  ...DescribeVpnGatewaysRequest.serializers,
  ...DescribeVpnGatewaysResult.serializers,
  ...DetachClassicLinkVpcRequest.serializers,
  ...DetachClassicLinkVpcResult.serializers,
  ...DetachInternetGatewayRequest.serializers,
  ...DetachNetworkInterfaceRequest.serializers,
  ...DetachVerifiedAccessTrustProviderRequest.serializers,
  ...DetachVerifiedAccessTrustProviderResult.serializers,
  ...DetachVolumeRequest.serializers,
  ...DetachVpnGatewayRequest.serializers,
  ...DisableAddressTransferRequest.serializers,
  ...DisableAddressTransferResult.serializers,
  ...DisableAwsNetworkPerformanceMetricSubscriptionRequest.serializers,
  ...DisableAwsNetworkPerformanceMetricSubscriptionResult.serializers,
  ...DisableEbsEncryptionByDefaultRequest.serializers,
  ...DisableEbsEncryptionByDefaultResult.serializers,
  ...DisableFastLaunchRequest.serializers,
  ...DisableFastLaunchResult.serializers,
  ...DisableFastSnapshotRestoresRequest.serializers,
  ...DisableFastSnapshotRestoreSuccessItem.serializers,
  ...DisableFastSnapshotRestoreStateError.serializers,
  ...DisableFastSnapshotRestoreStateErrorItem.serializers,
  ...DisableFastSnapshotRestoreErrorItem.serializers,
  ...DisableFastSnapshotRestoresResult.serializers,
  ...DisableImageDeprecationRequest.serializers,
  ...DisableImageDeprecationResult.serializers,
  ...DisableIpamOrganizationAdminAccountRequest.serializers,
  ...DisableIpamOrganizationAdminAccountResult.serializers,
  ...DisableSerialConsoleAccessRequest.serializers,
  ...DisableSerialConsoleAccessResult.serializers,
  ...DisableTransitGatewayRouteTablePropagationRequest.serializers,
  ...TransitGatewayPropagationState.serializers,
  ...TransitGatewayPropagation.serializers,
  ...DisableTransitGatewayRouteTablePropagationResult.serializers,
  ...DisableVgwRoutePropagationRequest.serializers,
  ...DisableVpcClassicLinkRequest.serializers,
  ...DisableVpcClassicLinkResult.serializers,
  ...DisableVpcClassicLinkDnsSupportRequest.serializers,
  ...DisableVpcClassicLinkDnsSupportResult.serializers,
  ...DisassociateAddressRequest.serializers,
  ...DisassociateClientVpnTargetNetworkRequest.serializers,
  ...DisassociateClientVpnTargetNetworkResult.serializers,
  ...DisassociateEnclaveCertificateIamRoleRequest.serializers,
  ...DisassociateEnclaveCertificateIamRoleResult.serializers,
  ...DisassociateIamInstanceProfileRequest.serializers,
  ...DisassociateIamInstanceProfileResult.serializers,
  ...InstanceEventWindowDisassociationRequest.serializers,
  ...DisassociateInstanceEventWindowRequest.serializers,
  ...DisassociateInstanceEventWindowResult.serializers,
  ...DisassociateIpamResourceDiscoveryRequest.serializers,
  ...DisassociateIpamResourceDiscoveryResult.serializers,
  ...DisassociateNatGatewayAddressRequest.serializers,
  ...DisassociateNatGatewayAddressResult.serializers,
  ...DisassociateRouteTableRequest.serializers,
  ...DisassociateSubnetCidrBlockRequest.serializers,
  ...DisassociateSubnetCidrBlockResult.serializers,
  ...DisassociateTransitGatewayMulticastDomainRequest.serializers,
  ...DisassociateTransitGatewayMulticastDomainResult.serializers,
  ...DisassociateTransitGatewayPolicyTableRequest.serializers,
  ...DisassociateTransitGatewayPolicyTableResult.serializers,
  ...DisassociateTransitGatewayRouteTableRequest.serializers,
  ...DisassociateTransitGatewayRouteTableResult.serializers,
  ...DisassociateTrunkInterfaceRequest.serializers,
  ...DisassociateTrunkInterfaceResult.serializers,
  ...DisassociateVpcCidrBlockRequest.serializers,
  ...DisassociateVpcCidrBlockResult.serializers,
  ...EnableAddressTransferRequest.serializers,
  ...EnableAddressTransferResult.serializers,
  ...EnableAwsNetworkPerformanceMetricSubscriptionRequest.serializers,
  ...EnableAwsNetworkPerformanceMetricSubscriptionResult.serializers,
  ...EnableEbsEncryptionByDefaultRequest.serializers,
  ...EnableEbsEncryptionByDefaultResult.serializers,
  ...FastLaunchSnapshotConfigurationRequest.serializers,
  ...FastLaunchLaunchTemplateSpecificationRequest.serializers,
  ...EnableFastLaunchRequest.serializers,
  ...EnableFastLaunchResult.serializers,
  ...EnableFastSnapshotRestoresRequest.serializers,
  ...EnableFastSnapshotRestoreSuccessItem.serializers,
  ...EnableFastSnapshotRestoreStateError.serializers,
  ...EnableFastSnapshotRestoreStateErrorItem.serializers,
  ...EnableFastSnapshotRestoreErrorItem.serializers,
  ...EnableFastSnapshotRestoresResult.serializers,
  ...EnableImageDeprecationRequest.serializers,
  ...EnableImageDeprecationResult.serializers,
  ...EnableIpamOrganizationAdminAccountRequest.serializers,
  ...EnableIpamOrganizationAdminAccountResult.serializers,
  ...EnableReachabilityAnalyzerOrganizationSharingRequest.serializers,
  ...EnableReachabilityAnalyzerOrganizationSharingResult.serializers,
  ...EnableSerialConsoleAccessRequest.serializers,
  ...EnableSerialConsoleAccessResult.serializers,
  ...EnableTransitGatewayRouteTablePropagationRequest.serializers,
  ...EnableTransitGatewayRouteTablePropagationResult.serializers,
  ...EnableVgwRoutePropagationRequest.serializers,
  ...EnableVolumeIoRequest.serializers,
  ...EnableVpcClassicLinkRequest.serializers,
  ...EnableVpcClassicLinkResult.serializers,
  ...EnableVpcClassicLinkDnsSupportRequest.serializers,
  ...EnableVpcClassicLinkDnsSupportResult.serializers,
  ...ExportClientVpnClientCertificateRevocationListRequest.serializers,
  ...ClientCertificateRevocationListStatusCode.serializers,
  ...ClientCertificateRevocationListStatus.serializers,
  ...ExportClientVpnClientCertificateRevocationListResult.serializers,
  ...ExportClientVpnClientConfigurationRequest.serializers,
  ...ExportClientVpnClientConfigurationResult.serializers,
  ...ExportTaskS3LocationRequest.serializers,
  ...ExportImageRequest.serializers,
  ...ExportImageResult.serializers,
  ...ExportTransitGatewayRoutesRequest.serializers,
  ...ExportTransitGatewayRoutesResult.serializers,
  ...GetAssociatedEnclaveCertificateIamRolesRequest.serializers,
  ...AssociatedRole.serializers,
  ...GetAssociatedEnclaveCertificateIamRolesResult.serializers,
  ...GetAssociatedIpv6PoolCidrsRequest.serializers,
  ...Ipv6CidrAssociation.serializers,
  ...GetAssociatedIpv6PoolCidrsResult.serializers,
  ...DataQuery.serializers,
  ...GetAwsNetworkPerformanceDataRequest.serializers,
  ...MetricPoint.serializers,
  ...DataResponse.serializers,
  ...GetAwsNetworkPerformanceDataResult.serializers,
  ...GetCapacityReservationUsageRequest.serializers,
  ...InstanceUsage.serializers,
  ...GetCapacityReservationUsageResult.serializers,
  ...GetCoipPoolUsageRequest.serializers,
  ...CoipAddressUsage.serializers,
  ...GetCoipPoolUsageResult.serializers,
  ...GetConsoleOutputRequest.serializers,
  ...GetConsoleOutputResult.serializers,
  ...GetConsoleScreenshotRequest.serializers,
  ...GetConsoleScreenshotResult.serializers,
  ...UnlimitedSupportedInstanceFamily.serializers,
  ...GetDefaultCreditSpecificationRequest.serializers,
  ...InstanceFamilyCreditSpecification.serializers,
  ...GetDefaultCreditSpecificationResult.serializers,
  ...GetEbsDefaultKmsKeyIdRequest.serializers,
  ...GetEbsDefaultKmsKeyIdResult.serializers,
  ...GetEbsEncryptionByDefaultRequest.serializers,
  ...GetEbsEncryptionByDefaultResult.serializers,
  ...PartitionLoadFrequency.serializers,
  ...AthenaIntegration.serializers,
  ...IntegrateServices.serializers,
  ...GetFlowLogsIntegrationTemplateRequest.serializers,
  ...GetFlowLogsIntegrationTemplateResult.serializers,
  ...GetGroupsForCapacityReservationRequest.serializers,
  ...CapacityReservationGroup.serializers,
  ...GetGroupsForCapacityReservationResult.serializers,
  ...GetHostReservationPurchasePreviewRequest.serializers,
  ...Purchase.serializers,
  ...GetHostReservationPurchasePreviewResult.serializers,
  ...GetInstanceTypesFromInstanceRequirementsRequest.serializers,
  ...InstanceTypeInfoFromInstanceRequirements.serializers,
  ...GetInstanceTypesFromInstanceRequirementsResult.serializers,
  ...GetInstanceUefiDataRequest.serializers,
  ...GetInstanceUefiDataResult.serializers,
  ...GetIpamAddressHistoryRequest.serializers,
  ...IpamAddressHistoryResourceType.serializers,
  ...IpamComplianceStatus.serializers,
  ...IpamOverlapStatus.serializers,
  ...IpamAddressHistoryRecord.serializers,
  ...GetIpamAddressHistoryResult.serializers,
  ...GetIpamDiscoveredAccountsRequest.serializers,
  ...IpamDiscoveryFailureCode.serializers,
  ...IpamDiscoveryFailureReason.serializers,
  ...IpamDiscoveredAccount.serializers,
  ...GetIpamDiscoveredAccountsResult.serializers,
  ...GetIpamDiscoveredResourceCidrsRequest.serializers,
  ...IpamResourceType.serializers,
  ...IpamDiscoveredResourceCidr.serializers,
  ...GetIpamDiscoveredResourceCidrsResult.serializers,
  ...GetIpamPoolAllocationsRequest.serializers,
  ...GetIpamPoolAllocationsResult.serializers,
  ...GetIpamPoolCidrsRequest.serializers,
  ...GetIpamPoolCidrsResult.serializers,
  ...GetIpamResourceCidrsRequest.serializers,
  ...IpamManagementState.serializers,
  ...IpamResourceCidr.serializers,
  ...GetIpamResourceCidrsResult.serializers,
  ...GetLaunchTemplateDataRequest.serializers,
  ...GetLaunchTemplateDataResult.serializers,
  ...GetManagedPrefixListAssociationsRequest.serializers,
  ...PrefixListAssociation.serializers,
  ...GetManagedPrefixListAssociationsResult.serializers,
  ...GetManagedPrefixListEntriesRequest.serializers,
  ...PrefixListEntry.serializers,
  ...GetManagedPrefixListEntriesResult.serializers,
  ...GetNetworkInsightsAccessScopeAnalysisFindingsRequest.serializers,
  ...AccessScopeAnalysisFinding.serializers,
  ...GetNetworkInsightsAccessScopeAnalysisFindingsResult.serializers,
  ...GetNetworkInsightsAccessScopeContentRequest.serializers,
  ...GetNetworkInsightsAccessScopeContentResult.serializers,
  ...GetPasswordDataRequest.serializers,
  ...GetPasswordDataResult.serializers,
  ...GetReservedInstancesExchangeQuoteRequest.serializers,
  ...ReservationValue.serializers,
  ...ReservedInstanceReservationValue.serializers,
  ...TargetConfiguration.serializers,
  ...TargetReservationValue.serializers,
  ...GetReservedInstancesExchangeQuoteResult.serializers,
  ...GetSerialConsoleAccessStatusRequest.serializers,
  ...GetSerialConsoleAccessStatusResult.serializers,
  ...InstanceRequirementsWithMetadataRequest.serializers,
  ...GetSpotPlacementScoresRequest.serializers,
  ...SpotPlacementScore.serializers,
  ...GetSpotPlacementScoresResult.serializers,
  ...GetSubnetCidrReservationsRequest.serializers,
  ...GetSubnetCidrReservationsResult.serializers,
  ...GetTransitGatewayAttachmentPropagationsRequest.serializers,
  ...TransitGatewayAttachmentPropagation.serializers,
  ...GetTransitGatewayAttachmentPropagationsResult.serializers,
  ...GetTransitGatewayMulticastDomainAssociationsRequest.serializers,
  ...TransitGatewayMulticastDomainAssociation.serializers,
  ...GetTransitGatewayMulticastDomainAssociationsResult.serializers,
  ...GetTransitGatewayPolicyTableAssociationsRequest.serializers,
  ...GetTransitGatewayPolicyTableAssociationsResult.serializers,
  ...GetTransitGatewayPolicyTableEntriesRequest.serializers,
  ...TransitGatewayPolicyRuleMetaData.serializers,
  ...TransitGatewayPolicyRule.serializers,
  ...TransitGatewayPolicyTableEntry.serializers,
  ...GetTransitGatewayPolicyTableEntriesResult.serializers,
  ...GetTransitGatewayPrefixListReferencesRequest.serializers,
  ...GetTransitGatewayPrefixListReferencesResult.serializers,
  ...GetTransitGatewayRouteTableAssociationsRequest.serializers,
  ...TransitGatewayRouteTableAssociation.serializers,
  ...GetTransitGatewayRouteTableAssociationsResult.serializers,
  ...GetTransitGatewayRouteTablePropagationsRequest.serializers,
  ...TransitGatewayRouteTablePropagation.serializers,
  ...GetTransitGatewayRouteTablePropagationsResult.serializers,
  ...GetVerifiedAccessEndpointPolicyRequest.serializers,
  ...GetVerifiedAccessEndpointPolicyResult.serializers,
  ...GetVerifiedAccessGroupPolicyRequest.serializers,
  ...GetVerifiedAccessGroupPolicyResult.serializers,
  ...GetVpnConnectionDeviceSampleConfigurationRequest.serializers,
  ...GetVpnConnectionDeviceSampleConfigurationResult.serializers,
  ...GetVpnConnectionDeviceTypesRequest.serializers,
  ...VpnConnectionDeviceType.serializers,
  ...GetVpnConnectionDeviceTypesResult.serializers,
  ...GetVpnTunnelReplacementStatusRequest.serializers,
  ...MaintenanceDetails.serializers,
  ...GetVpnTunnelReplacementStatusResult.serializers,
  ...ImportClientVpnClientCertificateRevocationListRequest.serializers,
  ...ImportClientVpnClientCertificateRevocationListResult.serializers,
  ...ClientData.serializers,
  ...UserBucket.serializers,
  ...ImageDiskContainer.serializers,
  ...ImportImageLicenseConfigurationRequest.serializers,
  ...ImportImageRequest.serializers,
  ...ImportImageResult.serializers,
  ...DiskImageDetail.serializers,
  ...VolumeDetail.serializers,
  ...DiskImage.serializers,
  ...UserData.serializers,
  ...ImportInstanceLaunchSpecification.serializers,
  ...ImportInstanceRequest.serializers,
  ...ImportInstanceResult.serializers,
  ...ImportKeyPairRequest.serializers,
  ...ImportKeyPairResult.serializers,
  ...SnapshotDiskContainer.serializers,
  ...ImportSnapshotRequest.serializers,
  ...ImportSnapshotResult.serializers,
  ...ImportVolumeRequest.serializers,
  ...ImportVolumeResult.serializers,
  ...ListImagesInRecycleBinRequest.serializers,
  ...ImageRecycleBinInfo.serializers,
  ...ListImagesInRecycleBinResult.serializers,
  ...ListSnapshotsInRecycleBinRequest.serializers,
  ...SnapshotRecycleBinInfo.serializers,
  ...ListSnapshotsInRecycleBinResult.serializers,
  ...ModifyAddressAttributeRequest.serializers,
  ...ModifyAddressAttributeResult.serializers,
  ...ModifyAvailabilityZoneOptInStatus.serializers,
  ...ModifyAvailabilityZoneGroupRequest.serializers,
  ...ModifyAvailabilityZoneGroupResult.serializers,
  ...ModifyCapacityReservationRequest.serializers,
  ...ModifyCapacityReservationResult.serializers,
  ...ModifyCapacityReservationFleetRequest.serializers,
  ...ModifyCapacityReservationFleetResult.serializers,
  ...DnsServersOptionsModifyStructure.serializers,
  ...ModifyClientVpnEndpointRequest.serializers,
  ...ModifyClientVpnEndpointResult.serializers,
  ...ModifyDefaultCreditSpecificationRequest.serializers,
  ...ModifyDefaultCreditSpecificationResult.serializers,
  ...ModifyEbsDefaultKmsKeyIdRequest.serializers,
  ...ModifyEbsDefaultKmsKeyIdResult.serializers,
  ...ModifyFleetRequest.serializers,
  ...ModifyFleetResult.serializers,
  ...OperationType.serializers,
  ...LoadPermissionRequest.serializers,
  ...LoadPermissionModifications.serializers,
  ...ModifyFpgaImageAttributeRequest.serializers,
  ...ModifyFpgaImageAttributeResult.serializers,
  ...ModifyHostsRequest.serializers,
  ...ModifyHostsResult.serializers,
  ...ModifyIdFormatRequest.serializers,
  ...ModifyIdentityIdFormatRequest.serializers,
  ...LaunchPermissionModifications.serializers,
  ...ModifyImageAttributeRequest.serializers,
  ...EbsInstanceBlockDeviceSpecification.serializers,
  ...InstanceBlockDeviceMappingSpecification.serializers,
  ...BlobAttributeValue.serializers,
  ...ModifyInstanceAttributeRequest.serializers,
  ...CapacityReservationSpecification.serializers,
  ...ModifyInstanceCapacityReservationAttributesRequest.serializers,
  ...ModifyInstanceCapacityReservationAttributesResult.serializers,
  ...InstanceCreditSpecificationRequest.serializers,
  ...ModifyInstanceCreditSpecificationRequest.serializers,
  ...SuccessfulInstanceCreditSpecificationItem.serializers,
  ...UnsuccessfulInstanceCreditSpecificationErrorCode.serializers,
  ...UnsuccessfulInstanceCreditSpecificationItemError.serializers,
  ...UnsuccessfulInstanceCreditSpecificationItem.serializers,
  ...ModifyInstanceCreditSpecificationResult.serializers,
  ...ModifyInstanceEventStartTimeRequest.serializers,
  ...ModifyInstanceEventStartTimeResult.serializers,
  ...ModifyInstanceEventWindowRequest.serializers,
  ...ModifyInstanceEventWindowResult.serializers,
  ...ModifyInstanceMaintenanceOptionsRequest.serializers,
  ...ModifyInstanceMaintenanceOptionsResult.serializers,
  ...ModifyInstanceMetadataOptionsRequest.serializers,
  ...ModifyInstanceMetadataOptionsResult.serializers,
  ...Affinity.serializers,
  ...HostTenancy.serializers,
  ...ModifyInstancePlacementRequest.serializers,
  ...ModifyInstancePlacementResult.serializers,
  ...RemoveIpamOperatingRegion.serializers,
  ...ModifyIpamRequest.serializers,
  ...ModifyIpamResult.serializers,
  ...ModifyIpamPoolRequest.serializers,
  ...ModifyIpamPoolResult.serializers,
  ...ModifyIpamResourceCidrRequest.serializers,
  ...ModifyIpamResourceCidrResult.serializers,
  ...ModifyIpamResourceDiscoveryRequest.serializers,
  ...ModifyIpamResourceDiscoveryResult.serializers,
  ...ModifyIpamScopeRequest.serializers,
  ...ModifyIpamScopeResult.serializers,
  ...ModifyLaunchTemplateRequest.serializers,
  ...ModifyLaunchTemplateResult.serializers,
  ...ModifyLocalGatewayRouteRequest.serializers,
  ...ModifyLocalGatewayRouteResult.serializers,
  ...RemovePrefixListEntry.serializers,
  ...ModifyManagedPrefixListRequest.serializers,
  ...ModifyManagedPrefixListResult.serializers,
  ...NetworkInterfaceAttachmentChanges.serializers,
  ...ModifyNetworkInterfaceAttributeRequest.serializers,
  ...ModifyPrivateDnsNameOptionsRequest.serializers,
  ...ModifyPrivateDnsNameOptionsResult.serializers,
  ...ModifyReservedInstancesRequest.serializers,
  ...ModifyReservedInstancesResult.serializers,
  ...SecurityGroupRuleRequest.serializers,
  ...SecurityGroupRuleUpdate.serializers,
  ...ModifySecurityGroupRulesRequest.serializers,
  ...ModifySecurityGroupRulesResult.serializers,
  ...CreateVolumePermissionModifications.serializers,
  ...ModifySnapshotAttributeRequest.serializers,
  ...TargetStorageTier.serializers,
  ...ModifySnapshotTierRequest.serializers,
  ...ModifySnapshotTierResult.serializers,
  ...ModifySpotFleetRequestRequest.serializers,
  ...ModifySpotFleetRequestResponse.serializers,
  ...ModifySubnetAttributeRequest.serializers,
  ...ModifyTrafficMirrorFilterNetworkServicesRequest.serializers,
  ...ModifyTrafficMirrorFilterNetworkServicesResult.serializers,
  ...TrafficMirrorFilterRuleField.serializers,
  ...ModifyTrafficMirrorFilterRuleRequest.serializers,
  ...ModifyTrafficMirrorFilterRuleResult.serializers,
  ...TrafficMirrorSessionField.serializers,
  ...ModifyTrafficMirrorSessionRequest.serializers,
  ...ModifyTrafficMirrorSessionResult.serializers,
  ...ModifyTransitGatewayOptions.serializers,
  ...ModifyTransitGatewayRequest.serializers,
  ...ModifyTransitGatewayResult.serializers,
  ...ModifyTransitGatewayPrefixListReferenceRequest.serializers,
  ...ModifyTransitGatewayPrefixListReferenceResult.serializers,
  ...ModifyTransitGatewayVpcAttachmentRequestOptions.serializers,
  ...ModifyTransitGatewayVpcAttachmentRequest.serializers,
  ...ModifyTransitGatewayVpcAttachmentResult.serializers,
  ...ModifyVerifiedAccessEndpointLoadBalancerOptions.serializers,
  ...ModifyVerifiedAccessEndpointEniOptions.serializers,
  ...ModifyVerifiedAccessEndpointRequest.serializers,
  ...ModifyVerifiedAccessEndpointResult.serializers,
  ...ModifyVerifiedAccessEndpointPolicyRequest.serializers,
  ...ModifyVerifiedAccessEndpointPolicyResult.serializers,
  ...ModifyVerifiedAccessGroupRequest.serializers,
  ...ModifyVerifiedAccessGroupResult.serializers,
  ...ModifyVerifiedAccessGroupPolicyRequest.serializers,
  ...ModifyVerifiedAccessGroupPolicyResult.serializers,
  ...ModifyVerifiedAccessInstanceRequest.serializers,
  ...ModifyVerifiedAccessInstanceResult.serializers,
  ...VerifiedAccessLogS3DestinationOptions.serializers,
  ...VerifiedAccessLogCloudWatchLogsDestinationOptions.serializers,
  ...VerifiedAccessLogKinesisDataFirehoseDestinationOptions.serializers,
  ...VerifiedAccessLogOptions.serializers,
  ...ModifyVerifiedAccessInstanceLoggingConfigurationRequest.serializers,
  ...ModifyVerifiedAccessInstanceLoggingConfigurationResult.serializers,
  ...ModifyVerifiedAccessTrustProviderOidcOptions.serializers,
  ...ModifyVerifiedAccessTrustProviderRequest.serializers,
  ...ModifyVerifiedAccessTrustProviderResult.serializers,
  ...ModifyVolumeRequest.serializers,
  ...ModifyVolumeResult.serializers,
  ...ModifyVolumeAttributeRequest.serializers,
  ...ModifyVpcAttributeRequest.serializers,
  ...ModifyVpcEndpointRequest.serializers,
  ...ModifyVpcEndpointResult.serializers,
  ...ModifyVpcEndpointConnectionNotificationRequest.serializers,
  ...ModifyVpcEndpointConnectionNotificationResult.serializers,
  ...ModifyVpcEndpointServiceConfigurationRequest.serializers,
  ...ModifyVpcEndpointServiceConfigurationResult.serializers,
  ...ModifyVpcEndpointServicePayerResponsibilityRequest.serializers,
  ...ModifyVpcEndpointServicePayerResponsibilityResult.serializers,
  ...ModifyVpcEndpointServicePermissionsRequest.serializers,
  ...AddedPrincipal.serializers,
  ...ModifyVpcEndpointServicePermissionsResult.serializers,
  ...PeeringConnectionOptionsRequest.serializers,
  ...ModifyVpcPeeringConnectionOptionsRequest.serializers,
  ...PeeringConnectionOptions.serializers,
  ...ModifyVpcPeeringConnectionOptionsResult.serializers,
  ...VpcTenancy.serializers,
  ...ModifyVpcTenancyRequest.serializers,
  ...ModifyVpcTenancyResult.serializers,
  ...ModifyVpnConnectionRequest.serializers,
  ...ModifyVpnConnectionResult.serializers,
  ...ModifyVpnConnectionOptionsRequest.serializers,
  ...ModifyVpnConnectionOptionsResult.serializers,
  ...ModifyVpnTunnelCertificateRequest.serializers,
  ...ModifyVpnTunnelCertificateResult.serializers,
  ...ModifyVpnTunnelOptionsSpecification.serializers,
  ...ModifyVpnTunnelOptionsRequest.serializers,
  ...ModifyVpnTunnelOptionsResult.serializers,
  ...MonitorInstancesRequest.serializers,
  ...InstanceMonitoring.serializers,
  ...MonitorInstancesResult.serializers,
  ...MoveAddressToVpcRequest.serializers,
  ...Status.serializers,
  ...MoveAddressToVpcResult.serializers,
  ...MoveByoipCidrToIpamRequest.serializers,
  ...MoveByoipCidrToIpamResult.serializers,
  ...CidrAuthorizationContext.serializers,
  ...ProvisionByoipCidrRequest.serializers,
  ...ProvisionByoipCidrResult.serializers,
  ...IpamCidrAuthorizationContext.serializers,
  ...ProvisionIpamPoolCidrRequest.serializers,
  ...ProvisionIpamPoolCidrResult.serializers,
  ...ProvisionPublicIpv4PoolCidrRequest.serializers,
  ...ProvisionPublicIpv4PoolCidrResult.serializers,
  ...PurchaseHostReservationRequest.serializers,
  ...PurchaseHostReservationResult.serializers,
  ...ReservedInstanceLimitPrice.serializers,
  ...PurchaseReservedInstancesOfferingRequest.serializers,
  ...PurchaseReservedInstancesOfferingResult.serializers,
  ...PurchaseRequest.serializers,
  ...PurchaseScheduledInstancesRequest.serializers,
  ...PurchaseScheduledInstancesResult.serializers,
  ...RebootInstancesRequest.serializers,
  ...RegisterImageRequest.serializers,
  ...RegisterImageResult.serializers,
  ...RegisterInstanceTagAttributeRequest.serializers,
  ...RegisterInstanceEventNotificationAttributesRequest.serializers,
  ...RegisterInstanceEventNotificationAttributesResult.serializers,
  ...RegisterTransitGatewayMulticastGroupMembersRequest.serializers,
  ...TransitGatewayMulticastRegisteredGroupMembers.serializers,
  ...RegisterTransitGatewayMulticastGroupMembersResult.serializers,
  ...RegisterTransitGatewayMulticastGroupSourcesRequest.serializers,
  ...TransitGatewayMulticastRegisteredGroupSources.serializers,
  ...RegisterTransitGatewayMulticastGroupSourcesResult.serializers,
  ...RejectTransitGatewayMulticastDomainAssociationsRequest.serializers,
  ...RejectTransitGatewayMulticastDomainAssociationsResult.serializers,
  ...RejectTransitGatewayPeeringAttachmentRequest.serializers,
  ...RejectTransitGatewayPeeringAttachmentResult.serializers,
  ...RejectTransitGatewayVpcAttachmentRequest.serializers,
  ...RejectTransitGatewayVpcAttachmentResult.serializers,
  ...RejectVpcEndpointConnectionsRequest.serializers,
  ...RejectVpcEndpointConnectionsResult.serializers,
  ...RejectVpcPeeringConnectionRequest.serializers,
  ...RejectVpcPeeringConnectionResult.serializers,
  ...ReleaseAddressRequest.serializers,
  ...ReleaseHostsRequest.serializers,
  ...ReleaseHostsResult.serializers,
  ...ReleaseIpamPoolAllocationRequest.serializers,
  ...ReleaseIpamPoolAllocationResult.serializers,
  ...ReplaceIamInstanceProfileAssociationRequest.serializers,
  ...ReplaceIamInstanceProfileAssociationResult.serializers,
  ...ReplaceNetworkAclAssociationRequest.serializers,
  ...ReplaceNetworkAclAssociationResult.serializers,
  ...ReplaceNetworkAclEntryRequest.serializers,
  ...ReplaceRouteRequest.serializers,
  ...ReplaceRouteTableAssociationRequest.serializers,
  ...ReplaceRouteTableAssociationResult.serializers,
  ...ReplaceTransitGatewayRouteRequest.serializers,
  ...ReplaceTransitGatewayRouteResult.serializers,
  ...ReplaceVpnTunnelRequest.serializers,
  ...ReplaceVpnTunnelResult.serializers,
  ...ReportInstanceReasonCodes.serializers,
  ...ReportStatusType.serializers,
  ...ReportInstanceStatusRequest.serializers,
  ...RequestSpotFleetRequest.serializers,
  ...RequestSpotFleetResponse.serializers,
  ...RequestSpotLaunchSpecification.serializers,
  ...RequestSpotInstancesRequest.serializers,
  ...RequestSpotInstancesResult.serializers,
  ...ResetAddressAttributeRequest.serializers,
  ...ResetAddressAttributeResult.serializers,
  ...ResetEbsDefaultKmsKeyIdRequest.serializers,
  ...ResetEbsDefaultKmsKeyIdResult.serializers,
  ...ResetFpgaImageAttributeName.serializers,
  ...ResetFpgaImageAttributeRequest.serializers,
  ...ResetFpgaImageAttributeResult.serializers,
  ...ResetImageAttributeName.serializers,
  ...ResetImageAttributeRequest.serializers,
  ...ResetInstanceAttributeRequest.serializers,
  ...ResetNetworkInterfaceAttributeRequest.serializers,
  ...ResetSnapshotAttributeRequest.serializers,
  ...RestoreAddressToClassicRequest.serializers,
  ...RestoreAddressToClassicResult.serializers,
  ...RestoreImageFromRecycleBinRequest.serializers,
  ...RestoreImageFromRecycleBinResult.serializers,
  ...RestoreManagedPrefixListVersionRequest.serializers,
  ...RestoreManagedPrefixListVersionResult.serializers,
  ...RestoreSnapshotFromRecycleBinRequest.serializers,
  ...RestoreSnapshotFromRecycleBinResult.serializers,
  ...RestoreSnapshotTierRequest.serializers,
  ...RestoreSnapshotTierResult.serializers,
  ...RevokeClientVpnIngressRequest.serializers,
  ...RevokeClientVpnIngressResult.serializers,
  ...RevokeSecurityGroupEgressRequest.serializers,
  ...RevokeSecurityGroupEgressResult.serializers,
  ...RevokeSecurityGroupIngressRequest.serializers,
  ...RevokeSecurityGroupIngressResult.serializers,
  ...ElasticInferenceAccelerator.serializers,
  ...LaunchTemplateSpecification.serializers,
  ...SpotMarketOptions.serializers,
  ...InstanceMarketOptionsRequest.serializers,
  ...CpuOptionsRequest.serializers,
  ...HibernationOptionsRequest.serializers,
  ...LicenseConfigurationRequest.serializers,
  ...InstanceMetadataOptionsRequest.serializers,
  ...EnclaveOptionsRequest.serializers,
  ...PrivateDnsNameOptionsRequest.serializers,
  ...InstanceMaintenanceOptionsRequest.serializers,
  ...RunInstancesRequest.serializers,
  ...ScheduledInstancesEbs.serializers,
  ...ScheduledInstancesBlockDeviceMapping.serializers,
  ...ScheduledInstancesIamInstanceProfile.serializers,
  ...ScheduledInstancesMonitoring.serializers,
  ...ScheduledInstancesIpv6Address.serializers,
  ...ScheduledInstancesPrivateIpAddressConfig.serializers,
  ...ScheduledInstancesNetworkInterface.serializers,
  ...ScheduledInstancesPlacement.serializers,
  ...ScheduledInstancesLaunchSpecification.serializers,
  ...RunScheduledInstancesRequest.serializers,
  ...RunScheduledInstancesResult.serializers,
  ...SearchLocalGatewayRoutesRequest.serializers,
  ...SearchLocalGatewayRoutesResult.serializers,
  ...SearchTransitGatewayMulticastGroupsRequest.serializers,
  ...MembershipType.serializers,
  ...TransitGatewayMulticastGroup.serializers,
  ...SearchTransitGatewayMulticastGroupsResult.serializers,
  ...SearchTransitGatewayRoutesRequest.serializers,
  ...SearchTransitGatewayRoutesResult.serializers,
  ...SendDiagnosticInterruptRequest.serializers,
  ...StartInstancesRequest.serializers,
  ...InstanceStateChange.serializers,
  ...StartInstancesResult.serializers,
  ...StartNetworkInsightsAccessScopeAnalysisRequest.serializers,
  ...StartNetworkInsightsAccessScopeAnalysisResult.serializers,
  ...StartNetworkInsightsAnalysisRequest.serializers,
  ...StartNetworkInsightsAnalysisResult.serializers,
  ...StartVpcEndpointServicePrivateDnsVerificationRequest.serializers,
  ...StartVpcEndpointServicePrivateDnsVerificationResult.serializers,
  ...StopInstancesRequest.serializers,
  ...StopInstancesResult.serializers,
  ...TerminateClientVpnConnectionsRequest.serializers,
  ...TerminateConnectionStatus.serializers,
  ...TerminateClientVpnConnectionsResult.serializers,
  ...TerminateInstancesRequest.serializers,
  ...TerminateInstancesResult.serializers,
  ...UnassignIpv6AddressesRequest.serializers,
  ...UnassignIpv6AddressesResult.serializers,
  ...UnassignPrivateIpAddressesRequest.serializers,
  ...UnassignPrivateNatGatewayAddressRequest.serializers,
  ...UnassignPrivateNatGatewayAddressResult.serializers,
  ...UnmonitorInstancesRequest.serializers,
  ...UnmonitorInstancesResult.serializers,
  ...SecurityGroupRuleDescription.serializers,
  ...UpdateSecurityGroupRuleDescriptionsEgressRequest.serializers,
  ...UpdateSecurityGroupRuleDescriptionsEgressResult.serializers,
  ...UpdateSecurityGroupRuleDescriptionsIngressRequest.serializers,
  ...UpdateSecurityGroupRuleDescriptionsIngressResult.serializers,
  ...WithdrawByoipCidrRequest.serializers,
  ...WithdrawByoipCidrResult.serializers,
];
final Map<FullType, Function> builderFactories = {
  const FullType(
    _i2.BuiltList,
    [FullType(Tag)],
  ): _i2.ListBuilder<Tag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TagSpecification)],
  ): _i2.ListBuilder<TagSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(String)],
  ): _i2.ListBuilder<String>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TargetConfigurationRequest)],
  ): _i2.ListBuilder<TargetConfigurationRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SubnetAssociation)],
  ): _i2.ListBuilder<SubnetAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(UnsuccessfulItem)],
  ): _i2.ListBuilder<UnsuccessfulItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CidrBlock)],
  ): _i2.ListBuilder<CidrBlock>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv6CidrBlock)],
  ): _i2.ListBuilder<Ipv6CidrBlock>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv4PrefixSpecification)],
  ): _i2.ListBuilder<Ipv4PrefixSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AssignedPrivateIpAddress)],
  ): _i2.ListBuilder<AssignedPrivateIpAddress>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NatGatewayAddress)],
  ): _i2.ListBuilder<NatGatewayAddress>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceEventWindowTimeRange)],
  ): _i2.ListBuilder<InstanceEventWindowTimeRange>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VerifiedAccessTrustProviderCondensed)],
  ): _i2.ListBuilder<VerifiedAccessTrustProviderCondensed>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpRange)],
  ): _i2.ListBuilder<IpRange>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv6Range)],
  ): _i2.ListBuilder<Ipv6Range>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PrefixListId)],
  ): _i2.ListBuilder<PrefixListId>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(UserIdGroupPair)],
  ): _i2.ListBuilder<UserIdGroupPair>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpPermission)],
  ): _i2.ListBuilder<IpPermission>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SecurityGroupRule)],
  ): _i2.ListBuilder<SecurityGroupRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FailedCapacityReservationFleetCancellationResult)],
  ): _i2.ListBuilder<FailedCapacityReservationFleetCancellationResult>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CapacityReservationFleetCancellationState)],
  ): _i2.ListBuilder<CapacityReservationFleetCancellationState>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceCount)],
  ): _i2.ListBuilder<InstanceCount>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PriceSchedule)],
  ): _i2.ListBuilder<PriceSchedule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReservedInstancesListing)],
  ): _i2.ListBuilder<ReservedInstancesListing>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CancelSpotFleetRequestsSuccessItem)],
  ): _i2.ListBuilder<CancelSpotFleetRequestsSuccessItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CancelSpotFleetRequestsErrorItem)],
  ): _i2.ListBuilder<CancelSpotFleetRequestsErrorItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CancelledSpotInstanceRequest)],
  ): _i2.ListBuilder<CancelledSpotInstanceRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CapacityAllocation)],
  ): _i2.ListBuilder<CapacityAllocation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReservationFleetInstanceSpecification)],
  ): _i2.ListBuilder<ReservationFleetInstanceSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FleetCapacityReservation)],
  ): _i2.ListBuilder<FleetCapacityReservation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ClientVpnAuthenticationRequest)],
  ): _i2.ListBuilder<ClientVpnAuthenticationRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SubnetIpv6CidrBlockAssociation)],
  ): _i2.ListBuilder<SubnetIpv6CidrBlockAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpcCidrBlockAssociation)],
  ): _i2.ListBuilder<VpcCidrBlockAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpcIpv6CidrBlockAssociation)],
  ): _i2.ListBuilder<VpcIpv6CidrBlockAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NewDhcpConfiguration)],
  ): _i2.ListBuilder<NewDhcpConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AttributeValue)],
  ): _i2.ListBuilder<AttributeValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DhcpConfiguration)],
  ): _i2.ListBuilder<DhcpConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InternetGatewayAttachment)],
  ): _i2.ListBuilder<InternetGatewayAttachment>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AcceleratorManufacturer)],
  ): _i2.ListBuilder<AcceleratorManufacturer>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AcceleratorName)],
  ): _i2.ListBuilder<AcceleratorName>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AcceleratorType)],
  ): _i2.ListBuilder<AcceleratorType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CpuManufacturer)],
  ): _i2.ListBuilder<CpuManufacturer>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceGeneration)],
  ): _i2.ListBuilder<InstanceGeneration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalStorageType)],
  ): _i2.ListBuilder<LocalStorageType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FleetLaunchTemplateOverridesRequest)],
  ): _i2.ListBuilder<FleetLaunchTemplateOverridesRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FleetLaunchTemplateConfigRequest)],
  ): _i2.ListBuilder<FleetLaunchTemplateConfigRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CreateFleetError)],
  ): _i2.ListBuilder<CreateFleetError>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CreateFleetInstance)],
  ): _i2.ListBuilder<CreateFleetInstance>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(BlockDeviceMapping)],
  ): _i2.ListBuilder<BlockDeviceMapping>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceEventWindowTimeRangeRequest)],
  ): _i2.ListBuilder<InstanceEventWindowTimeRangeRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AddIpamOperatingRegion)],
  ): _i2.ListBuilder<AddIpamOperatingRegion>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamOperatingRegion)],
  ): _i2.ListBuilder<IpamOperatingRegion>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RequestIpamResourceTag)],
  ): _i2.ListBuilder<RequestIpamResourceTag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamResourceTag)],
  ): _i2.ListBuilder<IpamResourceTag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv4PrefixSpecificationRequest)],
  ): _i2.ListBuilder<Ipv4PrefixSpecificationRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceIpv6AddressRequest)],
  ): _i2.ListBuilder<InstanceIpv6AddressRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv6PrefixSpecificationRequest)],
  ): _i2.ListBuilder<Ipv6PrefixSpecificationRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PrivateIpAddressSpecification)],
  ): _i2.ListBuilder<PrivateIpAddressSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateBlockDeviceMappingRequest)],
  ): _i2.ListBuilder<LaunchTemplateBlockDeviceMappingRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ElasticGpuSpecification)],
  ): _i2.ListBuilder<ElasticGpuSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateElasticInferenceAccelerator)],
  ): _i2.ListBuilder<LaunchTemplateElasticInferenceAccelerator>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateLicenseConfigurationRequest)],
  ): _i2.ListBuilder<LaunchTemplateLicenseConfigurationRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateInstanceNetworkInterfaceSpecificationRequest)],
  ): _i2.ListBuilder<LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>
      .new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateTagSpecificationRequest)],
  ): _i2.ListBuilder<LaunchTemplateTagSpecificationRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ValidationError)],
  ): _i2.ListBuilder<ValidationError>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv4PrefixSpecificationResponse)],
  ): _i2.ListBuilder<Ipv4PrefixSpecificationResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceIpv6Address)],
  ): _i2.ListBuilder<InstanceIpv6Address>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv6PrefixSpecificationResponse)],
  ): _i2.ListBuilder<Ipv6PrefixSpecificationResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateBlockDeviceMapping)],
  ): _i2.ListBuilder<LaunchTemplateBlockDeviceMapping>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ElasticGpuSpecificationResponse)],
  ): _i2.ListBuilder<ElasticGpuSpecificationResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateElasticInferenceAcceleratorResponse)],
  ): _i2.ListBuilder<LaunchTemplateElasticInferenceAcceleratorResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateLicenseConfiguration)],
  ): _i2.ListBuilder<LaunchTemplateLicenseConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateInstanceNetworkInterfaceSpecification)],
  ): _i2.ListBuilder<LaunchTemplateInstanceNetworkInterfaceSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateTagSpecification)],
  ): _i2.ListBuilder<LaunchTemplateTagSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AddPrefixListEntry)],
  ): _i2.ListBuilder<AddPrefixListEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkAclAssociation)],
  ): _i2.ListBuilder<NetworkAclAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkAclEntry)],
  ): _i2.ListBuilder<NetworkAclEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Protocol)],
  ): _i2.ListBuilder<Protocol>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ThroughResourcesStatementRequest)],
  ): _i2.ListBuilder<ThroughResourcesStatementRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccessScopePathRequest)],
  ): _i2.ListBuilder<AccessScopePathRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ThroughResourcesStatement)],
  ): _i2.ListBuilder<ThroughResourcesStatement>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccessScopePath)],
  ): _i2.ListBuilder<AccessScopePath>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GroupIdentifier)],
  ): _i2.ListBuilder<GroupIdentifier>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkInterfaceIpv6Address)],
  ): _i2.ListBuilder<NetworkInterfaceIpv6Address>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv6PrefixSpecification)],
  ): _i2.ListBuilder<Ipv6PrefixSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkInterfacePrivateIpAddress)],
  ): _i2.ListBuilder<NetworkInterfacePrivateIpAddress>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PriceScheduleSpecification)],
  ): _i2.ListBuilder<PriceScheduleSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RouteTableAssociation)],
  ): _i2.ListBuilder<RouteTableAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PropagatingVgw)],
  ): _i2.ListBuilder<PropagatingVgw>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Route)],
  ): _i2.ListBuilder<Route>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SnapshotInfo)],
  ): _i2.ListBuilder<SnapshotInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(S3ObjectTag)],
  ): _i2.ListBuilder<S3ObjectTag>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TrafficMirrorFilterRule)],
  ): _i2.ListBuilder<TrafficMirrorFilterRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TrafficMirrorNetworkService)],
  ): _i2.ListBuilder<TrafficMirrorNetworkService>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayAttachmentBgpConfiguration)],
  ): _i2.ListBuilder<TransitGatewayAttachmentBgpConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayRouteAttachment)],
  ): _i2.ListBuilder<TransitGatewayRouteAttachment>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VolumeAttachment)],
  ): _i2.ListBuilder<VolumeAttachment>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SubnetConfiguration)],
  ): _i2.ListBuilder<SubnetConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DnsEntry)],
  ): _i2.ListBuilder<DnsEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SecurityGroupIdentifier)],
  ): _i2.ListBuilder<SecurityGroupIdentifier>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ServiceTypeDetail)],
  ): _i2.ListBuilder<ServiceTypeDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ServiceConnectivityType)],
  ): _i2.ListBuilder<ServiceConnectivityType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IkeVersionsRequestListValue)],
  ): _i2.ListBuilder<IkeVersionsRequestListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase1DhGroupNumbersRequestListValue)],
  ): _i2.ListBuilder<Phase1DhGroupNumbersRequestListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase1EncryptionAlgorithmsRequestListValue)],
  ): _i2.ListBuilder<Phase1EncryptionAlgorithmsRequestListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase1IntegrityAlgorithmsRequestListValue)],
  ): _i2.ListBuilder<Phase1IntegrityAlgorithmsRequestListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase2DhGroupNumbersRequestListValue)],
  ): _i2.ListBuilder<Phase2DhGroupNumbersRequestListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase2EncryptionAlgorithmsRequestListValue)],
  ): _i2.ListBuilder<Phase2EncryptionAlgorithmsRequestListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase2IntegrityAlgorithmsRequestListValue)],
  ): _i2.ListBuilder<Phase2IntegrityAlgorithmsRequestListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpnTunnelOptionsSpecification)],
  ): _i2.ListBuilder<VpnTunnelOptionsSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IkeVersionsListValue)],
  ): _i2.ListBuilder<IkeVersionsListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase1DhGroupNumbersListValue)],
  ): _i2.ListBuilder<Phase1DhGroupNumbersListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase1EncryptionAlgorithmsListValue)],
  ): _i2.ListBuilder<Phase1EncryptionAlgorithmsListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase1IntegrityAlgorithmsListValue)],
  ): _i2.ListBuilder<Phase1IntegrityAlgorithmsListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase2DhGroupNumbersListValue)],
  ): _i2.ListBuilder<Phase2DhGroupNumbersListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase2EncryptionAlgorithmsListValue)],
  ): _i2.ListBuilder<Phase2EncryptionAlgorithmsListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Phase2IntegrityAlgorithmsListValue)],
  ): _i2.ListBuilder<Phase2IntegrityAlgorithmsListValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TunnelOption)],
  ): _i2.ListBuilder<TunnelOption>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpnStaticRoute)],
  ): _i2.ListBuilder<VpnStaticRoute>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VgwTelemetry)],
  ): _i2.ListBuilder<VgwTelemetry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpcAttachment)],
  ): _i2.ListBuilder<VpcAttachment>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DeleteFleetSuccessItem)],
  ): _i2.ListBuilder<DeleteFleetSuccessItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DeleteFleetErrorItem)],
  ): _i2.ListBuilder<DeleteFleetErrorItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DeleteLaunchTemplateVersionsResponseSuccessItem)],
  ): _i2.ListBuilder<DeleteLaunchTemplateVersionsResponseSuccessItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DeleteLaunchTemplateVersionsResponseErrorItem)],
  ): _i2.ListBuilder<DeleteLaunchTemplateVersionsResponseErrorItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FailedQueuedPurchaseDeletion)],
  ): _i2.ListBuilder<FailedQueuedPurchaseDeletion>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SuccessfulQueuedPurchaseDeletion)],
  ): _i2.ListBuilder<SuccessfulQueuedPurchaseDeletion>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccountAttributeName)],
  ): _i2.ListBuilder<AccountAttributeName>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccountAttributeValue)],
  ): _i2.ListBuilder<AccountAttributeValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccountAttribute)],
  ): _i2.ListBuilder<AccountAttribute>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AddressTransfer)],
  ): _i2.ListBuilder<AddressTransfer>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Filter)],
  ): _i2.ListBuilder<Filter>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Address)],
  ): _i2.ListBuilder<Address>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AddressAttribute)],
  ): _i2.ListBuilder<AddressAttribute>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IdFormat)],
  ): _i2.ListBuilder<IdFormat>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AvailabilityZoneMessage)],
  ): _i2.ListBuilder<AvailabilityZoneMessage>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AvailabilityZone)],
  ): _i2.ListBuilder<AvailabilityZone>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Subscription)],
  ): _i2.ListBuilder<Subscription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(BundleTask)],
  ): _i2.ListBuilder<BundleTask>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ByoipCidr)],
  ): _i2.ListBuilder<ByoipCidr>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CapacityReservationFleet)],
  ): _i2.ListBuilder<CapacityReservationFleet>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CapacityReservation)],
  ): _i2.ListBuilder<CapacityReservation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CarrierGateway)],
  ): _i2.ListBuilder<CarrierGateway>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ClassicLinkInstance)],
  ): _i2.ListBuilder<ClassicLinkInstance>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AuthorizationRule)],
  ): _i2.ListBuilder<AuthorizationRule>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ClientVpnConnection)],
  ): _i2.ListBuilder<ClientVpnConnection>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ClientVpnEndpoint)],
  ): _i2.ListBuilder<ClientVpnEndpoint>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AssociatedTargetNetwork)],
  ): _i2.ListBuilder<AssociatedTargetNetwork>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ClientVpnAuthentication)],
  ): _i2.ListBuilder<ClientVpnAuthentication>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ClientVpnRoute)],
  ): _i2.ListBuilder<ClientVpnRoute>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TargetNetwork)],
  ): _i2.ListBuilder<TargetNetwork>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CoipPool)],
  ): _i2.ListBuilder<CoipPool>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ImportInstanceVolumeDetailItem)],
  ): _i2.ListBuilder<ImportInstanceVolumeDetailItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConversionTask)],
  ): _i2.ListBuilder<ConversionTask>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CustomerGateway)],
  ): _i2.ListBuilder<CustomerGateway>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DhcpOptions)],
  ): _i2.ListBuilder<DhcpOptions>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EgressOnlyInternetGateway)],
  ): _i2.ListBuilder<EgressOnlyInternetGateway>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ElasticGpus)],
  ): _i2.ListBuilder<ElasticGpus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ExportImageTask)],
  ): _i2.ListBuilder<ExportImageTask>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ExportTask)],
  ): _i2.ListBuilder<ExportTask>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DescribeFastLaunchImagesSuccessItem)],
  ): _i2.ListBuilder<DescribeFastLaunchImagesSuccessItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DescribeFastSnapshotRestoreSuccessItem)],
  ): _i2.ListBuilder<DescribeFastSnapshotRestoreSuccessItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(HistoryRecordEntry)],
  ): _i2.ListBuilder<HistoryRecordEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ActiveInstance)],
  ): _i2.ListBuilder<ActiveInstance>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FleetData)],
  ): _i2.ListBuilder<FleetData>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FleetLaunchTemplateOverrides)],
  ): _i2.ListBuilder<FleetLaunchTemplateOverrides>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DescribeFleetError)],
  ): _i2.ListBuilder<DescribeFleetError>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DescribeFleetsInstances)],
  ): _i2.ListBuilder<DescribeFleetsInstances>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FleetLaunchTemplateConfig)],
  ): _i2.ListBuilder<FleetLaunchTemplateConfig>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FlowLog)],
  ): _i2.ListBuilder<FlowLog>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LoadPermission)],
  ): _i2.ListBuilder<LoadPermission>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ProductCode)],
  ): _i2.ListBuilder<ProductCode>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FpgaImage)],
  ): _i2.ListBuilder<FpgaImage>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(HostOffering)],
  ): _i2.ListBuilder<HostOffering>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(HostReservation)],
  ): _i2.ListBuilder<HostReservation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Host)],
  ): _i2.ListBuilder<Host>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceCapacity)],
  ): _i2.ListBuilder<InstanceCapacity>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(HostInstance)],
  ): _i2.ListBuilder<HostInstance>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IamInstanceProfileAssociation)],
  ): _i2.ListBuilder<IamInstanceProfileAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchPermission)],
  ): _i2.ListBuilder<LaunchPermission>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Image)],
  ): _i2.ListBuilder<Image>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ImportImageTask)],
  ): _i2.ListBuilder<ImportImageTask>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ImportImageLicenseConfigurationResponse)],
  ): _i2.ListBuilder<ImportImageLicenseConfigurationResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SnapshotDetail)],
  ): _i2.ListBuilder<SnapshotDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ImportSnapshotTask)],
  ): _i2.ListBuilder<ImportSnapshotTask>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceBlockDeviceMapping)],
  ): _i2.ListBuilder<InstanceBlockDeviceMapping>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ec2InstanceConnectEndpoint)],
  ): _i2.ListBuilder<Ec2InstanceConnectEndpoint>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceCreditSpecification)],
  ): _i2.ListBuilder<InstanceCreditSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceEventWindow)],
  ): _i2.ListBuilder<InstanceEventWindow>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceStatus)],
  ): _i2.ListBuilder<InstanceStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceStatusDetails)],
  ): _i2.ListBuilder<InstanceStatusDetails>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceStatusEvent)],
  ): _i2.ListBuilder<InstanceStatusEvent>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceTypeOffering)],
  ): _i2.ListBuilder<InstanceTypeOffering>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceTypeInfo)],
  ): _i2.ListBuilder<InstanceTypeInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceType)],
  ): _i2.ListBuilder<InstanceType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ArchitectureType)],
  ): _i2.ListBuilder<ArchitectureType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SupportedAdditionalProcessorFeature)],
  ): _i2.ListBuilder<SupportedAdditionalProcessorFeature>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(int)],
  ): _i2.ListBuilder<int>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DiskInfo)],
  ): _i2.ListBuilder<DiskInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkCardInfo)],
  ): _i2.ListBuilder<NetworkCardInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(GpuDeviceInfo)],
  ): _i2.ListBuilder<GpuDeviceInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(FpgaDeviceInfo)],
  ): _i2.ListBuilder<FpgaDeviceInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PlacementGroupStrategy)],
  ): _i2.ListBuilder<PlacementGroupStrategy>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InferenceDeviceInfo)],
  ): _i2.ListBuilder<InferenceDeviceInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(BootModeType)],
  ): _i2.ListBuilder<BootModeType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RootDeviceType)],
  ): _i2.ListBuilder<RootDeviceType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(UsageClassType)],
  ): _i2.ListBuilder<UsageClassType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VirtualizationType)],
  ): _i2.ListBuilder<VirtualizationType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Reservation)],
  ): _i2.ListBuilder<Reservation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceIpv4Prefix)],
  ): _i2.ListBuilder<InstanceIpv4Prefix>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceIpv6Prefix)],
  ): _i2.ListBuilder<InstanceIpv6Prefix>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstancePrivateIpAddress)],
  ): _i2.ListBuilder<InstancePrivateIpAddress>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ElasticGpuAssociation)],
  ): _i2.ListBuilder<ElasticGpuAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ElasticInferenceAcceleratorAssociation)],
  ): _i2.ListBuilder<ElasticInferenceAcceleratorAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LicenseConfiguration)],
  ): _i2.ListBuilder<LicenseConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceNetworkInterface)],
  ): _i2.ListBuilder<InstanceNetworkInterface>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Instance)],
  ): _i2.ListBuilder<Instance>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InternetGateway)],
  ): _i2.ListBuilder<InternetGateway>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamPool)],
  ): _i2.ListBuilder<IpamPool>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamResourceDiscovery)],
  ): _i2.ListBuilder<IpamResourceDiscovery>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamResourceDiscoveryAssociation)],
  ): _i2.ListBuilder<IpamResourceDiscoveryAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamScope)],
  ): _i2.ListBuilder<IpamScope>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipam)],
  ): _i2.ListBuilder<Ipam>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv6Pool)],
  ): _i2.ListBuilder<Ipv6Pool>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PoolCidrBlock)],
  ): _i2.ListBuilder<PoolCidrBlock>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(KeyPairInfo)],
  ): _i2.ListBuilder<KeyPairInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateVersion)],
  ): _i2.ListBuilder<LaunchTemplateVersion>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplate)],
  ): _i2.ListBuilder<LaunchTemplate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalGatewayRouteTableVirtualInterfaceGroupAssociation)],
  ): _i2.ListBuilder<LocalGatewayRouteTableVirtualInterfaceGroupAssociation>
      .new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalGatewayRouteTableVpcAssociation)],
  ): _i2.ListBuilder<LocalGatewayRouteTableVpcAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalGatewayRouteTable)],
  ): _i2.ListBuilder<LocalGatewayRouteTable>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalGatewayVirtualInterfaceGroup)],
  ): _i2.ListBuilder<LocalGatewayVirtualInterfaceGroup>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalGatewayVirtualInterface)],
  ): _i2.ListBuilder<LocalGatewayVirtualInterface>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalGateway)],
  ): _i2.ListBuilder<LocalGateway>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ManagedPrefixList)],
  ): _i2.ListBuilder<ManagedPrefixList>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(MovingAddressStatus)],
  ): _i2.ListBuilder<MovingAddressStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NatGateway)],
  ): _i2.ListBuilder<NatGateway>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkAcl)],
  ): _i2.ListBuilder<NetworkAcl>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkInsightsAccessScopeAnalysis)],
  ): _i2.ListBuilder<NetworkInsightsAccessScopeAnalysis>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkInsightsAccessScope)],
  ): _i2.ListBuilder<NetworkInsightsAccessScope>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkInsightsAnalysis)],
  ): _i2.ListBuilder<NetworkInsightsAnalysis>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PortRange)],
  ): _i2.ListBuilder<PortRange>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RuleOption)],
  ): _i2.ListBuilder<RuleOption>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AnalysisComponent)],
  ): _i2.ListBuilder<AnalysisComponent>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RuleGroupRuleOptionsPair)],
  ): _i2.ListBuilder<RuleGroupRuleOptionsPair>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RuleGroupTypePair)],
  ): _i2.ListBuilder<RuleGroupTypePair>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AdditionalDetail)],
  ): _i2.ListBuilder<AdditionalDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Explanation)],
  ): _i2.ListBuilder<Explanation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AlternatePathHint)],
  ): _i2.ListBuilder<AlternatePathHint>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PathComponent)],
  ): _i2.ListBuilder<PathComponent>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkInsightsPath)],
  ): _i2.ListBuilder<NetworkInsightsPath>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkInterfacePermission)],
  ): _i2.ListBuilder<NetworkInterfacePermission>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(NetworkInterface)],
  ): _i2.ListBuilder<NetworkInterface>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PlacementGroup)],
  ): _i2.ListBuilder<PlacementGroup>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PrefixList)],
  ): _i2.ListBuilder<PrefixList>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PrincipalIdFormat)],
  ): _i2.ListBuilder<PrincipalIdFormat>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PublicIpv4Pool)],
  ): _i2.ListBuilder<PublicIpv4Pool>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PublicIpv4PoolRange)],
  ): _i2.ListBuilder<PublicIpv4PoolRange>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Region)],
  ): _i2.ListBuilder<Region>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReplaceRootVolumeTask)],
  ): _i2.ListBuilder<ReplaceRootVolumeTask>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RecurringCharge)],
  ): _i2.ListBuilder<RecurringCharge>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReservedInstances)],
  ): _i2.ListBuilder<ReservedInstances>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReservedInstancesModification)],
  ): _i2.ListBuilder<ReservedInstancesModification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReservedInstancesModificationResult)],
  ): _i2.ListBuilder<ReservedInstancesModificationResult>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReservedInstancesId)],
  ): _i2.ListBuilder<ReservedInstancesId>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReservedInstancesOffering)],
  ): _i2.ListBuilder<ReservedInstancesOffering>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PricingDetail)],
  ): _i2.ListBuilder<PricingDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RouteTable)],
  ): _i2.ListBuilder<RouteTable>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ScheduledInstanceAvailability)],
  ): _i2.ListBuilder<ScheduledInstanceAvailability>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ScheduledInstance)],
  ): _i2.ListBuilder<ScheduledInstance>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SecurityGroupReference)],
  ): _i2.ListBuilder<SecurityGroupReference>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SecurityGroup)],
  ): _i2.ListBuilder<SecurityGroup>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CreateVolumePermission)],
  ): _i2.ListBuilder<CreateVolumePermission>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SnapshotTierStatus)],
  ): _i2.ListBuilder<SnapshotTierStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Snapshot)],
  ): _i2.ListBuilder<Snapshot>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(HistoryRecord)],
  ): _i2.ListBuilder<HistoryRecord>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SpotFleetRequestConfig)],
  ): _i2.ListBuilder<SpotFleetRequestConfig>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceNetworkInterfaceSpecification)],
  ): _i2.ListBuilder<InstanceNetworkInterfaceSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SpotFleetTagSpecification)],
  ): _i2.ListBuilder<SpotFleetTagSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateOverrides)],
  ): _i2.ListBuilder<LaunchTemplateOverrides>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ClassicLoadBalancer)],
  ): _i2.ListBuilder<ClassicLoadBalancer>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TargetGroup)],
  ): _i2.ListBuilder<TargetGroup>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SpotFleetLaunchSpecification)],
  ): _i2.ListBuilder<SpotFleetLaunchSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LaunchTemplateConfig)],
  ): _i2.ListBuilder<LaunchTemplateConfig>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SpotInstanceRequest)],
  ): _i2.ListBuilder<SpotInstanceRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SpotPrice)],
  ): _i2.ListBuilder<SpotPrice>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StaleSecurityGroup)],
  ): _i2.ListBuilder<StaleSecurityGroup>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StaleIpPermission)],
  ): _i2.ListBuilder<StaleIpPermission>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(StoreImageTaskResult)],
  ): _i2.ListBuilder<StoreImageTaskResult>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Subnet)],
  ): _i2.ListBuilder<Subnet>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TagDescription)],
  ): _i2.ListBuilder<TagDescription>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TrafficMirrorFilter)],
  ): _i2.ListBuilder<TrafficMirrorFilter>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TrafficMirrorSession)],
  ): _i2.ListBuilder<TrafficMirrorSession>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TrafficMirrorTarget)],
  ): _i2.ListBuilder<TrafficMirrorTarget>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayAttachment)],
  ): _i2.ListBuilder<TransitGatewayAttachment>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayConnectPeer)],
  ): _i2.ListBuilder<TransitGatewayConnectPeer>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayConnect)],
  ): _i2.ListBuilder<TransitGatewayConnect>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayMulticastDomain)],
  ): _i2.ListBuilder<TransitGatewayMulticastDomain>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayPeeringAttachment)],
  ): _i2.ListBuilder<TransitGatewayPeeringAttachment>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayPolicyTable)],
  ): _i2.ListBuilder<TransitGatewayPolicyTable>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayRouteTableAnnouncement)],
  ): _i2.ListBuilder<TransitGatewayRouteTableAnnouncement>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayRouteTable)],
  ): _i2.ListBuilder<TransitGatewayRouteTable>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayVpcAttachment)],
  ): _i2.ListBuilder<TransitGatewayVpcAttachment>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGateway)],
  ): _i2.ListBuilder<TransitGateway>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TrunkInterfaceAssociation)],
  ): _i2.ListBuilder<TrunkInterfaceAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VerifiedAccessEndpoint)],
  ): _i2.ListBuilder<VerifiedAccessEndpoint>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VerifiedAccessGroup)],
  ): _i2.ListBuilder<VerifiedAccessGroup>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VerifiedAccessInstanceLoggingConfiguration)],
  ): _i2.ListBuilder<VerifiedAccessInstanceLoggingConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VerifiedAccessInstance)],
  ): _i2.ListBuilder<VerifiedAccessInstance>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VerifiedAccessTrustProvider)],
  ): _i2.ListBuilder<VerifiedAccessTrustProvider>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VolumeStatusItem)],
  ): _i2.ListBuilder<VolumeStatusItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VolumeStatusDetails)],
  ): _i2.ListBuilder<VolumeStatusDetails>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VolumeStatusAction)],
  ): _i2.ListBuilder<VolumeStatusAction>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VolumeStatusAttachmentStatus)],
  ): _i2.ListBuilder<VolumeStatusAttachmentStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VolumeStatusEvent)],
  ): _i2.ListBuilder<VolumeStatusEvent>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Volume)],
  ): _i2.ListBuilder<Volume>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VolumeModification)],
  ): _i2.ListBuilder<VolumeModification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpcClassicLink)],
  ): _i2.ListBuilder<VpcClassicLink>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ClassicLinkDnsSupport)],
  ): _i2.ListBuilder<ClassicLinkDnsSupport>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ConnectionNotification)],
  ): _i2.ListBuilder<ConnectionNotification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpcEndpointConnection)],
  ): _i2.ListBuilder<VpcEndpointConnection>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ServiceConfiguration)],
  ): _i2.ListBuilder<ServiceConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AllowedPrincipal)],
  ): _i2.ListBuilder<AllowedPrincipal>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PrivateDnsDetails)],
  ): _i2.ListBuilder<PrivateDnsDetails>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ServiceDetail)],
  ): _i2.ListBuilder<ServiceDetail>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpcEndpoint)],
  ): _i2.ListBuilder<VpcEndpoint>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpcPeeringConnection)],
  ): _i2.ListBuilder<VpcPeeringConnection>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Vpc)],
  ): _i2.ListBuilder<Vpc>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpnConnection)],
  ): _i2.ListBuilder<VpnConnection>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpnGateway)],
  ): _i2.ListBuilder<VpnGateway>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DisableFastSnapshotRestoreStateErrorItem)],
  ): _i2.ListBuilder<DisableFastSnapshotRestoreStateErrorItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DisableFastSnapshotRestoreSuccessItem)],
  ): _i2.ListBuilder<DisableFastSnapshotRestoreSuccessItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DisableFastSnapshotRestoreErrorItem)],
  ): _i2.ListBuilder<DisableFastSnapshotRestoreErrorItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EnableFastSnapshotRestoreStateErrorItem)],
  ): _i2.ListBuilder<EnableFastSnapshotRestoreStateErrorItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EnableFastSnapshotRestoreSuccessItem)],
  ): _i2.ListBuilder<EnableFastSnapshotRestoreSuccessItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(EnableFastSnapshotRestoreErrorItem)],
  ): _i2.ListBuilder<EnableFastSnapshotRestoreErrorItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AssociatedRole)],
  ): _i2.ListBuilder<AssociatedRole>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Ipv6CidrAssociation)],
  ): _i2.ListBuilder<Ipv6CidrAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DataResponse)],
  ): _i2.ListBuilder<DataResponse>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DataQuery)],
  ): _i2.ListBuilder<DataQuery>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(MetricPoint)],
  ): _i2.ListBuilder<MetricPoint>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceUsage)],
  ): _i2.ListBuilder<InstanceUsage>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CoipAddressUsage)],
  ): _i2.ListBuilder<CoipAddressUsage>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AthenaIntegration)],
  ): _i2.ListBuilder<AthenaIntegration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(CapacityReservationGroup)],
  ): _i2.ListBuilder<CapacityReservationGroup>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(Purchase)],
  ): _i2.ListBuilder<Purchase>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceTypeInfoFromInstanceRequirements)],
  ): _i2.ListBuilder<InstanceTypeInfoFromInstanceRequirements>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamAddressHistoryRecord)],
  ): _i2.ListBuilder<IpamAddressHistoryRecord>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamDiscoveredAccount)],
  ): _i2.ListBuilder<IpamDiscoveredAccount>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamDiscoveredResourceCidr)],
  ): _i2.ListBuilder<IpamDiscoveredResourceCidr>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamPoolAllocation)],
  ): _i2.ListBuilder<IpamPoolAllocation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamPoolCidr)],
  ): _i2.ListBuilder<IpamPoolCidr>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(IpamResourceCidr)],
  ): _i2.ListBuilder<IpamResourceCidr>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PrefixListAssociation)],
  ): _i2.ListBuilder<PrefixListAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PrefixListEntry)],
  ): _i2.ListBuilder<PrefixListEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AccessScopeAnalysisFinding)],
  ): _i2.ListBuilder<AccessScopeAnalysisFinding>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReservedInstanceReservationValue)],
  ): _i2.ListBuilder<ReservedInstanceReservationValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TargetReservationValue)],
  ): _i2.ListBuilder<TargetReservationValue>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SpotPlacementScore)],
  ): _i2.ListBuilder<SpotPlacementScore>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SubnetCidrReservation)],
  ): _i2.ListBuilder<SubnetCidrReservation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayAttachmentPropagation)],
  ): _i2.ListBuilder<TransitGatewayAttachmentPropagation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayMulticastDomainAssociation)],
  ): _i2.ListBuilder<TransitGatewayMulticastDomainAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayPolicyTableAssociation)],
  ): _i2.ListBuilder<TransitGatewayPolicyTableAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayPolicyTableEntry)],
  ): _i2.ListBuilder<TransitGatewayPolicyTableEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayPrefixListReference)],
  ): _i2.ListBuilder<TransitGatewayPrefixListReference>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayRouteTableAssociation)],
  ): _i2.ListBuilder<TransitGatewayRouteTableAssociation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayRouteTablePropagation)],
  ): _i2.ListBuilder<TransitGatewayRouteTablePropagation>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(VpnConnectionDeviceType)],
  ): _i2.ListBuilder<VpnConnectionDeviceType>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ImageDiskContainer)],
  ): _i2.ListBuilder<ImageDiskContainer>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ImportImageLicenseConfigurationRequest)],
  ): _i2.ListBuilder<ImportImageLicenseConfigurationRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(DiskImage)],
  ): _i2.ListBuilder<DiskImage>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ImageRecycleBinInfo)],
  ): _i2.ListBuilder<ImageRecycleBinInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SnapshotRecycleBinInfo)],
  ): _i2.ListBuilder<SnapshotRecycleBinInfo>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LoadPermissionRequest)],
  ): _i2.ListBuilder<LoadPermissionRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceBlockDeviceMappingSpecification)],
  ): _i2.ListBuilder<InstanceBlockDeviceMappingSpecification>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceCreditSpecificationRequest)],
  ): _i2.ListBuilder<InstanceCreditSpecificationRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SuccessfulInstanceCreditSpecificationItem)],
  ): _i2.ListBuilder<SuccessfulInstanceCreditSpecificationItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(UnsuccessfulInstanceCreditSpecificationItem)],
  ): _i2.ListBuilder<UnsuccessfulInstanceCreditSpecificationItem>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RemoveIpamOperatingRegion)],
  ): _i2.ListBuilder<RemoveIpamOperatingRegion>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(RemovePrefixListEntry)],
  ): _i2.ListBuilder<RemovePrefixListEntry>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReservedInstancesConfiguration)],
  ): _i2.ListBuilder<ReservedInstancesConfiguration>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SecurityGroupRuleUpdate)],
  ): _i2.ListBuilder<SecurityGroupRuleUpdate>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TrafficMirrorFilterRuleField)],
  ): _i2.ListBuilder<TrafficMirrorFilterRuleField>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TrafficMirrorSessionField)],
  ): _i2.ListBuilder<TrafficMirrorSessionField>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(AddedPrincipal)],
  ): _i2.ListBuilder<AddedPrincipal>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceMonitoring)],
  ): _i2.ListBuilder<InstanceMonitoring>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(PurchaseRequest)],
  ): _i2.ListBuilder<PurchaseRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ReportInstanceReasonCodes)],
  ): _i2.ListBuilder<ReportInstanceReasonCodes>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ElasticInferenceAccelerator)],
  ): _i2.ListBuilder<ElasticInferenceAccelerator>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LicenseConfigurationRequest)],
  ): _i2.ListBuilder<LicenseConfigurationRequest>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ScheduledInstancesIpv6Address)],
  ): _i2.ListBuilder<ScheduledInstancesIpv6Address>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ScheduledInstancesPrivateIpAddressConfig)],
  ): _i2.ListBuilder<ScheduledInstancesPrivateIpAddressConfig>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ScheduledInstancesBlockDeviceMapping)],
  ): _i2.ListBuilder<ScheduledInstancesBlockDeviceMapping>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(ScheduledInstancesNetworkInterface)],
  ): _i2.ListBuilder<ScheduledInstancesNetworkInterface>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(LocalGatewayRoute)],
  ): _i2.ListBuilder<LocalGatewayRoute>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayMulticastGroup)],
  ): _i2.ListBuilder<TransitGatewayMulticastGroup>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TransitGatewayRoute)],
  ): _i2.ListBuilder<TransitGatewayRoute>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(InstanceStateChange)],
  ): _i2.ListBuilder<InstanceStateChange>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(TerminateConnectionStatus)],
  ): _i2.ListBuilder<TerminateConnectionStatus>.new,
  const FullType(
    _i2.BuiltList,
    [FullType(SecurityGroupRuleDescription)],
  ): _i2.ListBuilder<SecurityGroupRuleDescription>.new,
};
