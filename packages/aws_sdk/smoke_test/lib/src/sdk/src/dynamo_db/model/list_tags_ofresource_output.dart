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

library smoke_test.dynamo_db.model.list_tags_ofresource_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/tag.dart' as _i3;

part 'list_tags_ofresource_output.g.dart';

abstract class ListTagsOfresourceOutput
    with _i1.AWSEquatable<ListTagsOfresourceOutput>
    implements
        Built<ListTagsOfresourceOutput, ListTagsOfresourceOutputBuilder> {
  factory ListTagsOfresourceOutput({
    String? nextToken,
    _i2.BuiltList<_i3.Tag>? tags,
  }) {
    return _$ListTagsOfresourceOutput._(
      nextToken: nextToken,
      tags: tags,
    );
  }

  factory ListTagsOfresourceOutput.build(
          [void Function(ListTagsOfresourceOutputBuilder) updates]) =
      _$ListTagsOfresourceOutput;

  const ListTagsOfresourceOutput._();

  /// Constructs a [ListTagsOfresourceOutput] from a [payload] and [response].
  factory ListTagsOfresourceOutput.fromResponse(
    ListTagsOfresourceOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListTagsOfresourceOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTagsOfresourceOutputBuilder b) {}

  /// If this value is returned, there are additional results to be displayed. To retrieve them, call ListTagsOfResource again, with NextToken set to this value.
  String? get nextToken;

  /// The tags currently associated with the Amazon DynamoDB resource.
  _i2.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        nextToken,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTagsOfresourceOutput');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ListTagsOfresourceOutputAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ListTagsOfresourceOutput> {
  const ListTagsOfresourceOutputAwsJson10Serializer()
      : super('ListTagsOfresourceOutput');

  @override
  Iterable<Type> get types => const [
        ListTagsOfresourceOutput,
        _$ListTagsOfresourceOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ListTagsOfresourceOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTagsOfresourceOutputBuilder();
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
        case 'Tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i2.BuiltList<_i3.Tag>));
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
    final payload = (object as ListTagsOfresourceOutput);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('Tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
