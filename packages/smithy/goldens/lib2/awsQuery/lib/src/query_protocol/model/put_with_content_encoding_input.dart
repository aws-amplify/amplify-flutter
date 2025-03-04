// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_query_v2.query_protocol.model.put_with_content_encoding_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'put_with_content_encoding_input.g.dart';

abstract class PutWithContentEncodingInput
    with
        _i1.HttpInput<PutWithContentEncodingInput>,
        _i2.AWSEquatable<PutWithContentEncodingInput>
    implements
        Built<PutWithContentEncodingInput, PutWithContentEncodingInputBuilder> {
  factory PutWithContentEncodingInput({
    String? encoding,
    String? data,
  }) {
    return _$PutWithContentEncodingInput._(
      encoding: encoding,
      data: data,
    );
  }

  factory PutWithContentEncodingInput.build(
          [void Function(PutWithContentEncodingInputBuilder) updates]) =
      _$PutWithContentEncodingInput;

  const PutWithContentEncodingInput._();

  factory PutWithContentEncodingInput.fromRequest(
    PutWithContentEncodingInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PutWithContentEncodingInput>>
      serializers = [PutWithContentEncodingInputAwsQuerySerializer()];

  String? get encoding;
  String? get data;
  @override
  PutWithContentEncodingInput getPayload() => this;

  @override
  List<Object?> get props => [
        encoding,
        data,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutWithContentEncodingInput')
      ..add(
        'encoding',
        encoding,
      )
      ..add(
        'data',
        data,
      );
    return helper.toString();
  }
}

class PutWithContentEncodingInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<PutWithContentEncodingInput> {
  const PutWithContentEncodingInputAwsQuerySerializer()
      : super('PutWithContentEncodingInput');

  @override
  Iterable<Type> get types => const [
        PutWithContentEncodingInput,
        _$PutWithContentEncodingInput,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  PutWithContentEncodingInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutWithContentEncodingInputBuilder();
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
        case 'encoding':
          result.encoding = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'data':
          result.data = (serializers.deserialize(
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
    PutWithContentEncodingInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PutWithContentEncodingInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    final PutWithContentEncodingInput(:encoding, :data) = object;
    if (encoding != null) {
      result$
        ..add(const _i1.XmlElementName('encoding'))
        ..add(serializers.serialize(
          encoding,
          specifiedType: const FullType(String),
        ));
    }
    if (data != null) {
      result$
        ..add(const _i1.XmlElementName('data'))
        ..add(serializers.serialize(
          data,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
