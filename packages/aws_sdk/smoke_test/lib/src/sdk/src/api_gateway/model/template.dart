// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.template; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'template.g.dart';

/// Represents a mapping template used to transform a payload.
abstract class Template
    with _i1.AWSEquatable<Template>
    implements Built<Template, TemplateBuilder> {
  /// Represents a mapping template used to transform a payload.
  factory Template({String? value}) {
    return _$Template._(value: value);
  }

  /// Represents a mapping template used to transform a payload.
  factory Template.build([void Function(TemplateBuilder) updates]) = _$Template;

  const Template._();

  /// Constructs a [Template] from a [payload] and [response].
  factory Template.fromResponse(
    Template payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    TemplateRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TemplateBuilder b) {}

  /// The Apache Velocity Template Language (VTL) template content used for the template resource.
  String? get value;
  @override
  List<Object?> get props => [value];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Template');
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class TemplateRestJson1Serializer
    extends _i2.StructuredSmithySerializer<Template> {
  const TemplateRestJson1Serializer() : super('Template');

  @override
  Iterable<Type> get types => const [
        Template,
        _$Template,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Template deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'value':
          if (value != null) {
            result.value = (serializers.deserialize(
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
    final payload = (object as Template);
    final result = <Object?>[];
    if (payload.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
