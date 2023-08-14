// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.through_resources_statement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_statement.dart';

part 'through_resources_statement.g.dart';

/// Describes a through resource statement.
abstract class ThroughResourcesStatement
    with _i1.AWSEquatable<ThroughResourcesStatement>
    implements
        Built<ThroughResourcesStatement, ThroughResourcesStatementBuilder> {
  /// Describes a through resource statement.
  factory ThroughResourcesStatement({ResourceStatement? resourceStatement}) {
    return _$ThroughResourcesStatement._(resourceStatement: resourceStatement);
  }

  /// Describes a through resource statement.
  factory ThroughResourcesStatement.build(
          [void Function(ThroughResourcesStatementBuilder) updates]) =
      _$ThroughResourcesStatement;

  const ThroughResourcesStatement._();

  static const List<_i2.SmithySerializer<ThroughResourcesStatement>>
      serializers = [ThroughResourcesStatementEc2QuerySerializer()];

  /// The resource statement.
  ResourceStatement? get resourceStatement;
  @override
  List<Object?> get props => [resourceStatement];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ThroughResourcesStatement')
      ..add(
        'resourceStatement',
        resourceStatement,
      );
    return helper.toString();
  }
}

class ThroughResourcesStatementEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ThroughResourcesStatement> {
  const ThroughResourcesStatementEc2QuerySerializer()
      : super('ThroughResourcesStatement');

  @override
  Iterable<Type> get types => const [
        ThroughResourcesStatement,
        _$ThroughResourcesStatement,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ThroughResourcesStatement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThroughResourcesStatementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceStatement':
          result.resourceStatement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceStatement),
          ) as ResourceStatement));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ThroughResourcesStatement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ThroughResourcesStatementResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ThroughResourcesStatement(:resourceStatement) = object;
    if (resourceStatement != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceStatement'))
        ..add(serializers.serialize(
          resourceStatement,
          specifiedType: const FullType(ResourceStatement),
        ));
    }
    return result$;
  }
}
