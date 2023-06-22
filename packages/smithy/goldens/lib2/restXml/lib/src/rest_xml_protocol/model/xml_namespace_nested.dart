// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v2.rest_xml_protocol.model.xml_namespace_nested; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'xml_namespace_nested.g.dart';

abstract class XmlNamespaceNested
    with _i1.AWSEquatable<XmlNamespaceNested>
    implements Built<XmlNamespaceNested, XmlNamespaceNestedBuilder> {
  factory XmlNamespaceNested({
    String? foo,
    List<String>? values,
  }) {
    return _$XmlNamespaceNested._(
      foo: foo,
      values: values == null ? null : _i2.BuiltList(values),
    );
  }

  factory XmlNamespaceNested.build(
          [void Function(XmlNamespaceNestedBuilder) updates]) =
      _$XmlNamespaceNested;

  const XmlNamespaceNested._();

  static const List<_i3.SmithySerializer<XmlNamespaceNested>> serializers = [
    XmlNamespaceNestedRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(XmlNamespaceNestedBuilder b) {}
  String? get foo;
  _i2.BuiltList<String>? get values;
  @override
  List<Object?> get props => [
        foo,
        values,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('XmlNamespaceNested')
      ..add(
        'foo',
        foo,
      )
      ..add(
        'values',
        values,
      );
    return helper.toString();
  }
}

class XmlNamespaceNestedRestXmlSerializer
    extends _i3.StructuredSmithySerializer<XmlNamespaceNested> {
  const XmlNamespaceNestedRestXmlSerializer() : super('XmlNamespaceNested');

  @override
  Iterable<Type> get types => const [
        XmlNamespaceNested,
        _$XmlNamespaceNested,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  XmlNamespaceNested deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlNamespaceNestedBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'values':
          result.values.replace((const _i3.XmlBuiltListSerializer(
                  memberNamespace: _i3.XmlNamespace('http://bux.com'))
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlNamespaceNested object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'XmlNamespaceNested',
        _i3.XmlNamespace('http://foo.com'),
      )
    ];
    final XmlNamespaceNested(:foo, :values) = object;
    if (foo != null) {
      result$
        ..add(const _i3.XmlElementName(
          'foo',
          _i3.XmlNamespace(
            'http://baz.com',
            'baz',
          ),
        ))
        ..add(serializers.serialize(
          foo,
          specifiedType: const FullType(String),
        ));
    }
    if (values != null) {
      result$
        ..add(const _i3.XmlElementName(
          'values',
          _i3.XmlNamespace('http://qux.com'),
        ))
        ..add(const _i3.XmlBuiltListSerializer(
                memberNamespace: _i3.XmlNamespace('http://bux.com'))
            .serialize(
          serializers,
          values,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
