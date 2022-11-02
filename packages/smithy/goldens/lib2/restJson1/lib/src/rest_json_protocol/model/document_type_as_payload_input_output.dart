// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.document_type_as_payload_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'document_type_as_payload_input_output.g.dart';

abstract class DocumentTypeAsPayloadInputOutput
    with
        _i1.HttpInput<_i2.JsonObject>,
        _i3.AWSEquatable<DocumentTypeAsPayloadInputOutput>
    implements
        Built<DocumentTypeAsPayloadInputOutput,
            DocumentTypeAsPayloadInputOutputBuilder>,
        _i1.HasPayload<_i2.JsonObject> {
  factory DocumentTypeAsPayloadInputOutput({Object? documentValue}) {
    return _$DocumentTypeAsPayloadInputOutput._(
        documentValue:
            documentValue == null ? null : _i2.JsonObject(documentValue));
  }

  factory DocumentTypeAsPayloadInputOutput.build(
          [void Function(DocumentTypeAsPayloadInputOutputBuilder) updates]) =
      _$DocumentTypeAsPayloadInputOutput;

  const DocumentTypeAsPayloadInputOutput._();

  factory DocumentTypeAsPayloadInputOutput.fromRequest(
    _i2.JsonObject? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DocumentTypeAsPayloadInputOutput.build((b) {
        b.documentValue = payload;
      });

  /// Constructs a [DocumentTypeAsPayloadInputOutput] from a [payload] and [response].
  factory DocumentTypeAsPayloadInputOutput.fromResponse(
    _i2.JsonObject? payload,
    _i3.AWSBaseHttpResponse response,
  ) =>
      DocumentTypeAsPayloadInputOutput.build((b) {
        b.documentValue = payload;
      });

  static const List<_i1.SmithySerializer> serializers = [
    DocumentTypeAsPayloadInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentTypeAsPayloadInputOutputBuilder b) {}
  _i2.JsonObject? get documentValue;
  @override
  _i2.JsonObject? getPayload() => documentValue;
  @override
  List<Object?> get props => [documentValue];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DocumentTypeAsPayloadInputOutput');
    helper.add(
      'documentValue',
      documentValue,
    );
    return helper.toString();
  }
}

class DocumentTypeAsPayloadInputOutputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.JsonObject> {
  const DocumentTypeAsPayloadInputOutputRestJson1Serializer()
      : super('DocumentTypeAsPayloadInputOutput');

  @override
  Iterable<Type> get types => const [
        DocumentTypeAsPayloadInputOutput,
        _$DocumentTypeAsPayloadInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.JsonObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(_i2.JsonObject),
    ) as _i2.JsonObject);
  }

  @override
  Object serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is DocumentTypeAsPayloadInputOutput
        ? object.getPayload()
        : (object as _i2.JsonObject?);
    return (serializers.serialize(
      payload!,
      specifiedType: const FullType(_i2.JsonObject),
    ) as Object);
  }
}
