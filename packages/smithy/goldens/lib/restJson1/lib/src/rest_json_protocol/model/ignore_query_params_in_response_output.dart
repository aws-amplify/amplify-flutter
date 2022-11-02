// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.ignore_query_params_in_response_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ignore_query_params_in_response_output.g.dart';

abstract class IgnoreQueryParamsInResponseOutput
    with
        _i1.AWSEquatable<IgnoreQueryParamsInResponseOutput>
    implements
        Built<IgnoreQueryParamsInResponseOutput,
            IgnoreQueryParamsInResponseOutputBuilder> {
  factory IgnoreQueryParamsInResponseOutput({String? baz}) {
    return _$IgnoreQueryParamsInResponseOutput._(baz: baz);
  }

  factory IgnoreQueryParamsInResponseOutput.build(
          [void Function(IgnoreQueryParamsInResponseOutputBuilder) updates]) =
      _$IgnoreQueryParamsInResponseOutput;

  const IgnoreQueryParamsInResponseOutput._();

  /// Constructs a [IgnoreQueryParamsInResponseOutput] from a [payload] and [response].
  factory IgnoreQueryParamsInResponseOutput.fromResponse(
    IgnoreQueryParamsInResponseOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    IgnoreQueryParamsInResponseOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IgnoreQueryParamsInResponseOutputBuilder b) {}
  String? get baz;
  @override
  List<Object?> get props => [baz];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('IgnoreQueryParamsInResponseOutput');
    helper.add(
      'baz',
      baz,
    );
    return helper.toString();
  }
}

class IgnoreQueryParamsInResponseOutputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<IgnoreQueryParamsInResponseOutput> {
  const IgnoreQueryParamsInResponseOutputRestJson1Serializer()
      : super('IgnoreQueryParamsInResponseOutput');

  @override
  Iterable<Type> get types => const [
        IgnoreQueryParamsInResponseOutput,
        _$IgnoreQueryParamsInResponseOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  IgnoreQueryParamsInResponseOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IgnoreQueryParamsInResponseOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'baz':
          if (value != null) {
            result.baz = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as IgnoreQueryParamsInResponseOutput);
    final result = <Object?>[];
    if (payload.baz != null) {
      result
        ..add('baz')
        ..add(serializers.serialize(
          payload.baz!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
