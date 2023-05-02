// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_stack_resources_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_stack_resources_input.g.dart';

/// The input for the ListStackResource action.
abstract class ListStackResourcesInput
    with
        _i1.HttpInput<ListStackResourcesInput>,
        _i2.AWSEquatable<ListStackResourcesInput>
    implements Built<ListStackResourcesInput, ListStackResourcesInputBuilder> {
  /// The input for the ListStackResource action.
  factory ListStackResourcesInput({
    required String stackName,
    String? nextToken,
  }) {
    return _$ListStackResourcesInput._(
      stackName: stackName,
      nextToken: nextToken,
    );
  }

  /// The input for the ListStackResource action.
  factory ListStackResourcesInput.build(
          [void Function(ListStackResourcesInputBuilder) updates]) =
      _$ListStackResourcesInput;

  const ListStackResourcesInput._();

  factory ListStackResourcesInput.fromRequest(
    ListStackResourcesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListStackResourcesInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListStackResourcesInputBuilder b) {}

  /// The name or the unique stack ID that is associated with the stack, which aren't always interchangeable:
  ///
  /// *   Running stacks: You can specify either the stack's name or its unique stack ID.
  ///
  /// *   Deleted stacks: You must specify the unique stack ID.
  ///
  ///
  /// Default: There is no default value.
  String get stackName;

  /// A string that identifies the next page of stack resources that you want to retrieve.
  String? get nextToken;
  @override
  ListStackResourcesInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListStackResourcesInput');
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListStackResourcesInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListStackResourcesInput> {
  const ListStackResourcesInputAwsQuerySerializer()
      : super('ListStackResourcesInput');

  @override
  Iterable<Type> get types => const [
        ListStackResourcesInput,
        _$ListStackResourcesInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackResourcesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackResourcesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ListStackResourcesInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListStackResourcesInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        payload.stackName,
        specifiedType: const FullType(String),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
