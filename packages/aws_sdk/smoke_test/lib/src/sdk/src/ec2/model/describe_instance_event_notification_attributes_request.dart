// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_event_notification_attributes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_instance_event_notification_attributes_request.g.dart';

abstract class DescribeInstanceEventNotificationAttributesRequest
    with
        _i1.HttpInput<DescribeInstanceEventNotificationAttributesRequest>,
        _i2.AWSEquatable<DescribeInstanceEventNotificationAttributesRequest>
    implements
        Built<DescribeInstanceEventNotificationAttributesRequest,
            DescribeInstanceEventNotificationAttributesRequestBuilder> {
  factory DescribeInstanceEventNotificationAttributesRequest({bool? dryRun}) {
    dryRun ??= false;
    return _$DescribeInstanceEventNotificationAttributesRequest._(
        dryRun: dryRun);
  }

  factory DescribeInstanceEventNotificationAttributesRequest.build(
      [void Function(DescribeInstanceEventNotificationAttributesRequestBuilder)
          updates]) = _$DescribeInstanceEventNotificationAttributesRequest;

  const DescribeInstanceEventNotificationAttributesRequest._();

  factory DescribeInstanceEventNotificationAttributesRequest.fromRequest(
    DescribeInstanceEventNotificationAttributesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
      _i1.SmithySerializer<
          DescribeInstanceEventNotificationAttributesRequest>> serializers = [
    DescribeInstanceEventNotificationAttributesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeInstanceEventNotificationAttributesRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeInstanceEventNotificationAttributesRequest getPayload() => this;
  @override
  List<Object?> get props => [dryRun];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeInstanceEventNotificationAttributesRequest')
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DescribeInstanceEventNotificationAttributesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeInstanceEventNotificationAttributesRequest> {
  const DescribeInstanceEventNotificationAttributesRequestEc2QuerySerializer()
      : super('DescribeInstanceEventNotificationAttributesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceEventNotificationAttributesRequest,
        _$DescribeInstanceEventNotificationAttributesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceEventNotificationAttributesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceEventNotificationAttributesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeInstanceEventNotificationAttributesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceEventNotificationAttributesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceEventNotificationAttributesRequest(:dryRun) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
