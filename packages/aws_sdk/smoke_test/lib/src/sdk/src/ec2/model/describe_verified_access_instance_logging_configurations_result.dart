// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_verified_access_instance_logging_configurations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance_logging_configuration.dart';

part 'describe_verified_access_instance_logging_configurations_result.g.dart';

abstract class DescribeVerifiedAccessInstanceLoggingConfigurationsResult
    with
        _i1
        .AWSEquatable<DescribeVerifiedAccessInstanceLoggingConfigurationsResult>
    implements
        Built<DescribeVerifiedAccessInstanceLoggingConfigurationsResult,
            DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder> {
  factory DescribeVerifiedAccessInstanceLoggingConfigurationsResult({
    List<VerifiedAccessInstanceLoggingConfiguration>? loggingConfigurations,
    String? nextToken,
  }) {
    return _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult._(
      loggingConfigurations: loggingConfigurations == null
          ? null
          : _i2.BuiltList(loggingConfigurations),
      nextToken: nextToken,
    );
  }

  factory DescribeVerifiedAccessInstanceLoggingConfigurationsResult.build(
      [void Function(
              DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder)
          updates]) = _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult;

  const DescribeVerifiedAccessInstanceLoggingConfigurationsResult._();

  /// Constructs a [DescribeVerifiedAccessInstanceLoggingConfigurationsResult] from a [payload] and [response].
  factory DescribeVerifiedAccessInstanceLoggingConfigurationsResult.fromResponse(
    DescribeVerifiedAccessInstanceLoggingConfigurationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<
              DescribeVerifiedAccessInstanceLoggingConfigurationsResult>>
      serializers = [
    DescribeVerifiedAccessInstanceLoggingConfigurationsResultEc2QuerySerializer()
  ];

  /// The current logging configuration for the Verified Access instances.
  _i2.BuiltList<VerifiedAccessInstanceLoggingConfiguration>?
      get loggingConfigurations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        loggingConfigurations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVerifiedAccessInstanceLoggingConfigurationsResult')
      ..add(
        'loggingConfigurations',
        loggingConfigurations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeVerifiedAccessInstanceLoggingConfigurationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DescribeVerifiedAccessInstanceLoggingConfigurationsResult> {
  const DescribeVerifiedAccessInstanceLoggingConfigurationsResultEc2QuerySerializer()
      : super('DescribeVerifiedAccessInstanceLoggingConfigurationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVerifiedAccessInstanceLoggingConfigurationsResult,
        _$DescribeVerifiedAccessInstanceLoggingConfigurationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVerifiedAccessInstanceLoggingConfigurationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DescribeVerifiedAccessInstanceLoggingConfigurationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'loggingConfigurationSet':
          result.loggingConfigurations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VerifiedAccessInstanceLoggingConfiguration)],
            ),
          ) as _i2.BuiltList<VerifiedAccessInstanceLoggingConfiguration>));
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
    DescribeVerifiedAccessInstanceLoggingConfigurationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVerifiedAccessInstanceLoggingConfigurationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVerifiedAccessInstanceLoggingConfigurationsResult(
      :loggingConfigurations,
      :nextToken
    ) = object;
    if (loggingConfigurations != null) {
      result$
        ..add(const _i3.XmlElementName('LoggingConfigurationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          loggingConfigurations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VerifiedAccessInstanceLoggingConfiguration)],
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
