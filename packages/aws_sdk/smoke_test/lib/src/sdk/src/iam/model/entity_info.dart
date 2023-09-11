// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.entity_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/policy_owner_entity_type.dart';

part 'entity_info.g.dart';

/// Contains details about the specified entity (user or role).
///
/// This data type is an element of the EntityDetails object.
abstract class EntityInfo
    with _i1.AWSEquatable<EntityInfo>
    implements Built<EntityInfo, EntityInfoBuilder> {
  /// Contains details about the specified entity (user or role).
  ///
  /// This data type is an element of the EntityDetails object.
  factory EntityInfo({
    required String arn,
    required String name,
    required PolicyOwnerEntityType type,
    required String id,
    String? path,
  }) {
    return _$EntityInfo._(
      arn: arn,
      name: name,
      type: type,
      id: id,
      path: path,
    );
  }

  /// Contains details about the specified entity (user or role).
  ///
  /// This data type is an element of the EntityDetails object.
  factory EntityInfo.build([void Function(EntityInfoBuilder) updates]) =
      _$EntityInfo;

  const EntityInfo._();

  static const List<_i2.SmithySerializer<EntityInfo>> serializers = [
    EntityInfoAwsQuerySerializer()
  ];

  /// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.
  ///
  /// For more information about ARNs, go to [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String get arn;

  /// The name of the entity (user or role).
  String get name;

  /// The type of entity (user or role).
  PolicyOwnerEntityType get type;

  /// The identifier of the entity (user or role).
  String get id;

  /// The path to the entity (user or role). For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String? get path;
  @override
  List<Object?> get props => [
        arn,
        name,
        type,
        id,
        path,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EntityInfo')
      ..add(
        'arn',
        arn,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'id',
        id,
      )
      ..add(
        'path',
        path,
      );
    return helper.toString();
  }
}

class EntityInfoAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<EntityInfo> {
  const EntityInfoAwsQuerySerializer() : super('EntityInfo');

  @override
  Iterable<Type> get types => const [
        EntityInfo,
        _$EntityInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  EntityInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityInfoBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyOwnerEntityType),
          ) as PolicyOwnerEntityType);
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Path':
          result.path = (serializers.deserialize(
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
    EntityInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EntityInfoResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final EntityInfo(:arn, :name, :type, :id, :path) = object;
    result$
      ..add(const _i2.XmlElementName('Arn'))
      ..add(serializers.serialize(
        arn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Name'))
      ..add(serializers.serialize(
        name,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Type'))
      ..add(serializers.serialize(
        type,
        specifiedType: const FullType(PolicyOwnerEntityType),
      ));
    result$
      ..add(const _i2.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    if (path != null) {
      result$
        ..add(const _i2.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
