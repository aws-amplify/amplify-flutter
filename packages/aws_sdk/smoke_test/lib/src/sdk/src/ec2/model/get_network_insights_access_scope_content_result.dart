// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_network_insights_access_scope_content_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_content.dart';

part 'get_network_insights_access_scope_content_result.g.dart';

abstract class GetNetworkInsightsAccessScopeContentResult
    with
        _i1.AWSEquatable<GetNetworkInsightsAccessScopeContentResult>
    implements
        Built<GetNetworkInsightsAccessScopeContentResult,
            GetNetworkInsightsAccessScopeContentResultBuilder> {
  factory GetNetworkInsightsAccessScopeContentResult(
      {NetworkInsightsAccessScopeContent? networkInsightsAccessScopeContent}) {
    return _$GetNetworkInsightsAccessScopeContentResult._(
        networkInsightsAccessScopeContent: networkInsightsAccessScopeContent);
  }

  factory GetNetworkInsightsAccessScopeContentResult.build(
      [void Function(GetNetworkInsightsAccessScopeContentResultBuilder)
          updates]) = _$GetNetworkInsightsAccessScopeContentResult;

  const GetNetworkInsightsAccessScopeContentResult._();

  /// Constructs a [GetNetworkInsightsAccessScopeContentResult] from a [payload] and [response].
  factory GetNetworkInsightsAccessScopeContentResult.fromResponse(
    GetNetworkInsightsAccessScopeContentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<GetNetworkInsightsAccessScopeContentResult>>
      serializers = [
    GetNetworkInsightsAccessScopeContentResultEc2QuerySerializer()
  ];

  /// The Network Access Scope content.
  NetworkInsightsAccessScopeContent? get networkInsightsAccessScopeContent;
  @override
  List<Object?> get props => [networkInsightsAccessScopeContent];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetNetworkInsightsAccessScopeContentResult')
      ..add(
        'networkInsightsAccessScopeContent',
        networkInsightsAccessScopeContent,
      );
    return helper.toString();
  }
}

class GetNetworkInsightsAccessScopeContentResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<GetNetworkInsightsAccessScopeContentResult> {
  const GetNetworkInsightsAccessScopeContentResultEc2QuerySerializer()
      : super('GetNetworkInsightsAccessScopeContentResult');

  @override
  Iterable<Type> get types => const [
        GetNetworkInsightsAccessScopeContentResult,
        _$GetNetworkInsightsAccessScopeContentResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetNetworkInsightsAccessScopeContentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetNetworkInsightsAccessScopeContentResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeContent':
          result.networkInsightsAccessScopeContent
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInsightsAccessScopeContent),
          ) as NetworkInsightsAccessScopeContent));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetNetworkInsightsAccessScopeContentResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetNetworkInsightsAccessScopeContentResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetNetworkInsightsAccessScopeContentResult(
      :networkInsightsAccessScopeContent
    ) = object;
    if (networkInsightsAccessScopeContent != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInsightsAccessScopeContent'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeContent,
          specifiedType: const FullType(NetworkInsightsAccessScopeContent),
        ));
    }
    return result$;
  }
}
