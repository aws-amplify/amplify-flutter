// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.simulate_principal_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/context_entry.dart' as _i3;

part 'simulate_principal_policy_request.g.dart';

abstract class SimulatePrincipalPolicyRequest
    with
        _i1.HttpInput<SimulatePrincipalPolicyRequest>,
        _i2.AWSEquatable<SimulatePrincipalPolicyRequest>
    implements
        Built<SimulatePrincipalPolicyRequest,
            SimulatePrincipalPolicyRequestBuilder> {
  factory SimulatePrincipalPolicyRequest({
    required String policySourceArn,
    List<String>? policyInputList,
    List<String>? permissionsBoundaryPolicyInputList,
    required List<String> actionNames,
    List<String>? resourceArns,
    String? resourcePolicy,
    String? resourceOwner,
    String? callerArn,
    List<_i3.ContextEntry>? contextEntries,
    String? resourceHandlingOption,
    int? maxItems,
    String? marker,
  }) {
    return _$SimulatePrincipalPolicyRequest._(
      policySourceArn: policySourceArn,
      policyInputList:
          policyInputList == null ? null : _i4.BuiltList(policyInputList),
      permissionsBoundaryPolicyInputList:
          permissionsBoundaryPolicyInputList == null
              ? null
              : _i4.BuiltList(permissionsBoundaryPolicyInputList),
      actionNames: _i4.BuiltList(actionNames),
      resourceArns: resourceArns == null ? null : _i4.BuiltList(resourceArns),
      resourcePolicy: resourcePolicy,
      resourceOwner: resourceOwner,
      callerArn: callerArn,
      contextEntries:
          contextEntries == null ? null : _i4.BuiltList(contextEntries),
      resourceHandlingOption: resourceHandlingOption,
      maxItems: maxItems,
      marker: marker,
    );
  }

  factory SimulatePrincipalPolicyRequest.build(
          [void Function(SimulatePrincipalPolicyRequestBuilder) updates]) =
      _$SimulatePrincipalPolicyRequest;

  const SimulatePrincipalPolicyRequest._();

  factory SimulatePrincipalPolicyRequest.fromRequest(
    SimulatePrincipalPolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SimulatePrincipalPolicyRequest>>
      serializers = [SimulatePrincipalPolicyRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SimulatePrincipalPolicyRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to include in the simulation. If you specify a user, group, or role, the simulation includes all policies that are associated with that entity. If you specify a user, the simulation also includes all policies that are attached to any groups the user belongs to.
  ///
  /// The maximum length of the policy document that you can pass in this operation, including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see [IAM and STS character quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length).
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get policySourceArn;

  /// An optional list of additional policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  _i4.BuiltList<String>? get policyInputList;

  /// The IAM permissions boundary policy to simulate. The permissions boundary sets the maximum permissions that the entity can have. You can input only one permissions boundary when you pass a policy to this operation. An IAM entity can only have one permissions boundary in effect at a time. For example, if a permissions boundary is attached to an entity and you pass in a different permissions boundary policy using this parameter, then the new permissions boundary policy is used for the simulation. For more information about permissions boundaries, see [Permissions boundaries for IAM entities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_. The policy input is specified as a string containing the complete, valid JSON text of a permissions boundary policy.
  ///
  /// The maximum length of the policy document that you can pass in this operation, including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see [IAM and STS character quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length).
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  _i4.BuiltList<String>? get permissionsBoundaryPolicyInputList;

  /// A list of names of API operations to evaluate in the simulation. Each operation is evaluated for each resource. Each operation must include the service identifier, such as `iam:CreateUser`.
  _i4.BuiltList<String> get actionNames;

  /// A list of ARNs of Amazon Web Services resources to include in the simulation. If this parameter is not provided, then the value defaults to `*` (all resources). Each API in the `ActionNames` parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response. You can simulate resources that don't exist in your account.
  ///
  /// The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the `ResourcePolicy` parameter.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  ///
  /// Simulation of resource-based policies isn't supported for IAM roles.
  _i4.BuiltList<String>? get resourceArns;

  /// A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.
  ///
  /// The maximum length of the policy document that you can pass in this operation, including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see [IAM and STS character quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length).
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  ///
  ///
  /// Simulation of resource-based policies isn't supported for IAM roles.
  String? get resourcePolicy;

  /// An Amazon Web Services account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN. Examples of resource ARNs include an S3 bucket or object. If `ResourceOwner` is specified, it is also used as the account owner of any `ResourcePolicy` included in the simulation. If the `ResourceOwner` parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in `CallerArn`. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user `CallerArn`.
  String? get resourceOwner;

  /// The ARN of the IAM user that you want to specify as the simulated caller of the API operations. If you do not specify a `CallerArn`, it defaults to the ARN of the user that you specify in `PolicySourceArn`, if you specified a user. If you include both a `PolicySourceArn` (for example, `arn:aws:iam::123456789012:user/David`) and a `CallerArn` (for example, `arn:aws:iam::123456789012:user/Bob`), the result is that you simulate calling the API operations as Bob, as if Bob had David's policies.
  ///
  /// You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.
  ///
  /// `CallerArn` is required if you include a `ResourcePolicy` and the `PolicySourceArn` is not the ARN for an IAM user. This is required so that the resource-based policy's `Principal` element has a value to use in evaluating the policy.
  ///
  /// For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get callerArn;

  /// A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permissions policies, the corresponding value is supplied.
  _i4.BuiltList<_i3.ContextEntry>? get contextEntries;

  /// Specifies the type of simulation to run. Different API operations that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.
  ///
  /// Each of the EC2 scenarios requires that you specify instance, image, and security group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see [Supported platforms](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html) in the _Amazon EC2 User Guide_.
  ///
  /// *   **EC2-VPC-InstanceStore**
  ///
  ///     instance, image, security group, network interface
  ///
  /// *   **EC2-VPC-InstanceStore-Subnet**
  ///
  ///     instance, image, security group, network interface, subnet
  ///
  /// *   **EC2-VPC-EBS**
  ///
  ///     instance, image, security group, network interface, volume
  ///
  /// *   **EC2-VPC-EBS-Subnet**
  ///
  ///     instance, image, security group, network interface, subnet, volume
  String? get resourceHandlingOption;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;
  @override
  SimulatePrincipalPolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        policySourceArn,
        policyInputList,
        permissionsBoundaryPolicyInputList,
        actionNames,
        resourceArns,
        resourcePolicy,
        resourceOwner,
        callerArn,
        contextEntries,
        resourceHandlingOption,
        maxItems,
        marker,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SimulatePrincipalPolicyRequest')
      ..add(
        'policySourceArn',
        policySourceArn,
      )
      ..add(
        'policyInputList',
        policyInputList,
      )
      ..add(
        'permissionsBoundaryPolicyInputList',
        permissionsBoundaryPolicyInputList,
      )
      ..add(
        'actionNames',
        actionNames,
      )
      ..add(
        'resourceArns',
        resourceArns,
      )
      ..add(
        'resourcePolicy',
        resourcePolicy,
      )
      ..add(
        'resourceOwner',
        resourceOwner,
      )
      ..add(
        'callerArn',
        callerArn,
      )
      ..add(
        'contextEntries',
        contextEntries,
      )
      ..add(
        'resourceHandlingOption',
        resourceHandlingOption,
      )
      ..add(
        'maxItems',
        maxItems,
      )
      ..add(
        'marker',
        marker,
      );
    return helper.toString();
  }
}

class SimulatePrincipalPolicyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<SimulatePrincipalPolicyRequest> {
  const SimulatePrincipalPolicyRequestAwsQuerySerializer()
      : super('SimulatePrincipalPolicyRequest');

  @override
  Iterable<Type> get types => const [
        SimulatePrincipalPolicyRequest,
        _$SimulatePrincipalPolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SimulatePrincipalPolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimulatePrincipalPolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicySourceArn':
          result.policySourceArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyInputList':
          result.policyInputList.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'PermissionsBoundaryPolicyInputList':
          result.permissionsBoundaryPolicyInputList.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ActionNames':
          result.actionNames.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ResourceArns':
          result.resourceArns.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'ResourcePolicy':
          result.resourcePolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceOwner':
          result.resourceOwner = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CallerArn':
          result.callerArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ContextEntries':
          result.contextEntries.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.ContextEntry)],
            ),
          ) as _i4.BuiltList<_i3.ContextEntry>));
        case 'ResourceHandlingOption':
          result.resourceHandlingOption = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxItems':
          result.maxItems = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Marker':
          result.marker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SimulatePrincipalPolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SimulatePrincipalPolicyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final SimulatePrincipalPolicyRequest(
      :policySourceArn,
      :policyInputList,
      :permissionsBoundaryPolicyInputList,
      :actionNames,
      :resourceArns,
      :resourcePolicy,
      :resourceOwner,
      :callerArn,
      :contextEntries,
      :resourceHandlingOption,
      :maxItems,
      :marker
    ) = object;
    result$
      ..add(const _i1.XmlElementName('PolicySourceArn'))
      ..add(serializers.serialize(
        policySourceArn,
        specifiedType: const FullType(String),
      ));
    if (policyInputList != null) {
      result$
        ..add(const _i1.XmlElementName('PolicyInputList'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          policyInputList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (permissionsBoundaryPolicyInputList != null) {
      result$
        ..add(const _i1.XmlElementName('PermissionsBoundaryPolicyInputList'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          permissionsBoundaryPolicyInputList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ActionNames'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        actionNames,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(String)],
        ),
      ));
    if (resourceArns != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceArns'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          resourceArns,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (resourcePolicy != null) {
      result$
        ..add(const _i1.XmlElementName('ResourcePolicy'))
        ..add(serializers.serialize(
          resourcePolicy,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceOwner != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceOwner'))
        ..add(serializers.serialize(
          resourceOwner,
          specifiedType: const FullType(String),
        ));
    }
    if (callerArn != null) {
      result$
        ..add(const _i1.XmlElementName('CallerArn'))
        ..add(serializers.serialize(
          callerArn,
          specifiedType: const FullType(String),
        ));
    }
    if (contextEntries != null) {
      result$
        ..add(const _i1.XmlElementName('ContextEntries'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          contextEntries,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.ContextEntry)],
          ),
        ));
    }
    if (resourceHandlingOption != null) {
      result$
        ..add(const _i1.XmlElementName('ResourceHandlingOption'))
        ..add(serializers.serialize(
          resourceHandlingOption,
          specifiedType: const FullType(String),
        ));
    }
    if (maxItems != null) {
      result$
        ..add(const _i1.XmlElementName('MaxItems'))
        ..add(serializers.serialize(
          maxItems,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (marker != null) {
      result$
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
