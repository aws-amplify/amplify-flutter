// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.rest_xml_protocol.model.put_with_content_encoding_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'put_with_content_encoding_input.g.dart';

abstract class PutWithContentEncodingInput
    with
        _i1.HttpInput<PutWithContentEncodingInputPayload>,
        _i2.AWSEquatable<PutWithContentEncodingInput>
    implements
        Built<PutWithContentEncodingInput, PutWithContentEncodingInputBuilder>,
        _i1.HasPayload<PutWithContentEncodingInputPayload> {
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
    PutWithContentEncodingInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutWithContentEncodingInput.build((b) {
        b.data = payload.data;
        if (request.headers['Content-Encoding'] != null) {
          b.encoding = request.headers['Content-Encoding']!;
        }
      });

  static const List<_i1.SmithySerializer<PutWithContentEncodingInputPayload>>
      serializers = [PutWithContentEncodingInputRestXmlSerializer()];

  String? get encoding;
  String? get data;
  @override
  PutWithContentEncodingInputPayload getPayload() =>
      PutWithContentEncodingInputPayload((b) {
        b.data = data;
      });

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

@_i3.internal
abstract class PutWithContentEncodingInputPayload
    with
        _i2.AWSEquatable<PutWithContentEncodingInputPayload>
    implements
        Built<PutWithContentEncodingInputPayload,
            PutWithContentEncodingInputPayloadBuilder> {
  factory PutWithContentEncodingInputPayload(
          [void Function(PutWithContentEncodingInputPayloadBuilder) updates]) =
      _$PutWithContentEncodingInputPayload;

  const PutWithContentEncodingInputPayload._();

  String? get data;
  @override
  List<Object?> get props => [data];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutWithContentEncodingInputPayload')
          ..add(
            'data',
            data,
          );
    return helper.toString();
  }
}

class PutWithContentEncodingInputRestXmlSerializer
    extends _i1.StructuredSmithySerializer<PutWithContentEncodingInputPayload> {
  const PutWithContentEncodingInputRestXmlSerializer()
      : super('PutWithContentEncodingInput');

  @override
  Iterable<Type> get types => const [
        PutWithContentEncodingInput,
        _$PutWithContentEncodingInput,
        PutWithContentEncodingInputPayload,
        _$PutWithContentEncodingInputPayload,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  PutWithContentEncodingInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutWithContentEncodingInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    PutWithContentEncodingInputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName('PutWithContentEncodingInput')
    ];
    final PutWithContentEncodingInputPayload(:data) = object;
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
