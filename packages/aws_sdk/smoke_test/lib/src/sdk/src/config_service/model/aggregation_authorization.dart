// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.aggregation_authorization; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'aggregation_authorization.g.dart';

/// An object that represents the authorizations granted to aggregator accounts and regions.
abstract class AggregationAuthorization
    with _i1.AWSEquatable<AggregationAuthorization>
    implements
        Built<AggregationAuthorization, AggregationAuthorizationBuilder> {
  /// An object that represents the authorizations granted to aggregator accounts and regions.
  factory AggregationAuthorization({
    String? aggregationAuthorizationArn,
    String? authorizedAccountId,
    String? authorizedAwsRegion,
    DateTime? creationTime,
  }) {
    return _$AggregationAuthorization._(
      aggregationAuthorizationArn: aggregationAuthorizationArn,
      authorizedAccountId: authorizedAccountId,
      authorizedAwsRegion: authorizedAwsRegion,
      creationTime: creationTime,
    );
  }

  /// An object that represents the authorizations granted to aggregator accounts and regions.
  factory AggregationAuthorization.build(
          [void Function(AggregationAuthorizationBuilder) updates]) =
      _$AggregationAuthorization;

  const AggregationAuthorization._();

  static const List<_i2.SmithySerializer> serializers = [
    AggregationAuthorizationAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AggregationAuthorizationBuilder b) {}

  /// The Amazon Resource Name (ARN) of the aggregation object.
  String? get aggregationAuthorizationArn;

  /// The 12-digit account ID of the account authorized to aggregate data.
  String? get authorizedAccountId;

  /// The region authorized to collect aggregated data.
  String? get authorizedAwsRegion;

  /// The time stamp when the aggregation authorization was created.
  DateTime? get creationTime;
  @override
  List<Object?> get props => [
        aggregationAuthorizationArn,
        authorizedAccountId,
        authorizedAwsRegion,
        creationTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AggregationAuthorization');
    helper.add(
      'aggregationAuthorizationArn',
      aggregationAuthorizationArn,
    );
    helper.add(
      'authorizedAccountId',
      authorizedAccountId,
    );
    helper.add(
      'authorizedAwsRegion',
      authorizedAwsRegion,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    return helper.toString();
  }
}

class AggregationAuthorizationAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<AggregationAuthorization> {
  const AggregationAuthorizationAwsJson11Serializer()
      : super('AggregationAuthorization');

  @override
  Iterable<Type> get types => const [
        AggregationAuthorization,
        _$AggregationAuthorization,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  AggregationAuthorization deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggregationAuthorizationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AggregationAuthorizationArn':
          if (value != null) {
            result.aggregationAuthorizationArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AuthorizedAccountId':
          if (value != null) {
            result.authorizedAccountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AuthorizedAwsRegion':
          if (value != null) {
            result.authorizedAwsRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CreationTime':
          if (value != null) {
            result.creationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as AggregationAuthorization);
    final result = <Object?>[];
    if (payload.aggregationAuthorizationArn != null) {
      result
        ..add('AggregationAuthorizationArn')
        ..add(serializers.serialize(
          payload.aggregationAuthorizationArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.authorizedAccountId != null) {
      result
        ..add('AuthorizedAccountId')
        ..add(serializers.serialize(
          payload.authorizedAccountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.authorizedAwsRegion != null) {
      result
        ..add('AuthorizedAwsRegion')
        ..add(serializers.serialize(
          payload.authorizedAwsRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.creationTime != null) {
      result
        ..add('CreationTime')
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result;
  }
}
