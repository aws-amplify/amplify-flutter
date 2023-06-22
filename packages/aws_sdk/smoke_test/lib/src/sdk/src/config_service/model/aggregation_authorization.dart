// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i2.SmithySerializer<AggregationAuthorization>>
      serializers = [AggregationAuthorizationAwsJson11Serializer()];

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
    final helper = newBuiltValueToStringHelper('AggregationAuthorization')
      ..add(
        'aggregationAuthorizationArn',
        aggregationAuthorizationArn,
      )
      ..add(
        'authorizedAccountId',
        authorizedAccountId,
      )
      ..add(
        'authorizedAwsRegion',
        authorizedAwsRegion,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AggregationAuthorizationArn':
          result.aggregationAuthorizationArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AuthorizedAccountId':
          result.authorizedAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AuthorizedAwsRegion':
          result.authorizedAwsRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CreationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AggregationAuthorization object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AggregationAuthorization(
      :aggregationAuthorizationArn,
      :authorizedAccountId,
      :authorizedAwsRegion,
      :creationTime
    ) = object;
    if (aggregationAuthorizationArn != null) {
      result$
        ..add('AggregationAuthorizationArn')
        ..add(serializers.serialize(
          aggregationAuthorizationArn,
          specifiedType: const FullType(String),
        ));
    }
    if (authorizedAccountId != null) {
      result$
        ..add('AuthorizedAccountId')
        ..add(serializers.serialize(
          authorizedAccountId,
          specifiedType: const FullType(String),
        ));
    }
    if (authorizedAwsRegion != null) {
      result$
        ..add('AuthorizedAwsRegion')
        ..add(serializers.serialize(
          authorizedAwsRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (creationTime != null) {
      result$
        ..add('CreationTime')
        ..add(serializers.serialize(
          creationTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    return result$;
  }
}
