// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    DateTime? createdDate,
    String? description,
    DateTime? expirationDate,
    String? pemEncodedCertificate,
    Map<String, String>? tags,
  }) {
    return _$ClientCertificate._(
      clientCertificateId: clientCertificateId,
      createdDate: createdDate,
      description: description,
      expirationDate: expirationDate,
      pemEncodedCertificate: pemEncodedCertificate,
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

  static const List<_i3.SmithySerializer> serializers = [
    ClientCertificateRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientCertificateBuilder b) {}

  /// The identifier of the client certificate.
  String? get clientCertificateId;

  /// The timestamp when the client certificate was created.
  DateTime? get createdDate;

  /// The description of the client certificate.
  String? get description;

  /// The timestamp when the client certificate will expire.
  DateTime? get expirationDate;

  /// The PEM-encoded public key of the client certificate, which can be used to configure certificate authentication in the integration endpoint .
  String? get pemEncodedCertificate;

  /// The collection of tags. Each tag element is associated with a given resource.
  _i2.BuiltMap<String, String>? get tags;
  @override
  List<Object?> get props => [
        clientCertificateId,
        createdDate,
        description,
        expirationDate,
        pemEncodedCertificate,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientCertificate');
    helper.add(
      'clientCertificateId',
      clientCertificateId,
    );
    helper.add(
      'createdDate',
      createdDate,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'expirationDate',
      expirationDate,
    );
    helper.add(
      'pemEncodedCertificate',
      pemEncodedCertificate,
    );
    helper.add(
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
      switch (key) {
        case 'clientCertificateId':
          if (value != null) {
            result.clientCertificateId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'createdDate':
          if (value != null) {
            result.createdDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'expirationDate':
          if (value != null) {
            result.expirationDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'pemEncodedCertificate':
          if (value != null) {
            result.pemEncodedCertificate = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tags':
          if (value != null) {
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
    final payload = (object as ClientCertificate);
    final result = <Object?>[];
    if (payload.clientCertificateId != null) {
      result
        ..add('clientCertificateId')
        ..add(serializers.serialize(
          payload.clientCertificateId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(
          payload.createdDate!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.expirationDate != null) {
      result
        ..add('expirationDate')
        ..add(serializers.serialize(
          payload.expirationDate!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.pemEncodedCertificate != null) {
      result
        ..add('pemEncodedCertificate')
        ..add(serializers.serialize(
          payload.pemEncodedCertificate!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result;
  }
}
