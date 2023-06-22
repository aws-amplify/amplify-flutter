// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.organizations_decision_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'organizations_decision_detail.g.dart';

/// Contains information about the effect that Organizations has on a policy simulation.
abstract class OrganizationsDecisionDetail
    with _i1.AWSEquatable<OrganizationsDecisionDetail>
    implements
        Built<OrganizationsDecisionDetail, OrganizationsDecisionDetailBuilder> {
  /// Contains information about the effect that Organizations has on a policy simulation.
  factory OrganizationsDecisionDetail({bool? allowedByOrganizations}) {
    allowedByOrganizations ??= false;
    return _$OrganizationsDecisionDetail._(
        allowedByOrganizations: allowedByOrganizations);
  }

  /// Contains information about the effect that Organizations has on a policy simulation.
  factory OrganizationsDecisionDetail.build(
          [void Function(OrganizationsDecisionDetailBuilder) updates]) =
      _$OrganizationsDecisionDetail;

  const OrganizationsDecisionDetail._();

  static const List<_i2.SmithySerializer<OrganizationsDecisionDetail>>
      serializers = [OrganizationsDecisionDetailAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationsDecisionDetailBuilder b) {
    b.allowedByOrganizations = false;
  }

  /// Specifies whether the simulated operation is allowed by the Organizations service control policies that impact the simulated user's account.
  bool get allowedByOrganizations;
  @override
  List<Object?> get props => [allowedByOrganizations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OrganizationsDecisionDetail')
      ..add(
        'allowedByOrganizations',
        allowedByOrganizations,
      );
    return helper.toString();
  }
}

class OrganizationsDecisionDetailAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<OrganizationsDecisionDetail> {
  const OrganizationsDecisionDetailAwsQuerySerializer()
      : super('OrganizationsDecisionDetail');

  @override
  Iterable<Type> get types => const [
        OrganizationsDecisionDetail,
        _$OrganizationsDecisionDetail,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  OrganizationsDecisionDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationsDecisionDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllowedByOrganizations':
          result.allowedByOrganizations = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OrganizationsDecisionDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OrganizationsDecisionDetailResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final OrganizationsDecisionDetail(:allowedByOrganizations) = object;
    result$
      ..add(const _i2.XmlElementName('AllowedByOrganizations'))
      ..add(serializers.serialize(
        allowedByOrganizations,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
