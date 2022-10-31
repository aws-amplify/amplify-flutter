// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    String? displayName,
    String? id,
  }) {
    return _$Initiator._(
      displayName: displayName,
      id: id,
    );
  }

  /// Container element that identifies who initiated the multipart upload.
  factory Initiator.build([void Function(InitiatorBuilder) updates]) =
      _$Initiator;

  const Initiator._();

  static const List<_i2.SmithySerializer> serializers = [
    InitiatorRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InitiatorBuilder b) {}

  /// Name of the Principal.
  String? get displayName;

  /// If the principal is an Amazon Web Services account, it provides the Canonical User ID. If the principal is an IAM User, it provides a user ARN value.
  String? get id;
  @override
  List<Object?> get props => [
        displayName,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Initiator');
    helper.add(
      'displayName',
      displayName,
    );
    helper.add(
      'id',
      id,
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DisplayName':
          if (value != null) {
            result.displayName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ID':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Initiator);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Initiator',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.displayName != null) {
      result
        ..add(const _i2.XmlElementName('DisplayName'))
        ..add(serializers.serialize(
          payload.displayName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.id != null) {
      result
        ..add(const _i2.XmlElementName('ID'))
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
