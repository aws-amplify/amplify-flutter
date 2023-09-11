// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_event_windows_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window.dart';

part 'describe_instance_event_windows_result.g.dart';

abstract class DescribeInstanceEventWindowsResult
    with
        _i1.AWSEquatable<DescribeInstanceEventWindowsResult>
    implements
        Built<DescribeInstanceEventWindowsResult,
            DescribeInstanceEventWindowsResultBuilder> {
  factory DescribeInstanceEventWindowsResult({
    List<InstanceEventWindow>? instanceEventWindows,
    String? nextToken,
  }) {
    return _$DescribeInstanceEventWindowsResult._(
      instanceEventWindows: instanceEventWindows == null
          ? null
          : _i2.BuiltList(instanceEventWindows),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceEventWindowsResult.build(
          [void Function(DescribeInstanceEventWindowsResultBuilder) updates]) =
      _$DescribeInstanceEventWindowsResult;

  const DescribeInstanceEventWindowsResult._();

  /// Constructs a [DescribeInstanceEventWindowsResult] from a [payload] and [response].
  factory DescribeInstanceEventWindowsResult.fromResponse(
    DescribeInstanceEventWindowsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeInstanceEventWindowsResult>>
      serializers = [DescribeInstanceEventWindowsResultEc2QuerySerializer()];

  /// Information about the event windows.
  _i2.BuiltList<InstanceEventWindow>? get instanceEventWindows;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceEventWindows,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceEventWindowsResult')
          ..add(
            'instanceEventWindows',
            instanceEventWindows,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeInstanceEventWindowsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeInstanceEventWindowsResult> {
  const DescribeInstanceEventWindowsResultEc2QuerySerializer()
      : super('DescribeInstanceEventWindowsResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceEventWindowsResult,
        _$DescribeInstanceEventWindowsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceEventWindowsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceEventWindowsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceEventWindowSet':
          result.instanceEventWindows.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(InstanceEventWindow)],
            ),
          ) as _i2.BuiltList<InstanceEventWindow>));
        case 'nextToken':
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
    DescribeInstanceEventWindowsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeInstanceEventWindowsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceEventWindowsResult(
      :instanceEventWindows,
      :nextToken
    ) = object;
    if (instanceEventWindows != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceEventWindowSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceEventWindows,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(InstanceEventWindow)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
