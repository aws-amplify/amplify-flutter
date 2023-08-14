// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.path_statement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/packet_header_statement_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement_request.dart';

part 'path_statement_request.g.dart';

/// Describes a path statement.
abstract class PathStatementRequest
    with _i1.AWSEquatable<PathStatementRequest>
    implements Built<PathStatementRequest, PathStatementRequestBuilder> {
  /// Describes a path statement.
  factory PathStatementRequest({
    PacketHeaderStatementRequest? packetHeaderStatement,
    ResourceStatementRequest? resourceStatement,
  }) {
    return _$PathStatementRequest._(
      packetHeaderStatement: packetHeaderStatement,
      resourceStatement: resourceStatement,
    );
  }

  /// Describes a path statement.
  factory PathStatementRequest.build(
          [void Function(PathStatementRequestBuilder) updates]) =
      _$PathStatementRequest;

  const PathStatementRequest._();

  static const List<_i2.SmithySerializer<PathStatementRequest>> serializers = [
    PathStatementRequestEc2QuerySerializer()
  ];

  /// The packet header statement.
  PacketHeaderStatementRequest? get packetHeaderStatement;

  /// The resource statement.
  ResourceStatementRequest? get resourceStatement;
  @override
  List<Object?> get props => [
        packetHeaderStatement,
        resourceStatement,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PathStatementRequest')
      ..add(
        'packetHeaderStatement',
        packetHeaderStatement,
      )
      ..add(
        'resourceStatement',
        resourceStatement,
      );
    return helper.toString();
  }
}

class PathStatementRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PathStatementRequest> {
  const PathStatementRequestEc2QuerySerializer()
      : super('PathStatementRequest');

  @override
  Iterable<Type> get types => const [
        PathStatementRequest,
        _$PathStatementRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PathStatementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PathStatementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PacketHeaderStatement':
          result.packetHeaderStatement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PacketHeaderStatementRequest),
          ) as PacketHeaderStatementRequest));
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
    PathStatementRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PathStatementRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PathStatementRequest(:packetHeaderStatement, :resourceStatement) =
        object;
    if (packetHeaderStatement != null) {
      result$
        ..add(const _i2.XmlElementName('PacketHeaderStatement'))
        ..add(serializers.serialize(
          packetHeaderStatement,
          specifiedType: const FullType(PacketHeaderStatementRequest),
        ));
    }
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
