// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_organizations_access_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/organization_status.dart'
    as _i2;

part 'describe_organizations_access_output.g.dart';

abstract class DescribeOrganizationsAccessOutput
    with
        _i1.AWSEquatable<DescribeOrganizationsAccessOutput>
    implements
        Built<DescribeOrganizationsAccessOutput,
            DescribeOrganizationsAccessOutputBuilder> {
  factory DescribeOrganizationsAccessOutput({_i2.OrganizationStatus? status}) {
    return _$DescribeOrganizationsAccessOutput._(status: status);
  }

  factory DescribeOrganizationsAccessOutput.build(
          [void Function(DescribeOrganizationsAccessOutputBuilder) updates]) =
      _$DescribeOrganizationsAccessOutput;

  const DescribeOrganizationsAccessOutput._();

  /// Constructs a [DescribeOrganizationsAccessOutput] from a [payload] and [response].
  factory DescribeOrganizationsAccessOutput.fromResponse(
    DescribeOrganizationsAccessOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeOrganizationsAccessOutput>>
      serializers = [DescribeOrganizationsAccessOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeOrganizationsAccessOutputBuilder b) {}

  /// Presents the status of the `OrganizationAccess`.
  _i2.OrganizationStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeOrganizationsAccessOutput')
          ..add(
            'status',
            status,
          );
    return helper.toString();
  }
}

class DescribeOrganizationsAccessOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeOrganizationsAccessOutput> {
  const DescribeOrganizationsAccessOutputAwsQuerySerializer()
      : super('DescribeOrganizationsAccessOutput');

  @override
  Iterable<Type> get types => const [
        DescribeOrganizationsAccessOutput,
        _$DescribeOrganizationsAccessOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeOrganizationsAccessOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeOrganizationsAccessOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.OrganizationStatus),
          ) as _i2.OrganizationStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeOrganizationsAccessOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeOrganizationsAccessOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeOrganizationsAccessOutput(:status) = object;
    if (status != null) {
      result$
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i2.OrganizationStatus),
        ));
    }
    return result$;
  }
}
