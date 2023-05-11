// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.xml_empty_maps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/greeting_struct.dart'
    as _i7;
import 'package:aws_query_v1/src/query_protocol/model/xml_maps_output.dart'
    as _i5;
import 'package:aws_query_v1/src/query_protocol/operation/xml_empty_maps_operation.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryXmlEmptyMaps (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlEmptyMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlEmptyMaps',
          documentation: 'Deserializes Empty XML maps',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlEmptyMapsResponse xmlns="https://example.com/">\n    <XmlEmptyMapsResult>\n        <myMap>\n        </myMap>\n    </XmlEmptyMapsResult>\n</XmlEmptyMapsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'myMap': {}},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [
          XmlMapsOutputAwsQuerySerializer(),
          GreetingStructAwsQuerySerializer(),
        ],
      );
    },
  );
  _i1.test(
    'QueryXmlEmptySelfClosedMaps (response)',
    () async {
      await _i2.httpResponseTest(
        operation: _i3.XmlEmptyMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlEmptySelfClosedMaps',
          documentation: 'Deserializes Self-Closed XML maps',
          protocol: _i4.ShapeId(
            namespace: 'aws.protocols',
            shape: 'awsQuery',
          ),
          authScheme: null,
          body:
              '<XmlEmptyMapsResponse xmlns="https://example.com/">\n    <XmlEmptyMapsResult>\n        <myMap/>\n    </XmlEmptyMapsResult>\n</XmlEmptyMapsResponse>\n',
          bodyMediaType: 'application/xml',
          params: {'myMap': {}},
          vendorParamsShape: null,
          vendorParams: {},
          headers: {'Content-Type': 'text/xml'},
          forbidHeaders: [],
          requireHeaders: [],
          tags: [],
          appliesTo: _i2.AppliesTo.client,
          code: 200,
        ),
        outputSerializers: const [
          XmlMapsOutputAwsQuerySerializer(),
          GreetingStructAwsQuerySerializer(),
        ],
      );
    },
  );
}

class XmlMapsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i5.XmlMapsOutput> {
  const XmlMapsOutputAwsQuerySerializer() : super('XmlMapsOutput');

  @override
  Iterable<Type> get types => const [_i5.XmlMapsOutput];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i5.XmlMapsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i5.XmlMapsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'myMap':
          result.myMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(_i7.GreetingStruct),
              ],
            ),
          ) as _i6.BuiltMap<String, _i7.GreetingStruct>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i5.XmlMapsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<_i7.GreetingStruct> {
  const GreetingStructAwsQuerySerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [_i7.GreetingStruct];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  _i7.GreetingStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i7.GreetingStructBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'hi':
          result.hi = (serializers.deserialize(
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
    _i7.GreetingStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
