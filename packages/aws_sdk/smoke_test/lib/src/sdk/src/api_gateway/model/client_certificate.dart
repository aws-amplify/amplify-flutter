// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.client_certificate; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'client_certificate.g.dart';

/// Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.
abstract class ClientCertificate
    with _i1.AWSEquatable<ClientCertificate>
    implements Built<ClientCertificate, ClientCertificateBuilder> {
  /// Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.
  factory ClientCertificate({
    String? clientCertificateId,
    String? description,
    String? pemEncodedCertificate,
    DateTime? createdDate,
    DateTime? expirationDate,
    Map<String, String>? tags,
  }) {
    return _$ClientCertificate._(
      clientCertificateId: clientCertificateId,
      description: description,
      pemEncodedCertificate: pemEncodedCertificate,
      createdDate: createdDate,
      expirationDate: expirationDate,
      tags: tags == null ? null : _i2.BuiltMap(tags),
    );
  }

  /// Represents a client certificate used to configure client-side SSL authentication while sending requests to the integration endpoint.
  factory ClientCertificate.build(
      [void Function(ClientCertificateBuilder) updates]) = _$ClientCertificate;

  const ClientCertificate._();

  /// Constructs a [ClientCertificate] from a [payload] and [response].
  factory ClientCertificate.fromResponse(
    ClientCertificate payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ClientCertificate>> serializers = [
    ClientCertificateRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientCertificateBuilder b) {}

  /// The identifier of the client certificate.
  String? get clientCertificateId;

  /// The description of the client certificate.
  String? get description;

  /// The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .
  String? get pemEncodedCertificate;

  /// The timestamp when the client certificate was created.
  DateTime? get createdDate;

  /// The timestamp when the client certificate will expire.
  DateTime? get expirationDate;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i2.BuiltMap<String, String>? get tags;
  @override
  List<Object?> get props => [
        clientCertificateId,
        description,
        pemEncodedCertificate,
        createdDate,
        expirationDate,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientCertificate')
      ..add(
        'clientCertificateId',
        clientCertificateId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'pemEncodedCertificate',
        pemEncodedCertificate,
      )
      ..add(
        'createdDate',
        createdDate,
      )
      ..add(
        'expirationDate',
        expirationDate,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ClientCertificateRestJson1Serializer
    extends _i3.StructuredSmithySerializer<ClientCertificate> {
  const ClientCertificateRestJson1Serializer() : super('ClientCertificate');

  @override
  Iterable<Type> get types => const [
        ClientCertificate,
        _$ClientCertificate,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ClientCertificate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientCertificateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientCertificateId':
          result.clientCertificateId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createdDate':
          result.createdDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'expirationDate':
          result.expirationDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'pemEncodedCertificate':
          result.pemEncodedCertificate = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tags':
          result.tags.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i2.BuiltMap<String, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ClientCertificate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ClientCertificate(
      :clientCertificateId,
      :createdDate,
      :description,
      :expirationDate,
      :pemEncodedCertificate,
      :tags
    ) = object;
    if (clientCertificateId != null) {
      result$
        ..add('clientCertificateId')
        ..add(serializers.serialize(
          clientCertificateId,
          specifiedType: const FullType(String),
        ));
    }
    if (createdDate != null) {
      result$
        ..add('createdDate')
        ..add(serializers.serialize(
          createdDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (description != null) {
      result$
        ..add('description')
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (expirationDate != null) {
      result$
        ..add('expirationDate')
        ..add(serializers.serialize(
          expirationDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (pemEncodedCertificate != null) {
      result$
        ..add('pemEncodedCertificate')
        ..add(serializers.serialize(
          pemEncodedCertificate,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add('tags')
        ..add(serializers.serialize(
          tags,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
