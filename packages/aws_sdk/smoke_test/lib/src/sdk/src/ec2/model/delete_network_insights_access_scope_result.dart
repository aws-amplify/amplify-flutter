// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_insights_access_scope_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_network_insights_access_scope_result.g.dart';

abstract class DeleteNetworkInsightsAccessScopeResult
    with
        _i1.AWSEquatable<DeleteNetworkInsightsAccessScopeResult>
    implements
        Built<DeleteNetworkInsightsAccessScopeResult,
            DeleteNetworkInsightsAccessScopeResultBuilder> {
  factory DeleteNetworkInsightsAccessScopeResult(
      {String? networkInsightsAccessScopeId}) {
    return _$DeleteNetworkInsightsAccessScopeResult._(
        networkInsightsAccessScopeId: networkInsightsAccessScopeId);
  }

  factory DeleteNetworkInsightsAccessScopeResult.build(
      [void Function(DeleteNetworkInsightsAccessScopeResultBuilder)
          updates]) = _$DeleteNetworkInsightsAccessScopeResult;

  const DeleteNetworkInsightsAccessScopeResult._();

  /// Constructs a [DeleteNetworkInsightsAccessScopeResult] from a [payload] and [response].
  factory DeleteNetworkInsightsAccessScopeResult.fromResponse(
    DeleteNetworkInsightsAccessScopeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DeleteNetworkInsightsAccessScopeResult>>
      serializers = [
    DeleteNetworkInsightsAccessScopeResultEc2QuerySerializer()
  ];

  /// The ID of the Network Access Scope.
  String? get networkInsightsAccessScopeId;
  @override
  List<Object?> get props => [networkInsightsAccessScopeId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInsightsAccessScopeResult')
          ..add(
            'networkInsightsAccessScopeId',
            networkInsightsAccessScopeId,
          );
    return helper.toString();
  }
}

class DeleteNetworkInsightsAccessScopeResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteNetworkInsightsAccessScopeResult> {
  const DeleteNetworkInsightsAccessScopeResultEc2QuerySerializer()
      : super('DeleteNetworkInsightsAccessScopeResult');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInsightsAccessScopeResult,
        _$DeleteNetworkInsightsAccessScopeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInsightsAccessScopeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInsightsAccessScopeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeId':
          result.networkInsightsAccessScopeId = (serializers.deserialize(
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
    DeleteNetworkInsightsAccessScopeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteNetworkInsightsAccessScopeResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInsightsAccessScopeResult(
      :networkInsightsAccessScopeId
    ) = object;
    if (networkInsightsAccessScopeId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(serializers.serialize(
          networkInsightsAccessScopeId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
