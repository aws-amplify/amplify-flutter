// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.list_tags_of_resource_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_tags_of_resource_input.g.dart';

abstract class ListTagsOfResourceInput
    with
        _i1.HttpInput<ListTagsOfResourceInput>,
        _i2.AWSEquatable<ListTagsOfResourceInput>
    implements Built<ListTagsOfResourceInput, ListTagsOfResourceInputBuilder> {
  factory ListTagsOfResourceInput({
    String? nextToken,
    required String resourceArn,
  }) {
    return _$ListTagsOfResourceInput._(
      nextToken: nextToken,
      resourceArn: resourceArn,
    );
  }

  factory ListTagsOfResourceInput.build(
          [void Function(ListTagsOfResourceInputBuilder) updates]) =
      _$ListTagsOfResourceInput;

  const ListTagsOfResourceInput._();

  factory ListTagsOfResourceInput.fromRequest(
    ListTagsOfResourceInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListTagsOfResourceInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTagsOfResourceInputBuilder b) {}

  /// An optional string that, if supplied, must be copied from the output of a previous call to ListTagOfResource. When provided in this manner, this API fetches the next page of results.
  String? get nextToken;

  /// The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).
  String get resourceArn;
  @override
  ListTagsOfResourceInput getPayload() => this;
  @override
  List<Object?> get props => [
        nextToken,
        resourceArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTagsOfResourceInput');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'resourceArn',
      resourceArn,
    );
    return helper.toString();
  }
}

class ListTagsOfResourceInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListTagsOfResourceInput> {
  const ListTagsOfResourceInputAwsJson10Serializer()
      : super('ListTagsOfResourceInput');

  @override
  Iterable<Type> get types => const [
        ListTagsOfResourceInput,
        _$ListTagsOfResourceInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListTagsOfResourceInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTagsOfResourceInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceArn':
          result.resourceArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ListTagsOfResourceInput);
    final result = <Object?>[
      'ResourceArn',
      serializers.serialize(
        payload.resourceArn,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
