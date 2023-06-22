// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_change_set_hooks_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hook.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_set_hooks_status.dart'
    as _i3;

part 'describe_change_set_hooks_output.g.dart';

abstract class DescribeChangeSetHooksOutput
    with
        _i1.AWSEquatable<DescribeChangeSetHooksOutput>
    implements
        Built<DescribeChangeSetHooksOutput,
            DescribeChangeSetHooksOutputBuilder> {
  factory DescribeChangeSetHooksOutput({
    String? changeSetId,
    String? changeSetName,
    List<_i2.ChangeSetHook>? hooks,
    _i3.ChangeSetHooksStatus? status,
    String? nextToken,
    String? stackId,
    String? stackName,
  }) {
    return _$DescribeChangeSetHooksOutput._(
      changeSetId: changeSetId,
      changeSetName: changeSetName,
      hooks: hooks == null ? null : _i4.BuiltList(hooks),
      status: status,
      nextToken: nextToken,
      stackId: stackId,
      stackName: stackName,
    );
  }

  factory DescribeChangeSetHooksOutput.build(
          [void Function(DescribeChangeSetHooksOutputBuilder) updates]) =
      _$DescribeChangeSetHooksOutput;

  const DescribeChangeSetHooksOutput._();

  /// Constructs a [DescribeChangeSetHooksOutput] from a [payload] and [response].
  factory DescribeChangeSetHooksOutput.fromResponse(
    DescribeChangeSetHooksOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer<DescribeChangeSetHooksOutput>>
      serializers = [DescribeChangeSetHooksOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeChangeSetHooksOutputBuilder b) {}

  /// The change set identifier (stack ID).
  String? get changeSetId;

  /// The change set name.
  String? get changeSetName;

  /// List of hook objects.
  _i4.BuiltList<_i2.ChangeSetHook>? get hooks;

  /// Provides the status of the change set hook.
  _i3.ChangeSetHooksStatus? get status;

  /// Pagination token, `null` or empty if no more results.
  String? get nextToken;

  /// The stack identifier (stack ID).
  String? get stackId;

  /// The stack name.
  String? get stackName;
  @override
  List<Object?> get props => [
        changeSetId,
        changeSetName,
        hooks,
        status,
        nextToken,
        stackId,
        stackName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeChangeSetHooksOutput')
      ..add(
        'changeSetId',
        changeSetId,
      )
      ..add(
        'changeSetName',
        changeSetName,
      )
      ..add(
        'hooks',
        hooks,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'stackId',
        stackId,
      )
      ..add(
        'stackName',
        stackName,
      );
    return helper.toString();
  }
}

class DescribeChangeSetHooksOutputAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<DescribeChangeSetHooksOutput> {
  const DescribeChangeSetHooksOutputAwsQuerySerializer()
      : super('DescribeChangeSetHooksOutput');

  @override
  Iterable<Type> get types => const [
        DescribeChangeSetHooksOutput,
        _$DescribeChangeSetHooksOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeChangeSetHooksOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeChangeSetHooksOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ChangeSetId':
          result.changeSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChangeSetName':
          result.changeSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Hooks':
          result.hooks.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.ChangeSetHook)],
            ),
          ) as _i4.BuiltList<_i2.ChangeSetHook>));
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ChangeSetHooksStatus),
          ) as _i3.ChangeSetHooksStatus);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackId':
          result.stackId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackName':
          result.stackName = (serializers.deserialize(
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
    DescribeChangeSetHooksOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'DescribeChangeSetHooksOutputResponse',
        _i5.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeChangeSetHooksOutput(
      :changeSetId,
      :changeSetName,
      :hooks,
      :status,
      :nextToken,
      :stackId,
      :stackName
    ) = object;
    if (changeSetId != null) {
      result$
        ..add(const _i5.XmlElementName('ChangeSetId'))
        ..add(serializers.serialize(
          changeSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (changeSetName != null) {
      result$
        ..add(const _i5.XmlElementName('ChangeSetName'))
        ..add(serializers.serialize(
          changeSetName,
          specifiedType: const FullType(String),
        ));
    }
    if (hooks != null) {
      result$
        ..add(const _i5.XmlElementName('Hooks'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          hooks,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.ChangeSetHook)],
          ),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i5.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i3.ChangeSetHooksStatus),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i5.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (stackId != null) {
      result$
        ..add(const _i5.XmlElementName('StackId'))
        ..add(serializers.serialize(
          stackId,
          specifiedType: const FullType(String),
        ));
    }
    if (stackName != null) {
      result$
        ..add(const _i5.XmlElementName('StackName'))
        ..add(serializers.serialize(
          stackName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
