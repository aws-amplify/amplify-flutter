// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.list_exports_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_exports_input.g.dart';

abstract class ListExportsInput
    with _i1.HttpInput<ListExportsInput>, _i2.AWSEquatable<ListExportsInput>
    implements Built<ListExportsInput, ListExportsInputBuilder> {
  factory ListExportsInput({
    int? maxResults,
    String? nextToken,
    String? tableArn,
  }) {
    return _$ListExportsInput._(
      maxResults: maxResults,
      nextToken: nextToken,
      tableArn: tableArn,
    );
  }

  factory ListExportsInput.build(
      [void Function(ListExportsInputBuilder) updates]) = _$ListExportsInput;

  const ListExportsInput._();

  factory ListExportsInput.fromRequest(
    ListExportsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListExportsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListExportsInputBuilder b) {}

  /// Maximum number of results to return per page.
  int? get maxResults;

  /// An optional string that, if supplied, must be copied from the output of a previous call to `ListExports`. When provided in this manner, the API fetches the next page of results.
  String? get nextToken;

  /// The Amazon Resource Name (ARN) associated with the exported table.
  String? get tableArn;
  @override
  ListExportsInput getPayload() => this;
  @override
  List<Object?> get props => [
        maxResults,
        nextToken,
        tableArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListExportsInput');
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'tableArn',
      tableArn,
    );
    return helper.toString();
  }
}

class ListExportsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListExportsInput> {
  const ListExportsInputAwsJson10Serializer() : super('ListExportsInput');

  @override
  Iterable<Type> get types => const [
        ListExportsInput,
        _$ListExportsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListExportsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListExportsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'MaxResults':
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
        case 'TableArn':
          if (value != null) {
            result.tableArn = (serializers.deserialize(
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
    final payload = (object as ListExportsInput);
    final result = <Object?>[];
    if (payload.maxResults != null) {
      result
        ..add('MaxResults')
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableArn != null) {
      result
        ..add('TableArn')
        ..add(serializers.serialize(
          payload.tableArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
