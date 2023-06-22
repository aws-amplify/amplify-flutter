// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_organizations_access_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i3;

part 'describe_organizations_access_input.g.dart';

abstract class DescribeOrganizationsAccessInput
    with
        _i1.HttpInput<DescribeOrganizationsAccessInput>,
        _i2.AWSEquatable<DescribeOrganizationsAccessInput>
    implements
        Built<DescribeOrganizationsAccessInput,
            DescribeOrganizationsAccessInputBuilder> {
  factory DescribeOrganizationsAccessInput({_i3.CallAs? callAs}) {
    return _$DescribeOrganizationsAccessInput._(callAs: callAs);
  }

  factory DescribeOrganizationsAccessInput.build(
          [void Function(DescribeOrganizationsAccessInputBuilder) updates]) =
      _$DescribeOrganizationsAccessInput;

  const DescribeOrganizationsAccessInput._();

  factory DescribeOrganizationsAccessInput.fromRequest(
    DescribeOrganizationsAccessInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeOrganizationsAccessInput>>
      serializers = [DescribeOrganizationsAccessInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeOrganizationsAccessInputBuilder b) {}

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i3.CallAs? get callAs;
  @override
  DescribeOrganizationsAccessInput getPayload() => this;
  @override
  List<Object?> get props => [callAs];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeOrganizationsAccessInput')
          ..add(
            'callAs',
            callAs,
          );
    return helper.toString();
  }
}

class DescribeOrganizationsAccessInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeOrganizationsAccessInput> {
  const DescribeOrganizationsAccessInputAwsQuerySerializer()
      : super('DescribeOrganizationsAccessInput');

  @override
  Iterable<Type> get types => const [
        DescribeOrganizationsAccessInput,
        _$DescribeOrganizationsAccessInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeOrganizationsAccessInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeOrganizationsAccessInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CallAs),
          ) as _i3.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeOrganizationsAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeOrganizationsAccessInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeOrganizationsAccessInput(:callAs) = object;
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i3.CallAs),
        ));
    }
    return result$;
  }
}
