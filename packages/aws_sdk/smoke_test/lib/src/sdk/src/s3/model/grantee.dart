// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.grantee; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/type.dart' as _i2;
import 'package:xml/xml.dart' as _i4;

part 'grantee.g.dart';

/// Container for the person being granted permissions.
abstract class Grantee
    with _i1.AWSEquatable<Grantee>
    implements Built<Grantee, GranteeBuilder> {
  /// Container for the person being granted permissions.
  factory Grantee({
    String? displayName,
    String? emailAddress,
    String? id,
    required _i2.S3Type type,
    String? uri,
  }) {
    return _$Grantee._(
      displayName: displayName,
      emailAddress: emailAddress,
      id: id,
      type: type,
      uri: uri,
    );
  }

  /// Container for the person being granted permissions.
  factory Grantee.build([void Function(GranteeBuilder) updates]) = _$Grantee;

  const Grantee._();

  static const List<_i3.SmithySerializer> serializers = [
    GranteeRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GranteeBuilder b) {}

  /// Screen name of the grantee.
  String? get displayName;

  /// Email address of the grantee.
  ///
  /// Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions:
  ///
  /// *   US East (N. Virginia)
  ///
  /// *   US West (N. California)
  ///
  /// *   US West (Oregon)
  ///
  /// *   Asia Pacific (Singapore)
  ///
  /// *   Asia Pacific (Sydney)
  ///
  /// *   Asia Pacific (Tokyo)
  ///
  /// *   Europe (Ireland)
  ///
  /// *   South America (São Paulo)
  ///
  ///
  /// For a list of all the Amazon S3 supported Regions and endpoints, see [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) in the Amazon Web Services General Reference.
  String? get emailAddress;

  /// The canonical user ID of the grantee.
  String? get id;

  /// Type of grantee
  _i2.S3Type get type;

  /// URI of the grantee group.
  String? get uri;
  @override
  List<Object?> get props => [
        displayName,
        emailAddress,
        id,
        type,
        uri,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Grantee');
    helper.add(
      'displayName',
      displayName,
    );
    helper.add(
      'emailAddress',
      emailAddress,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'uri',
      uri,
    );
    return helper.toString();
  }
}

class GranteeRestXmlSerializer extends _i3.StructuredSmithySerializer<Grantee> {
  const GranteeRestXmlSerializer() : super('Grantee');

  @override
  Iterable<Type> get types => const [
        Grantee,
        _$Grantee,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Grantee deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GranteeBuilder();
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
        case 'EmailAddress':
          if (value != null) {
            result.emailAddress = (serializers.deserialize(
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
        case 'xsi:type':
          result.type = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.S3Type),
          ) as _i2.S3Type);
          break;
        case 'URI':
          if (value != null) {
            result.uri = (serializers.deserialize(
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
    final payload = (object as Grantee);
    final result = <Object?>[
      const _i3.XmlElementName(
        'Grantee',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result.add(_i4.XmlAttribute(
      _i4.XmlName('xsi:type'),
      (serializers.serialize(
        payload.type,
        specifiedType: const FullType.nullable(_i2.S3Type),
      ) as String),
    ));
    if (payload.displayName != null) {
      result
        ..add(const _i3.XmlElementName('DisplayName'))
        ..add(serializers.serialize(
          payload.displayName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.emailAddress != null) {
      result
        ..add(const _i3.XmlElementName('EmailAddress'))
        ..add(serializers.serialize(
          payload.emailAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.id != null) {
      result
        ..add(const _i3.XmlElementName('ID'))
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.uri != null) {
      result
        ..add(const _i3.XmlElementName('URI'))
        ..add(serializers.serialize(
          payload.uri!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
