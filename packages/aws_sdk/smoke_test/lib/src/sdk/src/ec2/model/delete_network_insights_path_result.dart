// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_network_insights_path_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_network_insights_path_result.g.dart';

abstract class DeleteNetworkInsightsPathResult
    with
        _i1.AWSEquatable<DeleteNetworkInsightsPathResult>
    implements
        Built<DeleteNetworkInsightsPathResult,
            DeleteNetworkInsightsPathResultBuilder> {
  factory DeleteNetworkInsightsPathResult({String? networkInsightsPathId}) {
    return _$DeleteNetworkInsightsPathResult._(
        networkInsightsPathId: networkInsightsPathId);
  }

  factory DeleteNetworkInsightsPathResult.build(
          [void Function(DeleteNetworkInsightsPathResultBuilder) updates]) =
      _$DeleteNetworkInsightsPathResult;

  const DeleteNetworkInsightsPathResult._();

  /// Constructs a [DeleteNetworkInsightsPathResult] from a [payload] and [response].
  factory DeleteNetworkInsightsPathResult.fromResponse(
    DeleteNetworkInsightsPathResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteNetworkInsightsPathResult>>
      serializers = [DeleteNetworkInsightsPathResultEc2QuerySerializer()];

  /// The ID of the path.
  String? get networkInsightsPathId;
  @override
  List<Object?> get props => [networkInsightsPathId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInsightsPathResult')
          ..add(
            'networkInsightsPathId',
            networkInsightsPathId,
          );
    return helper.toString();
  }
}

class DeleteNetworkInsightsPathResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteNetworkInsightsPathResult> {
  const DeleteNetworkInsightsPathResultEc2QuerySerializer()
      : super('DeleteNetworkInsightsPathResult');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInsightsPathResult,
        _$DeleteNetworkInsightsPathResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInsightsPathResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInsightsPathResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsPathId':
          result.networkInsightsPathId = (serializers.deserialize(
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
    DeleteNetworkInsightsPathResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteNetworkInsightsPathResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteNetworkInsightsPathResult(:networkInsightsPathId) = object;
    if (networkInsightsPathId != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInsightsPathId'))
        ..add(serializers.serialize(
          networkInsightsPathId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
