// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.json_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/json_type.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'json_input.g.dart';

/// Specifies JSON as object's input serialization format.
abstract class JsonInput
    with _i1.AWSEquatable<JsonInput>
    implements Built<JsonInput, JsonInputBuilder> {
  /// Specifies JSON as object's input serialization format.
  factory JsonInput({_i2.JsonType? type}) {
    return _$JsonInput._(type: type);
  }

  /// Specifies JSON as object's input serialization format.
  factory JsonInput.build([void Function(JsonInputBuilder) updates]) =
      _$JsonInput;

  const JsonInput._();

  static const List<_i3.SmithySerializer> serializers = [
    JsonInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonInputBuilder b) {}

  /// The type of JSON. Valid values: Document, Lines.
  _i2.JsonType? get type;
  @override
  List<Object?> get props => [type];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonInput');
    helper.add(
      'type',
      type,
    );
    return helper.toString();
  }
}

class JsonInputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<JsonInput> {
  const JsonInputRestXmlSerializer() : super('JsonInput');

  @override
  Iterable<Type> get types => const [
        JsonInput,
        _$JsonInput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  JsonInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.JsonType),
            ) as _i2.JsonType);
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
    final payload = (object as JsonInput);
    final result = <Object?>[
      const _i3.XmlElementName(
        'JsonInput',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.type != null) {
      result
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i2.JsonType),
        ));
    }
    return result;
  }
}
