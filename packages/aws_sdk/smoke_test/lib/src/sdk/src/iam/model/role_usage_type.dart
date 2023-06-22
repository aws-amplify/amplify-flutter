// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.role_usage_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'role_usage_type.g.dart';

/// An object that contains details about how a service-linked role is used, if that information is returned by the service.
///
/// This data type is used as a response element in the GetServiceLinkedRoleDeletionStatus operation.
abstract class RoleUsageType
    with _i1.AWSEquatable<RoleUsageType>
    implements Built<RoleUsageType, RoleUsageTypeBuilder> {
  /// An object that contains details about how a service-linked role is used, if that information is returned by the service.
  ///
  /// This data type is used as a response element in the GetServiceLinkedRoleDeletionStatus operation.
  factory RoleUsageType({
    String? region,
    List<String>? resources,
  }) {
    return _$RoleUsageType._(
      region: region,
      resources: resources == null ? null : _i2.BuiltList(resources),
    );
  }

  /// An object that contains details about how a service-linked role is used, if that information is returned by the service.
  ///
  /// This data type is used as a response element in the GetServiceLinkedRoleDeletionStatus operation.
  factory RoleUsageType.build([void Function(RoleUsageTypeBuilder) updates]) =
      _$RoleUsageType;

  const RoleUsageType._();

  static const List<_i3.SmithySerializer<RoleUsageType>> serializers = [
    RoleUsageTypeAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RoleUsageTypeBuilder b) {}

  /// The name of the Region where the service-linked role is being used.
  String? get region;

  /// The name of the resource that is using the service-linked role.
  _i2.BuiltList<String>? get resources;
  @override
  List<Object?> get props => [
        region,
        resources,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RoleUsageType')
      ..add(
        'region',
        region,
      )
      ..add(
        'resources',
        resources,
      );
    return helper.toString();
  }
}

class RoleUsageTypeAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<RoleUsageType> {
  const RoleUsageTypeAwsQuerySerializer() : super('RoleUsageType');

  @override
  Iterable<Type> get types => const [
        RoleUsageType,
        _$RoleUsageType,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RoleUsageType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleUsageTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Resources':
          result.resources.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RoleUsageType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RoleUsageTypeResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final RoleUsageType(:region, :resources) = object;
    if (region != null) {
      result$
        ..add(const _i3.XmlElementName('Region'))
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    if (resources != null) {
      result$
        ..add(const _i3.XmlElementName('Resources'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          resources,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
