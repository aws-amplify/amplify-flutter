// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.put_conformance_pack_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_conformance_pack_response.g.dart';

abstract class PutConformancePackResponse
    with _i1.AWSEquatable<PutConformancePackResponse>
    implements
        Built<PutConformancePackResponse, PutConformancePackResponseBuilder> {
  factory PutConformancePackResponse({String? conformancePackArn}) {
    return _$PutConformancePackResponse._(
        conformancePackArn: conformancePackArn);
  }

  factory PutConformancePackResponse.build(
          [void Function(PutConformancePackResponseBuilder) updates]) =
      _$PutConformancePackResponse;

  const PutConformancePackResponse._();

  /// Constructs a [PutConformancePackResponse] from a [payload] and [response].
  factory PutConformancePackResponse.fromResponse(
    PutConformancePackResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<PutConformancePackResponse>>
      serializers = [PutConformancePackResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutConformancePackResponseBuilder b) {}

  /// ARN of the conformance pack.
  String? get conformancePackArn;
  @override
  List<Object?> get props => [conformancePackArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutConformancePackResponse')
      ..add(
        'conformancePackArn',
        conformancePackArn,
      );
    return helper.toString();
  }
}

class PutConformancePackResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PutConformancePackResponse> {
  const PutConformancePackResponseAwsJson11Serializer()
      : super('PutConformancePackResponse');

  @override
  Iterable<Type> get types => const [
        PutConformancePackResponse,
        _$PutConformancePackResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutConformancePackResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutConformancePackResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConformancePackArn':
          result.conformancePackArn = (serializers.deserialize(
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
    PutConformancePackResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutConformancePackResponse(:conformancePackArn) = object;
    if (conformancePackArn != null) {
      result$
        ..add('ConformancePackArn')
        ..add(serializers.serialize(
          conformancePackArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
