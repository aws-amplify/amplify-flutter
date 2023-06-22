// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_change_set_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_change_set_input.g.dart';

/// The input for the DescribeChangeSet action.
abstract class DescribeChangeSetInput
    with
        _i1.HttpInput<DescribeChangeSetInput>,
        _i2.AWSEquatable<DescribeChangeSetInput>
    implements Built<DescribeChangeSetInput, DescribeChangeSetInputBuilder> {
  /// The input for the DescribeChangeSet action.
  factory DescribeChangeSetInput({
    required String changeSetName,
    String? stackName,
    String? nextToken,
  }) {
    return _$DescribeChangeSetInput._(
      changeSetName: changeSetName,
      stackName: stackName,
      nextToken: nextToken,
    );
  }

  /// The input for the DescribeChangeSet action.
  factory DescribeChangeSetInput.build(
          [void Function(DescribeChangeSetInputBuilder) updates]) =
      _$DescribeChangeSetInput;

  const DescribeChangeSetInput._();

  factory DescribeChangeSetInput.fromRequest(
    DescribeChangeSetInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeChangeSetInput>> serializers =
      [DescribeChangeSetInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeChangeSetInputBuilder b) {}

  /// The name or Amazon Resource Name (ARN) of the change set that you want to describe.
  String get changeSetName;

  /// If you specified the name of a change set, specify the stack name or ID (ARN) of the change set you want to describe.
  String? get stackName;

  /// A string (provided by the DescribeChangeSet response output) that identifies the next page of information that you want to retrieve.
  String? get nextToken;
  @override
  DescribeChangeSetInput getPayload() => this;
  @override
  List<Object?> get props => [
        changeSetName,
        stackName,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeChangeSetInput')
      ..add(
        'changeSetName',
        changeSetName,
      )
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeChangeSetInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeChangeSetInput> {
  const DescribeChangeSetInputAwsQuerySerializer()
      : super('DescribeChangeSetInput');

  @override
  Iterable<Type> get types => const [
        DescribeChangeSetInput,
        _$DescribeChangeSetInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeChangeSetInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeChangeSetInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ChangeSetName':
          result.changeSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeChangeSetInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeChangeSetInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeChangeSetInput(:changeSetName, :stackName, :nextToken) =
        object;
    result$
      ..add(const _i1.XmlElementName('ChangeSetName'))
      ..add(serializers.serialize(
        changeSetName,
        specifiedType: const FullType(String),
      ));
    if (stackName != null) {
      result$
        ..add(const _i1.XmlElementName('StackName'))
        ..add(serializers.serialize(
          stackName,
          specifiedType: const FullType(String),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
