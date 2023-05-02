// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_imports_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'list_imports_output.g.dart';

abstract class ListImportsOutput
    with _i1.AWSEquatable<ListImportsOutput>
    implements Built<ListImportsOutput, ListImportsOutputBuilder> {
  factory ListImportsOutput({
    List<String>? imports,
    String? nextToken,
  }) {
    return _$ListImportsOutput._(
      imports: imports == null ? null : _i2.BuiltList(imports),
      nextToken: nextToken,
    );
  }

  factory ListImportsOutput.build(
      [void Function(ListImportsOutputBuilder) updates]) = _$ListImportsOutput;

  const ListImportsOutput._();

  /// Constructs a [ListImportsOutput] from a [payload] and [response].
  factory ListImportsOutput.fromResponse(
    ListImportsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ListImportsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListImportsOutputBuilder b) {}

  /// A list of stack names that are importing the specified exported output value.
  _i2.BuiltList<String>? get imports;

  /// A string that identifies the next page of exports. If there is no additional page, this value is null.
  String? get nextToken;
  @override
  List<Object?> get props => [
        imports,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListImportsOutput');
    helper.add(
      'imports',
      imports,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListImportsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListImportsOutput> {
  const ListImportsOutputAwsQuerySerializer() : super('ListImportsOutput');

  @override
  Iterable<Type> get types => const [
        ListImportsOutput,
        _$ListImportsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListImportsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListImportsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Imports':
          if (value != null) {
            result.imports.replace((const _i3.XmlBuiltListSerializer(
                    indexer: _i3.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as ListImportsOutput);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ListImportsOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.imports != null) {
      result
        ..add(const _i3.XmlElementName('Imports'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.imports!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
