// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.describe_account_limits_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_account_limits_input.g.dart';

/// The input for the DescribeAccountLimits action.
abstract class DescribeAccountLimitsInput
    with
        _i1.HttpInput<DescribeAccountLimitsInput>,
        _i2.AWSEquatable<DescribeAccountLimitsInput>
    implements
        Built<DescribeAccountLimitsInput, DescribeAccountLimitsInputBuilder> {
  /// The input for the DescribeAccountLimits action.
  factory DescribeAccountLimitsInput({String? nextToken}) {
    return _$DescribeAccountLimitsInput._(nextToken: nextToken);
  }

  /// The input for the DescribeAccountLimits action.
  factory DescribeAccountLimitsInput.build(
          [void Function(DescribeAccountLimitsInputBuilder) updates]) =
      _$DescribeAccountLimitsInput;

  const DescribeAccountLimitsInput._();

  factory DescribeAccountLimitsInput.fromRequest(
    DescribeAccountLimitsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeAccountLimitsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAccountLimitsInputBuilder b) {}

  /// A string that identifies the next page of limits that you want to retrieve.
  String? get nextToken;
  @override
  DescribeAccountLimitsInput getPayload() => this;
  @override
  List<Object?> get props => [nextToken];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeAccountLimitsInput');
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeAccountLimitsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeAccountLimitsInput> {
  const DescribeAccountLimitsInputAwsQuerySerializer()
      : super('DescribeAccountLimitsInput');

  @override
  Iterable<Type> get types => const [
        DescribeAccountLimitsInput,
        _$DescribeAccountLimitsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeAccountLimitsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAccountLimitsInputBuilder();
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
    final payload = (object as DescribeAccountLimitsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeAccountLimitsInputResponse',
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
    return result;
  }
}
