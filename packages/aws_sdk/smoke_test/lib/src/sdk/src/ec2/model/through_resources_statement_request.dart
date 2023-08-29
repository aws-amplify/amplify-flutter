// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.through_resources_statement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement_request.dart';

part 'through_resources_statement_request.g.dart';

/// Describes a through resource statement.
abstract class ThroughResourcesStatementRequest
    with
        _i1.AWSEquatable<ThroughResourcesStatementRequest>
    implements
        Built<ThroughResourcesStatementRequest,
            ThroughResourcesStatementRequestBuilder> {
  /// Describes a through resource statement.
  factory ThroughResourcesStatementRequest(
      {ResourceStatementRequest? resourceStatement}) {
    return _$ThroughResourcesStatementRequest._(
        resourceStatement: resourceStatement);
  }

  /// Describes a through resource statement.
  factory ThroughResourcesStatementRequest.build(
          [void Function(ThroughResourcesStatementRequestBuilder) updates]) =
      _$ThroughResourcesStatementRequest;

  const ThroughResourcesStatementRequest._();

  static const List<_i2.SmithySerializer<ThroughResourcesStatementRequest>>
      serializers = [ThroughResourcesStatementRequestEc2QuerySerializer()];

  /// The resource statement.
  ResourceStatementRequest? get resourceStatement;
  @override
  List<Object?> get props => [resourceStatement];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ThroughResourcesStatementRequest')
          ..add(
            'resourceStatement',
            resourceStatement,
          );
    return helper.toString();
  }
}

class ThroughResourcesStatementRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ThroughResourcesStatementRequest> {
  const ThroughResourcesStatementRequestEc2QuerySerializer()
      : super('ThroughResourcesStatementRequest');

  @override
  Iterable<Type> get types => const [
        ThroughResourcesStatementRequest,
        _$ThroughResourcesStatementRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ThroughResourcesStatementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThroughResourcesStatementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ResourceStatement':
          result.resourceStatement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceStatementRequest),
          ) as ResourceStatementRequest));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ThroughResourcesStatementRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ThroughResourcesStatementRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ThroughResourcesStatementRequest(:resourceStatement) = object;
    if (resourceStatement != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceStatement'))
        ..add(serializers.serialize(
          resourceStatement,
          specifiedType: const FullType(ResourceStatementRequest),
        ));
    }
    return result$;
  }
}
