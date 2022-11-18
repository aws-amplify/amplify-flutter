// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library rest_json1_v1.rest_json_protocol.model.document_type_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'document_type_input_output.g.dart';

abstract class DocumentTypeInputOutput
    with
        _i1.HttpInput<DocumentTypeInputOutput>,
        _i2.AWSEquatable<DocumentTypeInputOutput>
    implements Built<DocumentTypeInputOutput, DocumentTypeInputOutputBuilder> {
  factory DocumentTypeInputOutput({
    Object? documentValue,
    String? stringValue,
  }) {
    return _$DocumentTypeInputOutput._(
      documentValue:
          documentValue == null ? null : _i3.JsonObject(documentValue),
      stringValue: stringValue,
    );
  }

  factory DocumentTypeInputOutput.build(
          [void Function(DocumentTypeInputOutputBuilder) updates]) =
      _$DocumentTypeInputOutput;

  const DocumentTypeInputOutput._();

  factory DocumentTypeInputOutput.fromRequest(
    DocumentTypeInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [DocumentTypeInputOutput] from a [payload] and [response].
  factory DocumentTypeInputOutput.fromResponse(
    DocumentTypeInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DocumentTypeInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DocumentTypeInputOutputBuilder b) {}
  _i3.JsonObject? get documentValue;
  String? get stringValue;
  @override
  DocumentTypeInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        documentValue,
        stringValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DocumentTypeInputOutput');
    helper.add(
      'documentValue',
      documentValue,
    );
    helper.add(
      'stringValue',
      stringValue,
    );
    return helper.toString();
  }
}

class DocumentTypeInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DocumentTypeInputOutput> {
  const DocumentTypeInputOutputRestJson1Serializer()
      : super('DocumentTypeInputOutput');

  @override
  Iterable<Type> get types => const [
        DocumentTypeInputOutput,
        _$DocumentTypeInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DocumentTypeInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentTypeInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'documentValue':
          if (value != null) {
            result.documentValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.JsonObject),
            ) as _i3.JsonObject);
          }
          break;
        case 'stringValue':
          if (value != null) {
            result.stringValue = (serializers.deserialize(
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
    final payload = (object as DocumentTypeInputOutput);
    final result = <Object?>[];
    if (payload.documentValue != null) {
      result
        ..add('documentValue')
        ..add(serializers.serialize(
          payload.documentValue!,
          specifiedType: const FullType(_i3.JsonObject),
        ));
    }
    if (payload.stringValue != null) {
      result
        ..add('stringValue')
        ..add(serializers.serialize(
          payload.stringValue!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
