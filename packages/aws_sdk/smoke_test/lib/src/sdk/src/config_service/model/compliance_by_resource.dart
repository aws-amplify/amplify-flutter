// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.compliance_by_resource; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/compliance.dart'
    as _i2;

part 'compliance_by_resource.g.dart';

/// Indicates whether an Amazon Web Services resource that is evaluated according to one or more Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.
abstract class ComplianceByResource
    with _i1.AWSEquatable<ComplianceByResource>
    implements Built<ComplianceByResource, ComplianceByResourceBuilder> {
  /// Indicates whether an Amazon Web Services resource that is evaluated according to one or more Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.
  factory ComplianceByResource({
    String? resourceType,
    String? resourceId,
    _i2.Compliance? compliance,
  }) {
    return _$ComplianceByResource._(
      resourceType: resourceType,
      resourceId: resourceId,
      compliance: compliance,
    );
  }

  /// Indicates whether an Amazon Web Services resource that is evaluated according to one or more Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it. A resource is noncompliant if it does not comply with one or more of these rules.
  factory ComplianceByResource.build(
          [void Function(ComplianceByResourceBuilder) updates]) =
      _$ComplianceByResource;

  const ComplianceByResource._();

  static const List<_i3.SmithySerializer<ComplianceByResource>> serializers = [
    ComplianceByResourceAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplianceByResourceBuilder b) {}

  /// The type of the Amazon Web Services resource that was evaluated.
  String? get resourceType;

  /// The ID of the Amazon Web Services resource that was evaluated.
  String? get resourceId;

  /// Indicates whether the Amazon Web Services resource complies with all of the Config rules that evaluated it.
  _i2.Compliance? get compliance;
  @override
  List<Object?> get props => [
        resourceType,
        resourceId,
        compliance,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplianceByResource')
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'compliance',
        compliance,
      );
    return helper.toString();
  }
}

class ComplianceByResourceAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ComplianceByResource> {
  const ComplianceByResourceAwsJson11Serializer()
      : super('ComplianceByResource');

  @override
  Iterable<Type> get types => const [
        ComplianceByResource,
        _$ComplianceByResource,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ComplianceByResource deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplianceByResourceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Compliance':
          result.compliance.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Compliance),
          ) as _i2.Compliance));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ComplianceByResource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ComplianceByResource(:resourceType, :resourceId, :compliance) =
        object;
    if (resourceType != null) {
      result$
        ..add('ResourceType')
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceId != null) {
      result$
        ..add('ResourceId')
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (compliance != null) {
      result$
        ..add('Compliance')
        ..add(serializers.serialize(
          compliance,
          specifiedType: const FullType(_i2.Compliance),
        ));
    }
    return result$;
  }
}
