// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i3.SmithySerializer<JsonInput>> serializers = [
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
    final helper = newBuiltValueToStringHelper('JsonInput')
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.JsonType),
          ) as _i2.JsonType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'JsonInput',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final JsonInput(:type) = object;
    if (type != null) {
      result$
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType.nullable(_i2.JsonType),
        ));
    }
    return result$;
  }
}
