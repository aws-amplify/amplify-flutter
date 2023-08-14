// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.total_local_storage_gb_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'total_local_storage_gb_request.g.dart';

/// The minimum and maximum amount of total local storage, in GB.
abstract class TotalLocalStorageGbRequest
    with _i1.AWSEquatable<TotalLocalStorageGbRequest>
    implements
        Built<TotalLocalStorageGbRequest, TotalLocalStorageGbRequestBuilder> {
  /// The minimum and maximum amount of total local storage, in GB.
  factory TotalLocalStorageGbRequest({
    double? min,
    double? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$TotalLocalStorageGbRequest._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of total local storage, in GB.
  factory TotalLocalStorageGbRequest.build(
          [void Function(TotalLocalStorageGbRequestBuilder) updates]) =
      _$TotalLocalStorageGbRequest;

  const TotalLocalStorageGbRequest._();

  static const List<_i2.SmithySerializer<TotalLocalStorageGbRequest>>
      serializers = [TotalLocalStorageGbRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TotalLocalStorageGbRequestBuilder b) {
    b
      ..min = 0
      ..max = 0;
  }

  /// The minimum amount of total local storage, in GB. To specify no minimum limit, omit this parameter.
  double get min;

  /// The maximum amount of total local storage, in GB. To specify no maximum limit, omit this parameter.
  double get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TotalLocalStorageGbRequest')
      ..add(
        'min',
        min,
      )
      ..add(
        'max',
        max,
      );
    return helper.toString();
  }
}

class TotalLocalStorageGbRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TotalLocalStorageGbRequest> {
  const TotalLocalStorageGbRequestEc2QuerySerializer()
      : super('TotalLocalStorageGbRequest');

  @override
  Iterable<Type> get types => const [
        TotalLocalStorageGbRequest,
        _$TotalLocalStorageGbRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TotalLocalStorageGbRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TotalLocalStorageGbRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Min':
          result.min = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Max':
          result.max = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TotalLocalStorageGbRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TotalLocalStorageGbRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TotalLocalStorageGbRequest(:min, :max) = object;
    result$
      ..add(const _i2.XmlElementName('Min'))
      ..add(serializers.serialize(
        min,
        specifiedType: const FullType(double),
      ));
    result$
      ..add(const _i2.XmlElementName('Max'))
      ..add(serializers.serialize(
        max,
        specifiedType: const FullType(double),
      ));
    return result$;
  }
}
