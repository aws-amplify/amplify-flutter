// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_account_limits_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/account_limit.dart'
    as _i2;

part 'describe_account_limits_output.g.dart';

/// The output for the DescribeAccountLimits action.
abstract class DescribeAccountLimitsOutput
    with _i1.AWSEquatable<DescribeAccountLimitsOutput>
    implements
        Built<DescribeAccountLimitsOutput, DescribeAccountLimitsOutputBuilder> {
  /// The output for the DescribeAccountLimits action.
  factory DescribeAccountLimitsOutput({
    List<_i2.AccountLimit>? accountLimits,
    String? nextToken,
  }) {
    return _$DescribeAccountLimitsOutput._(
      accountLimits:
          accountLimits == null ? null : _i3.BuiltList(accountLimits),
      nextToken: nextToken,
    );
  }

  /// The output for the DescribeAccountLimits action.
  factory DescribeAccountLimitsOutput.build(
          [void Function(DescribeAccountLimitsOutputBuilder) updates]) =
      _$DescribeAccountLimitsOutput;

  const DescribeAccountLimitsOutput._();

  /// Constructs a [DescribeAccountLimitsOutput] from a [payload] and [response].
  factory DescribeAccountLimitsOutput.fromResponse(
    DescribeAccountLimitsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<DescribeAccountLimitsOutput>>
      serializers = [DescribeAccountLimitsOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAccountLimitsOutputBuilder b) {}

  /// An account limit structure that contain a list of CloudFormation account limits and their values.
  _i3.BuiltList<_i2.AccountLimit>? get accountLimits;

  /// If the output exceeds 1 MB in size, a string that identifies the next page of limits. If no additional page exists, this value is null.
  String? get nextToken;
  @override
  List<Object?> get props => [
        accountLimits,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeAccountLimitsOutput')
      ..add(
        'accountLimits',
        accountLimits,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeAccountLimitsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeAccountLimitsOutput> {
  const DescribeAccountLimitsOutputAwsQuerySerializer()
      : super('DescribeAccountLimitsOutput');

  @override
  Iterable<Type> get types => const [
        DescribeAccountLimitsOutput,
        _$DescribeAccountLimitsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeAccountLimitsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAccountLimitsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccountLimits':
          result.accountLimits.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.AccountLimit)],
            ),
          ) as _i3.BuiltList<_i2.AccountLimit>));
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
    DescribeAccountLimitsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribeAccountLimitsOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeAccountLimitsOutput(:accountLimits, :nextToken) = object;
    if (accountLimits != null) {
      result$
        ..add(const _i4.XmlElementName('AccountLimits'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          accountLimits,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AccountLimit)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
