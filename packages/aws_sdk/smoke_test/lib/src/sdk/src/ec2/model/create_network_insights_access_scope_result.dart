// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_insights_access_scope_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_content.dart';

part 'create_network_insights_access_scope_result.g.dart';

abstract class CreateNetworkInsightsAccessScopeResult
    with
        _i1.AWSEquatable<CreateNetworkInsightsAccessScopeResult>
    implements
        Built<CreateNetworkInsightsAccessScopeResult,
            CreateNetworkInsightsAccessScopeResultBuilder> {
  factory CreateNetworkInsightsAccessScopeResult({
    NetworkInsightsAccessScope? networkInsightsAccessScope,
    NetworkInsightsAccessScopeContent? networkInsightsAccessScopeContent,
  }) {
    return _$CreateNetworkInsightsAccessScopeResult._(
      networkInsightsAccessScope: networkInsightsAccessScope,
      networkInsightsAccessScopeContent: networkInsightsAccessScopeContent,
    );
  }

  factory CreateNetworkInsightsAccessScopeResult.build(
      [void Function(CreateNetworkInsightsAccessScopeResultBuilder)
          updates]) = _$CreateNetworkInsightsAccessScopeResult;

  const CreateNetworkInsightsAccessScopeResult._();

  /// Constructs a [CreateNetworkInsightsAccessScopeResult] from a [payload] and [response].
  factory CreateNetworkInsightsAccessScopeResult.fromResponse(
    CreateNetworkInsightsAccessScopeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<CreateNetworkInsightsAccessScopeResult>>
      serializers = [
    CreateNetworkInsightsAccessScopeResultEc2QuerySerializer()
  ];

  /// The Network Access Scope.
  NetworkInsightsAccessScope? get networkInsightsAccessScope;

  /// The Network Access Scope content.
  NetworkInsightsAccessScopeContent? get networkInsightsAccessScopeContent;
  @override
  List<Object?> get props => [
        networkInsightsAccessScope,
        networkInsightsAccessScopeContent,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInsightsAccessScopeResult')
          ..add(
            'networkInsightsAccessScope',
            networkInsightsAccessScope,
          )
          ..add(
            'networkInsightsAccessScopeContent',
            networkInsightsAccessScopeContent,
          );
    return helper.toString();
  }
}

class CreateNetworkInsightsAccessScopeResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateNetworkInsightsAccessScopeResult> {
  const CreateNetworkInsightsAccessScopeResultEc2QuerySerializer()
      : super('CreateNetworkInsightsAccessScopeResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInsightsAccessScopeResult,
        _$CreateNetworkInsightsAccessScopeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInsightsAccessScopeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInsightsAccessScopeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScope':
          result.networkInsightsAccessScope.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInsightsAccessScope),
          ) as NetworkInsightsAccessScope));
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
    CreateNetworkInsightsAccessScopeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateNetworkInsightsAccessScopeResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkInsightsAccessScopeResult(
      :networkInsightsAccessScope,
      :networkInsightsAccessScopeContent
    ) = object;
    if (networkInsightsAccessScope != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInsightsAccessScope'))
        ..add(serializers.serialize(
          networkInsightsAccessScope,
          specifiedType: const FullType(NetworkInsightsAccessScope),
        ));
    }
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
