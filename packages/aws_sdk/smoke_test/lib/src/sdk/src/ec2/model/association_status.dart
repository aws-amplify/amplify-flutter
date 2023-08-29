// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.association_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/association_status_code.dart';

part 'association_status.g.dart';

/// Describes the state of a target network association.
abstract class AssociationStatus
    with _i1.AWSEquatable<AssociationStatus>
    implements Built<AssociationStatus, AssociationStatusBuilder> {
  /// Describes the state of a target network association.
  factory AssociationStatus({
    AssociationStatusCode? code,
    String? message,
  }) {
    return _$AssociationStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of a target network association.
  factory AssociationStatus.build(
      [void Function(AssociationStatusBuilder) updates]) = _$AssociationStatus;

  const AssociationStatus._();

  static const List<_i2.SmithySerializer<AssociationStatus>> serializers = [
    AssociationStatusEc2QuerySerializer()
  ];

  /// The state of the target network association.
  AssociationStatusCode? get code;

  /// A message about the status of the target network association, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociationStatus')
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class AssociationStatusEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AssociationStatus> {
  const AssociationStatusEc2QuerySerializer() : super('AssociationStatus');

  @override
  Iterable<Type> get types => const [
        AssociationStatus,
        _$AssociationStatus,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociationStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociationStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(AssociationStatusCode),
          ) as AssociationStatusCode);
        case 'message':
          result.message = (serializers.deserialize(
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
    AssociationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AssociationStatusResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociationStatus(:code, :message) = object;
    if (code != null) {
      result$
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType.nullable(AssociationStatusCode),
        ));
    }
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
