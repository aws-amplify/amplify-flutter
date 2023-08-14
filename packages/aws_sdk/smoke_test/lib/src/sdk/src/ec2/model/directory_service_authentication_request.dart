// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.directory_service_authentication_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'directory_service_authentication_request.g.dart';

/// Describes the Active Directory to be used for client authentication.
abstract class DirectoryServiceAuthenticationRequest
    with
        _i1.AWSEquatable<DirectoryServiceAuthenticationRequest>
    implements
        Built<DirectoryServiceAuthenticationRequest,
            DirectoryServiceAuthenticationRequestBuilder> {
  /// Describes the Active Directory to be used for client authentication.
  factory DirectoryServiceAuthenticationRequest({String? directoryId}) {
    return _$DirectoryServiceAuthenticationRequest._(directoryId: directoryId);
  }

  /// Describes the Active Directory to be used for client authentication.
  factory DirectoryServiceAuthenticationRequest.build(
      [void Function(DirectoryServiceAuthenticationRequestBuilder)
          updates]) = _$DirectoryServiceAuthenticationRequest;

  const DirectoryServiceAuthenticationRequest._();

  static const List<_i2.SmithySerializer<DirectoryServiceAuthenticationRequest>>
      serializers = [DirectoryServiceAuthenticationRequestEc2QuerySerializer()];

  /// The ID of the Active Directory to be used for authentication.
  String? get directoryId;
  @override
  List<Object?> get props => [directoryId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DirectoryServiceAuthenticationRequest')
          ..add(
            'directoryId',
            directoryId,
          );
    return helper.toString();
  }
}

class DirectoryServiceAuthenticationRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DirectoryServiceAuthenticationRequest> {
  const DirectoryServiceAuthenticationRequestEc2QuerySerializer()
      : super('DirectoryServiceAuthenticationRequest');

  @override
  Iterable<Type> get types => const [
        DirectoryServiceAuthenticationRequest,
        _$DirectoryServiceAuthenticationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DirectoryServiceAuthenticationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DirectoryServiceAuthenticationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DirectoryId':
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
    DirectoryServiceAuthenticationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DirectoryServiceAuthenticationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DirectoryServiceAuthenticationRequest(:directoryId) = object;
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
