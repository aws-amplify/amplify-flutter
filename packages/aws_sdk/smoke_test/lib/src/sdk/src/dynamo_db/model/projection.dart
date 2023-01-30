// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.projection; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection_type.dart'
    as _i2;

part 'projection.g.dart';

/// Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
abstract class Projection
    with _i1.AWSEquatable<Projection>
    implements Built<Projection, ProjectionBuilder> {
  /// Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  factory Projection({
    List<String>? nonKeyAttributes,
    _i2.ProjectionType? projectionType,
  }) {
    return _$Projection._(
      nonKeyAttributes:
          nonKeyAttributes == null ? null : _i3.BuiltList(nonKeyAttributes),
      projectionType: projectionType,
    );
  }

  /// Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  factory Projection.build([void Function(ProjectionBuilder) updates]) =
      _$Projection;

  const Projection._();

  static const List<_i4.SmithySerializer> serializers = [
    ProjectionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProjectionBuilder b) {}

  /// Represents the non-key attribute names which will be projected into the index.
  ///
  /// For local secondary indexes, the total count of `NonKeyAttributes` summed across all of the local secondary indexes, must not exceed 100. If you project the same attribute into two different indexes, this counts as two distinct attributes when determining the total.
  _i3.BuiltList<String>? get nonKeyAttributes;

  /// The set of attributes that are projected into the index:
  ///
  /// *   `KEYS_ONLY` \- Only the index and primary keys are projected into the index.
  ///
  /// *   `INCLUDE` \- In addition to the attributes described in `KEYS_ONLY`, the secondary index will include other non-key attributes that you specify.
  ///
  /// *   `ALL` \- All of the table attributes are projected into the index.
  _i2.ProjectionType? get projectionType;
  @override
  List<Object?> get props => [
        nonKeyAttributes,
        projectionType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Projection');
    helper.add(
      'nonKeyAttributes',
      nonKeyAttributes,
    );
    helper.add(
      'projectionType',
      projectionType,
    );
    return helper.toString();
  }
}

class ProjectionAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<Projection> {
  const ProjectionAwsJson10Serializer() : super('Projection');

  @override
  Iterable<Type> get types => const [
        Projection,
        _$Projection,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Projection deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'NonKeyAttributes':
          if (value != null) {
            result.nonKeyAttributes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'ProjectionType':
          if (value != null) {
            result.projectionType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ProjectionType),
            ) as _i2.ProjectionType);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Projection);
    final result = <Object?>[];
    if (payload.nonKeyAttributes != null) {
      result
        ..add('NonKeyAttributes')
        ..add(serializers.serialize(
          payload.nonKeyAttributes!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.projectionType != null) {
      result
        ..add('ProjectionType')
        ..add(serializers.serialize(
          payload.projectionType!,
          specifiedType: const FullType(_i2.ProjectionType),
        ));
    }
    return result;
  }
}
