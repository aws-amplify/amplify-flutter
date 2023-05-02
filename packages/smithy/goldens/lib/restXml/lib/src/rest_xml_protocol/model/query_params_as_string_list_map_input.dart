// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v1.rest_xml_protocol.model.query_params_as_string_list_map_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'query_params_as_string_list_map_input.g.dart';

abstract class QueryParamsAsStringListMapInput
    with
        _i1.HttpInput<QueryParamsAsStringListMapInputPayload>,
        _i2.AWSEquatable<QueryParamsAsStringListMapInput>
    implements
        Built<QueryParamsAsStringListMapInput,
            QueryParamsAsStringListMapInputBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<QueryParamsAsStringListMapInputPayload> {
  factory QueryParamsAsStringListMapInput({
    String? qux,
    Map<String, List<String>>? foo,
  }) {
    return _$QueryParamsAsStringListMapInput._(
      qux: qux,
      foo: foo == null ? null : _i3.BuiltListMultimap(foo),
    );
  }

  factory QueryParamsAsStringListMapInput.build(
          [void Function(QueryParamsAsStringListMapInputBuilder) updates]) =
      _$QueryParamsAsStringListMapInput;

  const QueryParamsAsStringListMapInput._();

  factory QueryParamsAsStringListMapInput.fromRequest(
    QueryParamsAsStringListMapInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      QueryParamsAsStringListMapInput.build((b) {
        if (request.queryParameters['corge'] != null) {
          b.qux = request.queryParameters['corge']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    QueryParamsAsStringListMapInputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryParamsAsStringListMapInputBuilder b) {}
  String? get qux;
  _i3.BuiltListMultimap<String, String>? get foo;
  @override
  QueryParamsAsStringListMapInputPayload getPayload() =>
      QueryParamsAsStringListMapInputPayload();
  @override
  List<Object?> get props => [
        qux,
        foo,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('QueryParamsAsStringListMapInput');
    helper.add(
      'qux',
      qux,
    );
    helper.add(
      'foo',
      foo,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class QueryParamsAsStringListMapInputPayload
    with
        _i2.AWSEquatable<QueryParamsAsStringListMapInputPayload>
    implements
        Built<QueryParamsAsStringListMapInputPayload,
            QueryParamsAsStringListMapInputPayloadBuilder>,
        _i1.EmptyPayload {
  factory QueryParamsAsStringListMapInputPayload(
      [void Function(QueryParamsAsStringListMapInputPayloadBuilder)
          updates]) = _$QueryParamsAsStringListMapInputPayload;

  const QueryParamsAsStringListMapInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryParamsAsStringListMapInputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('QueryParamsAsStringListMapInputPayload');
    return helper.toString();
  }
}

class QueryParamsAsStringListMapInputRestXmlSerializer extends _i1
    .StructuredSmithySerializer<QueryParamsAsStringListMapInputPayload> {
  const QueryParamsAsStringListMapInputRestXmlSerializer()
      : super('QueryParamsAsStringListMapInput');

  @override
  Iterable<Type> get types => const [
        QueryParamsAsStringListMapInput,
        _$QueryParamsAsStringListMapInput,
        QueryParamsAsStringListMapInputPayload,
        _$QueryParamsAsStringListMapInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  QueryParamsAsStringListMapInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return QueryParamsAsStringListMapInputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i1.XmlElementName('QueryParamsAsStringListMapInput')
    ];
    return result;
  }
}
