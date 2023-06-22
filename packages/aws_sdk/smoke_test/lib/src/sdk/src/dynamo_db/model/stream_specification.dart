// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.stream_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_view_type.dart'
    as _i2;

part 'stream_specification.g.dart';

/// Represents the DynamoDB Streams configuration for a table in DynamoDB.
abstract class StreamSpecification
    with _i1.AWSEquatable<StreamSpecification>
    implements Built<StreamSpecification, StreamSpecificationBuilder> {
  /// Represents the DynamoDB Streams configuration for a table in DynamoDB.
  factory StreamSpecification({
    bool? streamEnabled,
    _i2.StreamViewType? streamViewType,
  }) {
    streamEnabled ??= false;
    return _$StreamSpecification._(
      streamEnabled: streamEnabled,
      streamViewType: streamViewType,
    );
  }

  /// Represents the DynamoDB Streams configuration for a table in DynamoDB.
  factory StreamSpecification.build(
          [void Function(StreamSpecificationBuilder) updates]) =
      _$StreamSpecification;

  const StreamSpecification._();

  static const List<_i3.SmithySerializer<StreamSpecification>> serializers = [
    StreamSpecificationAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamSpecificationBuilder b) {
    b.streamEnabled = false;
  }

  /// Indicates whether DynamoDB Streams is enabled (true) or disabled (false) on the table.
  bool get streamEnabled;

  /// When an item in the table is modified, `StreamViewType` determines what information is written to the stream for this table. Valid values for `StreamViewType` are:
  ///
  /// *   `KEYS_ONLY` \- Only the key attributes of the modified item are written to the stream.
  ///
  /// *   `NEW_IMAGE` \- The entire item, as it appears after it was modified, is written to the stream.
  ///
  /// *   `OLD_IMAGE` \- The entire item, as it appeared before it was modified, is written to the stream.
  ///
  /// *   `NEW\_AND\_OLD_IMAGES` \- Both the new and the old item images of the item are written to the stream.
  _i2.StreamViewType? get streamViewType;
  @override
  List<Object?> get props => [
        streamEnabled,
        streamViewType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StreamSpecification')
      ..add(
        'streamEnabled',
        streamEnabled,
      )
      ..add(
        'streamViewType',
        streamViewType,
      );
    return helper.toString();
  }
}

class StreamSpecificationAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<StreamSpecification> {
  const StreamSpecificationAwsJson10Serializer() : super('StreamSpecification');

  @override
  Iterable<Type> get types => const [
        StreamSpecification,
        _$StreamSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  StreamSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StreamEnabled':
          result.streamEnabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'StreamViewType':
          result.streamViewType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StreamViewType),
          ) as _i2.StreamViewType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StreamSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StreamSpecification(:streamEnabled, :streamViewType) = object;
    result$.addAll([
      'StreamEnabled',
      serializers.serialize(
        streamEnabled,
        specifiedType: const FullType(bool),
      ),
    ]);
    if (streamViewType != null) {
      result$
        ..add('StreamViewType')
        ..add(serializers.serialize(
          streamViewType,
          specifiedType: const FullType(_i2.StreamViewType),
        ));
    }
    return result$;
  }
}
