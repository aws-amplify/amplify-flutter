// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.endpoint; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'endpoint.g.dart';

/// An endpoint information details.
abstract class Endpoint
    with _i1.AWSEquatable<Endpoint>
    implements Built<Endpoint, EndpointBuilder> {
  /// An endpoint information details.
  factory Endpoint({
    required String address,
    _i2.Int64? cachePeriodInMinutes,
  }) {
    cachePeriodInMinutes ??= _i2.Int64.ZERO;
    return _$Endpoint._(
      address: address,
      cachePeriodInMinutes: cachePeriodInMinutes,
    );
  }

  /// An endpoint information details.
  factory Endpoint.build([void Function(EndpointBuilder) updates]) = _$Endpoint;

  const Endpoint._();

  static const List<_i3.SmithySerializer<Endpoint>> serializers = [
    EndpointAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointBuilder b) {
    b.cachePeriodInMinutes = _i2.Int64.ZERO;
  }

  /// IP address of the endpoint.
  String get address;

  /// Endpoint cache time to live (TTL) value.
  _i2.Int64 get cachePeriodInMinutes;
  @override
  List<Object?> get props => [
        address,
        cachePeriodInMinutes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Endpoint')
      ..add(
        'address',
        address,
      )
      ..add(
        'cachePeriodInMinutes',
        cachePeriodInMinutes,
      );
    return helper.toString();
  }
}

class EndpointAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<Endpoint> {
  const EndpointAwsJson10Serializer() : super('Endpoint');

  @override
  Iterable<Type> get types => const [
        Endpoint,
        _$Endpoint,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Endpoint deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Address':
          result.address = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CachePeriodInMinutes':
          result.cachePeriodInMinutes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Endpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Endpoint(:address, :cachePeriodInMinutes) = object;
    result$.addAll([
      'Address',
      serializers.serialize(
        address,
        specifiedType: const FullType(String),
      ),
      'CachePeriodInMinutes',
      serializers.serialize(
        cachePeriodInMinutes,
        specifiedType: const FullType(_i2.Int64),
      ),
    ]);
    return result$;
  }
}
