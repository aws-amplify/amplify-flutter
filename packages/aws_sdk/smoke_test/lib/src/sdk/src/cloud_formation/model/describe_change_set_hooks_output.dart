// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i5.SmithySerializer> serializers = [
    DescribeChangeSetHooksOutputAwsQuerySerializer()
  ];

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
    final helper = newBuiltValueToStringHelper('DescribeChangeSetHooksOutput');
    helper.add(
      'changeSetId',
      changeSetId,
    );
    helper.add(
      'changeSetName',
      changeSetName,
    );
    helper.add(
      'hooks',
      hooks,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'stackId',
      stackId,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ChangeSetId':
          if (value != null) {
            result.changeSetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ChangeSetName':
          if (value != null) {
            result.changeSetName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Hooks':
          if (value != null) {
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
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ChangeSetHooksStatus),
            ) as _i3.ChangeSetHooksStatus);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StackId':
          if (value != null) {
            result.stackId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StackName':
          if (value != null) {
            result.stackName = (serializers.deserialize(
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
    final payload = (object as DescribeChangeSetHooksOutput);
    final result = <Object?>[
      const _i5.XmlElementName(
        'DescribeChangeSetHooksOutputResponse',
        _i5.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.changeSetId != null) {
      result
        ..add(const _i5.XmlElementName('ChangeSetId'))
        ..add(serializers.serialize(
          payload.changeSetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.changeSetName != null) {
      result
        ..add(const _i5.XmlElementName('ChangeSetName'))
        ..add(serializers.serialize(
          payload.changeSetName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.hooks != null) {
      result
        ..add(const _i5.XmlElementName('Hooks'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.hooks!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.ChangeSetHook)],
          ),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i5.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i3.ChangeSetHooksStatus),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i5.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackId != null) {
      result
        ..add(const _i5.XmlElementName('StackId'))
        ..add(serializers.serialize(
          payload.stackId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackName != null) {
      result
        ..add(const _i5.XmlElementName('StackName'))
        ..add(serializers.serialize(
          payload.stackName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
