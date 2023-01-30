// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.source_table_feature_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_secondary_index_info.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/local_secondary_index_info.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/sse_description.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/stream_specification.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_description.dart'
    as _i6;

part 'source_table_feature_details.g.dart';

/// Contains the details of the features enabled on the table when the backup was created. For example, LSIs, GSIs, streams, TTL.
abstract class SourceTableFeatureDetails
    with _i1.AWSEquatable<SourceTableFeatureDetails>
    implements
        Built<SourceTableFeatureDetails, SourceTableFeatureDetailsBuilder> {
  /// Contains the details of the features enabled on the table when the backup was created. For example, LSIs, GSIs, streams, TTL.
  factory SourceTableFeatureDetails({
    List<_i2.GlobalSecondaryIndexInfo>? globalSecondaryIndexes,
    List<_i3.LocalSecondaryIndexInfo>? localSecondaryIndexes,
    _i4.SseDescription? sseDescription,
    _i5.StreamSpecification? streamDescription,
    _i6.TimeToLiveDescription? timeToLiveDescription,
  }) {
    return _$SourceTableFeatureDetails._(
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i7.BuiltList(globalSecondaryIndexes),
      localSecondaryIndexes: localSecondaryIndexes == null
          ? null
          : _i7.BuiltList(localSecondaryIndexes),
      sseDescription: sseDescription,
      streamDescription: streamDescription,
      timeToLiveDescription: timeToLiveDescription,
    );
  }

  /// Contains the details of the features enabled on the table when the backup was created. For example, LSIs, GSIs, streams, TTL.
  factory SourceTableFeatureDetails.build(
          [void Function(SourceTableFeatureDetailsBuilder) updates]) =
      _$SourceTableFeatureDetails;

  const SourceTableFeatureDetails._();

  static const List<_i8.SmithySerializer> serializers = [
    SourceTableFeatureDetailsAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SourceTableFeatureDetailsBuilder b) {}

  /// Represents the GSI properties for the table when the backup was created. It includes the IndexName, KeySchema, Projection, and ProvisionedThroughput for the GSIs on the table at the time of backup.
  _i7.BuiltList<_i2.GlobalSecondaryIndexInfo>? get globalSecondaryIndexes;

  /// Represents the LSI properties for the table when the backup was created. It includes the IndexName, KeySchema and Projection for the LSIs on the table at the time of backup.
  _i7.BuiltList<_i3.LocalSecondaryIndexInfo>? get localSecondaryIndexes;

  /// The description of the server-side encryption status on the table when the backup was created.
  _i4.SseDescription? get sseDescription;

  /// Stream settings on the table when the backup was created.
  _i5.StreamSpecification? get streamDescription;

  /// Time to Live settings on the table when the backup was created.
  _i6.TimeToLiveDescription? get timeToLiveDescription;
  @override
  List<Object?> get props => [
        globalSecondaryIndexes,
        localSecondaryIndexes,
        sseDescription,
        streamDescription,
        timeToLiveDescription,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SourceTableFeatureDetails');
    helper.add(
      'globalSecondaryIndexes',
      globalSecondaryIndexes,
    );
    helper.add(
      'localSecondaryIndexes',
      localSecondaryIndexes,
    );
    helper.add(
      'sseDescription',
      sseDescription,
    );
    helper.add(
      'streamDescription',
      streamDescription,
    );
    helper.add(
      'timeToLiveDescription',
      timeToLiveDescription,
    );
    return helper.toString();
  }
}

class SourceTableFeatureDetailsAwsJson10Serializer
    extends _i8.StructuredSmithySerializer<SourceTableFeatureDetails> {
  const SourceTableFeatureDetailsAwsJson10Serializer()
      : super('SourceTableFeatureDetails');

  @override
  Iterable<Type> get types => const [
        SourceTableFeatureDetails,
        _$SourceTableFeatureDetails,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  SourceTableFeatureDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SourceTableFeatureDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'GlobalSecondaryIndexes':
          if (value != null) {
            result.globalSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i2.GlobalSecondaryIndexInfo)],
              ),
            ) as _i7.BuiltList<_i2.GlobalSecondaryIndexInfo>));
          }
          break;
        case 'LocalSecondaryIndexes':
          if (value != null) {
            result.localSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i3.LocalSecondaryIndexInfo)],
              ),
            ) as _i7.BuiltList<_i3.LocalSecondaryIndexInfo>));
          }
          break;
        case 'SSEDescription':
          if (value != null) {
            result.sseDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.SseDescription),
            ) as _i4.SseDescription));
          }
          break;
        case 'StreamDescription':
          if (value != null) {
            result.streamDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.StreamSpecification),
            ) as _i5.StreamSpecification));
          }
          break;
        case 'TimeToLiveDescription':
          if (value != null) {
            result.timeToLiveDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.TimeToLiveDescription),
            ) as _i6.TimeToLiveDescription));
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
    final payload = (object as SourceTableFeatureDetails);
    final result = <Object?>[];
    if (payload.globalSecondaryIndexes != null) {
      result
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexes!,
          specifiedType: const FullType(
            _i7.BuiltList,
            [FullType(_i2.GlobalSecondaryIndexInfo)],
          ),
        ));
    }
    if (payload.localSecondaryIndexes != null) {
      result
        ..add('LocalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.localSecondaryIndexes!,
          specifiedType: const FullType(
            _i7.BuiltList,
            [FullType(_i3.LocalSecondaryIndexInfo)],
          ),
        ));
    }
    if (payload.sseDescription != null) {
      result
        ..add('SSEDescription')
        ..add(serializers.serialize(
          payload.sseDescription!,
          specifiedType: const FullType(_i4.SseDescription),
        ));
    }
    if (payload.streamDescription != null) {
      result
        ..add('StreamDescription')
        ..add(serializers.serialize(
          payload.streamDescription!,
          specifiedType: const FullType(_i5.StreamSpecification),
        ));
    }
    if (payload.timeToLiveDescription != null) {
      result
        ..add('TimeToLiveDescription')
        ..add(serializers.serialize(
          payload.timeToLiveDescription!,
          specifiedType: const FullType(_i6.TimeToLiveDescription),
        ));
    }
    return result;
  }
}
