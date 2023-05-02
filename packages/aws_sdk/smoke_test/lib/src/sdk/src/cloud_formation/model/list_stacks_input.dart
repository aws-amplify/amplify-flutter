// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_stacks_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_status.dart'
    as _i3;

part 'list_stacks_input.g.dart';

/// The input for ListStacks action.
abstract class ListStacksInput
    with _i1.HttpInput<ListStacksInput>, _i2.AWSEquatable<ListStacksInput>
    implements Built<ListStacksInput, ListStacksInputBuilder> {
  /// The input for ListStacks action.
  factory ListStacksInput({
    String? nextToken,
    List<_i3.StackStatus>? stackStatusFilter,
  }) {
    return _$ListStacksInput._(
      nextToken: nextToken,
      stackStatusFilter:
          stackStatusFilter == null ? null : _i4.BuiltList(stackStatusFilter),
    );
  }

  /// The input for ListStacks action.
  factory ListStacksInput.build(
      [void Function(ListStacksInputBuilder) updates]) = _$ListStacksInput;

  const ListStacksInput._();

  factory ListStacksInput.fromRequest(
    ListStacksInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListStacksInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStacksInputBuilder b) {}

  /// A string that identifies the next page of stacks that you want to retrieve.
  String? get nextToken;

  /// Stack status to use as a filter. Specify one or more stack status codes to list only stacks with the specified status codes. For a complete list of stack status codes, see the `StackStatus` parameter of the Stack data type.
  _i4.BuiltList<_i3.StackStatus>? get stackStatusFilter;
  @override
  ListStacksInput getPayload() => this;
  @override
  List<Object?> get props => [
        nextToken,
        stackStatusFilter,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStacksInput');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'stackStatusFilter',
      stackStatusFilter,
    );
    return helper.toString();
  }
}

class ListStacksInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListStacksInput> {
  const ListStacksInputAwsQuerySerializer() : super('ListStacksInput');

  @override
  Iterable<Type> get types => const [
        ListStacksInput,
        _$ListStacksInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStacksInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStacksInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StackStatusFilter':
          if (value != null) {
            result.stackStatusFilter.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.StackStatus)],
              ),
            ) as _i4.BuiltList<_i3.StackStatus>));
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
    final payload = (object as ListStacksInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListStacksInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackStatusFilter != null) {
      result
        ..add(const _i1.XmlElementName('StackStatusFilter'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.stackStatusFilter!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.StackStatus)],
          ),
        ));
    }
    return result;
  }
}
