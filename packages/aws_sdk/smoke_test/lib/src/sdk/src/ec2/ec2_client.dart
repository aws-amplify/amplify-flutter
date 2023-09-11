// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.ec2_client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i3;
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
import 'package:smoke_test/src/sdk/src/ec2/model/address_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/address_transfer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/advertise_byoip_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/advertise_byoip_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_address_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_hosts_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_hosts_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_ipam_pool_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allocate_ipam_pool_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/allowed_principal.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/apply_security_groups_to_client_vpn_target_network_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/apply_security_groups_to_client_vpn_target_network_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_ipv6_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_ipv6_addresses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_ip_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_ip_addresses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_nat_gateway_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/assign_private_nat_gateway_address_result.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/authorization_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_client_vpn_ingress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_client_vpn_ingress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_egress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_egress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_ingress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_ingress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_bundle_task_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_bundle_task_result.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_requests_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_requests_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_dns_support.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/coip_pool.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/confirm_product_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/confirm_product_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_fpga_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_fpga_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_snapshot_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/copy_snapshot_result.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_multicast_domain_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_multicast_domain_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_request.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_vpc_attachment_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_endpoint_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_endpoint_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_group_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_trust_provider_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/create_verified_access_trust_provider_result.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/data_response.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_members_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_members_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_sources_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_transit_gateway_multicast_group_sources_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_address_transfers_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_addresses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_aggregate_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_aggregate_id_format_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_availability_zones_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_availability_zones_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_aws_network_performance_metric_subscriptions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_bundle_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_bundle_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_byoip_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservation_fleets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_carrier_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_classic_link_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_authorization_rules_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_routes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_client_vpn_target_networks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_coip_pools_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_conversion_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_conversion_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_customer_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_customer_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_dhcp_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_egress_only_internet_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_elastic_gpus_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_elastic_gpus_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_image_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_export_tasks_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_success_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restore_success_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restores_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_history_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_history_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_flow_logs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_image_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fpga_images_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservation_offerings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_host_reservations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_hosts_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_iam_instance_profile_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_id_format_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_identity_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_identity_id_format_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_images_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_image_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_import_snapshot_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_connect_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_credit_specifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_notification_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_notification_attributes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_event_windows_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_type_offerings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instance_types_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_internet_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_pools_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_resource_discoveries_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_resource_discovery_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipam_scopes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipams_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_ipv6_pools_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_key_pairs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_key_pairs_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_template_versions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_launch_templates_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_virtual_interface_group_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_table_vpc_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_route_tables_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interface_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateway_virtual_interfaces_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_local_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_managed_prefix_lists_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_moving_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_nat_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_acls_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scope_analyses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_access_scopes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_analyses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_insights_paths_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interface_permissions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_network_interfaces_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_placement_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_placement_groups_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_prefix_lists_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_principal_id_format_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_public_ipv4_pools_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_regions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_regions_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_replace_root_volume_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_listings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_listings_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_modifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_offerings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_reserved_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_route_tables_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instance_availability_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_scheduled_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_references_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_references_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_group_rules_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_security_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshot_tier_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_snapshots_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_datafeed_subscription_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_datafeed_subscription_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_instances_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_request_history_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_request_history_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_fleet_requests_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_instance_requests_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_spot_price_history_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_stale_security_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_store_image_tasks_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_subnets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_tags_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_filters_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_sessions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_traffic_mirror_targets_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_attachments_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connect_peers_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_connects_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_multicast_domains_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_peering_attachments_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_policy_tables_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_table_announcements_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_route_tables_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateway_vpc_attachments_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_transit_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_trunk_interface_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_instance_logging_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_verified_access_trust_providers_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volume_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_modifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_volumes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_dns_support_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_classic_link_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connection_notifications_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_configurations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_service_permissions_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_services_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoint_services_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_endpoints_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpc_peering_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpcs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_connections_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_gateways_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/describe_vpn_gateways_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_classic_link_vpc_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_classic_link_vpc_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_internet_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_network_interface_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_verified_access_trust_provider_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_verified_access_trust_provider_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_volume_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/detach_vpn_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_address_transfer_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_address_transfer_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_aws_network_performance_metric_subscription_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_aws_network_performance_metric_subscription_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ebs_encryption_by_default_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_ebs_encryption_by_default_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_launch_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_launch_result.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/ec2_instance_connect_endpoint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/egress_only_internet_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_address_transfer_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_address_transfer_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_aws_network_performance_metric_subscription_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_aws_network_performance_metric_subscription_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ebs_encryption_by_default_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_ebs_encryption_by_default_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_launch_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_launch_result.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_certificate_revocation_list_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_certificate_revocation_list_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_client_vpn_client_configuration_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_transit_gateway_routes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/export_transit_gateway_routes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_data.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/flow_log.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_enclave_certificate_iam_roles_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_enclave_certificate_iam_roles_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_associated_ipv6_pool_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_aws_network_performance_data_request.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/get_host_reservation_purchase_preview_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_host_reservation_purchase_preview_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_types_from_instance_requirements_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_uefi_data_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_uefi_data_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_address_history_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_discovered_accounts_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_discovered_resource_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_allocations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_pool_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_ipam_resource_cidrs_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_launch_template_data_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_launch_template_data_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_managed_prefix_list_entries_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_analysis_findings_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_content_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_network_insights_access_scope_content_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_password_data_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_password_data_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_reserved_instances_exchange_quote_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_reserved_instances_exchange_quote_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_serial_console_access_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_serial_console_access_status_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_spot_placement_scores_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_subnet_cidr_reservations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_subnet_cidr_reservations_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_attachment_propagations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_multicast_domain_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_entries_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_policy_table_entries_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_prefix_list_references_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_associations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_transit_gateway_route_table_propagations_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_verified_access_endpoint_policy_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_verified_access_endpoint_policy_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_verified_access_group_policy_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_verified_access_group_policy_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_sample_configuration_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_sample_configuration_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_connection_device_types_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_tunnel_replacement_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/get_vpn_tunnel_replacement_status_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_offering.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/image_recycle_bin_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_client_vpn_client_certificate_revocation_list_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_client_vpn_client_certificate_revocation_list_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_key_pair_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_key_pair_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_attribute.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_credit_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info_from_instance_requirements.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_offering.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_address_history_record.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovered_account.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovered_resource_cidr.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_cidr.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_cidr_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_pool.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/key_pair.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_version.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/list_images_in_recycle_bin_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/list_snapshots_in_recycle_bin_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_virtual_interface_group_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_virtual_interface_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/managed_prefix_list.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_address_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_address_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_availability_zone_group_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_availability_zone_group_result.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_prefix_list_reference_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_prefix_list_reference_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_result.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/monitor_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/monitor_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/move_address_to_vpc_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/move_address_to_vpc_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/move_byoip_cidr_to_ipam_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/move_byoip_cidr_to_ipam_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/moving_address_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_analysis.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_analysis.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_path.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/principal_id_format.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_byoip_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_byoip_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_ipam_pool_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_ipam_pool_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_public_ipv4_pool_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/provision_public_ipv4_pool_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_host_reservation_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_host_reservation_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_reserved_instances_offering_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_reserved_instances_offering_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_scheduled_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase_scheduled_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reboot_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_image_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_image_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_event_notification_attributes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_event_notification_attributes_result.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/replace_iam_instance_profile_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_iam_instance_profile_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_network_acl_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_network_acl_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_network_acl_entry_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_route_table_association_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_route_table_association_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_transit_gateway_route_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_transit_gateway_route_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_vpn_tunnel_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/replace_vpn_tunnel_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/report_instance_status_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_fleet_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_fleet_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_modification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_offering.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_address_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_address_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_ebs_default_kms_key_id_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_ebs_default_kms_key_id_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_fpga_image_attribute_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_image_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_instance_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_network_interface_attribute_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reset_snapshot_attribute_request.dart';
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
import 'package:smoke_test/src/sdk/src/ec2/model/route_table.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_scheduled_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/run_scheduled_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_availability.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_local_gateway_routes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_multicast_groups_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_routes_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/search_transit_gateway_routes_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/send_diagnostic_interrupt_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/service_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_recycle_bin_info.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_tier_status.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement_score.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_price.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/stale_security_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_access_scope_analysis_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_access_scope_analysis_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_analysis_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_network_insights_analysis_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_vpc_endpoint_service_private_dns_verification_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/start_vpc_endpoint_service_private_dns_verification_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/stop_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/stop_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/store_image_task_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subnet.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/subscription.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_description.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_network.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_client_vpn_connections_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_client_vpn_connections_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_propagation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_propagation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/trunk_interface_association.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_ipv6_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_ipv6_addresses_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_private_ip_addresses_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_private_nat_gateway_address_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unassign_private_nat_gateway_address_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unmonitor_instances_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/unmonitor_instances_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_egress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_egress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_ingress_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/update_security_group_rule_descriptions_ingress_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_group.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance_logging_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_trust_provider.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attachment.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_item.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint_connection.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection_device_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/withdraw_byoip_cidr_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/withdraw_byoip_cidr_result.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/accept_address_transfer_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/accept_reserved_instances_exchange_quote_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/accept_transit_gateway_multicast_domain_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/accept_transit_gateway_peering_attachment_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/accept_transit_gateway_vpc_attachment_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/accept_vpc_endpoint_connections_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/accept_vpc_peering_connection_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/advertise_byoip_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/allocate_address_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/allocate_hosts_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/allocate_ipam_pool_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/apply_security_groups_to_client_vpn_target_network_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/assign_ipv6_addresses_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/assign_private_ip_addresses_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/assign_private_nat_gateway_address_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_address_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_client_vpn_target_network_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_dhcp_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_enclave_certificate_iam_role_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_iam_instance_profile_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_instance_event_window_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_ipam_resource_discovery_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_nat_gateway_address_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_subnet_cidr_block_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_transit_gateway_multicast_domain_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_transit_gateway_policy_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_transit_gateway_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_trunk_interface_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/associate_vpc_cidr_block_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/attach_classic_link_vpc_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/attach_internet_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/attach_network_interface_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/attach_verified_access_trust_provider_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/attach_volume_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/attach_vpn_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/authorize_client_vpn_ingress_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/authorize_security_group_egress_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/authorize_security_group_ingress_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/bundle_instance_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_bundle_task_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_capacity_reservation_fleets_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_capacity_reservation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_conversion_task_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_export_task_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_image_launch_permission_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_import_task_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_reserved_instances_listing_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_spot_fleet_requests_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/cancel_spot_instance_requests_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/confirm_product_instance_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/copy_fpga_image_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/copy_image_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/copy_snapshot_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_capacity_reservation_fleet_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_capacity_reservation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_carrier_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_client_vpn_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_client_vpn_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_coip_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_coip_pool_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_customer_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_default_subnet_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_default_vpc_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_dhcp_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_egress_only_internet_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_fleet_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_flow_logs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_fpga_image_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_image_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_instance_connect_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_instance_event_window_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_instance_export_task_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_internet_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_ipam_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_ipam_pool_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_ipam_resource_discovery_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_ipam_scope_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_key_pair_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_launch_template_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_launch_template_version_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_local_gateway_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_local_gateway_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_local_gateway_route_table_virtual_interface_group_association_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_local_gateway_route_table_vpc_association_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_managed_prefix_list_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_nat_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_network_acl_entry_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_network_acl_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_network_insights_access_scope_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_network_insights_path_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_network_interface_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_network_interface_permission_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_placement_group_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_public_ipv4_pool_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_replace_root_volume_task_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_reserved_instances_listing_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_restore_image_task_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_security_group_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_snapshot_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_snapshots_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_spot_datafeed_subscription_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_store_image_task_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_subnet_cidr_reservation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_subnet_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_tags_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_traffic_mirror_filter_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_traffic_mirror_filter_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_traffic_mirror_session_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_traffic_mirror_target_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_connect_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_connect_peer_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_multicast_domain_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_peering_attachment_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_policy_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_prefix_list_reference_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_route_table_announcement_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_transit_gateway_vpc_attachment_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_verified_access_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_verified_access_group_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_verified_access_instance_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_verified_access_trust_provider_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_volume_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_vpc_endpoint_connection_notification_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_vpc_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_vpc_endpoint_service_configuration_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_vpc_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_vpc_peering_connection_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_vpn_connection_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_vpn_connection_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/create_vpn_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_carrier_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_client_vpn_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_client_vpn_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_coip_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_coip_pool_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_customer_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_dhcp_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_egress_only_internet_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_fleets_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_flow_logs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_fpga_image_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_instance_connect_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_instance_event_window_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_internet_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_ipam_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_ipam_pool_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_ipam_resource_discovery_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_ipam_scope_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_key_pair_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_launch_template_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_launch_template_versions_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_local_gateway_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_local_gateway_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_local_gateway_route_table_virtual_interface_group_association_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_local_gateway_route_table_vpc_association_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_managed_prefix_list_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_nat_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_network_acl_entry_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_network_acl_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_network_insights_access_scope_analysis_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_network_insights_access_scope_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_network_insights_analysis_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_network_insights_path_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_network_interface_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_network_interface_permission_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_placement_group_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_public_ipv4_pool_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_queued_reserved_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_security_group_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_snapshot_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_spot_datafeed_subscription_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_subnet_cidr_reservation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_subnet_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_tags_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_traffic_mirror_filter_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_traffic_mirror_filter_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_traffic_mirror_session_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_traffic_mirror_target_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_connect_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_connect_peer_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_multicast_domain_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_peering_attachment_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_policy_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_prefix_list_reference_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_route_table_announcement_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_transit_gateway_vpc_attachment_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_verified_access_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_verified_access_group_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_verified_access_instance_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_verified_access_trust_provider_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_volume_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_vpc_endpoint_connection_notifications_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_vpc_endpoint_service_configurations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_vpc_endpoints_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_vpc_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_vpc_peering_connection_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_vpn_connection_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_vpn_connection_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/delete_vpn_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/deprovision_byoip_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/deprovision_ipam_pool_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/deprovision_public_ipv4_pool_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/deregister_image_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/deregister_instance_event_notification_attributes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/deregister_transit_gateway_multicast_group_members_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/deregister_transit_gateway_multicast_group_sources_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_account_attributes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_address_transfers_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_addresses_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_addresses_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_aggregate_id_format_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_availability_zones_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_aws_network_performance_metric_subscriptions_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_bundle_tasks_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_byoip_cidrs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_capacity_reservation_fleets_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_capacity_reservations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_carrier_gateways_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_classic_link_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_client_vpn_authorization_rules_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_client_vpn_connections_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_client_vpn_endpoints_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_client_vpn_routes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_client_vpn_target_networks_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_coip_pools_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_conversion_tasks_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_customer_gateways_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_dhcp_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_egress_only_internet_gateways_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_elastic_gpus_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_export_image_tasks_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_export_tasks_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_fast_launch_images_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_fast_snapshot_restores_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_fleet_history_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_fleet_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_fleets_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_flow_logs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_fpga_image_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_fpga_images_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_host_reservation_offerings_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_host_reservations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_hosts_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_iam_instance_profile_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_id_format_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_identity_id_format_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_image_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_images_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_import_image_tasks_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_import_snapshot_tasks_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_instance_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_instance_connect_endpoints_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_instance_credit_specifications_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_instance_event_notification_attributes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_instance_event_windows_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_instance_status_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_instance_type_offerings_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_instance_types_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_internet_gateways_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_ipam_pools_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_ipam_resource_discoveries_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_ipam_resource_discovery_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_ipam_scopes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_ipams_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_ipv6_pools_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_key_pairs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_launch_template_versions_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_launch_templates_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_local_gateway_route_table_virtual_interface_group_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_local_gateway_route_table_vpc_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_local_gateway_route_tables_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_local_gateway_virtual_interface_groups_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_local_gateway_virtual_interfaces_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_local_gateways_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_managed_prefix_lists_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_moving_addresses_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_nat_gateways_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_network_acls_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_network_insights_access_scope_analyses_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_network_insights_access_scopes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_network_insights_analyses_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_network_insights_paths_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_network_interface_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_network_interface_permissions_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_network_interfaces_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_placement_groups_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_prefix_lists_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_principal_id_format_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_public_ipv4_pools_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_regions_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_replace_root_volume_tasks_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_reserved_instances_listings_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_reserved_instances_modifications_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_reserved_instances_offerings_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_reserved_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_route_tables_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_scheduled_instance_availability_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_scheduled_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_security_group_references_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_security_group_rules_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_security_groups_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_snapshot_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_snapshot_tier_status_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_snapshots_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_spot_datafeed_subscription_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_spot_fleet_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_spot_fleet_request_history_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_spot_fleet_requests_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_spot_instance_requests_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_spot_price_history_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_stale_security_groups_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_store_image_tasks_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_subnets_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_tags_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_traffic_mirror_filters_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_traffic_mirror_sessions_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_traffic_mirror_targets_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateway_attachments_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateway_connect_peers_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateway_connects_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateway_multicast_domains_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateway_peering_attachments_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateway_policy_tables_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateway_route_table_announcements_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateway_route_tables_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateway_vpc_attachments_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_transit_gateways_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_trunk_interface_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_verified_access_endpoints_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_verified_access_groups_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_verified_access_instance_logging_configurations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_verified_access_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_verified_access_trust_providers_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_volume_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_volume_status_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_volumes_modifications_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_volumes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_classic_link_dns_support_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_classic_link_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_endpoint_connection_notifications_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_endpoint_connections_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_endpoint_service_configurations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_endpoint_service_permissions_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_endpoint_services_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_endpoints_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpc_peering_connections_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpcs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpn_connections_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/describe_vpn_gateways_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/detach_classic_link_vpc_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/detach_internet_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/detach_network_interface_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/detach_verified_access_trust_provider_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/detach_volume_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/detach_vpn_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_address_transfer_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_aws_network_performance_metric_subscription_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_ebs_encryption_by_default_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_fast_launch_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_fast_snapshot_restores_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_image_deprecation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_ipam_organization_admin_account_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_serial_console_access_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_transit_gateway_route_table_propagation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_vgw_route_propagation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_vpc_classic_link_dns_support_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disable_vpc_classic_link_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_address_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_client_vpn_target_network_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_enclave_certificate_iam_role_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_iam_instance_profile_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_instance_event_window_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_ipam_resource_discovery_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_nat_gateway_address_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_subnet_cidr_block_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_transit_gateway_multicast_domain_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_transit_gateway_policy_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_transit_gateway_route_table_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_trunk_interface_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/disassociate_vpc_cidr_block_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_address_transfer_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_aws_network_performance_metric_subscription_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_ebs_encryption_by_default_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_fast_launch_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_fast_snapshot_restores_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_image_deprecation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_ipam_organization_admin_account_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_reachability_analyzer_organization_sharing_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_serial_console_access_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_transit_gateway_route_table_propagation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_vgw_route_propagation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_volume_io_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_vpc_classic_link_dns_support_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/enable_vpc_classic_link_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/export_client_vpn_client_certificate_revocation_list_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/export_client_vpn_client_configuration_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/export_image_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/export_transit_gateway_routes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_associated_enclave_certificate_iam_roles_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_associated_ipv6_pool_cidrs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_aws_network_performance_data_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_capacity_reservation_usage_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_coip_pool_usage_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_console_output_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_console_screenshot_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_default_credit_specification_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_ebs_default_kms_key_id_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_ebs_encryption_by_default_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_flow_logs_integration_template_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_groups_for_capacity_reservation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_host_reservation_purchase_preview_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_instance_types_from_instance_requirements_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_instance_uefi_data_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_ipam_address_history_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_ipam_discovered_accounts_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_ipam_discovered_resource_cidrs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_ipam_pool_allocations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_ipam_pool_cidrs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_ipam_resource_cidrs_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_launch_template_data_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_managed_prefix_list_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_managed_prefix_list_entries_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_network_insights_access_scope_analysis_findings_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_network_insights_access_scope_content_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_password_data_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_reserved_instances_exchange_quote_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_serial_console_access_status_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_spot_placement_scores_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_subnet_cidr_reservations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_transit_gateway_attachment_propagations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_transit_gateway_multicast_domain_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_transit_gateway_policy_table_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_transit_gateway_policy_table_entries_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_transit_gateway_prefix_list_references_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_transit_gateway_route_table_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_transit_gateway_route_table_propagations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_verified_access_endpoint_policy_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_verified_access_group_policy_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_vpn_connection_device_sample_configuration_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_vpn_connection_device_types_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/get_vpn_tunnel_replacement_status_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/import_client_vpn_client_certificate_revocation_list_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/import_image_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/import_instance_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/import_key_pair_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/import_snapshot_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/import_volume_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/list_images_in_recycle_bin_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/list_snapshots_in_recycle_bin_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_address_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_availability_zone_group_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_capacity_reservation_fleet_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_capacity_reservation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_client_vpn_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_default_credit_specification_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_ebs_default_kms_key_id_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_fleet_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_fpga_image_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_hosts_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_id_format_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_identity_id_format_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_image_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_instance_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_instance_capacity_reservation_attributes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_instance_credit_specification_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_instance_event_start_time_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_instance_event_window_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_instance_maintenance_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_instance_metadata_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_instance_placement_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_ipam_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_ipam_pool_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_ipam_resource_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_ipam_resource_discovery_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_ipam_scope_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_launch_template_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_local_gateway_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_managed_prefix_list_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_network_interface_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_private_dns_name_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_reserved_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_security_group_rules_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_snapshot_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_snapshot_tier_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_spot_fleet_request_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_subnet_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_traffic_mirror_filter_network_services_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_traffic_mirror_filter_rule_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_traffic_mirror_session_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_transit_gateway_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_transit_gateway_prefix_list_reference_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_transit_gateway_vpc_attachment_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_verified_access_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_verified_access_endpoint_policy_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_verified_access_group_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_verified_access_group_policy_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_verified_access_instance_logging_configuration_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_verified_access_instance_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_verified_access_trust_provider_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_volume_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_volume_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpc_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpc_endpoint_connection_notification_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpc_endpoint_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpc_endpoint_service_configuration_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpc_endpoint_service_payer_responsibility_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpc_endpoint_service_permissions_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpc_peering_connection_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpc_tenancy_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpn_connection_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpn_connection_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpn_tunnel_certificate_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/modify_vpn_tunnel_options_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/monitor_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/move_address_to_vpc_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/move_byoip_cidr_to_ipam_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/provision_byoip_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/provision_ipam_pool_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/provision_public_ipv4_pool_cidr_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/purchase_host_reservation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/purchase_reserved_instances_offering_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/purchase_scheduled_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reboot_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/register_image_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/register_instance_event_notification_attributes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/register_transit_gateway_multicast_group_members_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/register_transit_gateway_multicast_group_sources_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reject_transit_gateway_multicast_domain_associations_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reject_transit_gateway_peering_attachment_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reject_transit_gateway_vpc_attachment_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reject_vpc_endpoint_connections_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reject_vpc_peering_connection_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/release_address_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/release_hosts_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/release_ipam_pool_allocation_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/replace_iam_instance_profile_association_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/replace_network_acl_association_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/replace_network_acl_entry_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/replace_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/replace_route_table_association_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/replace_transit_gateway_route_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/replace_vpn_tunnel_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/report_instance_status_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/request_spot_fleet_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/request_spot_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reset_address_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reset_ebs_default_kms_key_id_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reset_fpga_image_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reset_image_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reset_instance_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reset_network_interface_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/reset_snapshot_attribute_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/restore_address_to_classic_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/restore_image_from_recycle_bin_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/restore_managed_prefix_list_version_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/restore_snapshot_from_recycle_bin_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/restore_snapshot_tier_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/revoke_client_vpn_ingress_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/revoke_security_group_egress_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/revoke_security_group_ingress_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/run_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/run_scheduled_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/search_local_gateway_routes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/search_transit_gateway_multicast_groups_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/search_transit_gateway_routes_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/send_diagnostic_interrupt_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/start_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/start_network_insights_access_scope_analysis_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/start_network_insights_analysis_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/start_vpc_endpoint_service_private_dns_verification_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/stop_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/terminate_client_vpn_connections_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/terminate_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/unassign_ipv6_addresses_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/unassign_private_ip_addresses_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/unassign_private_nat_gateway_address_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/unmonitor_instances_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/update_security_group_rule_descriptions_egress_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/update_security_group_rule_descriptions_ingress_operation.dart';
import 'package:smoke_test/src/sdk/src/ec2/operation/withdraw_byoip_cidr_operation.dart';

/// ## Amazon Elastic Compute Cloud
///
/// Amazon Elastic Compute Cloud (Amazon EC2) provides secure and resizable computing capacity in the Amazon Web Services Cloud. Using Amazon EC2 eliminates the need to invest in hardware up front, so you can develop and deploy applications faster. Amazon Virtual Private Cloud (Amazon VPC) enables you to provision a logically isolated section of the Amazon Web Services Cloud where you can launch Amazon Web Services resources in a virtual network that you've defined. Amazon Elastic Block Store (Amazon EBS) provides block level storage volumes for use with EC2 instances. EBS volumes are highly available and reliable storage volumes that can be attached to any running instance and used like a hard drive.
///
/// To learn more, see the following resources:
///
/// *   Amazon EC2: [Amazon EC2 product page](http://aws.amazon.com/ec2), [Amazon EC2 documentation](https://docs.aws.amazon.com/ec2/index.html)
///
/// *   Amazon EBS: [Amazon EBS product page](http://aws.amazon.com/ebs), [Amazon EBS documentation](https://docs.aws.amazon.com/ebs/index.html)
///
/// *   Amazon VPC: [Amazon VPC product page](http://aws.amazon.com/vpc), [Amazon VPC documentation](https://docs.aws.amazon.com/vpc/index.html)
///
/// *   VPN: [VPN product page](http://aws.amazon.com/vpn), [VPN documentation](https://docs.aws.amazon.com/vpn/index.html)
class Ec2Client {
  /// ## Amazon Elastic Compute Cloud
  ///
  /// Amazon Elastic Compute Cloud (Amazon EC2) provides secure and resizable computing capacity in the Amazon Web Services Cloud. Using Amazon EC2 eliminates the need to invest in hardware up front, so you can develop and deploy applications faster. Amazon Virtual Private Cloud (Amazon VPC) enables you to provision a logically isolated section of the Amazon Web Services Cloud where you can launch Amazon Web Services resources in a virtual network that you've defined. Amazon Elastic Block Store (Amazon EBS) provides block level storage volumes for use with EC2 instances. EBS volumes are highly available and reliable storage volumes that can be attached to any running instance and used like a hard drive.
  ///
  /// To learn more, see the following resources:
  ///
  /// *   Amazon EC2: [Amazon EC2 product page](http://aws.amazon.com/ec2), [Amazon EC2 documentation](https://docs.aws.amazon.com/ec2/index.html)
  ///
  /// *   Amazon EBS: [Amazon EBS product page](http://aws.amazon.com/ebs), [Amazon EBS documentation](https://docs.aws.amazon.com/ebs/index.html)
  ///
  /// *   Amazon VPC: [Amazon VPC product page](http://aws.amazon.com/vpc), [Amazon VPC documentation](https://docs.aws.amazon.com/vpc/index.html)
  ///
  /// *   VPN: [VPN product page](http://aws.amazon.com/vpn), [VPN documentation](https://docs.aws.amazon.com/vpn/index.html)
  const Ec2Client({
    _i1.AWSHttpClient? client,
    required String region,
    Uri? baseUri,
    _i2.AWSCredentialsProvider credentialsProvider =
        const _i2.AWSCredentialsProvider.defaultChain(),
    List<_i3.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i3.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _client = client,
        _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  final _i1.AWSHttpClient? _client;

  final String _region;

  final Uri? _baseUri;

  final _i2.AWSCredentialsProvider _credentialsProvider;

  final List<_i3.HttpRequestInterceptor> _requestInterceptors;

  final List<_i3.HttpResponseInterceptor> _responseInterceptors;

  /// Accepts an Elastic IP address transfer. For more information, see [Accept a transferred Elastic IP address](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#using-instance-addressing-eips-transfer-accept) in the _Amazon Virtual Private Cloud User Guide_.
  _i3.SmithyOperation<AcceptAddressTransferResult> acceptAddressTransfer(
    AcceptAddressTransferRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AcceptAddressTransferOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts the Convertible Reserved Instance exchange quote described in the GetReservedInstancesExchangeQuote call.
  _i3.SmithyOperation<AcceptReservedInstancesExchangeQuoteResult>
      acceptReservedInstancesExchangeQuote(
    AcceptReservedInstancesExchangeQuoteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AcceptReservedInstancesExchangeQuoteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a request to associate subnets with a transit gateway multicast domain.
  _i3.SmithyOperation<AcceptTransitGatewayMulticastDomainAssociationsResult>
      acceptTransitGatewayMulticastDomainAssociations(
    AcceptTransitGatewayMulticastDomainAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AcceptTransitGatewayMulticastDomainAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a transit gateway peering attachment request. The peering attachment must be in the `pendingAcceptance` state.
  _i3.SmithyOperation<AcceptTransitGatewayPeeringAttachmentResult>
      acceptTransitGatewayPeeringAttachment(
    AcceptTransitGatewayPeeringAttachmentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AcceptTransitGatewayPeeringAttachmentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts a request to attach a VPC to a transit gateway.
  ///
  /// The VPC attachment must be in the `pendingAcceptance` state. Use DescribeTransitGatewayVpcAttachments to view your pending VPC attachment requests. Use RejectTransitGatewayVpcAttachment to reject a VPC attachment request.
  _i3.SmithyOperation<AcceptTransitGatewayVpcAttachmentResult>
      acceptTransitGatewayVpcAttachment(
    AcceptTransitGatewayVpcAttachmentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AcceptTransitGatewayVpcAttachmentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accepts connection requests to your VPC endpoint service.
  _i3.SmithyOperation<AcceptVpcEndpointConnectionsResult>
      acceptVpcEndpointConnections(
    AcceptVpcEndpointConnectionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AcceptVpcEndpointConnectionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Accept a VPC peering connection request. To accept a request, the VPC peering connection must be in the `pending-acceptance` state, and you must be the owner of the peer VPC. Use DescribeVpcPeeringConnections to view your outstanding VPC peering connection requests.
  ///
  /// For an inter-Region VPC peering connection request, you must accept the VPC peering connection in the Region of the accepter VPC.
  _i3.SmithyOperation<AcceptVpcPeeringConnectionResult>
      acceptVpcPeeringConnection(
    AcceptVpcPeeringConnectionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AcceptVpcPeeringConnectionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Advertises an IPv4 or IPv6 address range that is provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP).
  ///
  /// You can perform this operation at most once every 10 seconds, even if you specify different address ranges each time.
  ///
  /// We recommend that you stop advertising the BYOIP CIDR from other locations when you advertise it from Amazon Web Services. To minimize down time, you can configure your Amazon Web Services resources to use an address from a BYOIP CIDR before it is advertised, and then simultaneously stop advertising it from the current location and start advertising it through Amazon Web Services.
  ///
  /// It can take a few minutes before traffic to the specified addresses starts routing to Amazon Web Services because of BGP propagation delays.
  ///
  /// To stop advertising the BYOIP CIDR, use WithdrawByoipCidr.
  _i3.SmithyOperation<AdvertiseByoipCidrResult> advertiseByoipCidr(
    AdvertiseByoipCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AdvertiseByoipCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Allocates an Elastic IP address to your Amazon Web Services account. After you allocate the Elastic IP address you can associate it with an instance or network interface. After you release an Elastic IP address, it is released to the IP address pool and can be allocated to a different Amazon Web Services account.
  ///
  /// You can allocate an Elastic IP address from an address pool owned by Amazon Web Services or from an address pool created from a public IPv4 address range that you have brought to Amazon Web Services for use with your Amazon Web Services resources using bring your own IP addresses (BYOIP). For more information, see [Bring Your Own IP Addresses (BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// If you release an Elastic IP address, you might be able to recover it. You cannot recover an Elastic IP address that you released after it is allocated to another Amazon Web Services account. To attempt to recover an Elastic IP address that you released, specify it in this operation.
  ///
  /// For more information, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// You can allocate a carrier IP address which is a public IP address from a telecommunication carrier, to a network interface which resides in a subnet in a Wavelength Zone (for example an EC2 instance).
  _i3.SmithyOperation<AllocateAddressResult> allocateAddress(
    AllocateAddressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AllocateAddressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Allocates a Dedicated Host to your account. At a minimum, specify the supported instance type or instance family, the Availability Zone in which to allocate the host, and the number of hosts to allocate.
  _i3.SmithyOperation<AllocateHostsResult> allocateHosts(
    AllocateHostsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AllocateHostsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Allocate a CIDR from an IPAM pool. The Region you use should be the IPAM pool locale. The locale is the Amazon Web Services Region where this IPAM pool is available for allocations.
  ///
  /// In IPAM, an allocation is a CIDR assignment from an IPAM pool to another IPAM pool or to a resource. For more information, see [Allocate CIDRs](https://docs.aws.amazon.com/vpc/latest/ipam/allocate-cidrs-ipam.html) in the _Amazon VPC IPAM User Guide_.
  ///
  /// This action creates an allocation with strong consistency. The returned CIDR will not overlap with any other allocations from the same pool.
  _i3.SmithyOperation<AllocateIpamPoolCidrResult> allocateIpamPoolCidr(
    AllocateIpamPoolCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AllocateIpamPoolCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Applies a security group to the association between the target network and the Client VPN endpoint. This action replaces the existing security groups with the specified security groups.
  _i3.SmithyOperation<ApplySecurityGroupsToClientVpnTargetNetworkResult>
      applySecurityGroupsToClientVpnTargetNetwork(
    ApplySecurityGroupsToClientVpnTargetNetworkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ApplySecurityGroupsToClientVpnTargetNetworkOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Assigns one or more IPv6 addresses to the specified network interface. You can specify one or more specific IPv6 addresses, or you can specify the number of IPv6 addresses to be automatically assigned from within the subnet's IPv6 CIDR block range. You can assign as many IPv6 addresses to a network interface as you can assign private IPv4 addresses, and the limit varies per instance type. For information, see [IP Addresses Per Network Interface Per Instance Type](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// You must specify either the IPv6 addresses or the IPv6 address count in the request.
  ///
  /// You can optionally use Prefix Delegation on the network interface. You must specify either the IPV6 Prefix Delegation prefixes, or the IPv6 Prefix Delegation count. For information, see [Assigning prefixes to Amazon EC2 network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<AssignIpv6AddressesResult> assignIpv6Addresses(
    AssignIpv6AddressesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssignIpv6AddressesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Assigns one or more secondary private IP addresses to the specified network interface.
  ///
  /// You can specify one or more specific secondary IP addresses, or you can specify the number of secondary IP addresses to be automatically assigned within the subnet's CIDR block range. The number of secondary IP addresses that you can assign to an instance varies by instance type. For information about instance types, see [Instance Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon Elastic Compute Cloud User Guide_. For more information about Elastic IP addresses, see [Elastic IP Addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// When you move a secondary private IP address to another network interface, any Elastic IP address that is associated with the IP address is also moved.
  ///
  /// Remapping an IP address is an asynchronous operation. When you move an IP address from one network interface to another, check `network/interfaces/macs/mac/local-ipv4s` in the instance metadata to confirm that the remapping is complete.
  ///
  /// You must specify either the IP addresses or the IP address count in the request.
  ///
  /// You can optionally use Prefix Delegation on the network interface. You must specify either the IPv4 Prefix Delegation prefixes, or the IPv4 Prefix Delegation count. For information, see [Assigning prefixes to Amazon EC2 network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<AssignPrivateIpAddressesResult> assignPrivateIpAddresses(
    AssignPrivateIpAddressesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssignPrivateIpAddressesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Assigns one or more private IPv4 addresses to a private NAT gateway. For more information, see [Work with NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<AssignPrivateNatGatewayAddressResult>
      assignPrivateNatGatewayAddress(
    AssignPrivateNatGatewayAddressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssignPrivateNatGatewayAddressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates an Elastic IP address, or carrier IP address (for instances that are in subnets in Wavelength Zones) with an instance or a network interface. Before you can use an Elastic IP address, you must allocate it to your account.
  ///
  /// If the Elastic IP address is already associated with a different instance, it is disassociated from that instance and associated with the specified instance. If you associate an Elastic IP address with an instance that has an existing Elastic IP address, the existing address is disassociated from the instance, but remains allocated to your account.
  ///
  /// \[Subnets in Wavelength Zones\] You can associate an IP address from the telecommunication carrier to the instance or network interface.
  ///
  /// You cannot associate an Elastic IP address with an interface in a different network border group.
  ///
  /// This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error, and you may be charged for each time the Elastic IP address is remapped to the same instance. For more information, see the _Elastic IP Addresses_ section of [Amazon EC2 Pricing](http://aws.amazon.com/ec2/pricing/).
  _i3.SmithyOperation<AssociateAddressResult> associateAddress(
    AssociateAddressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateAddressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates a target network with a Client VPN endpoint. A target network is a subnet in a VPC. You can associate multiple subnets from the same VPC with a Client VPN endpoint. You can associate only one subnet in each Availability Zone. We recommend that you associate at least two subnets to provide Availability Zone redundancy.
  ///
  /// If you specified a VPC when you created the Client VPN endpoint or if you have previous subnet associations, the specified subnet must be in the same VPC. To specify a subnet that's in a different VPC, you must first modify the Client VPN endpoint (ModifyClientVpnEndpoint) and change the VPC that's associated with it.
  _i3.SmithyOperation<AssociateClientVpnTargetNetworkResult>
      associateClientVpnTargetNetwork(
    AssociateClientVpnTargetNetworkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateClientVpnTargetNetworkOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP options with the VPC.
  ///
  /// After you associate the options with the VPC, any existing instances and all new instances that you launch in that VPC use the options. You don't need to restart or relaunch the instances. They automatically pick up the changes within a few hours, depending on how frequently the instance renews its DHCP lease. You can explicitly renew the lease using the operating system on the instance.
  ///
  /// For more information, see [DHCP options sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<void> associateDhcpOptions(
    AssociateDhcpOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateDhcpOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates an Identity and Access Management (IAM) role with an Certificate Manager (ACM) certificate. This enables the certificate to be used by the ACM for Nitro Enclaves application inside an enclave. For more information, see [Certificate Manager for Nitro Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
  ///
  /// When the IAM role is associated with the ACM certificate, the certificate, certificate chain, and encrypted private key are placed in an Amazon S3 location that only the associated IAM role can access. The private key of the certificate is encrypted with an Amazon Web Services managed key that has an attached attestation-based key policy.
  ///
  /// To enable the IAM role to access the Amazon S3 object, you must grant it permission to call `s3:GetObject` on the Amazon S3 bucket returned by the command. To enable the IAM role to access the KMS key, you must grant it permission to call `kms:Decrypt` on the KMS key returned by the command. For more information, see [Grant the role permission to access the certificate and encryption key](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html#add-policy) in the _Amazon Web Services Nitro Enclaves User Guide_.
  _i3.SmithyOperation<AssociateEnclaveCertificateIamRoleResult>
      associateEnclaveCertificateIamRole(
    AssociateEnclaveCertificateIamRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateEnclaveCertificateIamRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates an IAM instance profile with a running or stopped instance. You cannot associate more than one IAM instance profile with an instance.
  _i3.SmithyOperation<AssociateIamInstanceProfileResult>
      associateIamInstanceProfile(
    AssociateIamInstanceProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateIamInstanceProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates one or more targets with an event window. Only one type of target (instance IDs, Dedicated Host IDs, or tags) can be specified with an event window.
  ///
  /// For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<AssociateInstanceEventWindowResult>
      associateInstanceEventWindow(
    AssociateInstanceEventWindowRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateInstanceEventWindowOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates an IPAM resource discovery with an Amazon VPC IPAM. A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
  _i3.SmithyOperation<AssociateIpamResourceDiscoveryResult>
      associateIpamResourceDiscovery(
    AssociateIpamResourceDiscoveryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateIpamResourceDiscoveryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates Elastic IP addresses (EIPs) and private IPv4 addresses with a public NAT gateway. For more information, see [Work with NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with) in the _Amazon VPC User Guide_.
  ///
  /// By default, you can associate up to 2 Elastic IP addresses per public NAT gateway. You can increase the limit by requesting a quota adjustment. For more information, see [Elastic IP address quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-eips) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<AssociateNatGatewayAddressResult>
      associateNatGatewayAddress(
    AssociateNatGatewayAddressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateNatGatewayAddressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates a subnet in your VPC or an internet gateway or virtual private gateway attached to your VPC with a route table in your VPC. This association causes traffic from the subnet or gateway to be routed according to the routes in the route table. The action returns an association ID, which you need in order to disassociate the route table later. A route table can be associated with multiple subnets.
  ///
  /// For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<AssociateRouteTableResult> associateRouteTable(
    AssociateRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates a CIDR block with your subnet. You can only associate a single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix length of /64.
  _i3.SmithyOperation<AssociateSubnetCidrBlockResult> associateSubnetCidrBlock(
    AssociateSubnetCidrBlockRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateSubnetCidrBlockOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates the specified subnets and transit gateway attachments with the specified transit gateway multicast domain.
  ///
  /// The transit gateway attachment must be in the available state before you can add a resource. Use [DescribeTransitGatewayAttachments](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html) to see the state of the attachment.
  _i3.SmithyOperation<AssociateTransitGatewayMulticastDomainResult>
      associateTransitGatewayMulticastDomain(
    AssociateTransitGatewayMulticastDomainRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateTransitGatewayMulticastDomainOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates the specified transit gateway attachment with a transit gateway policy table.
  _i3.SmithyOperation<AssociateTransitGatewayPolicyTableResult>
      associateTransitGatewayPolicyTable(
    AssociateTransitGatewayPolicyTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateTransitGatewayPolicyTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates the specified attachment with the specified transit gateway route table. You can associate only one route table with an attachment.
  _i3.SmithyOperation<AssociateTransitGatewayRouteTableResult>
      associateTransitGatewayRouteTable(
    AssociateTransitGatewayRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateTransitGatewayRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This API action is currently in **limited preview only**. If you are interested in using this feature, contact your account manager.
  ///
  /// Associates a branch network interface with a trunk network interface.
  ///
  /// Before you create the association, run the [create-network-interface](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html) command and set `--interface-type` to `trunk`. You must also create a network interface for each branch network interface that you want to associate with the trunk network interface.
  _i3.SmithyOperation<AssociateTrunkInterfaceResult> associateTrunkInterface(
    AssociateTrunkInterfaceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateTrunkInterfaceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR block from an IPv6 address pool that you provisioned through bring your own IP addresses ([BYOIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)). The IPv6 CIDR block size is fixed at /56.
  ///
  /// You must specify one of the following in the request: an IPv4 CIDR block, an IPv6 pool, or an Amazon-provided IPv6 CIDR block.
  ///
  /// For more information about associating CIDR blocks with your VPC and applicable restrictions, see [IP addressing for your VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<AssociateVpcCidrBlockResult> associateVpcCidrBlock(
    AssociateVpcCidrBlockRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AssociateVpcCidrBlockOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC security groups. You cannot link an EC2-Classic instance to more than one VPC at a time. You can only link an instance that's in the `running` state. An instance is automatically unlinked from a VPC when it's stopped - you can link it to the VPC again when you restart it.
  ///
  /// After you've linked an instance, you cannot change the VPC security groups that are associated with it. To change the security groups, you must first unlink the instance, and then link it again.
  ///
  /// Linking your instance to a VPC is sometimes referred to as _attaching_ your instance.
  _i3.SmithyOperation<AttachClassicLinkVpcResult> attachClassicLinkVpc(
    AttachClassicLinkVpcRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AttachClassicLinkVpcOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Attaches an internet gateway or a virtual private gateway to a VPC, enabling connectivity between the internet and the VPC. For more information, see [Internet gateways](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<void> attachInternetGateway(
    AttachInternetGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AttachInternetGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Attaches a network interface to an instance.
  _i3.SmithyOperation<AttachNetworkInterfaceResult> attachNetworkInterface(
    AttachNetworkInterfaceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AttachNetworkInterfaceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Attaches the specified Amazon Web Services Verified Access trust provider to the specified Amazon Web Services Verified Access instance.
  _i3.SmithyOperation<AttachVerifiedAccessTrustProviderResult>
      attachVerifiedAccessTrustProvider(
    AttachVerifiedAccessTrustProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AttachVerifiedAccessTrustProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name.
  ///
  /// Encrypted EBS volumes must be attached to instances that support Amazon EBS encryption. For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// After you attach an EBS volume, you must make it available. For more information, see [Make an EBS volume available for use](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-using-volumes.html).
  ///
  /// If a volume has an Amazon Web Services Marketplace product code:
  ///
  /// *   The volume can be attached only to a stopped instance.
  ///
  /// *   Amazon Web Services Marketplace product codes are copied from the volume to the instance.
  ///
  /// *   You must be subscribed to the product.
  ///
  /// *   The instance type and operating system of the instance must support the product. For example, you can't detach a volume from a Windows instance and attach it to a Linux instance.
  ///
  ///
  /// For more information, see [Attach an Amazon EBS volume to an instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<VolumeAttachment> attachVolume(
    AttachVolumeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AttachVolumeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Attaches a virtual private gateway to a VPC. You can attach one virtual private gateway to one VPC at a time.
  ///
  /// For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  _i3.SmithyOperation<AttachVpnGatewayResult> attachVpnGateway(
    AttachVpnGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AttachVpnGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds an ingress authorization rule to a Client VPN endpoint. Ingress authorization rules act as firewall rules that grant access to networks. You must configure ingress authorization rules to enable clients to access resources in Amazon Web Services or on-premises networks.
  _i3.SmithyOperation<AuthorizeClientVpnIngressResult>
      authorizeClientVpnIngress(
    AuthorizeClientVpnIngressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AuthorizeClientVpnIngressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds the specified outbound (egress) rules to a security group for use with a VPC.
  ///
  /// An outbound rule permits instances to send traffic to the specified IPv4 or IPv6 CIDR address ranges, or to the instances that are associated with the specified source security groups. When specifying an outbound rule for your security group in a VPC, the `IpPermissions` must include a destination for the traffic.
  ///
  /// You specify a protocol for each rule (for example, TCP). For the TCP and UDP protocols, you must also specify the destination port or port range. For the ICMP protocol, you must also specify the ICMP type and code. You can use -1 for the type or code to mean all types or all codes.
  ///
  /// Rule changes are propagated to affected instances as quickly as possible. However, a small delay might occur.
  ///
  /// For information about VPC security group quotas, see [Amazon VPC quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).
  _i3.SmithyOperation<AuthorizeSecurityGroupEgressResult>
      authorizeSecurityGroupEgress(
    AuthorizeSecurityGroupEgressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AuthorizeSecurityGroupEgressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds the specified inbound (ingress) rules to a security group.
  ///
  /// An inbound rule permits instances to receive traffic from the specified IPv4 or IPv6 CIDR address range, or from the instances that are associated with the specified destination security groups. When specifying an inbound rule for your security group in a VPC, the `IpPermissions` must include a source for the traffic.
  ///
  /// You specify a protocol for each rule (for example, TCP). For TCP and UDP, you must also specify the destination port or port range. For ICMP/ICMPv6, you must also specify the ICMP/ICMPv6 type and code. You can use -1 to mean all types or all codes.
  ///
  /// Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
  ///
  /// For more information about VPC security group quotas, see [Amazon VPC quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).
  _i3.SmithyOperation<AuthorizeSecurityGroupIngressResult>
      authorizeSecurityGroupIngress(
    AuthorizeSecurityGroupIngressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return AuthorizeSecurityGroupIngressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Bundles an Amazon instance store-backed Windows instance.
  ///
  /// During bundling, only the root device volume (C:\\) is bundled. Data on other instance store volumes is not preserved.
  ///
  /// This action is not applicable for Linux/Unix instances or Windows instances that are backed by Amazon EBS.
  _i3.SmithyOperation<BundleInstanceResult> bundleInstance(
    BundleInstanceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return BundleInstanceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels a bundling operation for an instance store-backed Windows instance.
  _i3.SmithyOperation<CancelBundleTaskResult> cancelBundleTask(
    CancelBundleTaskRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelBundleTaskOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels the specified Capacity Reservation, releases the reserved capacity, and changes the Capacity Reservation's state to `cancelled`.
  ///
  /// Instances running in the reserved capacity continue running until you stop them. Stopped instances that target the Capacity Reservation can no longer launch. Modify these instances to either target a different Capacity Reservation, launch On-Demand Instance capacity, or run in any open Capacity Reservation that has matching attributes and sufficient capacity.
  _i3.SmithyOperation<CancelCapacityReservationResult>
      cancelCapacityReservation(
    CancelCapacityReservationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelCapacityReservationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels one or more Capacity Reservation Fleets. When you cancel a Capacity Reservation Fleet, the following happens:
  ///
  /// *   The Capacity Reservation Fleet's status changes to `cancelled`.
  ///
  /// *   The individual Capacity Reservations in the Fleet are cancelled. Instances running in the Capacity Reservations at the time of cancelling the Fleet continue to run in shared capacity.
  ///
  /// *   The Fleet stops creating new Capacity Reservations.
  _i3.SmithyOperation<CancelCapacityReservationFleetsResult>
      cancelCapacityReservationFleets(
    CancelCapacityReservationFleetsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelCapacityReservationFleetsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels an active conversion task. The task can be the import of an instance or volume. The action removes all artifacts of the conversion, including a partially uploaded volume or instance. If the conversion is complete or is in the process of transferring the final disk image, the command fails and returns an exception.
  ///
  /// For more information, see [Importing a Virtual Machine Using the Amazon EC2 CLI](https://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html).
  _i3.SmithyOperation<void> cancelConversionTask(
    CancelConversionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelConversionTaskOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels an active export task. The request removes all artifacts of the export, including any partially-created Amazon S3 objects. If the export task is complete or is in the process of transferring the final disk image, the command fails and returns an error.
  _i3.SmithyOperation<void> cancelExportTask(
    CancelExportTaskRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelExportTaskOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes your Amazon Web Services account from the launch permissions for the specified AMI. For more information, see [Cancel having an AMI shared with your Amazon Web Services account](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cancel-sharing-an-AMI.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CancelImageLaunchPermissionResult>
      cancelImageLaunchPermission(
    CancelImageLaunchPermissionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelImageLaunchPermissionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels an in-process import virtual machine or import snapshot task.
  _i3.SmithyOperation<CancelImportTaskResult> cancelImportTask(
    CancelImportTaskRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelImportTaskOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace.
  ///
  /// For more information, see [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CancelReservedInstancesListingResult>
      cancelReservedInstancesListing(
    CancelReservedInstancesListingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelReservedInstancesListingOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels the specified Spot Fleet requests.
  ///
  /// After you cancel a Spot Fleet request, the Spot Fleet launches no new instances.
  ///
  /// You must also specify whether a canceled Spot Fleet request should terminate its instances. If you choose to terminate the instances, the Spot Fleet request enters the `cancelled_terminating` state. Otherwise, the Spot Fleet request enters the `cancelled_running` state and the instances continue to run until they are interrupted or you terminate them manually.
  _i3.SmithyOperation<CancelSpotFleetRequestsResponse> cancelSpotFleetRequests(
    CancelSpotFleetRequestsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelSpotFleetRequestsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels one or more Spot Instance requests.
  ///
  /// Canceling a Spot Instance request does not terminate running Spot Instances associated with the request.
  _i3.SmithyOperation<CancelSpotInstanceRequestsResult>
      cancelSpotInstanceRequests(
    CancelSpotInstanceRequestsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CancelSpotInstanceRequestsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Determines whether a product code is associated with an instance. This action can only be used by the owner of the product code. It is useful when a product code owner must verify whether another user's instance is eligible for support.
  _i3.SmithyOperation<ConfirmProductInstanceResult> confirmProductInstance(
    ConfirmProductInstanceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ConfirmProductInstanceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Copies the specified Amazon FPGA Image (AFI) to the current Region.
  _i3.SmithyOperation<CopyFpgaImageResult> copyFpgaImage(
    CopyFpgaImageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CopyFpgaImageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Initiates the copy of an AMI. You can copy an AMI from one Region to another, or from a Region to an Outpost. You can't copy an AMI from an Outpost to a Region, from one Outpost to another, or within the same Outpost. To copy an AMI to another partition, see [CreateStoreImageTask](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html).
  ///
  /// To copy an AMI from one Region to another, specify the source Region using the **SourceRegion** parameter, and specify the destination Region using its endpoint. Copies of encrypted backing snapshots for the AMI are encrypted. Copies of unencrypted backing snapshots remain unencrypted, unless you set `Encrypted` during the copy operation. You cannot create an unencrypted copy of an encrypted backing snapshot.
  ///
  /// To copy an AMI from a Region to an Outpost, specify the source Region using the **SourceRegion** parameter, and specify the ARN of the destination Outpost using **DestinationOutpostArn**. Backing snapshots copied to an Outpost are encrypted by default using the default encryption key for the Region, or a different key that you specify in the request using **KmsKeyId**. Outposts do not support unencrypted snapshots. For more information, [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami) in the _Amazon EC2 User Guide_.
  ///
  /// For more information about the prerequisites and limits when copying an AMI, see [Copy an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CopyImageResult> copyImage(
    CopyImageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CopyImageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3. You can copy a snapshot within the same Region, from one Region to another, or from a Region to an Outpost. You can't copy a snapshot from an Outpost to a Region, from one Outpost to another, or within the same Outpost.
  ///
  /// You can use the snapshot to create EBS volumes or Amazon Machine Images (AMIs).
  ///
  /// When copying snapshots to a Region, copies of encrypted EBS snapshots remain encrypted. Copies of unencrypted snapshots remain unencrypted, unless you enable encryption for the snapshot copy operation. By default, encrypted snapshot copies use the default Key Management Service (KMS) KMS key; however, you can specify a different KMS key. To copy an encrypted snapshot that has been shared from another account, you must have permissions for the KMS key used to encrypt the snapshot.
  ///
  /// Snapshots copied to an Outpost are encrypted by default using the default encryption key for the Region, or a different key that you specify in the request using **KmsKeyId**. Outposts do not support unencrypted snapshots. For more information, [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Snapshots created by copying another snapshot have an arbitrary volume ID that should not be used for any purpose.
  ///
  /// For more information, see [Copy an Amazon EBS snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<CopySnapshotResult> copySnapshot(
    CopySnapshotRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CopySnapshotOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new Capacity Reservation with the specified attributes.
  ///
  /// Capacity Reservations enable you to reserve capacity for your Amazon EC2 instances in a specific Availability Zone for any duration. This gives you the flexibility to selectively add capacity reservations and still get the Regional RI discounts for that usage. By creating Capacity Reservations, you ensure that you always have access to Amazon EC2 capacity when you need it, for as long as you need it. For more information, see [Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html) in the _Amazon EC2 User Guide_.
  ///
  /// Your request to create a Capacity Reservation could fail if Amazon EC2 does not have sufficient capacity to fulfill the request. If your request fails due to Amazon EC2 capacity constraints, either try again at a later time, try in a different Availability Zone, or request a smaller capacity reservation. If your application is flexible across instance types and sizes, try to create a Capacity Reservation with different instance attributes.
  ///
  /// Your request could also fail if the requested quantity exceeds your On-Demand Instance limit for the selected instance type. If your request fails due to limit constraints, increase your On-Demand Instance limit for the required instance type and try again. For more information about increasing your instance limits, see [Amazon EC2 Service Quotas](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CreateCapacityReservationResult>
      createCapacityReservation(
    CreateCapacityReservationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateCapacityReservationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Capacity Reservation Fleet. For more information, see [Create a Capacity Reservation Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/work-with-cr-fleets.html#create-crfleet) in the Amazon EC2 User Guide.
  _i3.SmithyOperation<CreateCapacityReservationFleetResult>
      createCapacityReservationFleet(
    CreateCapacityReservationFleetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateCapacityReservationFleetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a carrier gateway. For more information about carrier gateways, see [Carrier gateways](https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#wavelength-carrier-gateway) in the _Amazon Web Services Wavelength Developer Guide_.
  _i3.SmithyOperation<CreateCarrierGatewayResult> createCarrierGateway(
    CreateCarrierGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateCarrierGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Client VPN endpoint. A Client VPN endpoint is the resource you create and configure to enable and manage client VPN sessions. It is the destination endpoint at which all client VPN sessions are terminated.
  _i3.SmithyOperation<CreateClientVpnEndpointResult> createClientVpnEndpoint(
    CreateClientVpnEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateClientVpnEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds a route to a network to a Client VPN endpoint. Each Client VPN endpoint has a route table that describes the available destination network routes. Each route in the route table specifies the path for traﬃc to speciﬁc resources or networks.
  _i3.SmithyOperation<CreateClientVpnRouteResult> createClientVpnRoute(
    CreateClientVpnRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateClientVpnRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a range of customer-owned IP addresses.
  _i3.SmithyOperation<CreateCoipCidrResult> createCoipCidr(
    CreateCoipCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateCoipCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a pool of customer-owned IP (CoIP) addresses.
  _i3.SmithyOperation<CreateCoipPoolResult> createCoipPool(
    CreateCoipPoolRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateCoipPoolOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Provides information to Amazon Web Services about your customer gateway device. The customer gateway device is the appliance at your end of the VPN connection. You must provide the IP address of the customer gateway device’s external interface. The IP address must be static and can be behind a device performing network address translation (NAT).
  ///
  /// For devices that use Border Gateway Protocol (BGP), you can also provide the device's BGP Autonomous System Number (ASN). You can use an existing ASN assigned to your network. If you don't have an ASN already, you can use a private ASN. For more information, see [Customer gateway options for your Site-to-Site VPN connection](https://docs.aws.amazon.com/vpn/latest/s2svpn/cgw-options.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  ///
  /// To create more than one customer gateway with the same VPN type, IP address, and BGP ASN, specify a unique device name for each customer gateway. An identical request returns information about the existing customer gateway; it doesn't create a new customer gateway.
  _i3.SmithyOperation<CreateCustomerGatewayResult> createCustomerGateway(
    CreateCustomerGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateCustomerGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a default subnet with a size `/20` IPv4 CIDR block in the specified Availability Zone in your default VPC. You can have only one default subnet per Availability Zone. For more information, see [Create a default subnet](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#create-default-subnet) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<CreateDefaultSubnetResult> createDefaultSubnet(
    CreateDefaultSubnetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateDefaultSubnetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a default VPC with a size `/16` IPv4 CIDR block and a default subnet in each Availability Zone. For more information about the components of a default VPC, see [Default VPCs](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html) in the _Amazon VPC User Guide_. You cannot specify the components of the default VPC yourself.
  ///
  /// If you deleted your previous default VPC, you can create a default VPC. You cannot have more than one default VPC per Region.
  _i3.SmithyOperation<CreateDefaultVpcResult> createDefaultVpc(
    CreateDefaultVpcRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateDefaultVpcOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a set of DHCP options for your VPC. After creating the set, you must associate it with the VPC, causing all existing and new instances that you launch in the VPC to use this set of DHCP options. The following are the individual DHCP options you can specify. For more information about the options, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  ///
  /// *   `domain-name-servers` \- The IP addresses of up to four domain name servers, or AmazonProvidedDNS. The default DHCP option set specifies AmazonProvidedDNS. If specifying more than one domain name server, specify the IP addresses in a single parameter, separated by commas. To have your instance receive a custom DNS hostname as specified in `domain-name`, you must set `domain-name-servers` to a custom DNS server.
  ///
  /// *   `domain-name` \- If you're using AmazonProvidedDNS in `us-east-1`, specify `ec2.internal`. If you're using AmazonProvidedDNS in another Region, specify `region.compute.internal` (for example, `ap-northeast-1.compute.internal`). Otherwise, specify a domain name (for example, `ExampleCompany.com`). This value is used to complete unqualified DNS hostnames. **Important**: Some Linux operating systems accept multiple domain names separated by spaces. However, Windows and other Linux operating systems treat the value as a single domain, which results in unexpected behavior. If your DHCP options set is associated with a VPC that has instances with multiple operating systems, specify only one domain name.
  ///
  /// *   `ntp-servers` \- The IP addresses of up to four Network Time Protocol (NTP) servers.
  ///
  /// *   `netbios-name-servers` \- The IP addresses of up to four NetBIOS name servers.
  ///
  /// *   `netbios-node-type` \- The NetBIOS node type (1, 2, 4, or 8). We recommend that you specify 2 (broadcast and multicast are not currently supported). For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
  ///
  ///
  /// Your VPC automatically starts out with a set of DHCP options that includes only a DNS server that we provide (AmazonProvidedDNS). If you create a set of options, and if your VPC has an internet gateway, make sure to set the `domain-name-servers` option either to `AmazonProvidedDNS` or to a domain name server of your choice. For more information, see [DHCP options sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<CreateDhcpOptionsResult> createDhcpOptions(
    CreateDhcpOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateDhcpOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// \[IPv6 only\] Creates an egress-only internet gateway for your VPC. An egress-only internet gateway is used to enable outbound communication over IPv6 from instances in your VPC to the internet, and prevents hosts outside of your VPC from initiating an IPv6 connection with your instance.
  _i3.SmithyOperation<CreateEgressOnlyInternetGatewayResult>
      createEgressOnlyInternetGateway(
    CreateEgressOnlyInternetGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateEgressOnlyInternetGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an EC2 Fleet that contains the configuration information for On-Demand Instances and Spot Instances. Instances are launched immediately if there is available capacity.
  ///
  /// A single EC2 Fleet can include multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.
  ///
  /// For more information, see [EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CreateFleetResult> createFleet(
    CreateFleetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateFleetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates one or more flow logs to capture information about IP traffic for a specific network interface, subnet, or VPC.
  ///
  /// Flow log data for a monitored network interface is recorded as flow log records, which are log events consisting of fields that describe the traffic flow. For more information, see [Flow log records](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records) in the _Amazon Virtual Private Cloud User Guide_.
  ///
  /// When publishing to CloudWatch Logs, flow log records are published to a log group, and each network interface has a unique log stream in the log group. When publishing to Amazon S3, flow log records for all of the monitored network interfaces are published to a single log file object that is stored in the specified bucket.
  ///
  /// For more information, see [VPC Flow Logs](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html) in the _Amazon Virtual Private Cloud User Guide_.
  _i3.SmithyOperation<CreateFlowLogsResult> createFlowLogs(
    CreateFlowLogsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateFlowLogsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP).
  ///
  /// The create operation is asynchronous. To verify that the AFI is ready for use, check the output logs.
  ///
  /// An AFI contains the FPGA bitstream that is ready to download to an FPGA. You can securely deploy an AFI on multiple FPGA-accelerated instances. For more information, see the [Amazon Web Services FPGA Hardware Development Kit](https://github.com/aws/aws-fpga/).
  _i3.SmithyOperation<CreateFpgaImageResult> createFpgaImage(
    CreateFpgaImageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateFpgaImageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped.
  ///
  /// If you customized your instance with instance store volumes or Amazon EBS volumes in addition to the root device volume, the new AMI contains block device mapping information for those volumes. When you launch an instance from this new AMI, the instance automatically launches with those additional volumes.
  ///
  /// For more information, see [Create an Amazon EBS-backed Linux AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<CreateImageResult> createImage(
    CreateImageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateImageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an EC2 Instance Connect Endpoint.
  ///
  /// An EC2 Instance Connect Endpoint allows you to connect to an instance, without requiring the instance to have a public IPv4 address. For more information, see [Connect to your instances without requiring a public IPv4 address using EC2 Instance Connect Endpoint](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect-Endpoint.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CreateInstanceConnectEndpointResult>
      createInstanceConnectEndpoint(
    CreateInstanceConnectEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateInstanceConnectEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an event window in which scheduled events for the associated Amazon EC2 instances can run.
  ///
  /// You can define either a set of time ranges or a cron expression when creating the event window, but not both. All event window times are in UTC.
  ///
  /// You can create up to 200 event windows per Amazon Web Services Region.
  ///
  /// When you create the event window, targets (instance IDs, Dedicated Host IDs, or tags) are not yet associated with it. To ensure that the event window can be used, you must associate one or more targets with it by using the AssociateInstanceEventWindow API.
  ///
  /// Event windows are applicable only for scheduled events that stop, reboot, or terminate instances.
  ///
  /// Event windows are _not_ applicable for:
  ///
  /// *   Expedited scheduled events and network maintenance events.
  ///
  /// *   Unscheduled maintenance such as AutoRecovery and unplanned reboots.
  ///
  ///
  /// For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CreateInstanceEventWindowResult>
      createInstanceEventWindow(
    CreateInstanceEventWindowRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateInstanceEventWindowOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Exports a running or stopped instance to an Amazon S3 bucket.
  ///
  /// For information about the prerequisites for your Amazon S3 bucket, supported operating systems, image formats, and known limitations for the types of instances you can export, see [Exporting an instance as a VM Using VM Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html) in the _VM Import/Export User Guide_.
  _i3.SmithyOperation<CreateInstanceExportTaskResult> createInstanceExportTask(
    CreateInstanceExportTaskRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateInstanceExportTaskOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an internet gateway for use with a VPC. After creating the internet gateway, you attach it to a VPC using AttachInternetGateway.
  ///
  /// For more information, see [Internet gateways](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<CreateInternetGatewayResult> createInternetGateway(
    CreateInternetGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateInternetGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Create an IPAM. Amazon VPC IP Address Manager (IPAM) is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across Amazon Web Services Regions and accounts throughout your Amazon Web Services Organization.
  ///
  /// For more information, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<CreateIpamResult> createIpam(
    CreateIpamRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateIpamOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Create an IP address pool for Amazon VPC IP Address Manager (IPAM). In IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools enable you to organize your IP addresses according to your routing and security needs. For example, if you have separate routing and security needs for development and production applications, you can create a pool for each.
  ///
  /// For more information, see [Create a top-level pool](https://docs.aws.amazon.com/vpc/latest/ipam/create-top-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<CreateIpamPoolResult> createIpamPool(
    CreateIpamPoolRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateIpamPoolOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an IPAM resource discovery. A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
  _i3.SmithyOperation<CreateIpamResourceDiscoveryResult>
      createIpamResourceDiscovery(
    CreateIpamResourceDiscoveryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateIpamResourceDiscoveryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Create an IPAM scope. In IPAM, a scope is the highest-level container within IPAM. An IPAM contains two default scopes. Each scope represents the IP space for a single network. The private scope is intended for all private IP address space. The public scope is intended for all public IP address space. Scopes enable you to reuse IP addresses across multiple unconnected networks without causing IP address overlap or conflict.
  ///
  /// For more information, see [Add a scope](https://docs.aws.amazon.com/vpc/latest/ipam/add-scope-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<CreateIpamScopeResult> createIpamScope(
    CreateIpamScopeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateIpamScopeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an ED25519 or 2048-bit RSA key pair with the specified name and in the specified PEM or PPK format. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key or an unencrypted PPK formatted private key for use with PuTTY. If a key with the specified name already exists, Amazon EC2 returns an error.
  ///
  /// The key pair returned to you is available only in the Amazon Web Services Region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any Region using ImportKeyPair.
  ///
  /// You can have up to 5,000 key pairs per Amazon Web Services Region.
  ///
  /// For more information, see [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<KeyPair> createKeyPair(
    CreateKeyPairRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateKeyPairOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a launch template.
  ///
  /// A launch template contains the parameters to launch an instance. When you launch an instance using RunInstances, you can specify a launch template instead of providing the launch parameters in the request. For more information, see [Launch an instance from a launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// If you want to clone an existing launch template as the basis for creating a new launch template, you can use the Amazon EC2 console. The API, SDKs, and CLI do not support cloning a template. For more information, see [Create a launch template from an existing launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template-from-existing-launch-template) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<CreateLaunchTemplateResult> createLaunchTemplate(
    CreateLaunchTemplateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateLaunchTemplateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a new version of a launch template. You can specify an existing version of launch template from which to base the new version.
  ///
  /// Launch template versions are numbered in the order in which they are created. You cannot specify, change, or replace the numbering of launch template versions.
  ///
  /// Launch templates are immutable; after you create a launch template, you can't modify it. Instead, you can create a new version of the launch template that includes any changes you require.
  ///
  /// For more information, see [Modify a launch template (manage launch template versions)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#manage-launch-template-versions) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<CreateLaunchTemplateVersionResult>
      createLaunchTemplateVersion(
    CreateLaunchTemplateVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateLaunchTemplateVersionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a static route for the specified local gateway route table. You must specify one of the following targets:
  ///
  /// *   `LocalGatewayVirtualInterfaceGroupId`
  ///
  /// *   `NetworkInterfaceId`
  _i3.SmithyOperation<CreateLocalGatewayRouteResult> createLocalGatewayRoute(
    CreateLocalGatewayRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateLocalGatewayRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a local gateway route table.
  _i3.SmithyOperation<CreateLocalGatewayRouteTableResult>
      createLocalGatewayRouteTable(
    CreateLocalGatewayRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateLocalGatewayRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a local gateway route table virtual interface group association.
  _i3.SmithyOperation<
          CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult>
      createLocalGatewayRouteTableVirtualInterfaceGroupAssociation(
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Associates the specified VPC with the specified local gateway route table.
  _i3.SmithyOperation<CreateLocalGatewayRouteTableVpcAssociationResult>
      createLocalGatewayRouteTableVpcAssociation(
    CreateLocalGatewayRouteTableVpcAssociationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateLocalGatewayRouteTableVpcAssociationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a managed prefix list. You can specify one or more entries for the prefix list. Each entry consists of a CIDR block and an optional description.
  _i3.SmithyOperation<CreateManagedPrefixListResult> createManagedPrefixList(
    CreateManagedPrefixListRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateManagedPrefixListOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a NAT gateway in the specified subnet. This action creates a network interface in the specified subnet with a private IP address from the IP address range of the subnet. You can create either a public NAT gateway or a private NAT gateway.
  ///
  /// With a public NAT gateway, internet-bound traffic from a private subnet can be routed to the NAT gateway, so that instances in a private subnet can connect to the internet.
  ///
  /// With a private NAT gateway, private communication is routed across VPCs and on-premises networks through a transit gateway or virtual private gateway. Common use cases include running large workloads behind a small pool of allowlisted IPv4 addresses, preserving private IPv4 addresses, and communicating between overlapping networks.
  ///
  /// For more information, see [NAT gateways](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<CreateNatGatewayResult> createNatGateway(
    CreateNatGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateNatGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a network ACL in a VPC. Network ACLs provide an optional layer of security (in addition to security groups) for the instances in your VPC.
  ///
  /// For more information, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<CreateNetworkAclResult> createNetworkAcl(
    CreateNetworkAclRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateNetworkAclOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an entry (a rule) in a network ACL with the specified rule number. Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining whether a packet should be allowed in or out of a subnet associated with the ACL, we process the entries in the ACL according to the rule numbers, in ascending order. Each network ACL has a set of ingress rules and a separate set of egress rules.
  ///
  /// We recommend that you leave room between the rule numbers (for example, 100, 110, 120, ...), and not number them one right after the other (for example, 101, 102, 103, ...). This makes it easier to add a rule between existing ones without having to renumber the rules.
  ///
  /// After you add an entry, you can't modify it; you must either replace it, or create an entry and delete the old one.
  ///
  /// For more information about network ACLs, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<void> createNetworkAclEntry(
    CreateNetworkAclEntryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateNetworkAclEntryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Network Access Scope.
  ///
  /// Amazon Web Services Network Access Analyzer enables cloud networking and cloud operations teams to verify that their networks on Amazon Web Services conform to their network security and governance objectives. For more information, see the [Amazon Web Services Network Access Analyzer Guide](https://docs.aws.amazon.com/vpc/latest/network-access-analyzer/).
  _i3.SmithyOperation<CreateNetworkInsightsAccessScopeResult>
      createNetworkInsightsAccessScope(
    CreateNetworkInsightsAccessScopeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateNetworkInsightsAccessScopeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a path to analyze for reachability.
  ///
  /// Reachability Analyzer enables you to analyze and debug network reachability between two resources in your virtual private cloud (VPC). For more information, see the [Reachability Analyzer Guide](https://docs.aws.amazon.com/vpc/latest/reachability/).
  _i3.SmithyOperation<CreateNetworkInsightsPathResult>
      createNetworkInsightsPath(
    CreateNetworkInsightsPathRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateNetworkInsightsPathOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a network interface in the specified subnet.
  ///
  /// The number of IP addresses you can assign to a network interface varies by instance type. For more information, see [IP Addresses Per ENI Per Instance Type](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) in the _Amazon Virtual Private Cloud User Guide_.
  ///
  /// For more information about network interfaces, see [Elastic network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<CreateNetworkInterfaceResult> createNetworkInterface(
    CreateNetworkInterfaceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateNetworkInterfaceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Grants an Amazon Web Services-authorized account permission to attach the specified network interface to an instance in their account.
  ///
  /// You can grant permission to a single Amazon Web Services account only, and only one account at a time.
  _i3.SmithyOperation<CreateNetworkInterfacePermissionResult>
      createNetworkInterfacePermission(
    CreateNetworkInterfacePermissionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateNetworkInterfacePermissionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a placement group in which to launch instances. The strategy of the placement group determines how the instances are organized within the group.
  ///
  /// A `cluster` placement group is a logical grouping of instances within a single Availability Zone that benefit from low network latency, high network throughput. A `spread` placement group places instances on distinct hardware. A `partition` placement group places groups of instances in different partitions, where instances in one partition do not share the same hardware with instances in another partition.
  ///
  /// For more information, see [Placement groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CreatePlacementGroupResult> createPlacementGroup(
    CreatePlacementGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreatePlacementGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a public IPv4 address pool. A public IPv4 pool is an EC2 IP address pool required for the public IPv4 CIDRs that you own and bring to Amazon Web Services to manage with IPAM. IPv6 addresses you bring to Amazon Web Services, however, use IPAM pools only. To monitor the status of pool creation, use [DescribePublicIpv4Pools](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribePublicIpv4Pools.html).
  _i3.SmithyOperation<CreatePublicIpv4PoolResult> createPublicIpv4Pool(
    CreatePublicIpv4PoolRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreatePublicIpv4PoolOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Replaces the EBS-backed root volume for a `running` instance with a new volume that is restored to the original root volume's launch state, that is restored to a specific snapshot taken from the original root volume, or that is restored from an AMI that has the same key characteristics as that of the instance.
  ///
  /// For more information, see [Replace a root volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<CreateReplaceRootVolumeTaskResult>
      createReplaceRootVolumeTask(
    CreateReplaceRootVolumeTaskRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateReplaceRootVolumeTaskOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace. You can submit one Standard Reserved Instance listing at a time. To get a list of your Standard Reserved Instances, you can use the DescribeReservedInstances operation.
  ///
  /// Only Standard Reserved Instances can be sold in the Reserved Instance Marketplace. Convertible Reserved Instances cannot be sold.
  ///
  /// The Reserved Instance Marketplace matches sellers who want to resell Standard Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.
  ///
  /// To sell your Standard Reserved Instances, you must first register as a seller in the Reserved Instance Marketplace. After completing the registration process, you can create a Reserved Instance Marketplace listing of some or all of your Standard Reserved Instances, and specify the upfront price to receive for them. Your Standard Reserved Instance listings then become available for purchase. To view the details of your Standard Reserved Instance listing, you can use the DescribeReservedInstancesListings operation.
  ///
  /// For more information, see [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CreateReservedInstancesListingResult>
      createReservedInstancesListing(
    CreateReservedInstancesListingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateReservedInstancesListingOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Starts a task that restores an AMI from an Amazon S3 object that was previously created by using [CreateStoreImageTask](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html).
  ///
  /// To use this API, you must have the required permissions. For more information, see [Permissions for storing and restoring AMIs using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions) in the _Amazon EC2 User Guide_.
  ///
  /// For more information, see [Store and restore an AMI using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CreateRestoreImageTaskResult> createRestoreImageTask(
    CreateRestoreImageTaskRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateRestoreImageTaskOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a route in a route table within a VPC.
  ///
  /// You must specify either a destination CIDR block or a prefix list ID. You must also specify exactly one of the resources from the parameter list.
  ///
  /// When determining how to route traffic, we use the route with the most specific match. For example, traffic is destined for the IPv4 address `192.0.2.3`, and the route table includes the following two IPv4 routes:
  ///
  /// *   `192.0.2.0/24` (goes to some target A)
  ///
  /// *   `192.0.2.0/28` (goes to some target B)
  ///
  ///
  /// Both routes apply to the traffic destined for `192.0.2.3`. However, the second route in the list covers a smaller number of IP addresses and is therefore more specific, so we use that route to determine where to target the traffic.
  ///
  /// For more information about route tables, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<CreateRouteResult> createRoute(
    CreateRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet.
  ///
  /// For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<CreateRouteTableResult> createRouteTable(
    CreateRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a security group.
  ///
  /// A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. For more information, see [Amazon EC2 security groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html) in the _Amazon Elastic Compute Cloud User Guide_ and [Security groups for your VPC](https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html) in the _Amazon Virtual Private Cloud User Guide_.
  ///
  /// When you create a security group, you specify a friendly name of your choice. You can't have two security groups for the same VPC with the same name.
  ///
  /// You have a default security group for use in your VPC. If you don't specify a security group when you launch an instance, the instance is launched into the appropriate default security group. A default security group includes a default rule that grants instances unrestricted network access to each other.
  ///
  /// You can add or remove rules from your security groups using AuthorizeSecurityGroupIngress, AuthorizeSecurityGroupEgress, RevokeSecurityGroupIngress, and RevokeSecurityGroupEgress.
  ///
  /// For more information about VPC security group limits, see [Amazon VPC Limits](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).
  _i3.SmithyOperation<CreateSecurityGroupResult> createSecurityGroup(
    CreateSecurityGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateSecurityGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a snapshot of an EBS volume and stores it in Amazon S3. You can use snapshots for backups, to make copies of EBS volumes, and to save data before shutting down an instance.
  ///
  /// You can create snapshots of volumes in a Region and volumes on an Outpost. If you create a snapshot of a volume in a Region, the snapshot must be stored in the same Region as the volume. If you create a snapshot of a volume on an Outpost, the snapshot can be stored on the same Outpost as the volume, or in the Region for that Outpost.
  ///
  /// When a snapshot is created, any Amazon Web Services Marketplace product codes that are associated with the source volume are propagated to the snapshot.
  ///
  /// You can take a snapshot of an attached volume that is in use. However, snapshots only capture data that has been written to your Amazon EBS volume at the time the snapshot command is issued; this might exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the volume long enough to take a snapshot, your snapshot should be complete. However, if you cannot pause all file writes to the volume, you should unmount the volume from within the instance, issue the snapshot command, and then remount the volume to ensure a consistent and complete snapshot. You may remount and use your volume while the snapshot status is `pending`.
  ///
  /// When you create a snapshot for an EBS volume that serves as a root device, we recommend that you stop the instance before taking the snapshot.
  ///
  /// Snapshots that are taken from encrypted volumes are automatically encrypted. Volumes that are created from encrypted snapshots are also automatically encrypted. Your encrypted volumes and any associated snapshots always remain protected.
  ///
  /// You can tag your snapshots during creation. For more information, see [Tag your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// For more information, see [Amazon Elastic Block Store](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html) and [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<Snapshot> createSnapshot(
    CreateSnapshotRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateSnapshotOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates crash-consistent snapshots of multiple EBS volumes and stores the data in S3. Volumes are chosen by specifying an instance. Any attached volumes will produce one snapshot each that is crash-consistent across the instance.
  ///
  /// You can include all of the volumes currently attached to the instance, or you can exclude the root volume or specific data (non-root) volumes from the multi-volume snapshot set.
  ///
  /// You can create multi-volume snapshots of instances in a Region and instances on an Outpost. If you create snapshots from an instance in a Region, the snapshots must be stored in the same Region as the instance. If you create snapshots from an instance on an Outpost, the snapshots can be stored on the same Outpost as the instance, or in the Region for that Outpost.
  _i3.SmithyOperation<CreateSnapshotsResult> createSnapshots(
    CreateSnapshotsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateSnapshotsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs. You can create one data feed per Amazon Web Services account. For more information, see [Spot Instance data feed](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html) in the _Amazon EC2 User Guide for Linux Instances_.
  _i3.SmithyOperation<CreateSpotDatafeedSubscriptionResult>
      createSpotDatafeedSubscription(
    CreateSpotDatafeedSubscriptionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateSpotDatafeedSubscriptionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Stores an AMI as a single object in an Amazon S3 bucket.
  ///
  /// To use this API, you must have the required permissions. For more information, see [Permissions for storing and restoring AMIs using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions) in the _Amazon EC2 User Guide_.
  ///
  /// For more information, see [Store and restore an AMI using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CreateStoreImageTaskResult> createStoreImageTask(
    CreateStoreImageTaskRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateStoreImageTaskOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a subnet in the specified VPC. For an IPv4 only subnet, specify an IPv4 CIDR block. If the VPC has an IPv6 CIDR block, you can create an IPv6 only subnet or a dual stack subnet instead. For an IPv6 only subnet, specify an IPv6 CIDR block. For a dual stack subnet, specify both an IPv4 CIDR block and an IPv6 CIDR block.
  ///
  /// A subnet CIDR block must not overlap the CIDR block of an existing subnet in the VPC. After you create a subnet, you can't change its CIDR block.
  ///
  /// The allowed size for an IPv4 subnet is between a /28 netmask (16 IP addresses) and a /16 netmask (65,536 IP addresses). Amazon Web Services reserves both the first four and the last IPv4 address in each subnet's CIDR block. They're not available for your use.
  ///
  /// If you've associated an IPv6 CIDR block with your VPC, you can associate an IPv6 CIDR block with a subnet when you create it. The allowed block size for an IPv6 subnet is a /64 netmask.
  ///
  /// If you add more than one subnet to a VPC, they're set up in a star topology with a logical router in the middle.
  ///
  /// When you stop an instance in a subnet, it retains its private IPv4 address. It's therefore possible to have a subnet with no running instances (they're all stopped), but no remaining IP addresses available.
  ///
  /// For more information, see [Subnets](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<CreateSubnetResult> createSubnet(
    CreateSubnetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateSubnetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a subnet CIDR reservation. For more information, see [Subnet CIDR reservations](https://docs.aws.amazon.com/vpc/latest/userguide/subnet-cidr-reservation.html) in the _Amazon Virtual Private Cloud User Guide_ and [Assign prefixes to network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<CreateSubnetCidrReservationResult>
      createSubnetCidrReservation(
    CreateSubnetCidrReservationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateSubnetCidrReservationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or overwrites only the specified tags for the specified Amazon EC2 resource or resources. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique per resource.
  ///
  /// For more information about tags, see [Tag your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the _Amazon Elastic Compute Cloud User Guide_. For more information about creating IAM policies that control users' access to resources based on tags, see [Supported resource-level permissions for Amazon EC2 API actions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<void> createTags(
    CreateTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Traffic Mirror filter.
  ///
  /// A Traffic Mirror filter is a set of rules that defines the traffic to mirror.
  ///
  /// By default, no traffic is mirrored. To mirror traffic, use [CreateTrafficMirrorFilterRule](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilterRule.htm) to add Traffic Mirror rules to the filter. The rules you add define what traffic gets mirrored. You can also use [ModifyTrafficMirrorFilterNetworkServices](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTrafficMirrorFilterNetworkServices.html) to mirror supported network services.
  _i3.SmithyOperation<CreateTrafficMirrorFilterResult>
      createTrafficMirrorFilter(
    CreateTrafficMirrorFilterRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTrafficMirrorFilterOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Traffic Mirror filter rule.
  ///
  /// A Traffic Mirror rule defines the Traffic Mirror source traffic to mirror.
  ///
  /// You need the Traffic Mirror filter ID when you create the rule.
  _i3.SmithyOperation<CreateTrafficMirrorFilterRuleResult>
      createTrafficMirrorFilterRule(
    CreateTrafficMirrorFilterRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTrafficMirrorFilterRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Traffic Mirror session.
  ///
  /// A Traffic Mirror session actively copies packets from a Traffic Mirror source to a Traffic Mirror target. Create a filter, and then assign it to the session to define a subset of the traffic to mirror, for example all TCP traffic.
  ///
  /// The Traffic Mirror source and the Traffic Mirror target (monitoring appliances) can be in the same VPC, or in a different VPC connected via VPC peering or a transit gateway.
  ///
  /// By default, no traffic is mirrored. Use [CreateTrafficMirrorFilter](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilter.htm) to create filter rules that specify the traffic to mirror.
  _i3.SmithyOperation<CreateTrafficMirrorSessionResult>
      createTrafficMirrorSession(
    CreateTrafficMirrorSessionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTrafficMirrorSessionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a target for your Traffic Mirror session.
  ///
  /// A Traffic Mirror target is the destination for mirrored traffic. The Traffic Mirror source and the Traffic Mirror target (monitoring appliances) can be in the same VPC, or in different VPCs connected via VPC peering or a transit gateway.
  ///
  /// A Traffic Mirror target can be a network interface, a Network Load Balancer, or a Gateway Load Balancer endpoint.
  ///
  /// To use the target in a Traffic Mirror session, use [CreateTrafficMirrorSession](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorSession.htm).
  _i3.SmithyOperation<CreateTrafficMirrorTargetResult>
      createTrafficMirrorTarget(
    CreateTrafficMirrorTargetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTrafficMirrorTargetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a transit gateway.
  ///
  /// You can use a transit gateway to interconnect your virtual private clouds (VPC) and on-premises networks. After the transit gateway enters the `available` state, you can attach your VPCs and VPN connections to the transit gateway.
  ///
  /// To attach your VPCs, use CreateTransitGatewayVpcAttachment.
  ///
  /// To attach a VPN connection, use CreateCustomerGateway to create a customer gateway and specify the ID of the customer gateway and the ID of the transit gateway in a call to CreateVpnConnection.
  ///
  /// When you create a transit gateway, we create a default transit gateway route table and use it as the default association route table and the default propagation route table. You can use CreateTransitGatewayRouteTable to create additional transit gateway route tables. If you disable automatic route propagation, we do not create a default transit gateway route table. You can use EnableTransitGatewayRouteTablePropagation to propagate routes from a resource attachment to a transit gateway route table. If you disable automatic associations, you can use AssociateTransitGatewayRouteTable to associate a resource attachment with a transit gateway route table.
  _i3.SmithyOperation<CreateTransitGatewayResult> createTransitGateway(
    CreateTransitGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Connect attachment from a specified transit gateway attachment. A Connect attachment is a GRE-based tunnel attachment that you can use to establish a connection between a transit gateway and an appliance.
  ///
  /// A Connect attachment uses an existing VPC or Amazon Web Services Direct Connect attachment as the underlying transport mechanism.
  _i3.SmithyOperation<CreateTransitGatewayConnectResult>
      createTransitGatewayConnect(
    CreateTransitGatewayConnectRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayConnectOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Connect peer for a specified transit gateway Connect attachment between a transit gateway and an appliance.
  ///
  /// The peer address and transit gateway address must be the same IP address family (IPv4 or IPv6).
  ///
  /// For more information, see [Connect peers](https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html#tgw-connect-peer) in the _Transit Gateways Guide_.
  _i3.SmithyOperation<CreateTransitGatewayConnectPeerResult>
      createTransitGatewayConnectPeer(
    CreateTransitGatewayConnectPeerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayConnectPeerOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a multicast domain using the specified transit gateway.
  ///
  /// The transit gateway must be in the available state before you create a domain. Use [DescribeTransitGateways](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html) to see the state of transit gateway.
  _i3.SmithyOperation<CreateTransitGatewayMulticastDomainResult>
      createTransitGatewayMulticastDomain(
    CreateTransitGatewayMulticastDomainRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayMulticastDomainOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Requests a transit gateway peering attachment between the specified transit gateway (requester) and a peer transit gateway (accepter). The peer transit gateway can be in your account or a different Amazon Web Services account.
  ///
  /// After you create the peering attachment, the owner of the accepter transit gateway must accept the attachment request.
  _i3.SmithyOperation<CreateTransitGatewayPeeringAttachmentResult>
      createTransitGatewayPeeringAttachment(
    CreateTransitGatewayPeeringAttachmentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayPeeringAttachmentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a transit gateway policy table.
  _i3.SmithyOperation<CreateTransitGatewayPolicyTableResult>
      createTransitGatewayPolicyTable(
    CreateTransitGatewayPolicyTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayPolicyTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a reference (route) to a prefix list in a specified transit gateway route table.
  _i3.SmithyOperation<CreateTransitGatewayPrefixListReferenceResult>
      createTransitGatewayPrefixListReference(
    CreateTransitGatewayPrefixListReferenceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayPrefixListReferenceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a static route for the specified transit gateway route table.
  _i3.SmithyOperation<CreateTransitGatewayRouteResult>
      createTransitGatewayRoute(
    CreateTransitGatewayRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a route table for the specified transit gateway.
  _i3.SmithyOperation<CreateTransitGatewayRouteTableResult>
      createTransitGatewayRouteTable(
    CreateTransitGatewayRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Advertises a new transit gateway route table.
  _i3.SmithyOperation<CreateTransitGatewayRouteTableAnnouncementResult>
      createTransitGatewayRouteTableAnnouncement(
    CreateTransitGatewayRouteTableAnnouncementRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayRouteTableAnnouncementOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Attaches the specified VPC to the specified transit gateway.
  ///
  /// If you attach a VPC with a CIDR range that overlaps the CIDR range of a VPC that is already attached, the new VPC CIDR range is not propagated to the default propagation route table.
  ///
  /// To send VPC traffic to an attached transit gateway, add a route to the VPC route table using CreateRoute.
  _i3.SmithyOperation<CreateTransitGatewayVpcAttachmentResult>
      createTransitGatewayVpcAttachment(
    CreateTransitGatewayVpcAttachmentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateTransitGatewayVpcAttachmentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// An Amazon Web Services Verified Access endpoint is where you define your application along with an optional endpoint-level access policy.
  _i3.SmithyOperation<CreateVerifiedAccessEndpointResult>
      createVerifiedAccessEndpoint(
    CreateVerifiedAccessEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVerifiedAccessEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// An Amazon Web Services Verified Access group is a collection of Amazon Web Services Verified Access endpoints who's associated applications have similar security requirements. Each instance within a Verified Access group shares an Verified Access policy. For example, you can group all Verified Access instances associated with "sales" applications together and use one common Verified Access policy.
  _i3.SmithyOperation<CreateVerifiedAccessGroupResult>
      createVerifiedAccessGroup(
    CreateVerifiedAccessGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVerifiedAccessGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// An Amazon Web Services Verified Access instance is a regional entity that evaluates application requests and grants access only when your security requirements are met.
  _i3.SmithyOperation<CreateVerifiedAccessInstanceResult>
      createVerifiedAccessInstance(
    CreateVerifiedAccessInstanceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVerifiedAccessInstanceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// A trust provider is a third-party entity that creates, maintains, and manages identity information for users and devices. When an application request is made, the identity information sent by the trust provider is evaluated by Verified Access before allowing or denying the application request.
  _i3.SmithyOperation<CreateVerifiedAccessTrustProviderResult>
      createVerifiedAccessTrustProvider(
    CreateVerifiedAccessTrustProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVerifiedAccessTrustProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an EBS volume that can be attached to an instance in the same Availability Zone.
  ///
  /// You can create a new empty volume or restore a volume from an EBS snapshot. Any Amazon Web Services Marketplace product codes from the snapshot are propagated to the volume.
  ///
  /// You can create encrypted volumes. Encrypted volumes must be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are also automatically encrypted. For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// You can tag your volumes during creation. For more information, see [Tag your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// For more information, see [Create an Amazon EBS volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<Volume> createVolume(
    CreateVolumeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVolumeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a VPC with the specified CIDR blocks. For more information, see [IP addressing for your VPCs and subnets](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html) in the _Amazon VPC User Guide_.
  ///
  /// You can optionally request an IPv6 CIDR block for the VPC. You can request an Amazon-provided IPv6 CIDR block from Amazon's pool of IPv6 addresses, or an IPv6 CIDR block from an IPv6 address pool that you provisioned through bring your own IP addresses ([BYOIP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html)).
  ///
  /// By default, each instance that you launch in the VPC has the default DHCP options, which include only a default DNS server that we provide (AmazonProvidedDNS). For more information, see [DHCP option sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html) in the _Amazon VPC User Guide_.
  ///
  /// You can specify the instance tenancy value for the VPC when you create it. You can't change this value for the VPC after you create it. For more information, see [Dedicated Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<CreateVpcResult> createVpc(
    CreateVpcRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVpcOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a VPC endpoint. A VPC endpoint provides a private connection between the specified VPC and the specified endpoint service. You can use an endpoint service provided by Amazon Web Services, an Amazon Web Services Marketplace Partner, or another Amazon Web Services account. For more information, see the [Amazon Web Services PrivateLink User Guide](https://docs.aws.amazon.com/vpc/latest/privatelink/).
  _i3.SmithyOperation<CreateVpcEndpointResult> createVpcEndpoint(
    CreateVpcEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVpcEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a connection notification for a specified VPC endpoint or VPC endpoint service. A connection notification notifies you of specific endpoint events. You must create an SNS topic to receive notifications. For more information, see [Create a Topic](https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html) in the _Amazon Simple Notification Service Developer Guide_.
  ///
  /// You can create a connection notification for interface endpoints only.
  _i3.SmithyOperation<CreateVpcEndpointConnectionNotificationResult>
      createVpcEndpointConnectionNotification(
    CreateVpcEndpointConnectionNotificationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVpcEndpointConnectionNotificationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a VPC endpoint service to which service consumers (Amazon Web Services accounts, users, and IAM roles) can connect.
  ///
  /// Before you create an endpoint service, you must create one of the following for your service:
  ///
  /// *   A [Network Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/). Service consumers connect to your service using an interface endpoint.
  ///
  /// *   A [Gateway Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/). Service consumers connect to your service using a Gateway Load Balancer endpoint.
  ///
  ///
  /// If you set the private DNS name, you must prove that you own the private DNS domain name.
  ///
  /// For more information, see the [Amazon Web Services PrivateLink Guide](https://docs.aws.amazon.com/vpc/latest/privatelink/).
  _i3.SmithyOperation<CreateVpcEndpointServiceConfigurationResult>
      createVpcEndpointServiceConfiguration(
    CreateVpcEndpointServiceConfigurationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVpcEndpointServiceConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection. The accepter VPC can belong to another Amazon Web Services account and can be in a different Region to the requester VPC. The requester VPC and accepter VPC cannot have overlapping CIDR blocks.
  ///
  /// Limitations and rules apply to a VPC peering connection. For more information, see the [limitations](https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-basics.html#vpc-peering-limitations) section in the _VPC Peering Guide_.
  ///
  /// The owner of the accepter VPC must accept the peering request to activate the peering connection. The VPC peering connection request expires after 7 days, after which it cannot be accepted or rejected.
  ///
  /// If you create a VPC peering connection request between VPCs with overlapping CIDR blocks, the VPC peering connection has a status of `failed`.
  _i3.SmithyOperation<CreateVpcPeeringConnectionResult>
      createVpcPeeringConnection(
    CreateVpcPeeringConnectionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVpcPeeringConnectionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a VPN connection between an existing virtual private gateway or transit gateway and a customer gateway. The supported connection type is `ipsec.1`.
  ///
  /// The response includes information that you need to give to your network administrator to configure your customer gateway.
  ///
  /// We strongly recommend that you use HTTPS when calling this operation because the response contains sensitive cryptographic information for configuring your customer gateway device.
  ///
  /// If you decide to shut down your VPN connection for any reason and later create a new VPN connection, you must reconfigure your customer gateway with the new information returned from this call.
  ///
  /// This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.
  ///
  /// For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  _i3.SmithyOperation<CreateVpnConnectionResult> createVpnConnection(
    CreateVpnConnectionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVpnConnectionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.
  ///
  /// For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  _i3.SmithyOperation<void> createVpnConnectionRoute(
    CreateVpnConnectionRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVpnConnectionRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself.
  ///
  /// For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  _i3.SmithyOperation<CreateVpnGatewayResult> createVpnGateway(
    CreateVpnGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return CreateVpnGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a carrier gateway.
  ///
  /// If you do not delete the route that contains the carrier gateway as the Target, the route is a blackhole route. For information about how to delete a route, see [DeleteRoute](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteRoute.html).
  _i3.SmithyOperation<DeleteCarrierGatewayResult> deleteCarrierGateway(
    DeleteCarrierGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteCarrierGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Client VPN endpoint. You must disassociate all target networks before you can delete a Client VPN endpoint.
  _i3.SmithyOperation<DeleteClientVpnEndpointResult> deleteClientVpnEndpoint(
    DeleteClientVpnEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteClientVpnEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a route from a Client VPN endpoint. You can only delete routes that you manually added using the **CreateClientVpnRoute** action. You cannot delete routes that were automatically added when associating a subnet. To remove routes that have been automatically added, disassociate the target subnet from the Client VPN endpoint.
  _i3.SmithyOperation<DeleteClientVpnRouteResult> deleteClientVpnRoute(
    DeleteClientVpnRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteClientVpnRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a range of customer-owned IP addresses.
  _i3.SmithyOperation<DeleteCoipCidrResult> deleteCoipCidr(
    DeleteCoipCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteCoipCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a pool of customer-owned IP (CoIP) addresses.
  _i3.SmithyOperation<DeleteCoipPoolResult> deleteCoipPool(
    DeleteCoipPoolRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteCoipPoolOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified customer gateway. You must delete the VPN connection before you can delete the customer gateway.
  _i3.SmithyOperation<void> deleteCustomerGateway(
    DeleteCustomerGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteCustomerGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified set of DHCP options. You must disassociate the set of DHCP options before you can delete it. You can disassociate the set of DHCP options by associating either a new set of options or the default set of options with the VPC.
  _i3.SmithyOperation<void> deleteDhcpOptions(
    DeleteDhcpOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteDhcpOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes an egress-only internet gateway.
  _i3.SmithyOperation<DeleteEgressOnlyInternetGatewayResult>
      deleteEgressOnlyInternetGateway(
    DeleteEgressOnlyInternetGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteEgressOnlyInternetGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified EC2 Fleets.
  ///
  /// After you delete an EC2 Fleet, it launches no new instances.
  ///
  /// You must also specify whether a deleted EC2 Fleet should terminate its instances. If you choose to terminate the instances, the EC2 Fleet enters the `deleted_terminating` state. Otherwise, the EC2 Fleet enters the `deleted_running` state, and the instances continue to run until they are interrupted or you terminate them manually.
  ///
  /// For `instant` fleets, EC2 Fleet must terminate the instances when the fleet is deleted. A deleted `instant` fleet with running instances is not supported.
  ///
  /// **Restrictions**
  ///
  /// *   You can delete up to 25 `instant` fleets in a single request. If you exceed this number, no `instant` fleets are deleted and an error is returned. There is no restriction on the number of fleets of type `maintain` or `request` that can be deleted in a single request.
  ///
  /// *   Up to 1000 instances can be terminated in a single request to delete `instant` fleets.
  ///
  ///
  /// For more information, see [Delete an EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#delete-fleet) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DeleteFleetsResult> deleteFleets(
    DeleteFleetsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteFleetsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes one or more flow logs.
  _i3.SmithyOperation<DeleteFlowLogsResult> deleteFlowLogs(
    DeleteFlowLogsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteFlowLogsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Amazon FPGA Image (AFI).
  _i3.SmithyOperation<DeleteFpgaImageResult> deleteFpgaImage(
    DeleteFpgaImageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteFpgaImageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified EC2 Instance Connect Endpoint.
  _i3.SmithyOperation<DeleteInstanceConnectEndpointResult>
      deleteInstanceConnectEndpoint(
    DeleteInstanceConnectEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteInstanceConnectEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified event window.
  ///
  /// For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DeleteInstanceEventWindowResult>
      deleteInstanceEventWindow(
    DeleteInstanceEventWindowRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteInstanceEventWindowOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified internet gateway. You must detach the internet gateway from the VPC before you can delete it.
  _i3.SmithyOperation<void> deleteInternetGateway(
    DeleteInternetGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteInternetGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Delete an IPAM. Deleting an IPAM removes all monitored data associated with the IPAM including the historical data for CIDRs.
  ///
  /// For more information, see [Delete an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/delete-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<DeleteIpamResult> deleteIpam(
    DeleteIpamRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteIpamOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Delete an IPAM pool.
  ///
  /// You cannot delete an IPAM pool if there are allocations in it or CIDRs provisioned to it. To release allocations, see [ReleaseIpamPoolAllocation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html). To deprovision pool CIDRs, see [DeprovisionIpamPoolCidr](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeprovisionIpamPoolCidr.html).
  ///
  /// For more information, see [Delete a pool](https://docs.aws.amazon.com/vpc/latest/ipam/delete-pool-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<DeleteIpamPoolResult> deleteIpamPool(
    DeleteIpamPoolRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteIpamPoolOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes an IPAM resource discovery. A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
  _i3.SmithyOperation<DeleteIpamResourceDiscoveryResult>
      deleteIpamResourceDiscovery(
    DeleteIpamResourceDiscoveryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteIpamResourceDiscoveryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Delete the scope for an IPAM. You cannot delete the default scopes.
  ///
  /// For more information, see [Delete a scope](https://docs.aws.amazon.com/vpc/latest/ipam/delete-scope-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<DeleteIpamScopeResult> deleteIpamScope(
    DeleteIpamScopeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteIpamScopeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified key pair, by removing the public key from Amazon EC2.
  _i3.SmithyOperation<DeleteKeyPairResult> deleteKeyPair(
    DeleteKeyPairRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteKeyPairOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a launch template. Deleting a launch template deletes all of its versions.
  _i3.SmithyOperation<DeleteLaunchTemplateResult> deleteLaunchTemplate(
    DeleteLaunchTemplateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteLaunchTemplateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes one or more versions of a launch template.
  ///
  /// You can't delete the default version of a launch template; you must first assign a different version as the default. If the default version is the only version for the launch template, you must delete the entire launch template using DeleteLaunchTemplate.
  ///
  /// You can delete up to 200 launch template versions in a single request. To delete more than 200 versions in a single request, use DeleteLaunchTemplate, which deletes the launch template and all of its versions.
  ///
  /// For more information, see [Delete a launch template version](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-launch-template-versions.html#delete-launch-template-version) in the _EC2 User Guide_.
  _i3.SmithyOperation<DeleteLaunchTemplateVersionsResult>
      deleteLaunchTemplateVersions(
    DeleteLaunchTemplateVersionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteLaunchTemplateVersionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified route from the specified local gateway route table.
  _i3.SmithyOperation<DeleteLocalGatewayRouteResult> deleteLocalGatewayRoute(
    DeleteLocalGatewayRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteLocalGatewayRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a local gateway route table.
  _i3.SmithyOperation<DeleteLocalGatewayRouteTableResult>
      deleteLocalGatewayRouteTable(
    DeleteLocalGatewayRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteLocalGatewayRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a local gateway route table virtual interface group association.
  _i3.SmithyOperation<
          DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult>
      deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation(
    DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified association between a VPC and local gateway route table.
  _i3.SmithyOperation<DeleteLocalGatewayRouteTableVpcAssociationResult>
      deleteLocalGatewayRouteTableVpcAssociation(
    DeleteLocalGatewayRouteTableVpcAssociationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteLocalGatewayRouteTableVpcAssociationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified managed prefix list. You must first remove all references to the prefix list in your resources.
  _i3.SmithyOperation<DeleteManagedPrefixListResult> deleteManagedPrefixList(
    DeleteManagedPrefixListRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteManagedPrefixListOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified NAT gateway. Deleting a public NAT gateway disassociates its Elastic IP address, but does not release the address from your account. Deleting a NAT gateway does not delete any NAT gateway routes in your route tables.
  _i3.SmithyOperation<DeleteNatGatewayResult> deleteNatGateway(
    DeleteNatGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteNatGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified network ACL. You can't delete the ACL if it's associated with any subnets. You can't delete the default network ACL.
  _i3.SmithyOperation<void> deleteNetworkAcl(
    DeleteNetworkAclRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteNetworkAclOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified ingress or egress entry (rule) from the specified network ACL.
  _i3.SmithyOperation<void> deleteNetworkAclEntry(
    DeleteNetworkAclEntryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteNetworkAclEntryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Network Access Scope.
  _i3.SmithyOperation<DeleteNetworkInsightsAccessScopeResult>
      deleteNetworkInsightsAccessScope(
    DeleteNetworkInsightsAccessScopeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteNetworkInsightsAccessScopeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Network Access Scope analysis.
  _i3.SmithyOperation<DeleteNetworkInsightsAccessScopeAnalysisResult>
      deleteNetworkInsightsAccessScopeAnalysis(
    DeleteNetworkInsightsAccessScopeAnalysisRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteNetworkInsightsAccessScopeAnalysisOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified network insights analysis.
  _i3.SmithyOperation<DeleteNetworkInsightsAnalysisResult>
      deleteNetworkInsightsAnalysis(
    DeleteNetworkInsightsAnalysisRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteNetworkInsightsAnalysisOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified path.
  _i3.SmithyOperation<DeleteNetworkInsightsPathResult>
      deleteNetworkInsightsPath(
    DeleteNetworkInsightsPathRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteNetworkInsightsPathOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified network interface. You must detach the network interface before you can delete it.
  _i3.SmithyOperation<void> deleteNetworkInterface(
    DeleteNetworkInterfaceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteNetworkInterfaceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a permission for a network interface. By default, you cannot delete the permission if the account for which you're removing the permission has attached the network interface to an instance. However, you can force delete the permission, regardless of any attachment.
  _i3.SmithyOperation<DeleteNetworkInterfacePermissionResult>
      deleteNetworkInterfacePermission(
    DeleteNetworkInterfacePermissionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteNetworkInterfacePermissionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified placement group. You must terminate all instances in the placement group before you can delete the placement group. For more information, see [Placement groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<void> deletePlacementGroup(
    DeletePlacementGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeletePlacementGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Delete a public IPv4 pool. A public IPv4 pool is an EC2 IP address pool required for the public IPv4 CIDRs that you own and bring to Amazon Web Services to manage with IPAM. IPv6 addresses you bring to Amazon Web Services, however, use IPAM pools only.
  _i3.SmithyOperation<DeletePublicIpv4PoolResult> deletePublicIpv4Pool(
    DeletePublicIpv4PoolRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeletePublicIpv4PoolOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the queued purchases for the specified Reserved Instances.
  _i3.SmithyOperation<DeleteQueuedReservedInstancesResult>
      deleteQueuedReservedInstances(
    DeleteQueuedReservedInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteQueuedReservedInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified route from the specified route table.
  _i3.SmithyOperation<void> deleteRoute(
    DeleteRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified route table. You must disassociate the route table from any subnets before you can delete it. You can't delete the main route table.
  _i3.SmithyOperation<void> deleteRouteTable(
    DeleteRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a security group.
  ///
  /// If you attempt to delete a security group that is associated with an instance or network interface or is referenced by another security group, the operation fails with `DependencyViolation`.
  _i3.SmithyOperation<void> deleteSecurityGroup(
    DeleteSecurityGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteSecurityGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified snapshot.
  ///
  /// When you make periodic snapshots of a volume, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the volume.
  ///
  /// You cannot delete a snapshot of the root device of an EBS volume used by a registered AMI. You must first de-register the AMI before you can delete the snapshot.
  ///
  /// For more information, see [Delete an Amazon EBS snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<void> deleteSnapshot(
    DeleteSnapshotRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteSnapshotOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the data feed for Spot Instances.
  _i3.SmithyOperation<void> deleteSpotDatafeedSubscription(
    DeleteSpotDatafeedSubscriptionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteSpotDatafeedSubscriptionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified subnet. You must terminate all running instances in the subnet before you can delete the subnet.
  _i3.SmithyOperation<void> deleteSubnet(
    DeleteSubnetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteSubnetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a subnet CIDR reservation.
  _i3.SmithyOperation<DeleteSubnetCidrReservationResult>
      deleteSubnetCidrReservation(
    DeleteSubnetCidrReservationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteSubnetCidrReservationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified set of tags from the specified set of resources.
  ///
  /// To list the current tags, use DescribeTags. For more information about tags, see [Tag your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<void> deleteTags(
    DeleteTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Traffic Mirror filter.
  ///
  /// You cannot delete a Traffic Mirror filter that is in use by a Traffic Mirror session.
  _i3.SmithyOperation<DeleteTrafficMirrorFilterResult>
      deleteTrafficMirrorFilter(
    DeleteTrafficMirrorFilterRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTrafficMirrorFilterOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Traffic Mirror rule.
  _i3.SmithyOperation<DeleteTrafficMirrorFilterRuleResult>
      deleteTrafficMirrorFilterRule(
    DeleteTrafficMirrorFilterRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTrafficMirrorFilterRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Traffic Mirror session.
  _i3.SmithyOperation<DeleteTrafficMirrorSessionResult>
      deleteTrafficMirrorSession(
    DeleteTrafficMirrorSessionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTrafficMirrorSessionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Traffic Mirror target.
  ///
  /// You cannot delete a Traffic Mirror target that is in use by a Traffic Mirror session.
  _i3.SmithyOperation<DeleteTrafficMirrorTargetResult>
      deleteTrafficMirrorTarget(
    DeleteTrafficMirrorTargetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTrafficMirrorTargetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified transit gateway.
  _i3.SmithyOperation<DeleteTransitGatewayResult> deleteTransitGateway(
    DeleteTransitGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Connect attachment. You must first delete any Connect peers for the attachment.
  _i3.SmithyOperation<DeleteTransitGatewayConnectResult>
      deleteTransitGatewayConnect(
    DeleteTransitGatewayConnectRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayConnectOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified Connect peer.
  _i3.SmithyOperation<DeleteTransitGatewayConnectPeerResult>
      deleteTransitGatewayConnectPeer(
    DeleteTransitGatewayConnectPeerRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayConnectPeerOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified transit gateway multicast domain.
  _i3.SmithyOperation<DeleteTransitGatewayMulticastDomainResult>
      deleteTransitGatewayMulticastDomain(
    DeleteTransitGatewayMulticastDomainRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayMulticastDomainOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a transit gateway peering attachment.
  _i3.SmithyOperation<DeleteTransitGatewayPeeringAttachmentResult>
      deleteTransitGatewayPeeringAttachment(
    DeleteTransitGatewayPeeringAttachmentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayPeeringAttachmentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified transit gateway policy table.
  _i3.SmithyOperation<DeleteTransitGatewayPolicyTableResult>
      deleteTransitGatewayPolicyTable(
    DeleteTransitGatewayPolicyTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayPolicyTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a reference (route) to a prefix list in a specified transit gateway route table.
  _i3.SmithyOperation<DeleteTransitGatewayPrefixListReferenceResult>
      deleteTransitGatewayPrefixListReference(
    DeleteTransitGatewayPrefixListReferenceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayPrefixListReferenceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified route from the specified transit gateway route table.
  _i3.SmithyOperation<DeleteTransitGatewayRouteResult>
      deleteTransitGatewayRoute(
    DeleteTransitGatewayRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified transit gateway route table. You must disassociate the route table from any transit gateway route tables before you can delete it.
  _i3.SmithyOperation<DeleteTransitGatewayRouteTableResult>
      deleteTransitGatewayRouteTable(
    DeleteTransitGatewayRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Advertises to the transit gateway that a transit gateway route table is deleted.
  _i3.SmithyOperation<DeleteTransitGatewayRouteTableAnnouncementResult>
      deleteTransitGatewayRouteTableAnnouncement(
    DeleteTransitGatewayRouteTableAnnouncementRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayRouteTableAnnouncementOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified VPC attachment.
  _i3.SmithyOperation<DeleteTransitGatewayVpcAttachmentResult>
      deleteTransitGatewayVpcAttachment(
    DeleteTransitGatewayVpcAttachmentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteTransitGatewayVpcAttachmentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Delete an Amazon Web Services Verified Access endpoint.
  _i3.SmithyOperation<DeleteVerifiedAccessEndpointResult>
      deleteVerifiedAccessEndpoint(
    DeleteVerifiedAccessEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVerifiedAccessEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Delete an Amazon Web Services Verified Access group.
  _i3.SmithyOperation<DeleteVerifiedAccessGroupResult>
      deleteVerifiedAccessGroup(
    DeleteVerifiedAccessGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVerifiedAccessGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Delete an Amazon Web Services Verified Access instance.
  _i3.SmithyOperation<DeleteVerifiedAccessInstanceResult>
      deleteVerifiedAccessInstance(
    DeleteVerifiedAccessInstanceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVerifiedAccessInstanceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Delete an Amazon Web Services Verified Access trust provider.
  _i3.SmithyOperation<DeleteVerifiedAccessTrustProviderResult>
      deleteVerifiedAccessTrustProvider(
    DeleteVerifiedAccessTrustProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVerifiedAccessTrustProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified EBS volume. The volume must be in the `available` state (not attached to an instance).
  ///
  /// The volume can remain in the `deleting` state for several minutes.
  ///
  /// For more information, see [Delete an Amazon EBS volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<void> deleteVolume(
    DeleteVolumeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVolumeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified VPC. You must detach or delete all gateways and resources that are associated with the VPC before you can delete it. For example, you must terminate all instances running in the VPC, delete all security groups associated with the VPC (except the default one), delete all route tables associated with the VPC (except the default one), and so on.
  _i3.SmithyOperation<void> deleteVpc(
    DeleteVpcRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVpcOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified VPC endpoint connection notifications.
  _i3.SmithyOperation<DeleteVpcEndpointConnectionNotificationsResult>
      deleteVpcEndpointConnectionNotifications(
    DeleteVpcEndpointConnectionNotificationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVpcEndpointConnectionNotificationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified VPC endpoint service configurations. Before you can delete an endpoint service configuration, you must reject any `Available` or `PendingAcceptance` interface endpoint connections that are attached to the service.
  _i3.SmithyOperation<DeleteVpcEndpointServiceConfigurationsResult>
      deleteVpcEndpointServiceConfigurations(
    DeleteVpcEndpointServiceConfigurationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVpcEndpointServiceConfigurationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified VPC endpoints.
  ///
  /// When you delete a gateway endpoint, we delete the endpoint routes in the route tables for the endpoint.
  ///
  /// When you delete a Gateway Load Balancer endpoint, we delete its endpoint network interfaces. You can only delete Gateway Load Balancer endpoints when the routes that are associated with the endpoint are deleted.
  ///
  /// When you delete an interface endpoint, we delete its endpoint network interfaces.
  _i3.SmithyOperation<DeleteVpcEndpointsResult> deleteVpcEndpoints(
    DeleteVpcEndpointsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVpcEndpointsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes a VPC peering connection. Either the owner of the requester VPC or the owner of the accepter VPC can delete the VPC peering connection if it's in the `active` state. The owner of the requester VPC can delete a VPC peering connection in the `pending-acceptance` state. You cannot delete a VPC peering connection that's in the `failed` state.
  _i3.SmithyOperation<DeleteVpcPeeringConnectionResult>
      deleteVpcPeeringConnection(
    DeleteVpcPeeringConnectionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVpcPeeringConnectionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified VPN connection.
  ///
  /// If you're deleting the VPC and its associated components, we recommend that you detach the virtual private gateway from the VPC and delete the VPC before deleting the VPN connection. If you believe that the tunnel credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway device using the new configuration information returned with the new VPN connection ID.
  ///
  /// For certificate-based authentication, delete all Certificate Manager (ACM) private certificates used for the Amazon Web Services-side tunnel endpoints for the VPN connection before deleting the VPN connection.
  _i3.SmithyOperation<void> deleteVpnConnection(
    DeleteVpnConnectionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVpnConnectionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.
  _i3.SmithyOperation<void> deleteVpnConnectionRoute(
    DeleteVpnConnectionRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVpnConnectionRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deletes the specified virtual private gateway. You must first detach the virtual private gateway from the VPC. Note that you don't need to delete the virtual private gateway if you plan to delete and recreate the VPN connection between your VPC and your network.
  _i3.SmithyOperation<void> deleteVpnGateway(
    DeleteVpnGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeleteVpnGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Releases the specified address range that you provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool.
  ///
  /// Before you can release an address range, you must stop advertising it using WithdrawByoipCidr and you must not have any IP addresses allocated from its address range.
  _i3.SmithyOperation<DeprovisionByoipCidrResult> deprovisionByoipCidr(
    DeprovisionByoipCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeprovisionByoipCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deprovision a CIDR provisioned from an IPAM pool. If you deprovision a CIDR from a pool that has a source pool, the CIDR is recycled back into the source pool. For more information, see [Deprovision pool CIDRs](https://docs.aws.amazon.com/vpc/latest/ipam/depro-pool-cidr-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<DeprovisionIpamPoolCidrResult> deprovisionIpamPoolCidr(
    DeprovisionIpamPoolCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeprovisionIpamPoolCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deprovision a CIDR from a public IPv4 pool.
  _i3.SmithyOperation<DeprovisionPublicIpv4PoolCidrResult>
      deprovisionPublicIpv4PoolCidr(
    DeprovisionPublicIpv4PoolCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeprovisionPublicIpv4PoolCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deregisters the specified AMI. After you deregister an AMI, it can't be used to launch new instances.
  ///
  /// If you deregister an AMI that matches a Recycle Bin retention rule, the AMI is retained in the Recycle Bin for the specified retention period. For more information, see [Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html) in the _Amazon EC2 User Guide_.
  ///
  /// When you deregister an AMI, it doesn't affect any instances that you've already launched from the AMI. You'll continue to incur usage costs for those instances until you terminate them.
  ///
  /// When you deregister an Amazon EBS-backed AMI, it doesn't affect the snapshot that was created for the root volume of the instance during the AMI creation process. When you deregister an instance store-backed AMI, it doesn't affect the files that you uploaded to Amazon S3 when you created the AMI.
  _i3.SmithyOperation<void> deregisterImage(
    DeregisterImageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeregisterImageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deregisters tag keys to prevent tags that have the specified tag keys from being included in scheduled event notifications for resources in the Region.
  _i3.SmithyOperation<DeregisterInstanceEventNotificationAttributesResult>
      deregisterInstanceEventNotificationAttributes(
    DeregisterInstanceEventNotificationAttributesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeregisterInstanceEventNotificationAttributesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deregisters the specified members (network interfaces) from the transit gateway multicast group.
  _i3.SmithyOperation<DeregisterTransitGatewayMulticastGroupMembersResult>
      deregisterTransitGatewayMulticastGroupMembers(
    DeregisterTransitGatewayMulticastGroupMembersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeregisterTransitGatewayMulticastGroupMembersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Deregisters the specified sources (network interfaces) from the transit gateway multicast group.
  _i3.SmithyOperation<DeregisterTransitGatewayMulticastGroupSourcesResult>
      deregisterTransitGatewayMulticastGroupSources(
    DeregisterTransitGatewayMulticastGroupSourcesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DeregisterTransitGatewayMulticastGroupSourcesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes attributes of your Amazon Web Services account. The following are the supported account attributes:
  ///
  /// *   `default-vpc`: The ID of the default VPC for your account, or `none`.
  ///
  /// *   `max-instances`: This attribute is no longer supported. The returned value does not reflect your actual vCPU limit for running On-Demand Instances. For more information, see [On-Demand Instance Limits](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// *   `max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate.
  ///
  /// *   `supported-platforms`: This attribute is deprecated.
  ///
  /// *   `vpc-max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate.
  ///
  /// *   `vpc-max-security-groups-per-interface`: The maximum number of security groups that you can assign to a network interface.
  _i3.SmithyOperation<DescribeAccountAttributesResult>
      describeAccountAttributes(
    DescribeAccountAttributesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAccountAttributesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes an Elastic IP address transfer. For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro) in the _Amazon Virtual Private Cloud User Guide_.
  ///
  /// When you transfer an Elastic IP address, there is a two-step handshake between the source and transfer Amazon Web Services accounts. When the source account starts the transfer, the transfer account has seven days to accept the Elastic IP address transfer. During those seven days, the source account can view the pending transfer by using this action. After seven days, the transfer expires and ownership of the Elastic IP address returns to the source account. Accepted transfers are visible to the source account for three days after the transfers have been accepted.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<AddressTransfer>, int, String>>
      describeAddressTransfers(
    DescribeAddressTransfersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAddressTransfersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Elastic IP addresses or all of your Elastic IP addresses.
  _i3.SmithyOperation<DescribeAddressesResult> describeAddresses(
    DescribeAddressesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAddressesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the attributes of the specified Elastic IP addresses. For requirements, see [Using reverse DNS for email applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<AddressAttribute>, int, String>>
      describeAddressesAttribute(
    DescribeAddressesAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAddressesAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the longer ID format settings for all resource types in a specific Region. This request is useful for performing a quick audit to determine whether a specific Region is fully opted in for longer IDs (17-character IDs).
  ///
  /// This request only returns information about resource types that support longer IDs.
  ///
  /// The following resource types support longer IDs: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  _i3.SmithyOperation<DescribeAggregateIdFormatResult>
      describeAggregateIdFormat(
    DescribeAggregateIdFormatRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAggregateIdFormatOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the Availability Zones, Local Zones, and Wavelength Zones that are available to you. If there is an event impacting a zone, you can use this request to view the state and any provided messages for that zone.
  ///
  /// For more information about Availability Zones, Local Zones, and Wavelength Zones, see [Regions and zones](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<DescribeAvailabilityZonesResult>
      describeAvailabilityZones(
    DescribeAvailabilityZonesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAvailabilityZonesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the current Infrastructure Performance metric subscriptions.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<Subscription>, int, String>>
      describeAwsNetworkPerformanceMetricSubscriptions(
    DescribeAwsNetworkPerformanceMetricSubscriptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeAwsNetworkPerformanceMetricSubscriptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified bundle tasks or all of your bundle tasks.
  ///
  /// Completed bundle tasks are listed for only a limited time. If your bundle task is no longer in the list, you can still register an AMI from it. Just use `RegisterImage` with the Amazon S3 bucket name and image manifest name you provided to the bundle task.
  _i3.SmithyOperation<DescribeBundleTasksResult> describeBundleTasks(
    DescribeBundleTasksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeBundleTasksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the IP address ranges that were specified in calls to ProvisionByoipCidr.
  ///
  /// To describe the address pools that were created when you provisioned the address ranges, use DescribePublicIpv4Pools or DescribeIpv6Pools.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ByoipCidr>, int, String>>
      describeByoipCidrs(
    DescribeByoipCidrsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeByoipCidrsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more Capacity Reservation Fleets.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<CapacityReservationFleet>, int,
          String>> describeCapacityReservationFleets(
    DescribeCapacityReservationFleetsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeCapacityReservationFleetsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your Capacity Reservations. The results describe only the Capacity Reservations in the Amazon Web Services Region that you're currently using.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<CapacityReservation>, int, String>>
      describeCapacityReservations(
    DescribeCapacityReservationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeCapacityReservationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your carrier gateways.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<CarrierGateway>, int, String>>
      describeCarrierGateways(
    DescribeCarrierGatewaysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeCarrierGatewaysOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Describes one or more of your linked EC2-Classic instances. This request only returns information about EC2-Classic instances linked to a VPC through ClassicLink. You cannot use this request to return information about other instances.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ClassicLinkInstance>, int, String>>
      describeClassicLinkInstances(
    DescribeClassicLinkInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeClassicLinkInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the authorization rules for a specified Client VPN endpoint.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<AuthorizationRule>, int, String>>
      describeClientVpnAuthorizationRules(
    DescribeClientVpnAuthorizationRulesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeClientVpnAuthorizationRulesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes active client connections and connections that have been terminated within the last 60 minutes for the specified Client VPN endpoint.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ClientVpnConnection>, int, String>>
      describeClientVpnConnections(
    DescribeClientVpnConnectionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeClientVpnConnectionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more Client VPN endpoints in the account.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ClientVpnEndpoint>, int, String>>
      describeClientVpnEndpoints(
    DescribeClientVpnEndpointsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeClientVpnEndpointsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the routes for the specified Client VPN endpoint.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ClientVpnRoute>, int, String>>
      describeClientVpnRoutes(
    DescribeClientVpnRoutesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeClientVpnRoutesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the target networks associated with the specified Client VPN endpoint.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<TargetNetwork>, int, String>>
      describeClientVpnTargetNetworks(
    DescribeClientVpnTargetNetworksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeClientVpnTargetNetworksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified customer-owned address pools or all of your customer-owned address pools.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<CoipPool>, int, String>>
      describeCoipPools(
    DescribeCoipPoolsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeCoipPoolsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified conversion tasks or all your conversion tasks. For more information, see the [VM Import/Export User Guide](https://docs.aws.amazon.com/vm-import/latest/userguide/).
  ///
  /// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  _i3.SmithyOperation<DescribeConversionTasksResult> describeConversionTasks(
    DescribeConversionTasksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeConversionTasksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your VPN customer gateways.
  ///
  /// For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  _i3.SmithyOperation<DescribeCustomerGatewaysResult> describeCustomerGateways(
    DescribeCustomerGatewaysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeCustomerGatewaysOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your DHCP options sets.
  ///
  /// For more information, see [DHCP options sets](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<DhcpOptions>, int, String>>
      describeDhcpOptions(
    DescribeDhcpOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeDhcpOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your egress-only internet gateways.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<EgressOnlyInternetGateway>, int,
          String>> describeEgressOnlyInternetGateways(
    DescribeEgressOnlyInternetGatewaysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeEgressOnlyInternetGatewaysOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the Elastic Graphics accelerator associated with your instances. For more information about Elastic Graphics, see [Amazon Elastic Graphics](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html).
  _i3.SmithyOperation<DescribeElasticGpusResult> describeElasticGpus(
    DescribeElasticGpusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeElasticGpusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified export image tasks or all of your export image tasks.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ExportImageTask>, int, String>>
      describeExportImageTasks(
    DescribeExportImageTasksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeExportImageTasksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified export instance tasks or all of your export instance tasks.
  _i3.SmithyOperation<DescribeExportTasksResult> describeExportTasks(
    DescribeExportTasksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeExportTasksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describe details for Windows AMIs that are configured for faster launching.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<DescribeFastLaunchImagesSuccessItem>,
          int, String>> describeFastLaunchImages(
    DescribeFastLaunchImagesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeFastLaunchImagesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the state of fast snapshot restores for your snapshots.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<DescribeFastSnapshotRestoreSuccessItem>,
          int, String>> describeFastSnapshotRestores(
    DescribeFastSnapshotRestoresRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeFastSnapshotRestoresOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the events for the specified EC2 Fleet during the specified time.
  ///
  /// EC2 Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event. EC2 Fleet events are available for 48 hours.
  ///
  /// For more information, see [Monitor fleet events using Amazon EventBridge](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DescribeFleetHistoryResult> describeFleetHistory(
    DescribeFleetHistoryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeFleetHistoryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the running instances for the specified EC2 Fleet.
  ///
  /// For more information, see [Monitor your EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DescribeFleetInstancesResult> describeFleetInstances(
    DescribeFleetInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeFleetInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified EC2 Fleets or all of your EC2 Fleets.
  ///
  /// For more information, see [Monitor your EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<FleetData>, int, String>>
      describeFleets(
    DescribeFleetsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeFleetsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more flow logs.
  ///
  /// To view the published flow log records, you must view the log destination. For example, the CloudWatch Logs log group, the Amazon S3 bucket, or the Kinesis Data Firehose delivery stream.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<FlowLog>, int, String>>
      describeFlowLogs(
    DescribeFlowLogsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeFlowLogsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified attribute of the specified Amazon FPGA Image (AFI).
  _i3.SmithyOperation<DescribeFpgaImageAttributeResult>
      describeFpgaImageAttribute(
    DescribeFpgaImageAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeFpgaImageAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the Amazon FPGA Images (AFIs) available to you. These include public AFIs, private AFIs that you own, and AFIs owned by other Amazon Web Services accounts for which you have load permissions.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<FpgaImage>, int, String>>
      describeFpgaImages(
    DescribeFpgaImagesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeFpgaImagesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the Dedicated Host reservations that are available to purchase.
  ///
  /// The results describe all of the Dedicated Host reservation offerings, including offerings that might not match the instance family and Region of your Dedicated Hosts. When purchasing an offering, ensure that the instance family and Region of the offering matches that of the Dedicated Hosts with which it is to be associated. For more information about supported instance types, see [Dedicated Hosts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<HostOffering>, int, String>>
      describeHostReservationOfferings(
    DescribeHostReservationOfferingsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeHostReservationOfferingsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes reservations that are associated with Dedicated Hosts in your account.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<HostReservation>, int, String>>
      describeHostReservations(
    DescribeHostReservationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeHostReservationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Dedicated Hosts or all your Dedicated Hosts.
  ///
  /// The results describe only the Dedicated Hosts in the Region you're currently using. All listed instances consume capacity on your Dedicated Host. Dedicated Hosts that have recently been released are listed with the state `released`.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Host>, int, String>>
      describeHosts(
    DescribeHostsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeHostsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes your IAM instance profile associations.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<IamInstanceProfileAssociation>, int,
          String>> describeIamInstanceProfileAssociations(
    DescribeIamInstanceProfileAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeIamInstanceProfileAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the ID format settings for your resources on a per-Region basis, for example, to view which resource types are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types.
  ///
  /// The following resource types support longer IDs: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  ///
  /// These settings apply to the IAM user who makes the request; they do not apply to the entire Amazon Web Services account. By default, an IAM user defaults to the same settings as the root user, unless they explicitly override the settings by running the ModifyIdFormat command. Resources created with longer IDs are visible to all IAM users, regardless of these settings and provided that they have permission to use the relevant `Describe` command for the resource type.
  _i3.SmithyOperation<DescribeIdFormatResult> describeIdFormat(
    DescribeIdFormatRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeIdFormatOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the ID format settings for resources for the specified IAM user, IAM role, or root user. For example, you can view the resource types that are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types. For more information, see [Resource IDs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// The following resource types support longer IDs: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  ///
  /// These settings apply to the principal specified in the request. They do not apply to the principal that makes the request.
  _i3.SmithyOperation<DescribeIdentityIdFormatResult> describeIdentityIdFormat(
    DescribeIdentityIdFormatRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeIdentityIdFormatOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified attribute of the specified AMI. You can specify only one attribute at a time.
  _i3.SmithyOperation<ImageAttribute> describeImageAttribute(
    DescribeImageAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeImageAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified images (AMIs, AKIs, and ARIs) available to you or all of the images available to you.
  ///
  /// The images available to you include public images, private images that you own, and private images owned by other Amazon Web Services accounts for which you have explicit launch permissions.
  ///
  /// Recently deregistered images appear in the returned results for a short interval and then return empty results. After all instances that reference a deregistered AMI are terminated, specifying the ID of the image will eventually return an error indicating that the AMI ID cannot be found.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Image>, int, String>>
      describeImages(
    DescribeImagesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeImagesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Displays details about an import virtual machine or import snapshot tasks that are already created.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ImportImageTask>, int, String>>
      describeImportImageTasks(
    DescribeImportImageTasksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeImportImageTasksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes your import snapshot tasks.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ImportSnapshotTask>, int, String>>
      describeImportSnapshotTasks(
    DescribeImportSnapshotTasksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeImportSnapshotTasksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified attribute of the specified instance. You can specify only one attribute at a time. Valid attribute values are: `instanceType` | `kernel` | `ramdisk` | `userData` | `disableApiTermination` | `instanceInitiatedShutdownBehavior` | `rootDeviceName` | `blockDeviceMapping` | `productCodes` | `sourceDestCheck` | `groupSet` | `ebsOptimized` | `sriovNetSupport`
  _i3.SmithyOperation<InstanceAttribute> describeInstanceAttribute(
    DescribeInstanceAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInstanceAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified EC2 Instance Connect Endpoints or all EC2 Instance Connect Endpoints.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<Ec2InstanceConnectEndpoint>, int,
          String>> describeInstanceConnectEndpoints(
    DescribeInstanceConnectEndpointsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInstanceConnectEndpointsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the credit option for CPU usage of the specified burstable performance instances. The credit options are `standard` and `unlimited`.
  ///
  /// If you do not specify an instance ID, Amazon EC2 returns burstable performance instances with the `unlimited` credit option, as well as instances that were previously configured as T2, T3, and T3a with the `unlimited` credit option. For example, if you resize a T2 instance, while it is configured as `unlimited`, to an M4 instance, Amazon EC2 returns the M4 instance.
  ///
  /// If you specify one or more instance IDs, Amazon EC2 returns the credit option (`standard` or `unlimited`) of those instances. If you specify an instance ID that is not valid, such as an instance that is not a burstable performance instance, an error is returned.
  ///
  /// Recently terminated instances might appear in the returned results. This interval is usually less than one hour.
  ///
  /// If an Availability Zone is experiencing a service disruption and you specify instance IDs in the affected zone, or do not specify any instance IDs at all, the call fails. If you specify only instance IDs in an unaffected zone, the call works normally.
  ///
  /// For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<InstanceCreditSpecification>, int,
          String>> describeInstanceCreditSpecifications(
    DescribeInstanceCreditSpecificationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInstanceCreditSpecificationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the tag keys that are registered to appear in scheduled event notifications for resources in the current Region.
  _i3.SmithyOperation<DescribeInstanceEventNotificationAttributesResult>
      describeInstanceEventNotificationAttributes(
    DescribeInstanceEventNotificationAttributesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInstanceEventNotificationAttributesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified event windows or all event windows.
  ///
  /// If you specify event window IDs, the output includes information for only the specified event windows. If you specify filters, the output includes information for only those event windows that meet the filter criteria. If you do not specify event windows IDs or filters, the output includes information for all event windows, which can affect performance. We recommend that you use pagination to ensure that the operation returns quickly and successfully.
  ///
  /// For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<InstanceEventWindow>, int, String>>
      describeInstanceEventWindows(
    DescribeInstanceEventWindowsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInstanceEventWindowsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the status of the specified instances or all of your instances. By default, only running instances are described, unless you specifically indicate to return the status of all instances.
  ///
  /// Instance status includes the following components:
  ///
  /// *   **Status checks** \- Amazon EC2 performs status checks on running EC2 instances to identify hardware and software issues. For more information, see [Status checks for your instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html) and [Troubleshoot instances with failed status checks](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html) in the _Amazon EC2 User Guide_.
  ///
  /// *   **Scheduled events** \- Amazon EC2 can schedule events (such as reboot, stop, or terminate) for your instances related to hardware issues, software updates, or system maintenance. For more information, see [Scheduled events for your instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html) in the _Amazon EC2 User Guide_.
  ///
  /// *   **Instance state** \- You can manage your instances from the moment you launch them through their termination. For more information, see [Instance lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<InstanceStatus>, int, String>>
      describeInstanceStatus(
    DescribeInstanceStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInstanceStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of all instance types offered. The results can be filtered by location (Region or Availability Zone). If no location is specified, the instance types offered in the current Region are returned.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<InstanceTypeOffering>, int, String>>
      describeInstanceTypeOfferings(
    DescribeInstanceTypeOfferingsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInstanceTypeOfferingsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the details of the instance types that are offered in a location. The results can be filtered by the attributes of the instance types.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<InstanceTypeInfo>, int, String>>
      describeInstanceTypes(
    DescribeInstanceTypesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInstanceTypesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified instances or all instances.
  ///
  /// If you specify instance IDs, the output includes information for only the specified instances. If you specify filters, the output includes information for only those instances that meet the filter criteria. If you do not specify instance IDs or filters, the output includes information for all instances, which can affect performance. We recommend that you use pagination to ensure that the operation returns quickly and successfully.
  ///
  /// If you specify an instance ID that is not valid, an error is returned. If you specify an instance that you do not own, it is not included in the output.
  ///
  /// Recently terminated instances might appear in the returned results. This interval is usually less than one hour.
  ///
  /// If you describe instances in the rare case where an Availability Zone is experiencing a service disruption and you specify instance IDs that are in the affected zone, or do not specify any instance IDs at all, the call fails. If you describe instances and specify only instance IDs that are in an unaffected zone, the call works normally.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<Reservation>, int, String>>
      describeInstances(
    DescribeInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your internet gateways.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<InternetGateway>, int, String>>
      describeInternetGateways(
    DescribeInternetGatewaysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeInternetGatewaysOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Get information about your IPAM pools.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<IpamPool>, int, String>>
      describeIpamPools(
    DescribeIpamPoolsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeIpamPoolsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes IPAM resource discoveries. A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<IpamResourceDiscovery>, int, String>>
      describeIpamResourceDiscoveries(
    DescribeIpamResourceDiscoveriesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeIpamResourceDiscoveriesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes resource discovery association with an Amazon VPC IPAM. An associated resource discovery is a resource discovery that has been associated with an IPAM..
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<IpamResourceDiscoveryAssociation>, int,
          String>> describeIpamResourceDiscoveryAssociations(
    DescribeIpamResourceDiscoveryAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeIpamResourceDiscoveryAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Get information about your IPAM scopes.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<IpamScope>, int, String>>
      describeIpamScopes(
    DescribeIpamScopesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeIpamScopesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Get information about your IPAM pools.
  ///
  /// For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Ipam>, int, String>>
      describeIpams(
    DescribeIpamsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeIpamsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes your IPv6 address pools.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Ipv6Pool>, int, String>>
      describeIpv6Pools(
    DescribeIpv6PoolsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeIpv6PoolsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified key pairs or all of your key pairs.
  ///
  /// For more information about key pairs, see [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<DescribeKeyPairsResult> describeKeyPairs(
    DescribeKeyPairsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeKeyPairsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more versions of a specified launch template. You can describe all versions, individual versions, or a range of versions. You can also describe all the latest versions or all the default versions of all the launch templates in your account.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<LaunchTemplateVersion>, int, String>>
      describeLaunchTemplateVersions(
    DescribeLaunchTemplateVersionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeLaunchTemplateVersionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more launch templates.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<LaunchTemplate>, int, String>>
      describeLaunchTemplates(
    DescribeLaunchTemplatesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeLaunchTemplatesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the associations between virtual interface groups and local gateway route tables.
  _i3
      .SmithyOperation<
          _i3.PaginatedResult<
              _i4.BuiltList<
                  LocalGatewayRouteTableVirtualInterfaceGroupAssociation>,
              int,
              String>>
      describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest
        input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified associations between VPCs and local gateway route tables.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<LocalGatewayRouteTableVpcAssociation>,
          int, String>> describeLocalGatewayRouteTableVpcAssociations(
    DescribeLocalGatewayRouteTableVpcAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeLocalGatewayRouteTableVpcAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more local gateway route tables. By default, all local gateway route tables are described. Alternatively, you can filter the results.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<LocalGatewayRouteTable>, int, String>>
      describeLocalGatewayRouteTables(
    DescribeLocalGatewayRouteTablesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeLocalGatewayRouteTablesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified local gateway virtual interface groups.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<LocalGatewayVirtualInterfaceGroup>, int,
          String>> describeLocalGatewayVirtualInterfaceGroups(
    DescribeLocalGatewayVirtualInterfaceGroupsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeLocalGatewayVirtualInterfaceGroupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified local gateway virtual interfaces.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<LocalGatewayVirtualInterface>, int,
          String>> describeLocalGatewayVirtualInterfaces(
    DescribeLocalGatewayVirtualInterfacesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeLocalGatewayVirtualInterfacesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more local gateways. By default, all local gateways are described. Alternatively, you can filter the results.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<LocalGateway>, int, String>>
      describeLocalGateways(
    DescribeLocalGatewaysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeLocalGatewaysOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes your managed prefix lists and any Amazon Web Services-managed prefix lists.
  ///
  /// To view the entries for your prefix list, use GetManagedPrefixListEntries.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ManagedPrefixList>, int, String>>
      describeManagedPrefixLists(
    DescribeManagedPrefixListsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeManagedPrefixListsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Describes your Elastic IP addresses that are being moved from or being restored to the EC2-Classic platform. This request does not return information about any other Elastic IP addresses in your account.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<MovingAddressStatus>, int, String>>
      describeMovingAddresses(
    DescribeMovingAddressesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeMovingAddressesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your NAT gateways.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<NatGateway>, int, String>>
      describeNatGateways(
    DescribeNatGatewaysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeNatGatewaysOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your network ACLs.
  ///
  /// For more information, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<NetworkAcl>, int, String>>
      describeNetworkAcls(
    DescribeNetworkAclsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeNetworkAclsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Network Access Scope analyses.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<NetworkInsightsAccessScopeAnalysis>,
          int, String>> describeNetworkInsightsAccessScopeAnalyses(
    DescribeNetworkInsightsAccessScopeAnalysesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeNetworkInsightsAccessScopeAnalysesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Network Access Scopes.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<NetworkInsightsAccessScope>, int,
          String>> describeNetworkInsightsAccessScopes(
    DescribeNetworkInsightsAccessScopesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeNetworkInsightsAccessScopesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your network insights analyses.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<NetworkInsightsAnalysis>, int, String>>
      describeNetworkInsightsAnalyses(
    DescribeNetworkInsightsAnalysesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeNetworkInsightsAnalysesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your paths.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<NetworkInsightsPath>, int, String>>
      describeNetworkInsightsPaths(
    DescribeNetworkInsightsPathsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeNetworkInsightsPathsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes a network interface attribute. You can specify only one attribute at a time.
  _i3.SmithyOperation<DescribeNetworkInterfaceAttributeResult>
      describeNetworkInterfaceAttribute(
    DescribeNetworkInterfaceAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeNetworkInterfaceAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the permissions for your network interfaces.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<NetworkInterfacePermission>, int,
          String>> describeNetworkInterfacePermissions(
    DescribeNetworkInterfacePermissionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeNetworkInterfacePermissionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your network interfaces.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<NetworkInterface>, int, String>>
      describeNetworkInterfaces(
    DescribeNetworkInterfacesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeNetworkInterfacesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified placement groups or all of your placement groups. For more information, see [Placement groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DescribePlacementGroupsResult> describePlacementGroups(
    DescribePlacementGroupsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribePlacementGroupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes available Amazon Web Services services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service.
  ///
  /// We recommend that you use DescribeManagedPrefixLists instead.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<PrefixList>, int, String>>
      describePrefixLists(
    DescribePrefixListsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribePrefixListsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference.
  ///
  /// By default, all IAM roles and IAM users default to the same ID settings as the root user, unless they explicitly override the settings. This request is useful for identifying those IAM users and IAM roles that have overridden the default ID settings.
  ///
  /// The following resource types support longer IDs: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `instance` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `reservation` | `route-table` | `route-table-association` | `security-group` | `snapshot` | `subnet` | `subnet-cidr-block-association` | `volume` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<PrincipalIdFormat>, int, String>>
      describePrincipalIdFormat(
    DescribePrincipalIdFormatRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribePrincipalIdFormatOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified IPv4 address pools.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<PublicIpv4Pool>, int, String>>
      describePublicIpv4Pools(
    DescribePublicIpv4PoolsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribePublicIpv4PoolsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the Regions that are enabled for your account, or all Regions.
  ///
  /// For a list of the Regions supported by Amazon EC2, see [Amazon Elastic Compute Cloud endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/ec2-service.html).
  ///
  /// For information about enabling and disabling Regions for your account, see [Managing Amazon Web Services Regions](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html) in the _Amazon Web Services General Reference_.
  _i3.SmithyOperation<DescribeRegionsResult> describeRegions(
    DescribeRegionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeRegionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes a root volume replacement task. For more information, see [Replace a root volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<ReplaceRootVolumeTask>, int, String>>
      describeReplaceRootVolumeTasks(
    DescribeReplaceRootVolumeTasksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeReplaceRootVolumeTasksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of the Reserved Instances that you purchased.
  ///
  /// For more information about Reserved Instances, see [Reserved Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DescribeReservedInstancesResult>
      describeReservedInstances(
    DescribeReservedInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeReservedInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes your account's Reserved Instance listings in the Reserved Instance Marketplace.
  ///
  /// The Reserved Instance Marketplace matches sellers who want to resell Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.
  ///
  /// As a seller, you choose to list some or all of your Reserved Instances, and you specify the upfront price to receive for them. Your Reserved Instances are then listed in the Reserved Instance Marketplace and are available for purchase.
  ///
  /// As a buyer, you specify the configuration of the Reserved Instance to purchase, and the Marketplace matches what you're searching for with what's available. The Marketplace first sells the lowest priced Reserved Instances to you, and continues to sell available Reserved Instance listings to you until your demand is met. You are charged based on the total price of all of the listings that you purchase.
  ///
  /// For more information, see [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DescribeReservedInstancesListingsResult>
      describeReservedInstancesListings(
    DescribeReservedInstancesListingsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeReservedInstancesListingsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the modifications made to your Reserved Instances. If no parameter is specified, information about all your Reserved Instances modification requests is returned. If a modification ID is specified, only information about the specific modification is returned.
  ///
  /// For more information, see [Modifying Reserved Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<ReservedInstancesModification>, void,
          String>> describeReservedInstancesModifications(
    DescribeReservedInstancesModificationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeReservedInstancesModificationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes Reserved Instance offerings that are available for purchase. With Reserved Instances, you purchase the right to launch instances for a period of time. During that time period, you do not receive insufficient capacity errors, and you pay a lower usage rate than the rate charged for On-Demand instances for the actual time used.
  ///
  /// If you have listed your own Reserved Instances for sale in the Reserved Instance Marketplace, they will be excluded from these results. This is to ensure that you do not purchase your own Reserved Instances.
  ///
  /// For more information, see [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<ReservedInstancesOffering>, int,
          String>> describeReservedInstancesOfferings(
    DescribeReservedInstancesOfferingsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeReservedInstancesOfferingsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your route tables.
  ///
  /// Each subnet in your VPC must be associated with a route table. If a subnet is not explicitly associated with any route table, it is implicitly associated with the main route table. This command does not return the subnet ID for implicit associations.
  ///
  /// For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<RouteTable>, int, String>>
      describeRouteTables(
    DescribeRouteTablesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeRouteTablesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Finds available schedules that meet the specified criteria.
  ///
  /// You can search for an available schedule no more than 3 months in advance. You must meet the minimum required duration of 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.
  ///
  /// After you find a schedule that meets your needs, call PurchaseScheduledInstances to purchase Scheduled Instances with that schedule.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<ScheduledInstanceAvailability>, int,
          String>> describeScheduledInstanceAvailability(
    DescribeScheduledInstanceAvailabilityRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeScheduledInstanceAvailabilityOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Scheduled Instances or all your Scheduled Instances.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ScheduledInstance>, int, String>>
      describeScheduledInstances(
    DescribeScheduledInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeScheduledInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request.
  _i3.SmithyOperation<DescribeSecurityGroupReferencesResult>
      describeSecurityGroupReferences(
    DescribeSecurityGroupReferencesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSecurityGroupReferencesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your security group rules.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<SecurityGroupRule>, int, String>>
      describeSecurityGroupRules(
    DescribeSecurityGroupRulesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSecurityGroupRulesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified security groups or all of your security groups.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<SecurityGroup>, int, String>>
      describeSecurityGroups(
    DescribeSecurityGroupsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSecurityGroupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified attribute of the specified snapshot. You can specify only one attribute at a time.
  ///
  /// For more information about EBS snapshots, see [Amazon EBS snapshots](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<DescribeSnapshotAttributeResult>
      describeSnapshotAttribute(
    DescribeSnapshotAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSnapshotAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the storage tier status of one or more Amazon EBS snapshots.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<SnapshotTierStatus>, int, String>>
      describeSnapshotTierStatus(
    DescribeSnapshotTierStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSnapshotTierStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified EBS snapshots available to you or all of the EBS snapshots available to you.
  ///
  /// The snapshots available to you include public snapshots, private snapshots that you own, and private snapshots owned by other Amazon Web Services accounts for which you have explicit create volume permissions.
  ///
  /// The create volume permissions fall into the following categories:
  ///
  /// *   _public_: The owner of the snapshot granted create volume permissions for the snapshot to the `all` group. All Amazon Web Services accounts have create volume permissions for these snapshots.
  ///
  /// *   _explicit_: The owner of the snapshot granted create volume permissions to a specific Amazon Web Services account.
  ///
  /// *   _implicit_: An Amazon Web Services account has implicit create volume permissions for all snapshots it owns.
  ///
  ///
  /// The list of snapshots returned can be filtered by specifying snapshot IDs, snapshot owners, or Amazon Web Services accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions.
  ///
  /// If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results.
  ///
  /// If you specify one or more snapshot owners using the `OwnerIds` option, only snapshots from the specified owners and for which you have access are returned. The results can include the Amazon Web Services account IDs of the specified owners, `amazon` for snapshots owned by Amazon, or `self` for snapshots that you own.
  ///
  /// If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify Amazon Web Services account IDs (if you own the snapshots), `self` for snapshots for which you own or have explicit permissions, or `all` for public snapshots.
  ///
  /// If you are describing a long list of snapshots, we recommend that you paginate the output to make the list more manageable. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  ///
  /// To get the state of fast snapshot restores for a snapshot, use DescribeFastSnapshotRestores.
  ///
  /// For more information about EBS snapshots, see [Amazon EBS snapshots](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Snapshot>, int, String>>
      describeSnapshots(
    DescribeSnapshotsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSnapshotsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the data feed for Spot Instances. For more information, see [Spot Instance data feed](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html) in the _Amazon EC2 User Guide for Linux Instances_.
  _i3.SmithyOperation<DescribeSpotDatafeedSubscriptionResult>
      describeSpotDatafeedSubscription(
    DescribeSpotDatafeedSubscriptionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSpotDatafeedSubscriptionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the running instances for the specified Spot Fleet.
  _i3.SmithyOperation<DescribeSpotFleetInstancesResponse>
      describeSpotFleetInstances(
    DescribeSpotFleetInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSpotFleetInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the events for the specified Spot Fleet request during the specified time.
  ///
  /// Spot Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event. Spot Fleet events are available for 48 hours.
  ///
  /// For more information, see [Monitor fleet events using Amazon EventBridge](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DescribeSpotFleetRequestHistoryResponse>
      describeSpotFleetRequestHistory(
    DescribeSpotFleetRequestHistoryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSpotFleetRequestHistoryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes your Spot Fleet requests.
  ///
  /// Spot Fleet requests are deleted 48 hours after they are canceled and their instances are terminated.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<SpotFleetRequestConfig>, int, String>>
      describeSpotFleetRequests(
    DescribeSpotFleetRequestsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSpotFleetRequestsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Spot Instance requests.
  ///
  /// You can use `DescribeSpotInstanceRequests` to find a running Spot Instance by examining the response. If the status of the Spot Instance is `fulfilled`, the instance ID appears in the response and contains the identifier of the instance. Alternatively, you can use [DescribeInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances) with a filter to look for instances where the instance lifecycle is `spot`.
  ///
  /// We recommend that you set `MaxResults` to a value between 5 and 1000 to limit the number of items returned. This paginates the output, which makes the list more manageable and returns the items faster. If the list of items exceeds your `MaxResults` value, then that number of items is returned along with a `NextToken` value that can be passed to a subsequent `DescribeSpotInstanceRequests` request to retrieve the remaining items.
  ///
  /// Spot Instance requests are deleted four hours after they are canceled and their instances are terminated.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<SpotInstanceRequest>, int, String>>
      describeSpotInstanceRequests(
    DescribeSpotInstanceRequestsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSpotInstanceRequestsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the Spot price history. For more information, see [Spot Instance pricing history](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html) in the _Amazon EC2 User Guide for Linux Instances_.
  ///
  /// When you specify a start and end time, the operation returns the prices of the instance types within that time range. It also returns the last price change before the start time, which is the effective price as of the start time.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<SpotPrice>, int, String>>
      describeSpotPriceHistory(
    DescribeSpotPriceHistoryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSpotPriceHistoryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the stale security group rules for security groups in a specified VPC. Rules are stale when they reference a deleted security group in the same VPC or in a peer VPC, or if they reference a security group in a peer VPC for which the VPC peering connection has been deleted.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<StaleSecurityGroup>, int, String>>
      describeStaleSecurityGroups(
    DescribeStaleSecurityGroupsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeStaleSecurityGroupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the progress of the AMI store tasks. You can describe the store tasks for specified AMIs. If you don't specify the AMIs, you get a paginated list of store tasks from the last 31 days.
  ///
  /// For each AMI task, the response indicates if the task is `InProgress`, `Completed`, or `Failed`. For tasks `InProgress`, the response shows the estimated progress as a percentage.
  ///
  /// Tasks are listed in reverse chronological order. Currently, only tasks from the past 31 days can be viewed.
  ///
  /// To use this API, you must have the required permissions. For more information, see [Permissions for storing and restoring AMIs using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions) in the _Amazon EC2 User Guide_.
  ///
  /// For more information, see [Store and restore an AMI using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<StoreImageTaskResult>, int, String>>
      describeStoreImageTasks(
    DescribeStoreImageTasksRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeStoreImageTasksOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your subnets.
  ///
  /// For more information, see [Subnets](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Subnet>, int, String>>
      describeSubnets(
    DescribeSubnetsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeSubnetsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified tags for your EC2 resources.
  ///
  /// For more information about tags, see [Tag your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<TagDescription>, int, String>>
      describeTags(
    DescribeTagsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTagsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more Traffic Mirror filters.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<TrafficMirrorFilter>, int, String>>
      describeTrafficMirrorFilters(
    DescribeTrafficMirrorFiltersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTrafficMirrorFiltersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more Traffic Mirror sessions. By default, all Traffic Mirror sessions are described. Alternatively, you can filter the results.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<TrafficMirrorSession>, int, String>>
      describeTrafficMirrorSessions(
    DescribeTrafficMirrorSessionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTrafficMirrorSessionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Information about one or more Traffic Mirror targets.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<TrafficMirrorTarget>, int, String>>
      describeTrafficMirrorTargets(
    DescribeTrafficMirrorTargetsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTrafficMirrorTargetsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more attachments between resources and transit gateways. By default, all attachments are described. Alternatively, you can filter the results by attachment ID, attachment state, resource ID, or resource owner.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayAttachment>, int,
          String>> describeTransitGatewayAttachments(
    DescribeTransitGatewayAttachmentsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewayAttachmentsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more Connect peers.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayConnectPeer>, int,
          String>> describeTransitGatewayConnectPeers(
    DescribeTransitGatewayConnectPeersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewayConnectPeersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more Connect attachments.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<TransitGatewayConnect>, int, String>>
      describeTransitGatewayConnects(
    DescribeTransitGatewayConnectsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewayConnectsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more transit gateway multicast domains.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayMulticastDomain>, int,
          String>> describeTransitGatewayMulticastDomains(
    DescribeTransitGatewayMulticastDomainsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewayMulticastDomainsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes your transit gateway peering attachments.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayPeeringAttachment>, int,
          String>> describeTransitGatewayPeeringAttachments(
    DescribeTransitGatewayPeeringAttachmentsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewayPeeringAttachmentsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more transit gateway route policy tables.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayPolicyTable>, int,
          String>> describeTransitGatewayPolicyTables(
    DescribeTransitGatewayPolicyTablesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewayPolicyTablesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more transit gateway route table advertisements.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayRouteTableAnnouncement>,
          int, String>> describeTransitGatewayRouteTableAnnouncements(
    DescribeTransitGatewayRouteTableAnnouncementsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewayRouteTableAnnouncementsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more transit gateway route tables. By default, all transit gateway route tables are described. Alternatively, you can filter the results.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayRouteTable>, int,
          String>> describeTransitGatewayRouteTables(
    DescribeTransitGatewayRouteTablesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewayRouteTablesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more VPC attachments. By default, all VPC attachments are described. Alternatively, you can filter the results.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayVpcAttachment>, int,
          String>> describeTransitGatewayVpcAttachments(
    DescribeTransitGatewayVpcAttachmentsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewayVpcAttachmentsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more transit gateways. By default, all transit gateways are described. Alternatively, you can filter the results.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<TransitGateway>, int, String>>
      describeTransitGateways(
    DescribeTransitGatewaysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTransitGatewaysOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// This API action is currently in **limited preview only**. If you are interested in using this feature, contact your account manager.
  ///
  /// Describes one or more network interface trunk associations.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TrunkInterfaceAssociation>, int,
          String>> describeTrunkInterfaceAssociations(
    DescribeTrunkInterfaceAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeTrunkInterfaceAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Amazon Web Services Verified Access endpoints.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<VerifiedAccessEndpoint>, int, String>>
      describeVerifiedAccessEndpoints(
    DescribeVerifiedAccessEndpointsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVerifiedAccessEndpointsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Verified Access groups.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<VerifiedAccessGroup>, int, String>>
      describeVerifiedAccessGroups(
    DescribeVerifiedAccessGroupsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVerifiedAccessGroupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Amazon Web Services Verified Access instances.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i4.BuiltList<VerifiedAccessInstanceLoggingConfiguration>,
          int,
          String>> describeVerifiedAccessInstanceLoggingConfigurations(
    DescribeVerifiedAccessInstanceLoggingConfigurationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVerifiedAccessInstanceLoggingConfigurationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Amazon Web Services Verified Access instances.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<VerifiedAccessInstance>, int, String>>
      describeVerifiedAccessInstances(
    DescribeVerifiedAccessInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVerifiedAccessInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified Amazon Web Services Verified Access trust providers.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<VerifiedAccessTrustProvider>, int,
          String>> describeVerifiedAccessTrustProviders(
    DescribeVerifiedAccessTrustProvidersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVerifiedAccessTrustProvidersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified attribute of the specified volume. You can specify only one attribute at a time.
  ///
  /// For more information about EBS volumes, see [Amazon EBS volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<DescribeVolumeAttributeResult> describeVolumeAttribute(
    DescribeVolumeAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVolumeAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the status of the specified volumes. Volume status provides the result of the checks performed on your volumes to determine events that can impair the performance of your volumes. The performance of a volume can be affected if an issue occurs on the volume's underlying host. If the volume's underlying host experiences a power outage or system issue, after the system is restored, there could be data inconsistencies on the volume. Volume events notify you if this occurs. Volume actions notify you if any action needs to be taken in response to the event.
  ///
  /// The `DescribeVolumeStatus` operation provides the following information about the specified volumes:
  ///
  /// _Status_: Reflects the current status of the volume. The possible values are `ok`, `impaired` , `warning`, or `insufficient-data`. If all checks pass, the overall status of the volume is `ok`. If the check fails, the overall status is `impaired`. If the status is `insufficient-data`, then the checks might still be taking place on your volume at the time. We recommend that you retry the request. For more information about volume status, see [Monitor the status of your volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// _Events_: Reflect the cause of a volume status and might require you to take action. For example, if your volume returns an `impaired` status, then the volume event might be `potential-data-inconsistency`. This means that your volume has been affected by an issue with the underlying host, has all I/O operations disabled, and might have inconsistent data.
  ///
  /// _Actions_: Reflect the actions you might have to take in response to an event. For example, if the status of the volume is `impaired` and the volume event shows `potential-data-inconsistency`, then the action shows `enable-volume-io`. This means that you may want to enable the I/O operations for the volume by calling the EnableVolumeIO action and then check the volume for data consistency.
  ///
  /// Volume status is based on the volume status checks, and does not reflect the volume state. Therefore, volume status does not indicate volumes in the `error` state (for example, when a volume is incapable of accepting I/O.)
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<VolumeStatusItem>, int, String>>
      describeVolumeStatus(
    DescribeVolumeStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVolumeStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified EBS volumes or all of your EBS volumes.
  ///
  /// If you are describing a long list of volumes, we recommend that you paginate the output to make the list more manageable. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  ///
  /// For more information about EBS volumes, see [Amazon EBS volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Volume>, int, String>>
      describeVolumes(
    DescribeVolumesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVolumesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the most recent volume modification request for the specified EBS volumes.
  ///
  /// If a volume has never been modified, some information in the output will be null. If a volume has been modified more than once, the output includes only the most recent modification request.
  ///
  /// You can also use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). For more information, see [Monitor the progress of volume modifications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-modifications.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<VolumeModification>, int, String>>
      describeVolumesModifications(
    DescribeVolumesModificationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVolumesModificationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the specified attribute of the specified VPC. You can specify only one attribute at a time.
  _i3.SmithyOperation<DescribeVpcAttributeResult> describeVpcAttribute(
    DescribeVpcAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Describes the ClassicLink status of the specified VPCs.
  _i3.SmithyOperation<DescribeVpcClassicLinkResult> describeVpcClassicLink(
    DescribeVpcClassicLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcClassicLinkOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Describes the ClassicLink DNS support status of one or more VPCs. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<ClassicLinkDnsSupport>, int, String>>
      describeVpcClassicLinkDnsSupport(
    DescribeVpcClassicLinkDnsSupportRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcClassicLinkDnsSupportOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the connection notifications for VPC endpoints and VPC endpoint services.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<ConnectionNotification>, int, String>>
      describeVpcEndpointConnectionNotifications(
    DescribeVpcEndpointConnectionNotificationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcEndpointConnectionNotificationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<VpcEndpointConnection>, int, String>>
      describeVpcEndpointConnections(
    DescribeVpcEndpointConnectionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcEndpointConnectionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the VPC endpoint service configurations in your account (your services).
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ServiceConfiguration>, int, String>>
      describeVpcEndpointServiceConfigurations(
    DescribeVpcEndpointServiceConfigurationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcEndpointServiceConfigurationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the principals (service consumers) that are permitted to discover your VPC endpoint service.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<AllowedPrincipal>, int, String>>
      describeVpcEndpointServicePermissions(
    DescribeVpcEndpointServicePermissionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcEndpointServicePermissionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes available services to which you can create a VPC endpoint.
  ///
  /// When the service provider and the consumer have different accounts in multiple Availability Zones, and the consumer views the VPC endpoint service information, the response only includes the common Availability Zones. For example, when the service provider account uses `us-east-1a` and `us-east-1c` and the consumer uses `us-east-1a` and `us-east-1b`, the response includes the VPC endpoint services in the common Availability Zone, `us-east-1a`.
  _i3.SmithyOperation<DescribeVpcEndpointServicesResult>
      describeVpcEndpointServices(
    DescribeVpcEndpointServicesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcEndpointServicesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes your VPC endpoints.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<VpcEndpoint>, int, String>>
      describeVpcEndpoints(
    DescribeVpcEndpointsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcEndpointsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your VPC peering connections.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<VpcPeeringConnection>, int, String>>
      describeVpcPeeringConnections(
    DescribeVpcPeeringConnectionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcPeeringConnectionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your VPCs.
  _i3.SmithyOperation<_i3.PaginatedResult<_i4.BuiltList<Vpc>, int, String>>
      describeVpcs(
    DescribeVpcsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpcsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your VPN connections.
  ///
  /// For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  _i3.SmithyOperation<DescribeVpnConnectionsResult> describeVpnConnections(
    DescribeVpnConnectionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpnConnectionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes one or more of your virtual private gateways.
  ///
  /// For more information, see [Amazon Web Services Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  _i3.SmithyOperation<DescribeVpnGatewaysResult> describeVpnGateways(
    DescribeVpnGatewaysRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DescribeVpnGatewaysOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the instance has been unlinked, the VPC security groups are no longer associated with it. An instance is automatically unlinked from a VPC when it's stopped.
  _i3.SmithyOperation<DetachClassicLinkVpcResult> detachClassicLinkVpc(
    DetachClassicLinkVpcRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DetachClassicLinkVpcOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Detaches an internet gateway from a VPC, disabling connectivity between the internet and the VPC. The VPC must not contain any running instances with Elastic IP addresses or public IPv4 addresses.
  _i3.SmithyOperation<void> detachInternetGateway(
    DetachInternetGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DetachInternetGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Detaches a network interface from an instance.
  _i3.SmithyOperation<void> detachNetworkInterface(
    DetachNetworkInterfaceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DetachNetworkInterfaceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Detaches the specified Amazon Web Services Verified Access trust provider from the specified Amazon Web Services Verified Access instance.
  _i3.SmithyOperation<DetachVerifiedAccessTrustProviderResult>
      detachVerifiedAccessTrustProvider(
    DetachVerifiedAccessTrustProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DetachVerifiedAccessTrustProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Detaches an EBS volume from an instance. Make sure to unmount any file systems on the device within your operating system before detaching the volume. Failure to do so can result in the volume becoming stuck in the `busy` state while detaching. If this happens, detachment can be delayed indefinitely until you unmount the volume, force detachment, reboot the instance, or all three. If an EBS volume is the root device of an instance, it can't be detached while the instance is running. To detach the root volume, stop the instance first.
  ///
  /// When a volume with an Amazon Web Services Marketplace product code is detached from an instance, the product code is no longer associated with the instance.
  ///
  /// For more information, see [Detach an Amazon EBS volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<VolumeAttachment> detachVolume(
    DetachVolumeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DetachVolumeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Detaches a virtual private gateway from a VPC. You do this if you're planning to turn off the VPC and not use it anymore. You can confirm a virtual private gateway has been completely detached from a VPC by describing the virtual private gateway (any attachments to the virtual private gateway are also described).
  ///
  /// You must wait for the attachment's state to switch to `detached` before you can delete the VPC or attach a different VPC to the virtual private gateway.
  _i3.SmithyOperation<void> detachVpnGateway(
    DetachVpnGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DetachVpnGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disables Elastic IP address transfer. For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro) in the _Amazon Virtual Private Cloud User Guide_.
  _i3.SmithyOperation<DisableAddressTransferResult> disableAddressTransfer(
    DisableAddressTransferRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableAddressTransferOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disables Infrastructure Performance metric subscriptions.
  _i3.SmithyOperation<DisableAwsNetworkPerformanceMetricSubscriptionResult>
      disableAwsNetworkPerformanceMetricSubscription(
    DisableAwsNetworkPerformanceMetricSubscriptionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableAwsNetworkPerformanceMetricSubscriptionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disables EBS encryption by default for your account in the current Region.
  ///
  /// After you disable encryption by default, you can still create encrypted volumes by enabling encryption when you create each volume.
  ///
  /// Disabling encryption by default does not change the encryption status of your existing volumes.
  ///
  /// For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<DisableEbsEncryptionByDefaultResult>
      disableEbsEncryptionByDefault(
    DisableEbsEncryptionByDefaultRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableEbsEncryptionByDefaultOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Discontinue faster launching for a Windows AMI, and clean up existing pre-provisioned snapshots. When you disable faster launching, the AMI uses the standard launch process for each instance. All pre-provisioned snapshots must be removed before you can enable faster launching again.
  ///
  /// To change these settings, you must own the AMI.
  _i3.SmithyOperation<DisableFastLaunchResult> disableFastLaunch(
    DisableFastLaunchRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableFastLaunchOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disables fast snapshot restores for the specified snapshots in the specified Availability Zones.
  _i3.SmithyOperation<DisableFastSnapshotRestoresResult>
      disableFastSnapshotRestores(
    DisableFastSnapshotRestoresRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableFastSnapshotRestoresOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Cancels the deprecation of the specified AMI.
  ///
  /// For more information, see [Deprecate an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DisableImageDeprecationResult> disableImageDeprecation(
    DisableImageDeprecationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableImageDeprecationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disable the IPAM account. For more information, see [Enable integration with Organizations](https://docs.aws.amazon.com/vpc/latest/ipam/enable-integ-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<DisableIpamOrganizationAdminAccountResult>
      disableIpamOrganizationAdminAccount(
    DisableIpamOrganizationAdminAccountRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableIpamOrganizationAdminAccountOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disables access to the EC2 serial console of all instances for your account. By default, access to the EC2 serial console is disabled for your account. For more information, see [Manage account access to the EC2 serial console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DisableSerialConsoleAccessResult>
      disableSerialConsoleAccess(
    DisableSerialConsoleAccessRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableSerialConsoleAccessOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disables the specified resource attachment from propagating routes to the specified propagation route table.
  _i3.SmithyOperation<DisableTransitGatewayRouteTablePropagationResult>
      disableTransitGatewayRouteTablePropagation(
    DisableTransitGatewayRouteTablePropagationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableTransitGatewayRouteTablePropagationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC.
  _i3.SmithyOperation<void> disableVgwRoutePropagation(
    DisableVgwRoutePropagationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableVgwRoutePropagationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC that has EC2-Classic instances linked to it.
  _i3.SmithyOperation<DisableVpcClassicLinkResult> disableVpcClassicLink(
    DisableVpcClassicLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableVpcClassicLinkOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames resolve to public IP addresses when addressed between a linked EC2-Classic instance and instances in the VPC to which it's linked.
  ///
  /// You must specify a VPC ID in the request.
  _i3.SmithyOperation<DisableVpcClassicLinkDnsSupportResult>
      disableVpcClassicLinkDnsSupport(
    DisableVpcClassicLinkDnsSupportRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisableVpcClassicLinkDnsSupportOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates an Elastic IP address from the instance or network interface it's associated with.
  ///
  /// This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.
  _i3.SmithyOperation<void> disassociateAddress(
    DisassociateAddressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateAddressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates a target network from the specified Client VPN endpoint. When you disassociate the last target network from a Client VPN, the following happens:
  ///
  /// *   The route that was automatically added for the VPC is deleted
  ///
  /// *   All active client connections are terminated
  ///
  /// *   New client connections are disallowed
  ///
  /// *   The Client VPN endpoint's status changes to `pending-associate`
  _i3.SmithyOperation<DisassociateClientVpnTargetNetworkResult>
      disassociateClientVpnTargetNetwork(
    DisassociateClientVpnTargetNetworkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateClientVpnTargetNetworkOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates an IAM role from an Certificate Manager (ACM) certificate. Disassociating an IAM role from an ACM certificate removes the Amazon S3 object that contains the certificate, certificate chain, and encrypted private key from the Amazon S3 bucket. It also revokes the IAM role's permission to use the KMS key used to encrypt the private key. This effectively revokes the role's permission to use the certificate.
  _i3.SmithyOperation<DisassociateEnclaveCertificateIamRoleResult>
      disassociateEnclaveCertificateIamRole(
    DisassociateEnclaveCertificateIamRoleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateEnclaveCertificateIamRoleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates an IAM instance profile from a running or stopped instance.
  ///
  /// Use DescribeIamInstanceProfileAssociations to get the association ID.
  _i3.SmithyOperation<DisassociateIamInstanceProfileResult>
      disassociateIamInstanceProfile(
    DisassociateIamInstanceProfileRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateIamInstanceProfileOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates one or more targets from an event window.
  ///
  /// For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<DisassociateInstanceEventWindowResult>
      disassociateInstanceEventWindow(
    DisassociateInstanceEventWindowRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateInstanceEventWindowOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates a resource discovery from an Amazon VPC IPAM. A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
  _i3.SmithyOperation<DisassociateIpamResourceDiscoveryResult>
      disassociateIpamResourceDiscovery(
    DisassociateIpamResourceDiscoveryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateIpamResourceDiscoveryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates secondary Elastic IP addresses (EIPs) from a public NAT gateway. You cannot disassociate your primary EIP. For more information, see [Edit secondary IP address associations](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-edit-secondary) in the _Amazon VPC User Guide_.
  ///
  /// While disassociating is in progress, you cannot associate/disassociate additional EIPs while the connections are being drained. You are, however, allowed to delete the NAT gateway.
  ///
  /// An EIP is released only at the end of MaxDrainDurationSeconds. It stays associated and supports the existing connections but does not support any new connections (new connections are distributed across the remaining associated EIPs). As the existing connections drain out, the EIPs (and the corresponding private IP addresses mapped to them) are released.
  _i3.SmithyOperation<DisassociateNatGatewayAddressResult>
      disassociateNatGatewayAddress(
    DisassociateNatGatewayAddressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateNatGatewayAddressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates a subnet or gateway from a route table.
  ///
  /// After you perform this action, the subnet no longer uses the routes in the route table. Instead, it uses the routes in the VPC's main route table. For more information about route tables, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<void> disassociateRouteTable(
    DisassociateRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates a CIDR block from a subnet. Currently, you can disassociate an IPv6 CIDR block only. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it.
  _i3.SmithyOperation<DisassociateSubnetCidrBlockResult>
      disassociateSubnetCidrBlock(
    DisassociateSubnetCidrBlockRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateSubnetCidrBlockOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates the specified subnets from the transit gateway multicast domain.
  _i3.SmithyOperation<DisassociateTransitGatewayMulticastDomainResult>
      disassociateTransitGatewayMulticastDomain(
    DisassociateTransitGatewayMulticastDomainRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateTransitGatewayMulticastDomainOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the association between an an attachment and a policy table.
  _i3.SmithyOperation<DisassociateTransitGatewayPolicyTableResult>
      disassociateTransitGatewayPolicyTable(
    DisassociateTransitGatewayPolicyTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateTransitGatewayPolicyTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates a resource attachment from a transit gateway route table.
  _i3.SmithyOperation<DisassociateTransitGatewayRouteTableResult>
      disassociateTransitGatewayRouteTable(
    DisassociateTransitGatewayRouteTableRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateTransitGatewayRouteTableOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This API action is currently in **limited preview only**. If you are interested in using this feature, contact your account manager.
  ///
  /// Removes an association between a branch network interface with a trunk network interface.
  _i3.SmithyOperation<DisassociateTrunkInterfaceResult>
      disassociateTrunkInterface(
    DisassociateTrunkInterfaceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateTrunkInterfaceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disassociates a CIDR block from a VPC. To disassociate the CIDR block, you must specify its association ID. You can get the association ID by using DescribeVpcs. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it.
  ///
  /// You cannot disassociate the CIDR block with which you originally created the VPC (the primary CIDR block).
  _i3.SmithyOperation<DisassociateVpcCidrBlockResult> disassociateVpcCidrBlock(
    DisassociateVpcCidrBlockRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return DisassociateVpcCidrBlockOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables Elastic IP address transfer. For more information, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro) in the _Amazon Virtual Private Cloud User Guide_.
  _i3.SmithyOperation<EnableAddressTransferResult> enableAddressTransfer(
    EnableAddressTransferRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableAddressTransferOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables Infrastructure Performance subscriptions.
  _i3.SmithyOperation<EnableAwsNetworkPerformanceMetricSubscriptionResult>
      enableAwsNetworkPerformanceMetricSubscription(
    EnableAwsNetworkPerformanceMetricSubscriptionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableAwsNetworkPerformanceMetricSubscriptionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables EBS encryption by default for your account in the current Region.
  ///
  /// After you enable encryption by default, the EBS volumes that you create are always encrypted, either using the default KMS key or the KMS key that you specified when you created each volume. For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// You can specify the default KMS key for encryption by default using ModifyEbsDefaultKmsKeyId or ResetEbsDefaultKmsKeyId.
  ///
  /// Enabling encryption by default has no effect on the encryption status of your existing volumes.
  ///
  /// After you enable encryption by default, you can no longer launch instances using instance types that do not support encryption. For more information, see [Supported instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).
  _i3.SmithyOperation<EnableEbsEncryptionByDefaultResult>
      enableEbsEncryptionByDefault(
    EnableEbsEncryptionByDefaultRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableEbsEncryptionByDefaultOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// When you enable faster launching for a Windows AMI, images are pre-provisioned, using snapshots to launch instances up to 65% faster. To create the optimized Windows image, Amazon EC2 launches an instance and runs through Sysprep steps, rebooting as required. Then it creates a set of reserved snapshots that are used for subsequent launches. The reserved snapshots are automatically replenished as they are used, depending on your settings for launch frequency.
  ///
  /// To change these settings, you must own the AMI.
  _i3.SmithyOperation<EnableFastLaunchResult> enableFastLaunch(
    EnableFastLaunchRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableFastLaunchOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables fast snapshot restores for the specified snapshots in the specified Availability Zones.
  ///
  /// You get the full benefit of fast snapshot restores after they enter the `enabled` state. To get the current state of fast snapshot restores, use DescribeFastSnapshotRestores. To disable fast snapshot restores, use DisableFastSnapshotRestores.
  ///
  /// For more information, see [Amazon EBS fast snapshot restore](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-fast-snapshot-restore.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<EnableFastSnapshotRestoresResult>
      enableFastSnapshotRestores(
    EnableFastSnapshotRestoresRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableFastSnapshotRestoresOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables deprecation of the specified AMI at the specified date and time.
  ///
  /// For more information, see [Deprecate an AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<EnableImageDeprecationResult> enableImageDeprecation(
    EnableImageDeprecationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableImageDeprecationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enable an Organizations member account as the IPAM admin account. You cannot select the Organizations management account as the IPAM admin account. For more information, see [Enable integration with Organizations](https://docs.aws.amazon.com/vpc/latest/ipam/enable-integ-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<EnableIpamOrganizationAdminAccountResult>
      enableIpamOrganizationAdminAccount(
    EnableIpamOrganizationAdminAccountRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableIpamOrganizationAdminAccountOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Establishes a trust relationship between Reachability Analyzer and Organizations. This operation must be performed by the management account for the organization.
  ///
  /// After you establish a trust relationship, a user in the management account or a delegated administrator account can run a cross-account analysis using resources from the member accounts.
  _i3.SmithyOperation<EnableReachabilityAnalyzerOrganizationSharingResult>
      enableReachabilityAnalyzerOrganizationSharing(
    EnableReachabilityAnalyzerOrganizationSharingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableReachabilityAnalyzerOrganizationSharingOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables access to the EC2 serial console of all instances for your account. By default, access to the EC2 serial console is disabled for your account. For more information, see [Manage account access to the EC2 serial console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<EnableSerialConsoleAccessResult>
      enableSerialConsoleAccess(
    EnableSerialConsoleAccessRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableSerialConsoleAccessOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables the specified attachment to propagate routes to the specified propagation route table.
  _i3.SmithyOperation<EnableTransitGatewayRouteTablePropagationResult>
      enableTransitGatewayRouteTablePropagation(
    EnableTransitGatewayRouteTablePropagationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableTransitGatewayRouteTablePropagationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC.
  _i3.SmithyOperation<void> enableVgwRoutePropagation(
    EnableVgwRoutePropagationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableVgwRoutePropagationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent.
  _i3.SmithyOperation<void> enableVolumeIo(
    EnableVolumeIoRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableVolumeIoOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Enables a VPC for ClassicLink. You can then link EC2-Classic instances to your ClassicLink-enabled VPC to allow communication over private IP addresses. You cannot enable your VPC for ClassicLink if any of your VPC route tables have existing routes for address ranges within the `10.0.0.0/8` IP address range, excluding local routes for VPCs in the `10.0.0.0/16` and `10.1.0.0/16` IP address ranges.
  _i3.SmithyOperation<EnableVpcClassicLinkResult> enableVpcClassicLink(
    EnableVpcClassicLinkRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableVpcClassicLinkOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Enables a VPC to support DNS hostname resolution for ClassicLink. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance.
  ///
  /// You must specify a VPC ID in the request.
  _i3.SmithyOperation<EnableVpcClassicLinkDnsSupportResult>
      enableVpcClassicLinkDnsSupport(
    EnableVpcClassicLinkDnsSupportRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return EnableVpcClassicLinkDnsSupportOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Downloads the client certificate revocation list for the specified Client VPN endpoint.
  _i3.SmithyOperation<ExportClientVpnClientCertificateRevocationListResult>
      exportClientVpnClientCertificateRevocationList(
    ExportClientVpnClientCertificateRevocationListRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ExportClientVpnClientCertificateRevocationListOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Downloads the contents of the Client VPN endpoint configuration file for the specified Client VPN endpoint. The Client VPN endpoint configuration file includes the Client VPN endpoint and certificate information clients need to establish a connection with the Client VPN endpoint.
  _i3.SmithyOperation<ExportClientVpnClientConfigurationResult>
      exportClientVpnClientConfiguration(
    ExportClientVpnClientConfigurationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ExportClientVpnClientConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Exports an Amazon Machine Image (AMI) to a VM file. For more information, see [Exporting a VM directly from an Amazon Machine Image (AMI)](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport_image.html) in the _VM Import/Export User Guide_.
  _i3.SmithyOperation<ExportImageResult> exportImage(
    ExportImageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ExportImageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Exports routes from the specified transit gateway route table to the specified S3 bucket. By default, all routes are exported. Alternatively, you can filter by CIDR range.
  ///
  /// The routes are saved to the specified bucket in a JSON file. For more information, see [Export Route Tables to Amazon S3](https://docs.aws.amazon.com/vpc/latest/tgw/tgw-route-tables.html#tgw-export-route-tables) in _Transit Gateways_.
  _i3.SmithyOperation<ExportTransitGatewayRoutesResult>
      exportTransitGatewayRoutes(
    ExportTransitGatewayRoutesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ExportTransitGatewayRoutesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the IAM roles that are associated with the specified ACM (ACM) certificate. It also returns the name of the Amazon S3 bucket and the Amazon S3 object key where the certificate, certificate chain, and encrypted private key bundle are stored, and the ARN of the KMS key that's used to encrypt the private key.
  _i3.SmithyOperation<GetAssociatedEnclaveCertificateIamRolesResult>
      getAssociatedEnclaveCertificateIamRoles(
    GetAssociatedEnclaveCertificateIamRolesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAssociatedEnclaveCertificateIamRolesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Gets information about the IPv6 CIDR block associations for a specified IPv6 address pool.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<Ipv6CidrAssociation>, int, String>>
      getAssociatedIpv6PoolCidrs(
    GetAssociatedIpv6PoolCidrsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAssociatedIpv6PoolCidrsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets network performance data.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<DataResponse>, int, String>>
      getAwsNetworkPerformanceData(
    GetAwsNetworkPerformanceDataRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetAwsNetworkPerformanceDataOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets usage information about a Capacity Reservation. If the Capacity Reservation is shared, it shows usage information for the Capacity Reservation owner and each Amazon Web Services account that is currently using the shared capacity. If the Capacity Reservation is not shared, it shows only the Capacity Reservation owner's usage.
  _i3.SmithyOperation<GetCapacityReservationUsageResult>
      getCapacityReservationUsage(
    GetCapacityReservationUsageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetCapacityReservationUsageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the allocations from the specified customer-owned address pool.
  _i3.SmithyOperation<GetCoipPoolUsageResult> getCoipPoolUsage(
    GetCoipPoolUsageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetCoipPoolUsageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Gets the console output for the specified instance. For Linux instances, the instance console output displays the exact console output that would normally be displayed on a physical monitor attached to a computer. For Windows instances, the instance console output includes the last three system event log errors.
  ///
  /// By default, the console output returns buffered information that was posted shortly after an instance transition state (start, stop, reboot, or terminate). This information is available for at least one hour after the most recent post. Only the most recent 64 KB of console output is available.
  ///
  /// You can optionally retrieve the latest serial console output at any time during the instance lifecycle. This option is supported on instance types that use the Nitro hypervisor.
  ///
  /// For more information, see [Instance console output](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html#instance-console-console-output) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<GetConsoleOutputResult> getConsoleOutput(
    GetConsoleOutputRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetConsoleOutputOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieve a JPG-format screenshot of a running instance to help with troubleshooting.
  ///
  /// The returned content is Base64-encoded.
  _i3.SmithyOperation<GetConsoleScreenshotResult> getConsoleScreenshot(
    GetConsoleScreenshotRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetConsoleScreenshotOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the default credit option for CPU usage of a burstable performance instance family.
  ///
  /// For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<GetDefaultCreditSpecificationResult>
      getDefaultCreditSpecification(
    GetDefaultCreditSpecificationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetDefaultCreditSpecificationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes the default KMS key for EBS encryption by default for your account in this Region. You can change the default KMS key for encryption by default using ModifyEbsDefaultKmsKeyId or ResetEbsDefaultKmsKeyId.
  ///
  /// For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<GetEbsDefaultKmsKeyIdResult> getEbsDefaultKmsKeyId(
    GetEbsDefaultKmsKeyIdRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetEbsDefaultKmsKeyIdOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Describes whether EBS encryption by default is enabled for your account in the current Region.
  ///
  /// For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<GetEbsEncryptionByDefaultResult>
      getEbsEncryptionByDefault(
    GetEbsEncryptionByDefaultRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetEbsEncryptionByDefaultOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Generates a CloudFormation template that streamlines and automates the integration of VPC flow logs with Amazon Athena. This make it easier for you to query and gain insights from VPC flow logs data. Based on the information that you provide, we configure resources in the template to do the following:
  ///
  /// *   Create a table in Athena that maps fields to a custom log format
  ///
  /// *   Create a Lambda function that updates the table with new partitions on a daily, weekly, or monthly basis
  ///
  /// *   Create a table partitioned between two timestamps in the past
  ///
  /// *   Create a set of named queries in Athena that you can use to get started quickly
  ///
  ///
  /// `GetFlowLogsIntegrationTemplate` does not support integration between Amazon Web Services Transit Gateway Flow Logs and Amazon Athena.
  _i3.SmithyOperation<GetFlowLogsIntegrationTemplateResult>
      getFlowLogsIntegrationTemplate(
    GetFlowLogsIntegrationTemplateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetFlowLogsIntegrationTemplateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the resource groups to which a Capacity Reservation has been added.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<CapacityReservationGroup>, int,
          String>> getGroupsForCapacityReservation(
    GetGroupsForCapacityReservationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetGroupsForCapacityReservationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Preview a reservation purchase with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation.
  ///
  /// This is a preview of the PurchaseHostReservation action and does not result in the offering being purchased.
  _i3.SmithyOperation<GetHostReservationPurchasePreviewResult>
      getHostReservationPurchasePreview(
    GetHostReservationPurchasePreviewRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetHostReservationPurchasePreviewOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of instance types with the specified instance attributes. You can use the response to preview the instance types without launching instances. Note that the response does not consider capacity.
  ///
  /// When you specify multiple parameters, you get instance types that satisfy all of the specified parameters. If you specify multiple values for a parameter, you get instance types that satisfy any of the specified values.
  ///
  /// For more information, see [Preview instance types with specified attributes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html#spotfleet-get-instance-types-from-instance-requirements), [Attribute-based instance type selection for EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html), [Attribute-based instance type selection for Spot Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html), and [Spot placement score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html) in the _Amazon EC2 User Guide_, and [Creating an Auto Scaling group using attribute-based instance type selection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html) in the _Amazon EC2 Auto Scaling User Guide_.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i4.BuiltList<InstanceTypeInfoFromInstanceRequirements>,
          int,
          String>> getInstanceTypesFromInstanceRequirements(
    GetInstanceTypesFromInstanceRequirementsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetInstanceTypesFromInstanceRequirementsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// A binary representation of the UEFI variable store. Only non-volatile variables are stored. This is a base64 encoded and zlib compressed binary value that must be properly encoded.
  ///
  /// When you use [register-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/register-image.html) to create an AMI, you can create an exact copy of your variable store by passing the UEFI data in the `UefiData` parameter. You can modify the UEFI data by using the [python-uefivars tool](https://github.com/awslabs/python-uefivars) on GitHub. You can use the tool to convert the UEFI data into a human-readable format (JSON), which you can inspect and modify, and then convert back into the binary format to use with register-image.
  ///
  /// For more information, see [UEFI Secure Boot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<GetInstanceUefiDataResult> getInstanceUefiData(
    GetInstanceUefiDataRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetInstanceUefiDataOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieve historical information about a CIDR within an IPAM scope. For more information, see [View the history of IP addresses](https://docs.aws.amazon.com/vpc/latest/ipam/view-history-cidr-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<IpamAddressHistoryRecord>, int,
          String>> getIpamAddressHistory(
    GetIpamAddressHistoryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetIpamAddressHistoryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets IPAM discovered accounts. A discovered account is an Amazon Web Services account that is monitored under a resource discovery. If you have integrated IPAM with Amazon Web Services Organizations, all accounts in the organization are discovered accounts. Only the IPAM account can get all discovered accounts in the organization.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<IpamDiscoveredAccount>, int, String>>
      getIpamDiscoveredAccounts(
    GetIpamDiscoveredAccountsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetIpamDiscoveredAccountsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns the resource CIDRs that are monitored as part of a resource discovery. A discovered resource is a resource CIDR monitored under a resource discovery. The following resources can be discovered: VPCs, Public IPv4 pools, VPC subnets, and Elastic IP addresses.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<IpamDiscoveredResourceCidr>, int,
          String>> getIpamDiscoveredResourceCidrs(
    GetIpamDiscoveredResourceCidrsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetIpamDiscoveredResourceCidrsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Get a list of all the CIDR allocations in an IPAM pool. The Region you use should be the IPAM pool locale. The locale is the Amazon Web Services Region where this IPAM pool is available for allocations.
  ///
  /// If you use this action after [AllocateIpamPoolCidr](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AllocateIpamPoolCidr.html) or [ReleaseIpamPoolAllocation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html), note that all EC2 API actions follow an [eventual consistency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#eventual-consistency) model.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<IpamPoolAllocation>, int, String>>
      getIpamPoolAllocations(
    GetIpamPoolAllocationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetIpamPoolAllocationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Get the CIDRs provisioned to an IPAM pool.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<IpamPoolCidr>, int, String>>
      getIpamPoolCidrs(
    GetIpamPoolCidrsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetIpamPoolCidrsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns resource CIDRs managed by IPAM in a given scope. If an IPAM is associated with more than one resource discovery, the resource CIDRs across all of the resource discoveries is returned. A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<IpamResourceCidr>, int, String>>
      getIpamResourceCidrs(
    GetIpamResourceCidrsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetIpamResourceCidrsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the configuration data of the specified instance. You can use this data to create a launch template.
  ///
  /// This action calls on other describe actions to get instance information. Depending on your instance configuration, you may need to allow the following actions in your IAM policy: `DescribeSpotInstanceRequests`, `DescribeInstanceCreditSpecifications`, `DescribeVolumes`, `DescribeInstanceAttribute`, and `DescribeElasticGpus`. Or, you can allow `describe*` depending on your instance requirements.
  _i3.SmithyOperation<GetLaunchTemplateDataResult> getLaunchTemplateData(
    GetLaunchTemplateDataRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetLaunchTemplateDataOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Gets information about the resources that are associated with the specified managed prefix list.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<PrefixListAssociation>, int, String>>
      getManagedPrefixListAssociations(
    GetManagedPrefixListAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetManagedPrefixListAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets information about the entries for a specified managed prefix list.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<PrefixListEntry>, int, String>>
      getManagedPrefixListEntries(
    GetManagedPrefixListEntriesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetManagedPrefixListEntriesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets the findings for the specified Network Access Scope analysis.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<AccessScopeAnalysisFinding>, int,
          String>> getNetworkInsightsAccessScopeAnalysisFindings(
    GetNetworkInsightsAccessScopeAnalysisFindingsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetNetworkInsightsAccessScopeAnalysisFindingsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets the content for the specified Network Access Scope.
  _i3.SmithyOperation<GetNetworkInsightsAccessScopeContentResult>
      getNetworkInsightsAccessScopeContent(
    GetNetworkInsightsAccessScopeContentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetNetworkInsightsAccessScopeContentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the encrypted administrator password for a running Windows instance.
  ///
  /// The Windows password is generated at boot by the `EC2Config` service or `EC2Launch` scripts (Windows Server 2016 and later). This usually only happens the first time an instance is launched. For more information, see [EC2Config](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html) and [EC2Launch](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html) in the _Amazon EC2 User Guide_.
  ///
  /// For the `EC2Config` service, the password is not generated for rebundled AMIs unless `Ec2SetPassword` is enabled before bundling.
  ///
  /// The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file.
  ///
  /// When you launch an instance, password generation and encryption may take a few minutes. If you try to retrieve the password before it's available, the output returns an empty string. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.
  _i3.SmithyOperation<GetPasswordDataResult> getPasswordData(
    GetPasswordDataRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetPasswordDataOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance. If the exchange cannot be performed, the reason is returned in the response. Use AcceptReservedInstancesExchangeQuote to perform the exchange.
  _i3.SmithyOperation<GetReservedInstancesExchangeQuoteResult>
      getReservedInstancesExchangeQuote(
    GetReservedInstancesExchangeQuoteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetReservedInstancesExchangeQuoteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Retrieves the access status of your account to the EC2 serial console of all instances. By default, access to the EC2 serial console is disabled for your account. For more information, see [Manage account access to the EC2 serial console](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<GetSerialConsoleAccessStatusResult>
      getSerialConsoleAccessStatus(
    GetSerialConsoleAccessStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetSerialConsoleAccessStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Calculates the Spot placement score for a Region or Availability Zone based on the specified target capacity and compute requirements.
  ///
  /// You can specify your compute requirements either by using `InstanceRequirementsWithMetadata` and letting Amazon EC2 choose the optimal instance types to fulfill your Spot request, or you can specify the instance types by using `InstanceTypes`.
  ///
  /// For more information, see [Spot placement score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html) in the Amazon EC2 User Guide.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<SpotPlacementScore>, int, String>>
      getSpotPlacementScores(
    GetSpotPlacementScoresRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetSpotPlacementScoresOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets information about the subnet CIDR reservations.
  _i3.SmithyOperation<GetSubnetCidrReservationsResult>
      getSubnetCidrReservations(
    GetSubnetCidrReservationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetSubnetCidrReservationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists the route tables to which the specified resource attachment propagates routes.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayAttachmentPropagation>,
          int, String>> getTransitGatewayAttachmentPropagations(
    GetTransitGatewayAttachmentPropagationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetTransitGatewayAttachmentPropagationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets information about the associations for the transit gateway multicast domain.
  _i3.SmithyOperation<
      _i3.PaginatedResult<
          _i4.BuiltList<TransitGatewayMulticastDomainAssociation>,
          int,
          String>> getTransitGatewayMulticastDomainAssociations(
    GetTransitGatewayMulticastDomainAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetTransitGatewayMulticastDomainAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets a list of the transit gateway policy table associations.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayPolicyTableAssociation>,
          int, String>> getTransitGatewayPolicyTableAssociations(
    GetTransitGatewayPolicyTableAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetTransitGatewayPolicyTableAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Returns a list of transit gateway policy table entries.
  _i3.SmithyOperation<GetTransitGatewayPolicyTableEntriesResult>
      getTransitGatewayPolicyTableEntries(
    GetTransitGatewayPolicyTableEntriesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetTransitGatewayPolicyTableEntriesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Gets information about the prefix list references in a specified transit gateway route table.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayPrefixListReference>, int,
          String>> getTransitGatewayPrefixListReferences(
    GetTransitGatewayPrefixListReferencesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetTransitGatewayPrefixListReferencesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets information about the associations for the specified transit gateway route table.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayRouteTableAssociation>,
          int, String>> getTransitGatewayRouteTableAssociations(
    GetTransitGatewayRouteTableAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetTransitGatewayRouteTableAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Gets information about the route table propagations for the specified transit gateway route table.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayRouteTablePropagation>,
          int, String>> getTransitGatewayRouteTablePropagations(
    GetTransitGatewayRouteTablePropagationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetTransitGatewayRouteTablePropagationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Get the Verified Access policy associated with the endpoint.
  _i3.SmithyOperation<GetVerifiedAccessEndpointPolicyResult>
      getVerifiedAccessEndpointPolicy(
    GetVerifiedAccessEndpointPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetVerifiedAccessEndpointPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Shows the contents of the Verified Access policy associated with the group.
  _i3.SmithyOperation<GetVerifiedAccessGroupPolicyResult>
      getVerifiedAccessGroupPolicy(
    GetVerifiedAccessGroupPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetVerifiedAccessGroupPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Download an Amazon Web Services-provided sample configuration file to be used with the customer gateway device specified for your Site-to-Site VPN connection.
  _i3.SmithyOperation<GetVpnConnectionDeviceSampleConfigurationResult>
      getVpnConnectionDeviceSampleConfiguration(
    GetVpnConnectionDeviceSampleConfigurationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetVpnConnectionDeviceSampleConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Obtain a list of customer gateway devices for which sample configuration files can be provided. The request has no additional parameters. You can also see the list of device types with sample configuration files available under [Your customer gateway device](https://docs.aws.amazon.com/vpn/latest/s2svpn/your-cgw.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<VpnConnectionDeviceType>, int, String>>
      getVpnConnectionDeviceTypes(
    GetVpnConnectionDeviceTypesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetVpnConnectionDeviceTypesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Get details of available tunnel endpoint maintenance.
  _i3.SmithyOperation<GetVpnTunnelReplacementStatusResult>
      getVpnTunnelReplacementStatus(
    GetVpnTunnelReplacementStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return GetVpnTunnelReplacementStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Uploads a client certificate revocation list to the specified Client VPN endpoint. Uploading a client certificate revocation list overwrites the existing client certificate revocation list.
  ///
  /// Uploading a client certificate revocation list resets existing client connections.
  _i3.SmithyOperation<ImportClientVpnClientCertificateRevocationListResult>
      importClientVpnClientCertificateRevocationList(
    ImportClientVpnClientCertificateRevocationListRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ImportClientVpnClientCertificateRevocationListOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// To import your virtual machines (VMs) with a console-based experience, you can use the _Import virtual machine images to Amazon Web Services_ template in the [Migration Hub Orchestrator console](https://console.aws.amazon.com/migrationhub/orchestrator). For more information, see the [_Migration Hub Orchestrator User Guide_](https://docs.aws.amazon.com/migrationhub-orchestrator/latest/userguide/import-vm-images.html) .
  ///
  /// Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI).
  ///
  /// Amazon Web Services VM Import/Export strongly recommends specifying a value for either the `--license-type` or `--usage-operation` parameter when you create a new VM Import task. This ensures your operating system is licensed appropriately and your billing is optimized.
  ///
  /// For more information, see [Importing a VM as an image using VM Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html) in the _VM Import/Export User Guide_.
  _i3.SmithyOperation<ImportImageResult> importImage(
    ImportImageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ImportImageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// We recommend that you use the [`ImportImage`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html) API. For more information, see [Importing a VM as an image using VM Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html) in the _VM Import/Export User Guide_.
  ///
  /// Creates an import instance task using metadata from the specified disk image.
  ///
  /// This API action is not supported by the Command Line Interface (CLI). For information about using the Amazon EC2 CLI, which is deprecated, see [Importing a VM to Amazon EC2](https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#UsingVirtualMachinesinAmazonEC2) in the _Amazon EC2 CLI Reference_ PDF file.
  ///
  /// This API action supports only single-volume VMs. To import multi-volume VMs, use ImportImage instead.
  ///
  /// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  _i3.SmithyOperation<ImportInstanceResult> importInstance(
    ImportInstanceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ImportInstanceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Imports the public key from an RSA or ED25519 key pair that you created with a third-party tool. Compare this with CreateKeyPair, in which Amazon Web Services creates the key pair and gives the keys to you (Amazon Web Services keeps a copy of the public key). With ImportKeyPair, you create the key pair and give Amazon Web Services just the public key. The private key is never transferred between you and Amazon Web Services.
  ///
  /// For more information about key pairs, see [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<ImportKeyPairResult> importKeyPair(
    ImportKeyPairRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ImportKeyPairOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Imports a disk into an EBS snapshot.
  ///
  /// For more information, see [Importing a disk as a snapshot using VM Import/Export](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-import-snapshot.html) in the _VM Import/Export User Guide_.
  _i3.SmithyOperation<ImportSnapshotResult> importSnapshot(
    ImportSnapshotRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ImportSnapshotOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates an import volume task using metadata from the specified disk image.
  ///
  /// This API action supports only single-volume VMs. To import multi-volume VMs, use ImportImage instead. To import a disk to a snapshot, use ImportSnapshot instead.
  ///
  /// This API action is not supported by the Command Line Interface (CLI). For information about using the Amazon EC2 CLI, which is deprecated, see [Importing Disks to Amazon EBS](https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#importing-your-volumes-into-amazon-ebs) in the _Amazon EC2 CLI Reference_ PDF file.
  ///
  /// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  _i3.SmithyOperation<ImportVolumeResult> importVolume(
    ImportVolumeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ImportVolumeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Lists one or more AMIs that are currently in the Recycle Bin. For more information, see [Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<ImageRecycleBinInfo>, int, String>>
      listImagesInRecycleBin(
    ListImagesInRecycleBinRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ListImagesInRecycleBinOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Lists one or more snapshots that are currently in the Recycle Bin.
  _i3.SmithyOperation<
          _i3
          .PaginatedResult<_i4.BuiltList<SnapshotRecycleBinInfo>, int, String>>
      listSnapshotsInRecycleBin(
    ListSnapshotsInRecycleBinRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ListSnapshotsInRecycleBinOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies an attribute of the specified Elastic IP address. For requirements, see [Using reverse DNS for email applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).
  _i3.SmithyOperation<ModifyAddressAttributeResult> modifyAddressAttribute(
    ModifyAddressAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyAddressAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Changes the opt-in status of the Local Zone and Wavelength Zone group for your account.
  ///
  /// Use [DescribeAvailabilityZones](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html) to view the value for `GroupName`.
  _i3.SmithyOperation<ModifyAvailabilityZoneGroupResult>
      modifyAvailabilityZoneGroup(
    ModifyAvailabilityZoneGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyAvailabilityZoneGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies a Capacity Reservation's capacity and the conditions under which it is to be released. You cannot change a Capacity Reservation's instance type, EBS optimization, instance store settings, platform, Availability Zone, or instance eligibility. If you need to modify any of these attributes, we recommend that you cancel the Capacity Reservation, and then create a new one with the required attributes.
  _i3.SmithyOperation<ModifyCapacityReservationResult>
      modifyCapacityReservation(
    ModifyCapacityReservationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyCapacityReservationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies a Capacity Reservation Fleet.
  ///
  /// When you modify the total target capacity of a Capacity Reservation Fleet, the Fleet automatically creates new Capacity Reservations, or modifies or cancels existing Capacity Reservations in the Fleet to meet the new total target capacity. When you modify the end date for the Fleet, the end dates for all of the individual Capacity Reservations in the Fleet are updated accordingly.
  _i3.SmithyOperation<ModifyCapacityReservationFleetResult>
      modifyCapacityReservationFleet(
    ModifyCapacityReservationFleetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyCapacityReservationFleetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified Client VPN endpoint. Modifying the DNS server resets existing client connections.
  _i3.SmithyOperation<ModifyClientVpnEndpointResult> modifyClientVpnEndpoint(
    ModifyClientVpnEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyClientVpnEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the default credit option for CPU usage of burstable performance instances. The default credit option is set at the account level per Amazon Web Services Region, and is specified per instance family. All new burstable performance instances in the account launch using the default credit option.
  ///
  /// `ModifyDefaultCreditSpecification` is an asynchronous operation, which works at an Amazon Web Services Region level and modifies the credit option for each Availability Zone. All zones in a Region are updated within five minutes. But if instances are launched during this operation, they might not get the new credit option until the zone is updated. To verify whether the update has occurred, you can call `GetDefaultCreditSpecification` and check `DefaultCreditSpecification` for updates.
  ///
  /// For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<ModifyDefaultCreditSpecificationResult>
      modifyDefaultCreditSpecification(
    ModifyDefaultCreditSpecificationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyDefaultCreditSpecificationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Changes the default KMS key for EBS encryption by default for your account in this Region.
  ///
  /// Amazon Web Services creates a unique Amazon Web Services managed KMS key in each Region for use with encryption by default. If you change the default KMS key to a symmetric customer managed KMS key, it is used instead of the Amazon Web Services managed KMS key. To reset the default KMS key to the Amazon Web Services managed KMS key for EBS, use ResetEbsDefaultKmsKeyId. Amazon EBS does not support asymmetric KMS keys.
  ///
  /// If you delete or disable the customer managed KMS key that you specified for use with encryption by default, your instances will fail to launch.
  ///
  /// For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<ModifyEbsDefaultKmsKeyIdResult> modifyEbsDefaultKmsKeyId(
    ModifyEbsDefaultKmsKeyIdRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyEbsDefaultKmsKeyIdOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified EC2 Fleet.
  ///
  /// You can only modify an EC2 Fleet request of type `maintain`.
  ///
  /// While the EC2 Fleet is being modified, it is in the `modifying` state.
  ///
  /// To scale up your EC2 Fleet, increase its target capacity. The EC2 Fleet launches the additional Spot Instances according to the allocation strategy for the EC2 Fleet request. If the allocation strategy is `lowest-price`, the EC2 Fleet launches instances using the Spot Instance pool with the lowest price. If the allocation strategy is `diversified`, the EC2 Fleet distributes the instances across the Spot Instance pools. If the allocation strategy is `capacity-optimized`, EC2 Fleet launches instances from Spot Instance pools with optimal capacity for the number of instances that are launching.
  ///
  /// To scale down your EC2 Fleet, decrease its target capacity. First, the EC2 Fleet cancels any open requests that exceed the new target capacity. You can request that the EC2 Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is `lowest-price`, the EC2 Fleet terminates the instances with the highest price per unit. If the allocation strategy is `capacity-optimized`, the EC2 Fleet terminates the instances in the Spot Instance pools that have the least available Spot Instance capacity. If the allocation strategy is `diversified`, the EC2 Fleet terminates instances across the Spot Instance pools. Alternatively, you can request that the EC2 Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually.
  ///
  /// If you are finished with your EC2 Fleet for now, but will use it again later, you can set the target capacity to 0.
  _i3.SmithyOperation<ModifyFleetResult> modifyFleet(
    ModifyFleetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyFleetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified attribute of the specified Amazon FPGA Image (AFI).
  _i3.SmithyOperation<ModifyFpgaImageAttributeResult> modifyFpgaImageAttribute(
    ModifyFpgaImageAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyFpgaImageAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modify the auto-placement setting of a Dedicated Host. When auto-placement is enabled, any instances that you launch with a tenancy of `host` but without a specific host ID are placed onto any available Dedicated Host in your account that has auto-placement enabled. When auto-placement is disabled, you need to provide a host ID to have the instance launch onto a specific host. If no host ID is provided, the instance is launched onto a suitable host with auto-placement enabled.
  ///
  /// You can also use this API action to modify a Dedicated Host to support either multiple instance types in an instance family, or to support a specific instance type only.
  _i3.SmithyOperation<ModifyHostsResult> modifyHosts(
    ModifyHostsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyHostsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the ID format for the specified resource on a per-Region basis. You can specify that resources should receive longer IDs (17-character IDs) when they are created.
  ///
  /// This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `route-table` | `route-table-association` | `security-group` | `subnet` | `subnet-cidr-block-association` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  ///
  /// This setting applies to the IAM user who makes the request; it does not apply to the entire Amazon Web Services account. By default, an IAM user defaults to the same settings as the root user. If you're using this action as the root user, then these settings apply to the entire account, unless an IAM user explicitly overrides these settings for themselves. For more information, see [Resource IDs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant `Describe` command for the resource type.
  _i3.SmithyOperation<void> modifyIdFormat(
    ModifyIdFormatRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyIdFormatOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account. You can specify that resources should receive longer IDs (17-character IDs) when they are created.
  ///
  /// This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: `bundle` | `conversion-task` | `customer-gateway` | `dhcp-options` | `elastic-ip-allocation` | `elastic-ip-association` | `export-task` | `flow-log` | `image` | `import-task` | `internet-gateway` | `network-acl` | `network-acl-association` | `network-interface` | `network-interface-attachment` | `prefix-list` | `route-table` | `route-table-association` | `security-group` | `subnet` | `subnet-cidr-block-association` | `vpc` | `vpc-cidr-block-association` | `vpc-endpoint` | `vpc-peering-connection` | `vpn-connection` | `vpn-gateway`.
  ///
  /// For more information, see [Resource IDs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// This setting applies to the principal specified in the request; it does not apply to the principal that makes the request.
  ///
  /// Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant `Describe` command for the resource type.
  _i3.SmithyOperation<void> modifyIdentityIdFormat(
    ModifyIdentityIdFormatRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyIdentityIdFormatOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified attribute of the specified AMI. You can specify only one attribute at a time.
  ///
  /// To specify the attribute, you can use the `Attribute` parameter, or one of the following parameters: `Description`, `ImdsSupport`, or `LaunchPermission`.
  ///
  /// Images with an Amazon Web Services Marketplace product code cannot be made public.
  ///
  /// To enable the SriovNetSupport enhanced networking attribute of an image, enable SriovNetSupport on an instance and create an AMI from the instance.
  _i3.SmithyOperation<void> modifyImageAttribute(
    ModifyImageAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyImageAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified attribute of the specified instance. You can specify only one attribute at a time.
  ///
  /// **Note:** Using this action to change the security groups associated with an elastic network interface (ENI) attached to an instance can result in an error if the instance has more than one ENI. To change the security groups associated with an ENI attached to an instance that has multiple ENIs, we recommend that you use the ModifyNetworkInterfaceAttribute action.
  ///
  /// To modify some attributes, the instance must be stopped. For more information, see [Modify a stopped instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<void> modifyInstanceAttribute(
    ModifyInstanceAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyInstanceAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the Capacity Reservation settings for a stopped instance. Use this action to configure an instance to target a specific Capacity Reservation, run in any `open` Capacity Reservation with matching attributes, or run On-Demand Instance capacity.
  _i3.SmithyOperation<ModifyInstanceCapacityReservationAttributesResult>
      modifyInstanceCapacityReservationAttributes(
    ModifyInstanceCapacityReservationAttributesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyInstanceCapacityReservationAttributesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the credit option for CPU usage on a running or stopped burstable performance instance. The credit options are `standard` and `unlimited`.
  ///
  /// For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<ModifyInstanceCreditSpecificationResult>
      modifyInstanceCreditSpecification(
    ModifyInstanceCreditSpecificationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyInstanceCreditSpecificationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the start time for a scheduled Amazon EC2 instance event.
  _i3.SmithyOperation<ModifyInstanceEventStartTimeResult>
      modifyInstanceEventStartTime(
    ModifyInstanceEventStartTimeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyInstanceEventStartTimeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified event window.
  ///
  /// You can define either a set of time ranges or a cron expression when modifying the event window, but not both.
  ///
  /// To modify the targets associated with the event window, use the AssociateInstanceEventWindow and DisassociateInstanceEventWindow API.
  ///
  /// If Amazon Web Services has already scheduled an event, modifying an event window won't change the time of the scheduled event.
  ///
  /// For more information, see [Define event windows for scheduled events](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<ModifyInstanceEventWindowResult>
      modifyInstanceEventWindow(
    ModifyInstanceEventWindowRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyInstanceEventWindowOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the recovery behavior of your instance to disable simplified automatic recovery or set the recovery behavior to default. The default configuration will not enable simplified automatic recovery for an unsupported instance type. For more information, see [Simplified automatic recovery](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html#instance-configuration-recovery).
  _i3.SmithyOperation<ModifyInstanceMaintenanceOptionsResult>
      modifyInstanceMaintenanceOptions(
    ModifyInstanceMaintenanceOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyInstanceMaintenanceOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modify the instance metadata parameters on a running or stopped instance. When you modify the parameters on a stopped instance, they are applied when the instance is started. When you modify the parameters on a running instance, the API responds with a state of “pending”. After the parameter modifications are successfully applied to the instance, the state of the modifications changes from “pending” to “applied” in subsequent describe-instances API calls. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<ModifyInstanceMetadataOptionsResult>
      modifyInstanceMetadataOptions(
    ModifyInstanceMetadataOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyInstanceMetadataOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the placement attributes for a specified instance. You can do the following:
  ///
  /// *   Modify the affinity between an instance and a [Dedicated Host](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html). When affinity is set to `host` and the instance is not associated with a specific Dedicated Host, the next time the instance is launched, it is automatically associated with the host on which it lands. If the instance is restarted or rebooted, this relationship persists.
  ///
  /// *   Change the Dedicated Host with which an instance is associated.
  ///
  /// *   Change the instance tenancy of an instance.
  ///
  /// *   Move an instance to or from a [placement group](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).
  ///
  ///
  /// At least one attribute for affinity, host ID, tenancy, or placement group name must be specified in the request. Affinity and tenancy can be modified in the same request.
  ///
  /// To modify the host ID, tenancy, placement group, or partition for an instance, the instance must be in the `stopped` state.
  _i3.SmithyOperation<ModifyInstancePlacementResult> modifyInstancePlacement(
    ModifyInstancePlacementRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyInstancePlacementOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modify the configurations of an IPAM.
  _i3.SmithyOperation<ModifyIpamResult> modifyIpam(
    ModifyIpamRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyIpamOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modify the configurations of an IPAM pool.
  ///
  /// For more information, see [Modify a pool](https://docs.aws.amazon.com/vpc/latest/ipam/mod-pool-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<ModifyIpamPoolResult> modifyIpamPool(
    ModifyIpamPoolRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyIpamPoolOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modify a resource CIDR. You can use this action to transfer resource CIDRs between scopes and ignore resource CIDRs that you do not want to manage. If set to false, the resource will not be tracked for overlap, it cannot be auto-imported into a pool, and it will be removed from any pool it has an allocation in.
  ///
  /// For more information, see [Move resource CIDRs between scopes](https://docs.aws.amazon.com/vpc/latest/ipam/move-resource-ipam.html) and [Change the monitoring state of resource CIDRs](https://docs.aws.amazon.com/vpc/latest/ipam/change-monitoring-state-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<ModifyIpamResourceCidrResult> modifyIpamResourceCidr(
    ModifyIpamResourceCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyIpamResourceCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies a resource discovery. A resource discovery is an IPAM component that enables IPAM to manage and monitor resources that belong to the owning account.
  _i3.SmithyOperation<ModifyIpamResourceDiscoveryResult>
      modifyIpamResourceDiscovery(
    ModifyIpamResourceDiscoveryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyIpamResourceDiscoveryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modify an IPAM scope.
  _i3.SmithyOperation<ModifyIpamScopeResult> modifyIpamScope(
    ModifyIpamScopeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyIpamScopeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies a launch template. You can specify which version of the launch template to set as the default version. When launching an instance, the default version applies when a launch template version is not specified.
  _i3.SmithyOperation<ModifyLaunchTemplateResult> modifyLaunchTemplate(
    ModifyLaunchTemplateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyLaunchTemplateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified local gateway route.
  _i3.SmithyOperation<ModifyLocalGatewayRouteResult> modifyLocalGatewayRoute(
    ModifyLocalGatewayRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyLocalGatewayRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified managed prefix list.
  ///
  /// Adding or removing entries in a prefix list creates a new version of the prefix list. Changing the name of the prefix list does not affect the version.
  ///
  /// If you specify a current version number that does not match the true current version number, the request fails.
  _i3.SmithyOperation<ModifyManagedPrefixListResult> modifyManagedPrefixList(
    ModifyManagedPrefixListRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyManagedPrefixListOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified network interface attribute. You can specify only one attribute at a time. You can use this action to attach and detach security groups from an existing EC2 instance.
  _i3.SmithyOperation<void> modifyNetworkInterfaceAttribute(
    ModifyNetworkInterfaceAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyNetworkInterfaceAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the options for instance hostnames for the specified instance.
  _i3.SmithyOperation<ModifyPrivateDnsNameOptionsResult>
      modifyPrivateDnsNameOptions(
    ModifyPrivateDnsNameOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyPrivateDnsNameOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the configuration of your Reserved Instances, such as the Availability Zone, instance count, or instance type. The Reserved Instances to be modified must be identical, except for Availability Zone, network platform, and instance type.
  ///
  /// For more information, see [Modifying Reserved Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<ModifyReservedInstancesResult> modifyReservedInstances(
    ModifyReservedInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyReservedInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the rules of a security group.
  _i3.SmithyOperation<ModifySecurityGroupRulesResult> modifySecurityGroupRules(
    ModifySecurityGroupRulesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifySecurityGroupRulesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Adds or removes permission settings for the specified snapshot. You may add or remove specified Amazon Web Services account IDs from a snapshot's list of create volume permissions, but you cannot do both in a single operation. If you need to both add and remove account IDs for a snapshot, you must use multiple operations. You can make up to 500 modifications to a snapshot in a single operation.
  ///
  /// Encrypted snapshots and snapshots with Amazon Web Services Marketplace product codes cannot be made public. Snapshots encrypted with your default KMS key cannot be shared with other accounts.
  ///
  /// For more information about modifying snapshot permissions, see [Share a snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<void> modifySnapshotAttribute(
    ModifySnapshotAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifySnapshotAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Archives an Amazon EBS snapshot. When you archive a snapshot, it is converted to a full snapshot that includes all of the blocks of data that were written to the volume at the time the snapshot was created, and moved from the standard tier to the archive tier. For more information, see [Archive Amazon EBS snapshots](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-archive.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<ModifySnapshotTierResult> modifySnapshotTier(
    ModifySnapshotTierRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifySnapshotTierOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified Spot Fleet request.
  ///
  /// You can only modify a Spot Fleet request of type `maintain`.
  ///
  /// While the Spot Fleet request is being modified, it is in the `modifying` state.
  ///
  /// To scale up your Spot Fleet, increase its target capacity. The Spot Fleet launches the additional Spot Instances according to the allocation strategy for the Spot Fleet request. If the allocation strategy is `lowestPrice`, the Spot Fleet launches instances using the Spot Instance pool with the lowest price. If the allocation strategy is `diversified`, the Spot Fleet distributes the instances across the Spot Instance pools. If the allocation strategy is `capacityOptimized`, Spot Fleet launches instances from Spot Instance pools with optimal capacity for the number of instances that are launching.
  ///
  /// To scale down your Spot Fleet, decrease its target capacity. First, the Spot Fleet cancels any open requests that exceed the new target capacity. You can request that the Spot Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is `lowestPrice`, the Spot Fleet terminates the instances with the highest price per unit. If the allocation strategy is `capacityOptimized`, the Spot Fleet terminates the instances in the Spot Instance pools that have the least available Spot Instance capacity. If the allocation strategy is `diversified`, the Spot Fleet terminates instances across the Spot Instance pools. Alternatively, you can request that the Spot Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually.
  ///
  /// If you are finished with your Spot Fleet for now, but will use it again later, you can set the target capacity to 0.
  _i3.SmithyOperation<ModifySpotFleetRequestResponse> modifySpotFleetRequest(
    ModifySpotFleetRequestRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifySpotFleetRequestOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies a subnet attribute. You can only modify one attribute at a time.
  ///
  /// Use this action to modify subnets on Amazon Web Services Outposts.
  ///
  /// *   To modify a subnet on an Outpost rack, set both `MapCustomerOwnedIpOnLaunch` and `CustomerOwnedIpv4Pool`. These two parameters act as a single attribute.
  ///
  /// *   To modify a subnet on an Outpost server, set either `EnableLniAtDeviceIndex` or `DisableLniAtDeviceIndex`.
  ///
  ///
  /// For more information about Amazon Web Services Outposts, see the following:
  ///
  /// *   [Outpost servers](https://docs.aws.amazon.com/outposts/latest/userguide/how-servers-work.html)
  ///
  /// *   [Outpost racks](https://docs.aws.amazon.com/outposts/latest/userguide/how-racks-work.html)
  _i3.SmithyOperation<void> modifySubnetAttribute(
    ModifySubnetAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifySubnetAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Allows or restricts mirroring network services.
  ///
  /// By default, Amazon DNS network services are not eligible for Traffic Mirror. Use `AddNetworkServices` to add network services to a Traffic Mirror filter. When a network service is added to the Traffic Mirror filter, all traffic related to that network service will be mirrored. When you no longer want to mirror network services, use `RemoveNetworkServices` to remove the network services from the Traffic Mirror filter.
  _i3.SmithyOperation<ModifyTrafficMirrorFilterNetworkServicesResult>
      modifyTrafficMirrorFilterNetworkServices(
    ModifyTrafficMirrorFilterNetworkServicesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyTrafficMirrorFilterNetworkServicesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified Traffic Mirror rule.
  ///
  /// `DestinationCidrBlock` and `SourceCidrBlock` must both be an IPv4 range or an IPv6 range.
  _i3.SmithyOperation<ModifyTrafficMirrorFilterRuleResult>
      modifyTrafficMirrorFilterRule(
    ModifyTrafficMirrorFilterRuleRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyTrafficMirrorFilterRuleOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies a Traffic Mirror session.
  _i3.SmithyOperation<ModifyTrafficMirrorSessionResult>
      modifyTrafficMirrorSession(
    ModifyTrafficMirrorSessionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyTrafficMirrorSessionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified transit gateway. When you modify a transit gateway, the modified options are applied to new transit gateway attachments only. Your existing transit gateway attachments are not modified.
  _i3.SmithyOperation<ModifyTransitGatewayResult> modifyTransitGateway(
    ModifyTransitGatewayRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyTransitGatewayOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies a reference (route) to a prefix list in a specified transit gateway route table.
  _i3.SmithyOperation<ModifyTransitGatewayPrefixListReferenceResult>
      modifyTransitGatewayPrefixListReference(
    ModifyTransitGatewayPrefixListReferenceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyTransitGatewayPrefixListReferenceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified VPC attachment.
  _i3.SmithyOperation<ModifyTransitGatewayVpcAttachmentResult>
      modifyTransitGatewayVpcAttachment(
    ModifyTransitGatewayVpcAttachmentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyTransitGatewayVpcAttachmentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the configuration of the specified Amazon Web Services Verified Access endpoint.
  _i3.SmithyOperation<ModifyVerifiedAccessEndpointResult>
      modifyVerifiedAccessEndpoint(
    ModifyVerifiedAccessEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVerifiedAccessEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified Amazon Web Services Verified Access endpoint policy.
  _i3.SmithyOperation<ModifyVerifiedAccessEndpointPolicyResult>
      modifyVerifiedAccessEndpointPolicy(
    ModifyVerifiedAccessEndpointPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVerifiedAccessEndpointPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified Amazon Web Services Verified Access group configuration.
  _i3.SmithyOperation<ModifyVerifiedAccessGroupResult>
      modifyVerifiedAccessGroup(
    ModifyVerifiedAccessGroupRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVerifiedAccessGroupOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified Amazon Web Services Verified Access group policy.
  _i3.SmithyOperation<ModifyVerifiedAccessGroupPolicyResult>
      modifyVerifiedAccessGroupPolicy(
    ModifyVerifiedAccessGroupPolicyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVerifiedAccessGroupPolicyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the configuration of the specified Amazon Web Services Verified Access instance.
  _i3.SmithyOperation<ModifyVerifiedAccessInstanceResult>
      modifyVerifiedAccessInstance(
    ModifyVerifiedAccessInstanceRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVerifiedAccessInstanceOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the logging configuration for the specified Amazon Web Services Verified Access instance.
  _i3.SmithyOperation<ModifyVerifiedAccessInstanceLoggingConfigurationResult>
      modifyVerifiedAccessInstanceLoggingConfiguration(
    ModifyVerifiedAccessInstanceLoggingConfigurationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVerifiedAccessInstanceLoggingConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the configuration of the specified Amazon Web Services Verified Access trust provider.
  _i3.SmithyOperation<ModifyVerifiedAccessTrustProviderResult>
      modifyVerifiedAccessTrustProvider(
    ModifyVerifiedAccessTrustProviderRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVerifiedAccessTrustProviderOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity. If your EBS volume is attached to a current-generation EC2 instance type, you might be able to apply these changes without stopping the instance or detaching the volume from it. For more information about modifying EBS volumes, see [Amazon EBS Elastic Volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modify-volume.html) (Linux instances) or [Amazon EBS Elastic Volumes](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-modify-volume.html) (Windows instances).
  ///
  /// When you complete a resize operation on your volume, you need to extend the volume's file-system size to take advantage of the new storage capacity. For more information, see [Extend a Linux file system](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux) or [Extend a Windows file system](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows).
  ///
  /// You can use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). You can also track the status of a modification using DescribeVolumesModifications. For information about tracking status changes using either method, see [Monitor the progress of volume modifications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-modifications.html).
  ///
  /// With previous-generation instance types, resizing an EBS volume might require detaching and reattaching the volume or stopping and restarting the instance.
  ///
  /// After modifying a volume, you must wait at least six hours and ensure that the volume is in the `in-use` or `available` state before you can modify the same volume. This is sometimes referred to as a cooldown period.
  _i3.SmithyOperation<ModifyVolumeResult> modifyVolume(
    ModifyVolumeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVolumeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies a volume attribute.
  ///
  /// By default, all I/O operations for the volume are suspended when the data on the volume is determined to be potentially inconsistent, to prevent undetectable, latent data corruption. The I/O access to the volume can be resumed by first enabling I/O access and then checking the data consistency on your volume.
  ///
  /// You can change the default behavior to resume I/O operations. We recommend that you change this only for boot volumes or for volumes that are stateless or disposable.
  _i3.SmithyOperation<void> modifyVolumeAttribute(
    ModifyVolumeAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVolumeAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the specified attribute of the specified VPC.
  _i3.SmithyOperation<void> modifyVpcAttribute(
    ModifyVpcAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpcAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies attributes of a specified VPC endpoint. The attributes that you can modify depend on the type of VPC endpoint (interface, gateway, or Gateway Load Balancer). For more information, see the [Amazon Web Services PrivateLink Guide](https://docs.aws.amazon.com/vpc/latest/privatelink/).
  _i3.SmithyOperation<ModifyVpcEndpointResult> modifyVpcEndpoint(
    ModifyVpcEndpointRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpcEndpointOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies a connection notification for VPC endpoint or VPC endpoint service. You can change the SNS topic for the notification, or the events for which to be notified.
  _i3.SmithyOperation<ModifyVpcEndpointConnectionNotificationResult>
      modifyVpcEndpointConnectionNotification(
    ModifyVpcEndpointConnectionNotificationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpcEndpointConnectionNotificationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the attributes of your VPC endpoint service configuration. You can change the Network Load Balancers or Gateway Load Balancers for your service, and you can specify whether acceptance is required for requests to connect to your endpoint service through an interface VPC endpoint.
  ///
  /// If you set or modify the private DNS name, you must prove that you own the private DNS domain name.
  _i3.SmithyOperation<ModifyVpcEndpointServiceConfigurationResult>
      modifyVpcEndpointServiceConfiguration(
    ModifyVpcEndpointServiceConfigurationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpcEndpointServiceConfigurationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the payer responsibility for your VPC endpoint service.
  _i3.SmithyOperation<ModifyVpcEndpointServicePayerResponsibilityResult>
      modifyVpcEndpointServicePayerResponsibility(
    ModifyVpcEndpointServicePayerResponsibilityRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpcEndpointServicePayerResponsibilityOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the permissions for your VPC endpoint service. You can add or remove permissions for service consumers (Amazon Web Services accounts, users, and IAM roles) to connect to your endpoint service.
  ///
  /// If you grant permissions to all principals, the service is public. Any users who know the name of a public service can send a request to attach an endpoint. If the service does not require manual approval, attachments are automatically approved.
  _i3.SmithyOperation<ModifyVpcEndpointServicePermissionsResult>
      modifyVpcEndpointServicePermissions(
    ModifyVpcEndpointServicePermissionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpcEndpointServicePermissionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the VPC peering connection options on one side of a VPC peering connection.
  ///
  /// If the peered VPCs are in the same Amazon Web Services account, you can enable DNS resolution for queries from the local VPC. This ensures that queries from the local VPC resolve to private IP addresses in the peer VPC. This option is not available if the peered VPCs are in different Amazon Web Services accounts or different Regions. For peered VPCs in different Amazon Web Services accounts, each Amazon Web Services account owner must initiate a separate request to modify the peering connection options. For inter-region peering connections, you must use the Region for the requester VPC to modify the requester VPC peering options and the Region for the accepter VPC to modify the accepter VPC peering options. To verify which VPCs are the accepter and the requester for a VPC peering connection, use the DescribeVpcPeeringConnections command.
  _i3.SmithyOperation<ModifyVpcPeeringConnectionOptionsResult>
      modifyVpcPeeringConnectionOptions(
    ModifyVpcPeeringConnectionOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpcPeeringConnectionOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the instance tenancy attribute of the specified VPC. You can change the instance tenancy attribute of a VPC to `default` only. You cannot change the instance tenancy attribute to `dedicated`.
  ///
  /// After you modify the tenancy of the VPC, any new instances that you launch into the VPC have a tenancy of `default`, unless you specify otherwise during launch. The tenancy of any existing instances in the VPC is not affected.
  ///
  /// For more information, see [Dedicated Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<ModifyVpcTenancyResult> modifyVpcTenancy(
    ModifyVpcTenancyRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpcTenancyOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the customer gateway or the target gateway of an Amazon Web Services Site-to-Site VPN connection. To modify the target gateway, the following migration options are available:
  ///
  /// *   An existing virtual private gateway to a new virtual private gateway
  ///
  /// *   An existing virtual private gateway to a transit gateway
  ///
  /// *   An existing transit gateway to a new transit gateway
  ///
  /// *   An existing transit gateway to a virtual private gateway
  ///
  ///
  /// Before you perform the migration to the new gateway, you must configure the new gateway. Use CreateVpnGateway to create a virtual private gateway, or CreateTransitGateway to create a transit gateway.
  ///
  /// This step is required when you migrate from a virtual private gateway with static routes to a transit gateway.
  ///
  /// You must delete the static routes before you migrate to the new gateway.
  ///
  /// Keep a copy of the static route before you delete it. You will need to add back these routes to the transit gateway after the VPN connection migration is complete.
  ///
  /// After you migrate to the new gateway, you might need to modify your VPC route table. Use CreateRoute and DeleteRoute to make the changes described in [Update VPC route tables](https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  ///
  /// When the new gateway is a transit gateway, modify the transit gateway route table to allow traffic between the VPC and the Amazon Web Services Site-to-Site VPN connection. Use CreateTransitGatewayRoute to add the routes.
  ///
  /// If you deleted VPN static routes, you must add the static routes to the transit gateway route table.
  ///
  /// After you perform this operation, the VPN endpoint's IP addresses on the Amazon Web Services side and the tunnel options remain intact. Your Amazon Web Services Site-to-Site VPN connection will be temporarily unavailable for a brief period while we provision the new endpoints.
  _i3.SmithyOperation<ModifyVpnConnectionResult> modifyVpnConnection(
    ModifyVpnConnectionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpnConnectionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the connection options for your Site-to-Site VPN connection.
  ///
  /// When you modify the VPN connection options, the VPN endpoint IP addresses on the Amazon Web Services side do not change, and the tunnel options do not change. Your VPN connection will be temporarily unavailable for a brief period while the VPN connection is updated.
  _i3.SmithyOperation<ModifyVpnConnectionOptionsResult>
      modifyVpnConnectionOptions(
    ModifyVpnConnectionOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpnConnectionOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the VPN tunnel endpoint certificate.
  _i3.SmithyOperation<ModifyVpnTunnelCertificateResult>
      modifyVpnTunnelCertificate(
    ModifyVpnTunnelCertificateRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpnTunnelCertificateOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Modifies the options for a VPN tunnel in an Amazon Web Services Site-to-Site VPN connection. You can modify multiple options for a tunnel in a single request, but you can only modify one tunnel at a time. For more information, see [Site-to-Site VPN tunnel options for your Site-to-Site VPN connection](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPNTunnels.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  _i3.SmithyOperation<ModifyVpnTunnelOptionsResult> modifyVpnTunnelOptions(
    ModifyVpnTunnelOptionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ModifyVpnTunnelOptionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Enables detailed monitoring for a running instance. Otherwise, basic monitoring is enabled. For more information, see [Monitor your instances using CloudWatch](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html) in the _Amazon EC2 User Guide_.
  ///
  /// To disable detailed monitoring, see [UnmonitorInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_UnmonitorInstances.html).
  _i3.SmithyOperation<MonitorInstancesResult> monitorInstances(
    MonitorInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return MonitorInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform. The Elastic IP address must be allocated to your account for more than 24 hours, and it must not be associated with an instance. After the Elastic IP address is moved, it is no longer available for use in the EC2-Classic platform, unless you move it back using the RestoreAddressToClassic request. You cannot move an Elastic IP address that was originally allocated for use in the EC2-VPC platform to the EC2-Classic platform.
  _i3.SmithyOperation<MoveAddressToVpcResult> moveAddressToVpc(
    MoveAddressToVpcRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return MoveAddressToVpcOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Move a BYOIPv4 CIDR to IPAM from a public IPv4 pool.
  ///
  /// If you already have a BYOIPv4 CIDR with Amazon Web Services, you can move the CIDR to IPAM from a public IPv4 pool. You cannot move an IPv6 CIDR to IPAM. If you are bringing a new IP address to Amazon Web Services for the first time, complete the steps in [Tutorial: BYOIP address CIDRs to IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoip-ipam.html).
  _i3.SmithyOperation<MoveByoipCidrToIpamResult> moveByoipCidrToIpam(
    MoveByoipCidrToIpamRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return MoveByoipCidrToIpamOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Provisions an IPv4 or IPv6 address range for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool. After the address range is provisioned, it is ready to be advertised using AdvertiseByoipCidr.
  ///
  /// Amazon Web Services verifies that you own the address range and are authorized to advertise it. You must ensure that the address range is registered to you and that you created an RPKI ROA to authorize Amazon ASNs 16509 and 14618 to advertise the address range. For more information, see [Bring your own IP addresses (BYOIP)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Provisioning an address range is an asynchronous operation, so the call returns immediately, but the address range is not ready to use until its status changes from `pending-provision` to `provisioned`. To monitor the status of an address range, use DescribeByoipCidrs. To allocate an Elastic IP address from your IPv4 address pool, use AllocateAddress with either the specific address from the address pool or the ID of the address pool.
  _i3.SmithyOperation<ProvisionByoipCidrResult> provisionByoipCidr(
    ProvisionByoipCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ProvisionByoipCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Provision a CIDR to an IPAM pool. You can use this action to provision new CIDRs to a top-level pool or to transfer a CIDR from a top-level pool to a pool within it.
  ///
  /// For more information, see [Provision CIDRs to pools](https://docs.aws.amazon.com/vpc/latest/ipam/prov-cidr-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<ProvisionIpamPoolCidrResult> provisionIpamPoolCidr(
    ProvisionIpamPoolCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ProvisionIpamPoolCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Provision a CIDR to a public IPv4 pool.
  ///
  /// For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.SmithyOperation<ProvisionPublicIpv4PoolCidrResult>
      provisionPublicIpv4PoolCidr(
    ProvisionPublicIpv4PoolCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ProvisionPublicIpv4PoolCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Purchase a reservation with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation. This action results in the specified reservation being purchased and charged to your account.
  _i3.SmithyOperation<PurchaseHostReservationResult> purchaseHostReservation(
    PurchaseHostReservationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PurchaseHostReservationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Purchases a Reserved Instance for use with your account. With Reserved Instances, you pay a lower hourly rate compared to On-Demand instance pricing.
  ///
  /// Use DescribeReservedInstancesOfferings to get a list of Reserved Instance offerings that match your specifications. After you've purchased a Reserved Instance, you can check for your new Reserved Instance with DescribeReservedInstances.
  ///
  /// To queue a purchase for a future date and time, specify a purchase time. If you do not specify a purchase time, the default is the current time.
  ///
  /// For more information, see [Reserved Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html) and [Reserved Instance Marketplace](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<PurchaseReservedInstancesOfferingResult>
      purchaseReservedInstancesOffering(
    PurchaseReservedInstancesOfferingRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PurchaseReservedInstancesOfferingOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// You can no longer purchase Scheduled Instances.
  ///
  /// Purchases the Scheduled Instances with the specified schedule.
  ///
  /// Scheduled Instances enable you to purchase Amazon EC2 compute capacity by the hour for a one-year term. Before you can purchase a Scheduled Instance, you must call DescribeScheduledInstanceAvailability to check for available schedules and obtain a purchase token. After you purchase a Scheduled Instance, you must call RunScheduledInstances during each scheduled time period.
  ///
  /// After you purchase a Scheduled Instance, you can't cancel, modify, or resell your purchase.
  _i3.SmithyOperation<PurchaseScheduledInstancesResult>
      purchaseScheduledInstances(
    PurchaseScheduledInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return PurchaseScheduledInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Requests a reboot of the specified instances. This operation is asynchronous; it only queues a request to reboot the specified instances. The operation succeeds if the instances are valid and belong to you. Requests to reboot terminated instances are ignored.
  ///
  /// If an instance does not cleanly shut down within a few minutes, Amazon EC2 performs a hard reboot.
  ///
  /// For more information about troubleshooting, see [Troubleshoot an unreachable instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<void> rebootInstances(
    RebootInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RebootInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Registers an AMI. When you're creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see [Create your own AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// For Amazon EBS-backed instances, CreateImage creates and registers the AMI in a single request, so you don't have to register the AMI yourself. We recommend that you always use CreateImage unless you have a specific reason to use RegisterImage.
  ///
  /// If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.
  ///
  /// **Register a snapshot of a root device volume**
  ///
  /// You can use `RegisterImage` to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. You specify the snapshot using a block device mapping. You can't set the encryption state of the volume using the block device mapping. If the snapshot is encrypted, or encryption by default is enabled, the root volume of an instance launched from the AMI is encrypted.
  ///
  /// For more information, see [Create a Linux AMI from a snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot) and [Use encryption with Amazon EBS-backed AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// **Amazon Web Services Marketplace product codes**
  ///
  /// If any snapshots have Amazon Web Services Marketplace product codes, they are copied to the new AMI.
  ///
  /// Windows and some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the Amazon EC2 billing product code associated with an AMI to verify the subscription status for package updates. To create a new AMI for operating systems that require a billing product code, instead of registering the AMI, do the following to preserve the billing product code association:
  ///
  /// 1.  Launch an instance from an existing AMI with that billing product code.
  ///
  /// 2.  Customize the instance.
  ///
  /// 3.  Create an AMI from the instance using CreateImage.
  ///
  ///
  /// If you purchase a Reserved Instance to apply to an On-Demand Instance that was launched from an AMI with a billing product code, make sure that the Reserved Instance has the matching billing product code. If you purchase a Reserved Instance without the matching billing product code, the Reserved Instance will not be applied to the On-Demand Instance. For information about how to obtain the platform details and billing information of an AMI, see [Understand AMI billing information](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<RegisterImageResult> registerImage(
    RegisterImageRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RegisterImageOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Registers a set of tag keys to include in scheduled event notifications for your resources.
  ///
  /// To remove tags, use [DeregisterInstanceEventNotificationAttributes](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeregisterInstanceEventNotificationAttributes.html).
  _i3.SmithyOperation<RegisterInstanceEventNotificationAttributesResult>
      registerInstanceEventNotificationAttributes(
    RegisterInstanceEventNotificationAttributesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RegisterInstanceEventNotificationAttributesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Registers members (network interfaces) with the transit gateway multicast group. A member is a network interface associated with a supported EC2 instance that receives multicast traffic. For information about supported instances, see [Multicast Consideration](https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits) in _Amazon VPC Transit Gateways_.
  ///
  /// After you add the members, use [SearchTransitGatewayMulticastGroups](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html) to verify that the members were added to the transit gateway multicast group.
  _i3.SmithyOperation<RegisterTransitGatewayMulticastGroupMembersResult>
      registerTransitGatewayMulticastGroupMembers(
    RegisterTransitGatewayMulticastGroupMembersRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RegisterTransitGatewayMulticastGroupMembersOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Registers sources (network interfaces) with the specified transit gateway multicast group.
  ///
  /// A multicast source is a network interface attached to a supported instance that sends multicast traffic. For information about supported instances, see [Multicast Considerations](https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits) in _Amazon VPC Transit Gateways_.
  ///
  /// After you add the source, use [SearchTransitGatewayMulticastGroups](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html) to verify that the source was added to the multicast group.
  _i3.SmithyOperation<RegisterTransitGatewayMulticastGroupSourcesResult>
      registerTransitGatewayMulticastGroupSources(
    RegisterTransitGatewayMulticastGroupSourcesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RegisterTransitGatewayMulticastGroupSourcesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Rejects a request to associate cross-account subnets with a transit gateway multicast domain.
  _i3.SmithyOperation<RejectTransitGatewayMulticastDomainAssociationsResult>
      rejectTransitGatewayMulticastDomainAssociations(
    RejectTransitGatewayMulticastDomainAssociationsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RejectTransitGatewayMulticastDomainAssociationsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Rejects a transit gateway peering attachment request.
  _i3.SmithyOperation<RejectTransitGatewayPeeringAttachmentResult>
      rejectTransitGatewayPeeringAttachment(
    RejectTransitGatewayPeeringAttachmentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RejectTransitGatewayPeeringAttachmentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Rejects a request to attach a VPC to a transit gateway.
  ///
  /// The VPC attachment must be in the `pendingAcceptance` state. Use DescribeTransitGatewayVpcAttachments to view your pending VPC attachment requests. Use AcceptTransitGatewayVpcAttachment to accept a VPC attachment request.
  _i3.SmithyOperation<RejectTransitGatewayVpcAttachmentResult>
      rejectTransitGatewayVpcAttachment(
    RejectTransitGatewayVpcAttachmentRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RejectTransitGatewayVpcAttachmentOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Rejects VPC endpoint connection requests to your VPC endpoint service.
  _i3.SmithyOperation<RejectVpcEndpointConnectionsResult>
      rejectVpcEndpointConnections(
    RejectVpcEndpointConnectionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RejectVpcEndpointConnectionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Rejects a VPC peering connection request. The VPC peering connection must be in the `pending-acceptance` state. Use the DescribeVpcPeeringConnections request to view your outstanding VPC peering connection requests. To delete an active VPC peering connection, or to delete a VPC peering connection request that you initiated, use DeleteVpcPeeringConnection.
  _i3.SmithyOperation<RejectVpcPeeringConnectionResult>
      rejectVpcPeeringConnection(
    RejectVpcPeeringConnectionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RejectVpcPeeringConnectionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Releases the specified Elastic IP address.
  ///
  /// \[Default VPC\] Releasing an Elastic IP address automatically disassociates it from any instance that it's associated with. To disassociate an Elastic IP address without releasing it, use DisassociateAddress.
  ///
  /// \[Nondefault VPC\] You must use DisassociateAddress to disassociate the Elastic IP address before you can release it. Otherwise, Amazon EC2 returns an error (`InvalidIPAddress.InUse`).
  ///
  /// After releasing an Elastic IP address, it is released to the IP address pool. Be sure to update your DNS records and any servers or devices that communicate with the address. If you attempt to release an Elastic IP address that you already released, you'll get an `AuthFailure` error if the address is already allocated to another Amazon Web Services account.
  ///
  /// After you release an Elastic IP address, you might be able to recover it. For more information, see AllocateAddress.
  _i3.SmithyOperation<void> releaseAddress(
    ReleaseAddressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReleaseAddressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// When you no longer want to use an On-Demand Dedicated Host it can be released. On-Demand billing is stopped and the host goes into `released` state. The host ID of Dedicated Hosts that have been released can no longer be specified in another request, for example, to modify the host. You must stop or terminate all instances on a host before it can be released.
  ///
  /// When Dedicated Hosts are released, it may take some time for them to stop counting toward your limit and you may receive capacity errors when trying to allocate new Dedicated Hosts. Wait a few minutes and then try again.
  ///
  /// Released hosts still appear in a DescribeHosts response.
  _i3.SmithyOperation<ReleaseHostsResult> releaseHosts(
    ReleaseHostsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReleaseHostsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Release an allocation within an IPAM pool. The Region you use should be the IPAM pool locale. The locale is the Amazon Web Services Region where this IPAM pool is available for allocations. You can only use this action to release manual allocations. To remove an allocation for a resource without deleting the resource, set its monitored state to false using [ModifyIpamResourceCidr](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyIpamResourceCidr.html). For more information, see [Release an allocation](https://docs.aws.amazon.com/vpc/latest/ipam/release-alloc-ipam.html) in the _Amazon VPC IPAM User Guide_.
  ///
  /// All EC2 API actions follow an [eventual consistency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#eventual-consistency) model.
  _i3.SmithyOperation<ReleaseIpamPoolAllocationResult>
      releaseIpamPoolAllocation(
    ReleaseIpamPoolAllocationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReleaseIpamPoolAllocationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Replaces an IAM instance profile for the specified running instance. You can use this action to change the IAM instance profile that's associated with an instance without having to disassociate the existing IAM instance profile first.
  ///
  /// Use DescribeIamInstanceProfileAssociations to get the association ID.
  _i3.SmithyOperation<ReplaceIamInstanceProfileAssociationResult>
      replaceIamInstanceProfileAssociation(
    ReplaceIamInstanceProfileAssociationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReplaceIamInstanceProfileAssociationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Changes which network ACL a subnet is associated with. By default when you create a subnet, it's automatically associated with the default network ACL. For more information, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html) in the _Amazon VPC User Guide_.
  ///
  /// This is an idempotent operation.
  _i3.SmithyOperation<ReplaceNetworkAclAssociationResult>
      replaceNetworkAclAssociation(
    ReplaceNetworkAclAssociationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReplaceNetworkAclAssociationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Replaces an entry (rule) in a network ACL. For more information, see [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<void> replaceNetworkAclEntry(
    ReplaceNetworkAclEntryRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReplaceNetworkAclEntryOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Replaces an existing route within a route table in a VPC.
  ///
  /// You must specify either a destination CIDR block or a prefix list ID. You must also specify exactly one of the resources from the parameter list, or reset the local route to its default target.
  ///
  /// For more information, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<void> replaceRoute(
    ReplaceRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReplaceRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Changes the route table associated with a given subnet, internet gateway, or virtual private gateway in a VPC. After the operation completes, the subnet or gateway uses the routes in the new route table. For more information about route tables, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the _Amazon VPC User Guide_.
  ///
  /// You can also use this operation to change which table is the main route table in the VPC. Specify the main route table's association ID and the route table ID of the new main route table.
  _i3.SmithyOperation<ReplaceRouteTableAssociationResult>
      replaceRouteTableAssociation(
    ReplaceRouteTableAssociationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReplaceRouteTableAssociationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Replaces the specified route in the specified transit gateway route table.
  _i3.SmithyOperation<ReplaceTransitGatewayRouteResult>
      replaceTransitGatewayRoute(
    ReplaceTransitGatewayRouteRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReplaceTransitGatewayRouteOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Trigger replacement of specified VPN tunnel.
  _i3.SmithyOperation<ReplaceVpnTunnelResult> replaceVpnTunnel(
    ReplaceVpnTunnelRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReplaceVpnTunnelOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Submits feedback about the status of an instance. The instance must be in the `running` state. If your experience with the instance differs from the instance status returned by DescribeInstanceStatus, use ReportInstanceStatus to report your experience with the instance. Amazon EC2 collects this information to improve the accuracy of status checks.
  ///
  /// Use of this action does not change the value returned by DescribeInstanceStatus.
  _i3.SmithyOperation<void> reportInstanceStatus(
    ReportInstanceStatusRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ReportInstanceStatusOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Spot Fleet request.
  ///
  /// The Spot Fleet request specifies the total target capacity and the On-Demand target capacity. Amazon EC2 calculates the difference between the total capacity and On-Demand capacity, and launches the difference as Spot capacity.
  ///
  /// You can submit a single request that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.
  ///
  /// By default, the Spot Fleet requests Spot Instances in the Spot Instance pool where the price per unit is the lowest. Each launch specification can include its own instance weighting that reflects the value of the instance type to your application workload.
  ///
  /// Alternatively, you can specify that the Spot Fleet distribute the target capacity across the Spot pools included in its launch specifications. By ensuring that the Spot Instances in your Spot Fleet are in different Spot pools, you can improve the availability of your fleet.
  ///
  /// You can specify tags for the Spot Fleet request and instances launched by the fleet. You cannot tag other resource types in a Spot Fleet request because only the `spot-fleet-request` and `instance` resource types are supported.
  ///
  /// For more information, see [Spot Fleet requests](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html) in the _Amazon EC2 User Guide_.
  ///
  /// We strongly discourage using the RequestSpotFleet API because it is a legacy API with no planned investment. For options for requesting Spot Instances, see [Which is the best Spot request method to use?](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<RequestSpotFleetResponse> requestSpotFleet(
    RequestSpotFleetRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RequestSpotFleetOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Creates a Spot Instance request.
  ///
  /// For more information, see [Spot Instance requests](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html) in the _Amazon EC2 User Guide for Linux Instances_.
  ///
  /// We strongly discourage using the RequestSpotInstances API because it is a legacy API with no planned investment. For options for requesting Spot Instances, see [Which is the best Spot request method to use?](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use) in the _Amazon EC2 User Guide for Linux Instances_.
  _i3.SmithyOperation<RequestSpotInstancesResult> requestSpotInstances(
    RequestSpotInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RequestSpotInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Resets the attribute of the specified IP address. For requirements, see [Using reverse DNS for email applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).
  _i3.SmithyOperation<ResetAddressAttributeResult> resetAddressAttribute(
    ResetAddressAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ResetAddressAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Resets the default KMS key for EBS encryption for your account in this Region to the Amazon Web Services managed KMS key for EBS.
  ///
  /// After resetting the default KMS key to the Amazon Web Services managed KMS key, you can continue to encrypt by a customer managed KMS key by specifying it when you create the volume. For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<ResetEbsDefaultKmsKeyIdResult> resetEbsDefaultKmsKeyId(
    ResetEbsDefaultKmsKeyIdRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ResetEbsDefaultKmsKeyIdOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value. You can only reset the load permission attribute.
  _i3.SmithyOperation<ResetFpgaImageAttributeResult> resetFpgaImageAttribute(
    ResetFpgaImageAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ResetFpgaImageAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Resets an attribute of an AMI to its default value.
  _i3.SmithyOperation<void> resetImageAttribute(
    ResetImageAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ResetImageAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Resets an attribute of an instance to its default value. To reset the `kernel` or `ramdisk`, the instance must be in a stopped state. To reset the `sourceDestCheck`, the instance can be either running or stopped.
  ///
  /// The `sourceDestCheck` attribute controls whether source/destination checking is enabled. The default value is `true`, which means checking is enabled. This value must be `false` for a NAT instance to perform NAT. For more information, see [NAT Instances](https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html) in the _Amazon VPC User Guide_.
  _i3.SmithyOperation<void> resetInstanceAttribute(
    ResetInstanceAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ResetInstanceAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Resets a network interface attribute. You can specify only one attribute at a time.
  _i3.SmithyOperation<void> resetNetworkInterfaceAttribute(
    ResetNetworkInterfaceAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ResetNetworkInterfaceAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Resets permission settings for the specified snapshot.
  ///
  /// For more information about modifying snapshot permissions, see [Share a snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<void> resetSnapshotAttribute(
    ResetSnapshotAttributeRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return ResetSnapshotAttributeOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// This action is deprecated.
  ///
  /// Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform. You cannot move an Elastic IP address that was originally allocated for use in EC2-VPC. The Elastic IP address must not be associated with an instance or network interface.
  _i3.SmithyOperation<RestoreAddressToClassicResult> restoreAddressToClassic(
    RestoreAddressToClassicRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RestoreAddressToClassicOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Restores an AMI from the Recycle Bin. For more information, see [Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<RestoreImageFromRecycleBinResult>
      restoreImageFromRecycleBin(
    RestoreImageFromRecycleBinRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RestoreImageFromRecycleBinOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Restores the entries from a previous version of a managed prefix list to a new version of the prefix list.
  _i3.SmithyOperation<RestoreManagedPrefixListVersionResult>
      restoreManagedPrefixListVersion(
    RestoreManagedPrefixListVersionRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RestoreManagedPrefixListVersionOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Restores a snapshot from the Recycle Bin. For more information, see [Restore snapshots from the Recycle Bin](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-snaps.html#recycle-bin-restore-snaps) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<RestoreSnapshotFromRecycleBinResult>
      restoreSnapshotFromRecycleBin(
    RestoreSnapshotFromRecycleBinRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RestoreSnapshotFromRecycleBinOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Restores an archived Amazon EBS snapshot for use temporarily or permanently, or modifies the restore period or restore type for a snapshot that was previously temporarily restored.
  ///
  /// For more information see [Restore an archived snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-snapshot-archiving.html#restore-archived-snapshot) and [modify the restore period or restore type for a temporarily restored snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-snapshot-archiving.html#modify-temp-restore-period) in the _Amazon Elastic Compute Cloud User Guide_.
  _i3.SmithyOperation<RestoreSnapshotTierResult> restoreSnapshotTier(
    RestoreSnapshotTierRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RestoreSnapshotTierOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes an ingress authorization rule from a Client VPN endpoint.
  _i3.SmithyOperation<RevokeClientVpnIngressResult> revokeClientVpnIngress(
    RevokeClientVpnIngressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RevokeClientVpnIngressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified outbound (egress) rules from the specified security group.
  ///
  /// You can specify rules using either rule IDs or security group rule properties. If you use rule properties, the values that you specify (for example, ports) must match the existing rule's values exactly. Each rule has a protocol, from and to ports, and destination (CIDR range, security group, or prefix list). For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not need to specify the description to revoke the rule.
  ///
  /// For a default VPC, if the values you specify do not match the existing rule's values, no error is returned, and the output describes the security group rules that were not revoked.
  ///
  /// Amazon Web Services recommends that you describe the security group to verify that the rules were removed.
  ///
  /// Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
  _i3.SmithyOperation<RevokeSecurityGroupEgressResult>
      revokeSecurityGroupEgress(
    RevokeSecurityGroupEgressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RevokeSecurityGroupEgressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Removes the specified inbound (ingress) rules from a security group.
  ///
  /// You can specify rules using either rule IDs or security group rule properties. If you use rule properties, the values that you specify (for example, ports) must match the existing rule's values exactly. Each rule has a protocol, from and to ports, and source (CIDR range, security group, or prefix list). For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not need to specify the description to revoke the rule.
  ///
  /// For a default VPC, if the values you specify do not match the existing rule's values, no error is returned, and the output describes the security group rules that were not revoked.
  ///
  /// Amazon Web Services recommends that you describe the security group to verify that the rules were removed.
  ///
  /// Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
  _i3.SmithyOperation<RevokeSecurityGroupIngressResult>
      revokeSecurityGroupIngress(
    RevokeSecurityGroupIngressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RevokeSecurityGroupIngressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Launches the specified number of instances using an AMI for which you have permissions.
  ///
  /// You can specify a number of options, or leave the default options. The following rules apply:
  ///
  /// *   If you don't specify a subnet ID, we choose a default subnet from your default VPC for you. If you don't have a default VPC, you must specify a subnet ID in the request.
  ///
  /// *   All instances have a network interface with a primary private IPv4 address. If you don't specify this address, we choose one from the IPv4 range of your subnet.
  ///
  /// *   Not all instance types support IPv6 addresses. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).
  ///
  /// *   If you don't specify a security group ID, we use the default security group. For more information, see [Security groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html).
  ///
  /// *   If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.
  ///
  ///
  /// You can create a [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html), which is a resource that contains the parameters to launch an instance. When you launch an instance using RunInstances, you can specify the launch template instead of specifying the launch parameters.
  ///
  /// To ensure faster instance launches, break up large requests into smaller batches. For example, create five separate launch requests for 100 instances each instead of one launch request for 500 instances.
  ///
  /// An instance is ready for you to use when it's in the `running` state. You can check the state of your instance using DescribeInstances. You can tag instances and EBS volumes during launch, after launch, or both. For more information, see CreateTags and [Tagging your Amazon EC2 resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).
  ///
  /// Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see [Key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html).
  ///
  /// For troubleshooting, see [What to do if an instance immediately terminates](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html), and [Troubleshooting connecting to your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html).
  _i3.SmithyOperation<Reservation> runInstances(
    RunInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RunInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Launches the specified Scheduled Instances.
  ///
  /// Before you can launch a Scheduled Instance, you must purchase it and obtain an identifier using PurchaseScheduledInstances.
  ///
  /// You must launch a Scheduled Instance during its scheduled time period. You can't stop or reboot a Scheduled Instance, but you can terminate it as needed. If you terminate a Scheduled Instance before the current scheduled time period ends, you can launch it again after a few minutes. For more information, see [Scheduled Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<RunScheduledInstancesResult> runScheduledInstances(
    RunScheduledInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return RunScheduledInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Searches for routes in the specified local gateway route table.
  _i3.SmithyOperation<
          _i3.PaginatedResult<_i4.BuiltList<LocalGatewayRoute>, int, String>>
      searchLocalGatewayRoutes(
    SearchLocalGatewayRoutesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return SearchLocalGatewayRoutesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Searches one or more transit gateway multicast groups and returns the group membership information.
  _i3.SmithyOperation<
      _i3.PaginatedResult<_i4.BuiltList<TransitGatewayMulticastGroup>, int,
          String>> searchTransitGatewayMulticastGroups(
    SearchTransitGatewayMulticastGroupsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return SearchTransitGatewayMulticastGroupsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).runPaginated(
      input,
      client: client ?? _client,
    );
  }

  /// Searches for routes in the specified transit gateway route table.
  _i3.SmithyOperation<SearchTransitGatewayRoutesResult>
      searchTransitGatewayRoutes(
    SearchTransitGatewayRoutesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return SearchTransitGatewayRoutesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Sends a diagnostic interrupt to the specified Amazon EC2 instance to trigger a _kernel panic_ (on Linux instances), or a _blue screen_/_stop error_ (on Windows instances). For instances based on Intel and AMD processors, the interrupt is received as a _non-maskable interrupt_ (NMI).
  ///
  /// In general, the operating system crashes and reboots when a kernel panic or stop error is triggered. The operating system can also be configured to perform diagnostic tasks, such as generating a memory dump file, loading a secondary kernel, or obtaining a call trace.
  ///
  /// Before sending a diagnostic interrupt to your instance, ensure that its operating system is configured to perform the required diagnostic tasks.
  ///
  /// For more information about configuring your operating system to generate a crash dump when a kernel panic or stop error occurs, see [Send a diagnostic interrupt (for advanced users)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/diagnostic-interrupt.html) (Linux instances) or [Send a diagnostic interrupt (for advanced users)](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/diagnostic-interrupt.html) (Windows instances).
  _i3.SmithyOperation<void> sendDiagnosticInterrupt(
    SendDiagnosticInterruptRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return SendDiagnosticInterruptOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Starts an Amazon EBS-backed instance that you've previously stopped.
  ///
  /// Instances that use Amazon EBS volumes as their root devices can be quickly stopped and started. When an instance is stopped, the compute resources are released and you are not billed for instance usage. However, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. You can restart your instance at any time. Every time you start your instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.
  ///
  /// Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.
  ///
  /// Performing this operation on an instance that uses an instance store as its root device returns an error.
  ///
  /// If you attempt to start a T3 instance with `host` tenancy and the `unlimted` CPU credit option, the request fails. The `unlimited` CPU credit option is not supported on Dedicated Hosts. Before you start the instance, either change its CPU credit option to `standard`, or change its tenancy to `default` or `dedicated`.
  ///
  /// For more information, see [Stop and start your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<StartInstancesResult> startInstances(
    StartInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StartInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Starts analyzing the specified Network Access Scope.
  _i3.SmithyOperation<StartNetworkInsightsAccessScopeAnalysisResult>
      startNetworkInsightsAccessScopeAnalysis(
    StartNetworkInsightsAccessScopeAnalysisRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StartNetworkInsightsAccessScopeAnalysisOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Starts analyzing the specified path. If the path is reachable, the operation returns the shortest feasible path.
  _i3.SmithyOperation<StartNetworkInsightsAnalysisResult>
      startNetworkInsightsAnalysis(
    StartNetworkInsightsAnalysisRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StartNetworkInsightsAnalysisOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Initiates the verification process to prove that the service provider owns the private DNS name domain for the endpoint service.
  ///
  /// The service provider must successfully perform the verification before the consumer can use the name to access the service.
  ///
  /// Before the service provider runs this command, they must add a record to the DNS server.
  _i3.SmithyOperation<StartVpcEndpointServicePrivateDnsVerificationResult>
      startVpcEndpointServicePrivateDnsVerification(
    StartVpcEndpointServicePrivateDnsVerificationRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StartVpcEndpointServicePrivateDnsVerificationOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Stops an Amazon EBS-backed instance. For more information, see [Stop and start your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html) in the _Amazon EC2 User Guide_.
  ///
  /// You can use the Stop action to hibernate an instance if the instance is [enabled for hibernation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enabling-hibernation.html) and it meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
  ///
  /// We don't charge usage for a stopped instance, or data transfer fees; however, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. Every time you start your instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.
  ///
  /// You can't stop or hibernate instance store-backed instances. You can't use the Stop action to hibernate Spot Instances, but you can specify that Amazon EC2 should hibernate Spot Instances when they are interrupted. For more information, see [Hibernating interrupted Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-interruptions.html#hibernate-spot-instances) in the _Amazon EC2 User Guide_.
  ///
  /// When you stop or hibernate an instance, we shut it down. You can restart your instance at any time. Before stopping or hibernating an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM, but hibernating an instance does preserve data stored in RAM. If an instance cannot hibernate successfully, a normal shutdown occurs.
  ///
  /// Stopping and hibernating an instance is different to rebooting or terminating it. For example, when you stop or hibernate an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, the root device and any other devices attached during the instance launch are automatically deleted. For more information about the differences between rebooting, stopping, hibernating, and terminating instances, see [Instance lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the _Amazon EC2 User Guide_.
  ///
  /// When you stop an instance, we attempt to shut it down forcibly after a short while. If your instance appears stuck in the stopping state after a period of time, there may be an issue with the underlying host computer. For more information, see [Troubleshoot stopping your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<StopInstancesResult> stopInstances(
    StopInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return StopInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Terminates active Client VPN endpoint connections. This action can be used to terminate a specific client connection, or up to five connections established by a specific user.
  _i3.SmithyOperation<TerminateClientVpnConnectionsResult>
      terminateClientVpnConnections(
    TerminateClientVpnConnectionsRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return TerminateClientVpnConnectionsOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Shuts down the specified instances. This operation is idempotent; if you terminate an instance more than once, each call succeeds.
  ///
  /// If you specify multiple instances and the request fails (for example, because of a single incorrect instance ID), none of the instances are terminated.
  ///
  /// If you terminate multiple instances across multiple Availability Zones, and one or more of the specified instances are enabled for termination protection, the request fails with the following results:
  ///
  /// *   The specified instances that are in the same Availability Zone as the protected instance are not terminated.
  ///
  /// *   The specified instances that are in different Availability Zones, where no other specified instances are protected, are successfully terminated.
  ///
  ///
  /// For example, say you have the following instances:
  ///
  /// *   Instance A: `us-east-1a`; Not protected
  ///
  /// *   Instance B: `us-east-1a`; Not protected
  ///
  /// *   Instance C: `us-east-1b`; Protected
  ///
  /// *   Instance D: `us-east-1b`; not protected
  ///
  ///
  /// If you attempt to terminate all of these instances in the same request, the request reports failure with the following results:
  ///
  /// *   Instance A and Instance B are successfully terminated because none of the specified instances in `us-east-1a` are enabled for termination protection.
  ///
  /// *   Instance C and Instance D fail to terminate because at least one of the specified instances in `us-east-1b` (Instance C) is enabled for termination protection.
  ///
  ///
  /// Terminated instances remain visible after termination (for approximately one hour).
  ///
  /// By default, Amazon EC2 deletes all EBS volumes that were attached when the instance launched. Volumes attached after instance launch continue running.
  ///
  /// You can stop, start, and terminate EBS-backed instances. You can only terminate instance store-backed instances. What happens to an instance differs if you stop it or terminate it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, any attached EBS volumes with the `DeleteOnTermination` block device mapping parameter set to `true` are automatically deleted. For more information about the differences between stopping and terminating instances, see [Instance lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the _Amazon EC2 User Guide_.
  ///
  /// For more information about troubleshooting, see [Troubleshooting terminating your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<TerminateInstancesResult> terminateInstances(
    TerminateInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return TerminateInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Unassigns one or more IPv6 addresses IPv4 Prefix Delegation prefixes from a network interface.
  _i3.SmithyOperation<UnassignIpv6AddressesResult> unassignIpv6Addresses(
    UnassignIpv6AddressesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UnassignIpv6AddressesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Unassigns one or more secondary private IP addresses, or IPv4 Prefix Delegation prefixes from a network interface.
  _i3.SmithyOperation<void> unassignPrivateIpAddresses(
    UnassignPrivateIpAddressesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UnassignPrivateIpAddressesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Unassigns secondary private IPv4 addresses from a private NAT gateway. You cannot unassign your primary private IP. For more information, see [Edit secondary IP address associations](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-edit-secondary) in the _Amazon VPC User Guide_.
  ///
  /// While unassigning is in progress, you cannot assign/unassign additional IP addresses while the connections are being drained. You are, however, allowed to delete the NAT gateway.
  ///
  /// A private IP address will only be released at the end of MaxDrainDurationSeconds. The private IP addresses stay associated and support the existing connections, but do not support any new connections (new connections are distributed across the remaining assigned private IP address). After the existing connections drain out, the private IP addresses are released.
  _i3.SmithyOperation<UnassignPrivateNatGatewayAddressResult>
      unassignPrivateNatGatewayAddress(
    UnassignPrivateNatGatewayAddressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UnassignPrivateNatGatewayAddressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Disables detailed monitoring for a running instance. For more information, see [Monitoring your instances and volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html) in the _Amazon EC2 User Guide_.
  _i3.SmithyOperation<UnmonitorInstancesResult> unmonitorInstances(
    UnmonitorInstancesRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UnmonitorInstancesOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the description of an egress (outbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously. You can remove a description for a security group rule by omitting the description parameter in the request.
  _i3.SmithyOperation<UpdateSecurityGroupRuleDescriptionsEgressResult>
      updateSecurityGroupRuleDescriptionsEgress(
    UpdateSecurityGroupRuleDescriptionsEgressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateSecurityGroupRuleDescriptionsEgressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Updates the description of an ingress (inbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously. You can remove a description for a security group rule by omitting the description parameter in the request.
  _i3.SmithyOperation<UpdateSecurityGroupRuleDescriptionsIngressResult>
      updateSecurityGroupRuleDescriptionsIngress(
    UpdateSecurityGroupRuleDescriptionsIngressRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return UpdateSecurityGroupRuleDescriptionsIngressOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }

  /// Stops advertising an address range that is provisioned as an address pool.
  ///
  /// You can perform this operation at most once every 10 seconds, even if you specify different address ranges each time.
  ///
  /// It can take a few minutes before traffic to the specified addresses stops routing to Amazon Web Services because of BGP propagation delays.
  _i3.SmithyOperation<WithdrawByoipCidrResult> withdrawByoipCidr(
    WithdrawByoipCidrRequest input, {
    _i1.AWSHttpClient? client,
    _i2.AWSCredentialsProvider? credentialsProvider,
  }) {
    return WithdrawByoipCidrOperation(
      region: _region,
      baseUri: _baseUri,
      credentialsProvider: credentialsProvider ?? _credentialsProvider,
      requestInterceptors: _requestInterceptors,
      responseInterceptors: _responseInterceptors,
    ).run(
      input,
      client: client ?? _client,
    );
  }
}
