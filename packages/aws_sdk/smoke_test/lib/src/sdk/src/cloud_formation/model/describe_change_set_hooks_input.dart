// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_change_set_hooks_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_change_set_hooks_input.g.dart';

abstract class DescribeChangeSetHooksInput
    with
        _i1.HttpInput<DescribeChangeSetHooksInput>,
        _i2.AWSEquatable<DescribeChangeSetHooksInput>
    implements
        Built<DescribeChangeSetHooksInput, DescribeChangeSetHooksInputBuilder> {
  factory DescribeChangeSetHooksInput({
    required String changeSetName,
    String? stackName,
    String? nextToken,
    String? logicalResourceId,
  }) {
    return _$DescribeChangeSetHooksInput._(
      changeSetName: changeSetName,
      stackName: stackName,
      nextToken: nextToken,
      logicalResourceId: logicalResourceId,
    );
  }

  factory DescribeChangeSetHooksInput.build(
          [void Function(DescribeChangeSetHooksInputBuilder) updates]) =
      _$DescribeChangeSetHooksInput;

  const DescribeChangeSetHooksInput._();

  factory DescribeChangeSetHooksInput.fromRequest(
    DescribeChangeSetHooksInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeChangeSetHooksInput>>
      serializers = [DescribeChangeSetHooksInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeChangeSetHooksInputBuilder b) {}

  /// The name or Amazon Resource Name (ARN) of the change set that you want to describe.
  String get changeSetName;

  /// If you specified the name of a change set, specify the stack name or stack ID (ARN) of the change set you want to describe.
  String? get stackName;

  /// A string, provided by the `DescribeChangeSetHooks` response output, that identifies the next page of information that you want to retrieve.
  String? get nextToken;

  /// If specified, lists only the hooks related to the specified `LogicalResourceId`.
  String? get logicalResourceId;
  @override
  DescribeChangeSetHooksInput getPayload() => this;
  @override
  List<Object?> get props => [
        changeSetName,
        stackName,
        nextToken,
        logicalResourceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeChangeSetHooksInput')
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
      )
      ..add(
        'logicalResourceId',
        logicalResourceId,
      );
    return helper.toString();
  }
}

class DescribeChangeSetHooksInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeChangeSetHooksInput> {
  const DescribeChangeSetHooksInputAwsQuerySerializer()
      : super('DescribeChangeSetHooksInput');

  @override
  Iterable<Type> get types => const [
        DescribeChangeSetHooksInput,
        _$DescribeChangeSetHooksInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeChangeSetHooksInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeChangeSetHooksInputBuilder();
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
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
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
    DescribeChangeSetHooksInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeChangeSetHooksInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeChangeSetHooksInput(
      :changeSetName,
      :stackName,
      :nextToken,
      :logicalResourceId
    ) = object;
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
    if (logicalResourceId != null) {
      result$
        ..add(const _i1.XmlElementName('LogicalResourceId'))
        ..add(serializers.serialize(
          logicalResourceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
