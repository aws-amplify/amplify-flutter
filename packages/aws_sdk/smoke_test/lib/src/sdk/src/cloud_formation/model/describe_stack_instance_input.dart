// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stack_instance_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i3;

part 'describe_stack_instance_input.g.dart';

abstract class DescribeStackInstanceInput
    with
        _i1.HttpInput<DescribeStackInstanceInput>,
        _i2.AWSEquatable<DescribeStackInstanceInput>
    implements
        Built<DescribeStackInstanceInput, DescribeStackInstanceInputBuilder> {
  factory DescribeStackInstanceInput({
    required String stackSetName,
    required String stackInstanceAccount,
    required String stackInstanceRegion,
    _i3.CallAs? callAs,
  }) {
    return _$DescribeStackInstanceInput._(
      stackSetName: stackSetName,
      stackInstanceAccount: stackInstanceAccount,
      stackInstanceRegion: stackInstanceRegion,
      callAs: callAs,
    );
  }

  factory DescribeStackInstanceInput.build(
          [void Function(DescribeStackInstanceInputBuilder) updates]) =
      _$DescribeStackInstanceInput;

  const DescribeStackInstanceInput._();

  factory DescribeStackInstanceInput.fromRequest(
    DescribeStackInstanceInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeStackInstanceInput>>
      serializers = [DescribeStackInstanceInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackInstanceInputBuilder b) {}

  /// The name or the unique stack ID of the stack set that you want to get stack instance information for.
  String get stackSetName;

  /// The ID of an Amazon Web Services account that's associated with this stack instance.
  String get stackInstanceAccount;

  /// The name of a Region that's associated with this stack instance.
  String get stackInstanceRegion;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i3.CallAs? get callAs;
  @override
  DescribeStackInstanceInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        stackInstanceAccount,
        stackInstanceRegion,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackInstanceInput')
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'stackInstanceAccount',
        stackInstanceAccount,
      )
      ..add(
        'stackInstanceRegion',
        stackInstanceRegion,
      )
      ..add(
        'callAs',
        callAs,
      );
    return helper.toString();
  }
}

class DescribeStackInstanceInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeStackInstanceInput> {
  const DescribeStackInstanceInputAwsQuerySerializer()
      : super('DescribeStackInstanceInput');

  @override
  Iterable<Type> get types => const [
        DescribeStackInstanceInput,
        _$DescribeStackInstanceInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackInstanceInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackInstanceInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetName':
          result.stackSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackInstanceAccount':
          result.stackInstanceAccount = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackInstanceRegion':
          result.stackInstanceRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CallAs),
          ) as _i3.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeStackInstanceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeStackInstanceInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackInstanceInput(
      :stackSetName,
      :stackInstanceAccount,
      :stackInstanceRegion,
      :callAs
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackSetName'))
      ..add(serializers.serialize(
        stackSetName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('StackInstanceAccount'))
      ..add(serializers.serialize(
        stackInstanceAccount,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('StackInstanceRegion'))
      ..add(serializers.serialize(
        stackInstanceRegion,
        specifiedType: const FullType(String),
      ));
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i3.CallAs),
        ));
    }
    return result$;
  }
}
