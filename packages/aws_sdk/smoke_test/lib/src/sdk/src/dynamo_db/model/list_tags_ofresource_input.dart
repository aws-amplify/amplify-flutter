// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.list_tags_ofresource_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_tags_ofresource_input.g.dart';

abstract class ListTagsOfresourceInput
    with
        _i1.HttpInput<ListTagsOfresourceInput>,
        _i2.AWSEquatable<ListTagsOfresourceInput>
    implements Built<ListTagsOfresourceInput, ListTagsOfresourceInputBuilder> {
  factory ListTagsOfresourceInput({
    String? nextToken,
    required String resourceArn,
  }) {
    return _$ListTagsOfresourceInput._(
      nextToken: nextToken,
      resourceArn: resourceArn,
    );
  }

  factory ListTagsOfresourceInput.build(
          [void Function(ListTagsOfresourceInputBuilder) updates]) =
      _$ListTagsOfresourceInput;

  const ListTagsOfresourceInput._();

  factory ListTagsOfresourceInput.fromRequest(
    ListTagsOfresourceInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListTagsOfresourceInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTagsOfresourceInputBuilder b) {}

  /// An optional string that, if supplied, must be copied from the output of a previous call to ListTagOfResource. When provided in this manner, this API fetches the next page of results.
  String? get nextToken;

  /// The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).
  String get resourceArn;
  @override
  ListTagsOfresourceInput getPayload() => this;
  @override
  List<Object?> get props => [
        nextToken,
        resourceArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTagsOfresourceInput');
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

class ListTagsOfresourceInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ListTagsOfresourceInput> {
  const ListTagsOfresourceInputAwsJson10Serializer()
      : super('ListTagsOfresourceInput');

  @override
  Iterable<Type> get types => const [
        ListTagsOfresourceInput,
        _$ListTagsOfresourceInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListTagsOfresourceInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTagsOfresourceInputBuilder();
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
    final payload = (object as ListTagsOfresourceInput);
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
