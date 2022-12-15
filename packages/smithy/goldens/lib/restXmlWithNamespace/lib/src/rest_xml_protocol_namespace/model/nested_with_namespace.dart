// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_with_namespace_v1.rest_xml_protocol_namespace.model.nested_with_namespace; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:xml/xml.dart' as _i3;

part 'nested_with_namespace.g.dart';

abstract class NestedWithNamespace
    with _i1.AWSEquatable<NestedWithNamespace>
    implements Built<NestedWithNamespace, NestedWithNamespaceBuilder> {
  factory NestedWithNamespace({String? attrField}) {
    return _$NestedWithNamespace._(attrField: attrField);
  }

  factory NestedWithNamespace.build(
          [void Function(NestedWithNamespaceBuilder) updates]) =
      _$NestedWithNamespace;

  const NestedWithNamespace._();

  static const List<_i2.SmithySerializer> serializers = [
    NestedWithNamespaceRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NestedWithNamespaceBuilder b) {}
  String? get attrField;
  @override
  List<Object?> get props => [attrField];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NestedWithNamespace');
    helper.add(
      'attrField',
      attrField,
    );
    return helper.toString();
  }
}

class NestedWithNamespaceRestXmlSerializer
    extends _i2.StructuredSmithySerializer<NestedWithNamespace> {
  const NestedWithNamespaceRestXmlSerializer() : super('NestedWithNamespace');

  @override
  Iterable<Type> get types => const [
        NestedWithNamespace,
        _$NestedWithNamespace,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  NestedWithNamespace deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NestedWithNamespaceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'xsi:someName':
          if (value != null) {
            result.attrField = (serializers.deserialize(
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
    final payload = (object as NestedWithNamespace);
    final result = <Object?>[
      const _i2.XmlElementName(
        'NestedWithNamespace',
        _i2.XmlNamespace('https://example.com'),
      )
    ];
    if (payload.attrField != null) {
      result.add(_i3.XmlAttribute(
        _i3.XmlName('xsi:someName'),
        (serializers.serialize(
          payload.attrField!,
          specifiedType: const FullType(String),
        ) as String),
      ));
    }
    return result;
  }
}
