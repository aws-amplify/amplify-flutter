// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.directory_service_authentication; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'directory_service_authentication.g.dart';

/// Describes an Active Directory.
abstract class DirectoryServiceAuthentication
    with
        _i1.AWSEquatable<DirectoryServiceAuthentication>
    implements
        Built<DirectoryServiceAuthentication,
            DirectoryServiceAuthenticationBuilder> {
  /// Describes an Active Directory.
  factory DirectoryServiceAuthentication({String? directoryId}) {
    return _$DirectoryServiceAuthentication._(directoryId: directoryId);
  }

  /// Describes an Active Directory.
  factory DirectoryServiceAuthentication.build(
          [void Function(DirectoryServiceAuthenticationBuilder) updates]) =
      _$DirectoryServiceAuthentication;

  const DirectoryServiceAuthentication._();

  static const List<_i2.SmithySerializer<DirectoryServiceAuthentication>>
      serializers = [DirectoryServiceAuthenticationEc2QuerySerializer()];

  /// The ID of the Active Directory used for authentication.
  String? get directoryId;
  @override
  List<Object?> get props => [directoryId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DirectoryServiceAuthentication')
      ..add(
        'directoryId',
        directoryId,
      );
    return helper.toString();
  }
}

class DirectoryServiceAuthenticationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DirectoryServiceAuthentication> {
  const DirectoryServiceAuthenticationEc2QuerySerializer()
      : super('DirectoryServiceAuthentication');

  @override
  Iterable<Type> get types => const [
        DirectoryServiceAuthentication,
        _$DirectoryServiceAuthentication,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DirectoryServiceAuthentication deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DirectoryServiceAuthenticationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'directoryId':
          result.directoryId = (serializers.deserialize(
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
    DirectoryServiceAuthentication object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DirectoryServiceAuthenticationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DirectoryServiceAuthentication(:directoryId) = object;
    if (directoryId != null) {
      result$
        ..add(const _i2.XmlElementName('DirectoryId'))
        ..add(serializers.serialize(
          directoryId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
