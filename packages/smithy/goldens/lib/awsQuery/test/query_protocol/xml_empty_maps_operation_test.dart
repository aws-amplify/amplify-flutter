// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

// ignore_for_file: unused_element
library aws_query_v1.query_protocol.test.xml_empty_maps_operation_test_test; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_query_v1/src/query_protocol/model/greeting_struct.dart';
import 'package:aws_query_v1/src/query_protocol/model/xml_maps_output.dart';
import 'package:aws_query_v1/src/query_protocol/operation/xml_empty_maps_operation.dart';
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smithy_test/smithy_test.dart' as _i2;
import 'package:test/test.dart' as _i1;

void main() {
  _i1.test(
    'QueryXmlEmptyMaps (response)',
    () async {
      await _i2.httpResponseTest(
        operation: XmlEmptyMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlEmptyMaps',
          documentation: 'Deserializes Empty XML maps',
          protocol: _i3.ShapeId(
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
        operation: XmlEmptyMapsOperation(
          region: 'us-east-1',
          baseUri: Uri.parse('https://example.com'),
        ),
        testCase: const _i2.HttpResponseTestCase(
          id: 'QueryXmlEmptySelfClosedMaps',
          documentation: 'Deserializes Self-Closed XML maps',
          protocol: _i3.ShapeId(
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
    extends _i3.StructuredSmithySerializer<XmlMapsOutput> {
  const XmlMapsOutputAwsQuerySerializer() : super('XmlMapsOutput');

  @override
  Iterable<Type> get types => const [XmlMapsOutput];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  XmlMapsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlMapsOutputBuilder();
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
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(GreetingStruct),
              ],
            ),
          ) as _i4.BuiltMap<String, GreetingStruct>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    XmlMapsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}

class GreetingStructAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GreetingStruct> {
  const GreetingStructAwsQuerySerializer() : super('GreetingStruct');

  @override
  Iterable<Type> get types => const [GreetingStruct];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];

  @override
  GreetingStruct deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GreetingStructBuilder();
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
    GreetingStruct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    throw StateError('Not supported for tests');
  }
}
