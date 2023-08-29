// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smoke_test/src/sdk/ec2.dart';
import 'package:test/test.dart';

import 'common.dart';

// Follows selected examples from:
// https://docs.aws.amazon.com/code-library/latest/ug/ec2_code_examples.html
void main() {
  group('EC2', () {
    const host = 'localhost.localstack.cloud:4566';
    late final Ec2Client client;

    setUpAll(() {
      client = Ec2Client(
        region: 'us-west-2',
        baseUri: Uri.http(host),
        credentialsProvider: const AWSCredentialsProvider(
          AWSCredentials('accessKeyId', 'secretAccessKey'),
        ),
        client: localClient,
      );
    });

    test('Add tags to resource', () async {
      // Create resource
      final createResponse = await client
          .runInstances(
            RunInstancesRequest(
              imageId: 'ami-1234567890abcdef0',
              instanceType: InstanceType.t2Micro,
              maxCount: 1,
              minCount: 1,
            ),
          )
          .result;
      expect(createResponse.instances, hasLength(1));
      await expectLater(
        client
            .createTags(
              CreateTagsRequest(
                resources: ['i-1234567890abcdef0'],
                tags: [
                  Tag(key: 'Name', value: 'MyInstance'),
                  Tag(key: 'Purpose', value: 'Testing'),
                ],
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete a security group', () async {
      // Create security group
      final createResponse = await client
          .createSecurityGroup(
            CreateSecurityGroupRequest(
              groupName: 'MySecurityGroup',
              description: 'My security group',
            ),
          )
          .result;
      expect(createResponse.groupId, isNotNull);
      await expectLater(
        client
            .deleteSecurityGroup(
              DeleteSecurityGroupRequest(
                groupId: createResponse.groupId!,
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete a VPC', () async {
      // Create VPC
      final createResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createResponse.vpc?.vpcId, isNotNull);
      await expectLater(
        client
            .deleteVpc(
              DeleteVpcRequest(
                dryRun: false,
                vpcId: createResponse.vpc!.vpcId!,
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete a subnet', () async {
      // Create VPC
      final createVpcResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createVpcResponse.vpc?.vpcId, isNotNull);
      // Create subnet
      final createSubnetResponse = await client
          .createSubnet(
            CreateSubnetRequest(
              cidrBlock: '10.0.0.0/16',
              vpcId: createVpcResponse.vpc!.vpcId!,
            ),
          )
          .result;
      expect(createSubnetResponse.subnet?.subnetId, isNotNull);
      await expectLater(
        client
            .deleteSubnet(
              DeleteSubnetRequest(
                subnetId: createSubnetResponse.subnet!.subnetId!,
              ),
            )
            .result,
        completes,
      );
      await expectLater(
        client
            .deleteVpc(
              DeleteVpcRequest(
                vpcId: createVpcResponse.vpc!.vpcId!,
              ),
            )
            .result,
        completes,
      );
    });

    test(
      'Create and delete a volume',
      () async {
        // Create volume
        final createResponse = await client
            .createVolume(
              CreateVolumeRequest(
                availabilityZone: 'us-west-2a',
                volumeType: VolumeType.io1,
                size: 150,
                iops: 7500,
                multiAttachEnabled: true,
              ),
            )
            .result;
        expect(createResponse.volumeId, isNotNull);
        await expectLater(
          client
              .deleteVolume(
                DeleteVolumeRequest(
                  volumeId: createResponse.volumeId!,
                ),
              )
              .result,
          completes,
        );
      },
      skip: 'Broken in localstack',
    );

    test('Create and delete a key pair', () async {
      // Create key pair
      final createResponse = await client
          .createKeyPair(
            CreateKeyPairRequest(
              keyName: 'MyKeyPair',
            ),
          )
          .result;
      expect(createResponse.keyName, 'MyKeyPair');
      expect(createResponse.keyFingerprint, isNotNull);
      expect(createResponse.keyMaterial, isNotNull);
      await expectLater(
        client
            .deleteKeyPair(
              DeleteKeyPairRequest(
                keyName: 'MyKeyPair',
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete a network interface', () async {
      // Create VPC
      final createVpcResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createVpcResponse.vpc?.vpcId, isNotNull);
      // Create subnet
      final createSubnetResponse = await client
          .createSubnet(
            CreateSubnetRequest(
              cidrBlock: '10.0.0.0/16',
              vpcId: createVpcResponse.vpc!.vpcId!,
            ),
          )
          .result;
      expect(createSubnetResponse.subnet?.subnetId, isNotNull);
      // Create network interface
      final createResponse = await client
          .createNetworkInterface(
            CreateNetworkInterfaceRequest(
              subnetId: createSubnetResponse.subnet!.subnetId!,
            ),
          )
          .result;
      expect(createResponse.networkInterface?.networkInterfaceId, isNotNull);
      await expectLater(
        client
            .deleteNetworkInterface(
              DeleteNetworkInterfaceRequest(
                networkInterfaceId:
                    createResponse.networkInterface!.networkInterfaceId!,
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete an internet gateway', () async {
      // Create internet gateway
      final createResponse = await client
          .createInternetGateway(
            CreateInternetGatewayRequest(),
          )
          .result;
      expect(createResponse.internetGateway?.internetGatewayId, isNotNull);
      await expectLater(
        client
            .deleteInternetGateway(
              DeleteInternetGatewayRequest(
                internetGatewayId:
                    createResponse.internetGateway!.internetGatewayId!,
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete a route table', () async {
      // Create VPC
      final createVpcResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createVpcResponse.vpc?.vpcId, isNotNull);
      // Create route table
      final createResponse = await client
          .createRouteTable(
            CreateRouteTableRequest(
              vpcId: createVpcResponse.vpc!.vpcId!,
            ),
          )
          .result;
      expect(createResponse.routeTable?.routeTableId, isNotNull);
      await expectLater(
        client
            .deleteRouteTable(
              DeleteRouteTableRequest(
                routeTableId: createResponse.routeTable!.routeTableId!,
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete a NAT gateway', () async {
      // Create VPC
      final createVpcResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createVpcResponse.vpc?.vpcId, isNotNull);
      // Create subnet
      final createSubnetResponse = await client
          .createSubnet(
            CreateSubnetRequest(
              cidrBlock: '10.0.0.0/16',
              vpcId: createVpcResponse.vpc!.vpcId!,
            ),
          )
          .result;
      expect(createSubnetResponse.subnet?.subnetId, isNotNull);
      // Create EIP allocation
      final createEipResponse = await client
          .allocateAddress(
            AllocateAddressRequest(),
          )
          .result;
      expect(createEipResponse.allocationId, isNotNull);
      // Create NAT gateway
      final createResponse = await client
          .createNatGateway(
            CreateNatGatewayRequest(
              allocationId: createEipResponse.allocationId!,
              subnetId: createSubnetResponse.subnet!.subnetId!,
            ),
          )
          .result;
      expect(createResponse.natGateway?.natGatewayId, isNotNull);
      await expectLater(
        client
            .deleteNatGateway(
              DeleteNatGatewayRequest(
                natGatewayId: createResponse.natGateway!.natGatewayId!,
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete a VPC peering connection', () async {
      // Create VPC
      final createVpcResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createVpcResponse.vpc?.vpcId, isNotNull);
      // Create peer VPC
      final createPeerVpcResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createPeerVpcResponse.vpc?.vpcId, isNotNull);
      // Create VPC peering connection
      final createResponse = await client
          .createVpcPeeringConnection(
            CreateVpcPeeringConnectionRequest(
              peerVpcId: createPeerVpcResponse.vpc!.vpcId!,
              vpcId: createVpcResponse.vpc!.vpcId!,
            ),
          )
          .result;
      expect(createResponse.vpcPeeringConnection?.vpcPeeringConnectionId,
          isNotNull);
      await expectLater(
        client
            .deleteVpcPeeringConnection(
              DeleteVpcPeeringConnectionRequest(
                vpcPeeringConnectionId: createResponse
                    .vpcPeeringConnection!.vpcPeeringConnectionId!,
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete a VPN gateway', () async {
      // Create VPN gateway
      final createResponse = await client
          .createVpnGateway(
            CreateVpnGatewayRequest(
              type: GatewayType.ipsec1,
            ),
          )
          .result;
      expect(createResponse.vpnGateway?.vpnGatewayId, isNotNull);
      await expectLater(
        client
            .deleteVpnGateway(
              DeleteVpnGatewayRequest(
                vpnGatewayId: createResponse.vpnGateway!.vpnGatewayId!,
              ),
            )
            .result,
        completes,
      );
    });

    test('Create and delete a VPN connection', () async {
      // Create customer gateway
      final createCgwResponse = await client
          .createCustomerGateway(
            CreateCustomerGatewayRequest(
              ipAddress: '1.1.1.1',
              type: GatewayType.ipsec1,
            ),
          )
          .result;
      expect(createCgwResponse.customerGateway?.customerGatewayId, isNotNull);
      // Create VPN gateway
      final createVgwResponse = await client
          .createVpnGateway(
            CreateVpnGatewayRequest(
              type: GatewayType.ipsec1,
            ),
          )
          .result;
      expect(createVgwResponse.vpnGateway?.vpnGatewayId, isNotNull);
      // Create VPN connection
      final createResponse = await client
          .createVpnConnection(
            CreateVpnConnectionRequest(
              type: 'ipsec.1',
              customerGatewayId:
                  createCgwResponse.customerGateway!.customerGatewayId!,
              vpnGatewayId: createVgwResponse.vpnGateway!.vpnGatewayId!,
            ),
          )
          .result;
      expect(createResponse.vpnConnection?.vpnConnectionId, isNotNull);
      await expectLater(
        client
            .deleteVpnConnection(
              DeleteVpnConnectionRequest(
                vpnConnectionId: createResponse.vpnConnection!.vpnConnectionId!,
              ),
            )
            .result,
        completes,
      );
    });

    test('Describe availability zones', () async {
      final response = await client
          .describeAvailabilityZones(
            DescribeAvailabilityZonesRequest(
              filters: [
                Filter(
                  name: 'state',
                  values: ['available'],
                ),
              ],
            ),
          )
          .result;
      expect(response.availabilityZones, isNotEmpty);
    });

    test('Describe VPCs', () async {
      final response = await client
          .describeVpcs(
            DescribeVpcsRequest(
              filters: [
                Filter(
                  name: 'isDefault',
                  values: ['true'],
                ),
              ],
            ),
          )
          .result;
      expect(response.items, isNotEmpty);
    });

    test('Describe subnets', () async {
      final response = await client
          .describeSubnets(
            DescribeSubnetsRequest(
              filters: [
                Filter(
                  name: 'state',
                  values: ['available'],
                ),
              ],
            ),
          )
          .result;
      expect(response.items, isNotEmpty);
    });

    test('Describe route tables', () async {
      final response = await client
          .describeRouteTables(
            DescribeRouteTablesRequest(
              filters: [
                Filter(
                  name: 'association.main',
                  values: ['true'],
                ),
              ],
            ),
          )
          .result;
      expect(response.items, isNotEmpty);
    });

    test('Describe internet gateways', () async {
      // Create a VPC
      final createVpcResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createVpcResponse.vpc?.vpcId, isNotNull);
      // Create an internet gateway
      final createIgwResponse = await client
          .createInternetGateway(
            CreateInternetGatewayRequest(),
          )
          .result;
      expect(createIgwResponse.internetGateway?.internetGatewayId, isNotNull);
      // Attach internet gateway to VPC
      await client
          .attachInternetGateway(
            AttachInternetGatewayRequest(
              internetGatewayId:
                  createIgwResponse.internetGateway!.internetGatewayId!,
              vpcId: createVpcResponse.vpc!.vpcId!,
            ),
          )
          .result;
      // Describe internet gateways
      final response = await client
          .describeInternetGateways(
            DescribeInternetGatewaysRequest(
              filters: [
                Filter(
                  name: 'attachment.vpc-id',
                  values: [createVpcResponse.vpc!.vpcId!],
                ),
              ],
            ),
          )
          .result;
      expect(response.items, isNotEmpty);
    });

    test('Describe NAT gateways', () async {
      // Create a VPC
      final createVpcResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createVpcResponse.vpc?.vpcId, isNotNull);
      // Create a subnet
      final createSubnetResponse = await client
          .createSubnet(
            CreateSubnetRequest(
              cidrBlock: '10.0.0.0/16',
              vpcId: createVpcResponse.vpc!.vpcId!,
            ),
          )
          .result;
      expect(createSubnetResponse.subnet?.subnetId, isNotNull);
      // Create an Elastic IP
      final createEipResponse = await client
          .allocateAddress(
            AllocateAddressRequest(
              domain: DomainType.vpc,
            ),
          )
          .result;
      expect(createEipResponse.allocationId, isNotNull);
      // Create a NAT gateway
      final createNatGatewayResponse = await client
          .createNatGateway(
            CreateNatGatewayRequest(
              allocationId: createEipResponse.allocationId!,
              subnetId: createSubnetResponse.subnet!.subnetId!,
            ),
          )
          .result;
      expect(createNatGatewayResponse.natGateway?.natGatewayId, isNotNull);
      final response = await client
          .describeNatGateways(
            DescribeNatGatewaysRequest(
              filter: [
                Filter(
                  name: 'state',
                  values: ['available'],
                ),
              ],
            ),
          )
          .result;
      expect(response.items, isNotEmpty);
    });

    test('Describe customer gateways', () async {
      // Create a customer gateway
      final createCgwResponse = await client
          .createCustomerGateway(
            CreateCustomerGatewayRequest(
              type: GatewayType.ipsec1,
              ipAddress: '1.1.1.1',
            ),
          )
          .result;
      expect(createCgwResponse.customerGateway?.customerGatewayId, isNotNull);
      final response = await client
          .describeCustomerGateways(
            DescribeCustomerGatewaysRequest(
              filters: [
                Filter(
                  name: 'state',
                  values: ['available'],
                ),
              ],
            ),
          )
          .result;
      expect(response.customerGateways, isNotEmpty);
    });

    test('Describe account attributes', () async {
      final response = await client
          .describeAccountAttributes(
            DescribeAccountAttributesRequest(),
          )
          .result;
      expect(response.accountAttributes, isNotEmpty);
    });

    test('Get data about Amazon Machine Images', () async {
      final response = await client
          .describeImages(
            DescribeImagesRequest(
              filters: [
                Filter(
                  name: 'state',
                  values: ['available'],
                ),
              ],
            ),
          )
          .result;
      expect(response.items, isNotEmpty);
    });

    test('Start and stop an instance', () async {
      // Create a VPC
      final createVpcResponse = await client
          .createVpc(
            CreateVpcRequest(
              cidrBlock: '10.0.0.0/16',
            ),
          )
          .result;
      expect(createVpcResponse.vpc?.vpcId, isNotNull);
      // Create a subnet
      final createSubnetResponse = await client
          .createSubnet(
            CreateSubnetRequest(
              cidrBlock: '10.0.0.0/16',
              vpcId: createVpcResponse.vpc!.vpcId!,
            ),
          )
          .result;
      expect(createSubnetResponse.subnet?.subnetId, isNotNull);
      // Create a security group
      final createSecurityGroupResponse = await client
          .createSecurityGroup(
            CreateSecurityGroupRequest(
              description: 'Test security group',
              groupName: 'test-security-group',
              vpcId: createVpcResponse.vpc!.vpcId!,
            ),
          )
          .result;
      expect(createSecurityGroupResponse.groupId, isNotNull);
      // Create an instance
      final createInstanceResponse = await client
          .runInstances(
            RunInstancesRequest(
              imageId: 'ami-0c2b8ca1dad447f8a',
              instanceType: InstanceType.t2Micro,
              maxCount: 1,
              minCount: 1,
              securityGroupIds: [
                createSecurityGroupResponse.groupId!,
              ],
              subnetId: createSubnetResponse.subnet!.subnetId!,
            ),
          )
          .result;
      expect(createInstanceResponse.instances, isNotEmpty);
      final instanceId = createInstanceResponse.instances![0].instanceId;
      // Start the instance
      await client
          .startInstances(
            StartInstancesRequest(
              instanceIds: [instanceId!],
            ),
          )
          .result;
      // Stop the instance
      await client
          .stopInstances(
            StopInstancesRequest(
              instanceIds: [instanceId],
            ),
          )
          .result;
      // Terminate the instance
      await client
          .terminateInstances(
            TerminateInstancesRequest(
              instanceIds: [instanceId],
            ),
          )
          .result;
      // Describe instances
      final describeInstancesResponse = await client
          .describeInstances(
            DescribeInstancesRequest(
              filters: [
                Filter(
                  name: 'instance-id',
                  values: [instanceId],
                ),
              ],
            ),
          )
          .result;
      expect(describeInstancesResponse.items, isEmpty);
    });
  });
}
