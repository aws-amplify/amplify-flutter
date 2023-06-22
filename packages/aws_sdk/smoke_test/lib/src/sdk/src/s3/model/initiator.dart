// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.initiator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'initiator.g.dart';

/// Container element that identifies who initiated the multipart upload.
abstract class Initiator
    with _i1.AWSEquatable<Initiator>
    implements Built<Initiator, InitiatorBuilder> {
  /// Container element that identifies who initiated the multipart upload.
  factory Initiator({
    String? id,
    String? displayName,
  }) {
    return _$Initiator._(
      id: id,
      displayName: displayName,
    );
  }

  /// Container element that identifies who initiated the multipart upload.
  factory Initiator.build([void Function(InitiatorBuilder) updates]) =
      _$Initiator;

  const Initiator._();

  static const List<_i2.SmithySerializer<Initiator>> serializers = [
    InitiatorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InitiatorBuilder b) {}

  /// If the principal is an Amazon Web Services account, it provides the Canonical User ID. If the principal is an IAM User, it provides a user ARN value.
  String? get id;

  /// Name of the Principal.
  String? get displayName;
  @override
  List<Object?> get props => [
        id,
        displayName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Initiator')
      ..add(
        'id',
        id,
      )
      ..add(
        'displayName',
        displayName,
      );
    return helper.toString();
  }
}

class InitiatorRestXmlSerializer
    extends _i2.StructuredSmithySerializer<Initiator> {
  const InitiatorRestXmlSerializer() : super('Initiator');

  @override
  Iterable<Type> get types => const [
        Initiator,
        _$Initiator,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Initiator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiatorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DisplayName':
          result.displayName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ID':
          result.id = (serializers.deserialize(
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
    Initiator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Initiator',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Initiator(:displayName, :id) = object;
    if (displayName != null) {
      result$
        ..add(const _i2.XmlElementName('DisplayName'))
        ..add(serializers.serialize(
          displayName,
          specifiedType: const FullType(String),
        ));
    }
    if (id != null) {
      result$
        ..add(const _i2.XmlElementName('ID'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
