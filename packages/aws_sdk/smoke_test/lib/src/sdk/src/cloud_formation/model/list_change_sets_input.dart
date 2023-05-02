// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_change_sets_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_change_sets_input.g.dart';

/// The input for the ListChangeSets action.
abstract class ListChangeSetsInput
    with
        _i1.HttpInput<ListChangeSetsInput>,
        _i2.AWSEquatable<ListChangeSetsInput>
    implements Built<ListChangeSetsInput, ListChangeSetsInputBuilder> {
  /// The input for the ListChangeSets action.
  factory ListChangeSetsInput({
    required String stackName,
    String? nextToken,
  }) {
    return _$ListChangeSetsInput._(
      stackName: stackName,
      nextToken: nextToken,
    );
  }

  /// The input for the ListChangeSets action.
  factory ListChangeSetsInput.build(
          [void Function(ListChangeSetsInputBuilder) updates]) =
      _$ListChangeSetsInput;

  const ListChangeSetsInput._();

  factory ListChangeSetsInput.fromRequest(
    ListChangeSetsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListChangeSetsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListChangeSetsInputBuilder b) {}

  /// The name or the Amazon Resource Name (ARN) of the stack for which you want to list change sets.
  String get stackName;

  /// A string (provided by the ListChangeSets response output) that identifies the next page of change sets that you want to retrieve.
  String? get nextToken;
  @override
  ListChangeSetsInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListChangeSetsInput');
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

class ListChangeSetsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListChangeSetsInput> {
  const ListChangeSetsInputAwsQuerySerializer() : super('ListChangeSetsInput');

  @override
  Iterable<Type> get types => const [
        ListChangeSetsInput,
        _$ListChangeSetsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListChangeSetsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListChangeSetsInputBuilder();
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
    final payload = (object as ListChangeSetsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListChangeSetsInputResponse',
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
