// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.mutual_tls_authentication_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'mutual_tls_authentication_input.g.dart';

/// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
abstract class MutualTlsAuthenticationInput
    with
        _i1.AWSEquatable<MutualTlsAuthenticationInput>
    implements
        Built<MutualTlsAuthenticationInput,
            MutualTlsAuthenticationInputBuilder> {
  /// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
  factory MutualTlsAuthenticationInput({
    String? truststoreUri,
    String? truststoreVersion,
  }) {
    return _$MutualTlsAuthenticationInput._(
      truststoreUri: truststoreUri,
      truststoreVersion: truststoreVersion,
    );
  }

  /// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
  factory MutualTlsAuthenticationInput.build(
          [void Function(MutualTlsAuthenticationInputBuilder) updates]) =
      _$MutualTlsAuthenticationInput;

  const MutualTlsAuthenticationInput._();

  static const List<_i2.SmithySerializer> serializers = [
    MutualTlsAuthenticationInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MutualTlsAuthenticationInputBuilder b) {}

  /// An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example `s3://bucket-name/key-name`. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version. To update the truststore, you must have permissions to access the S3 object.
  String? get truststoreUri;

  /// The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket
  String? get truststoreVersion;
  @override
  List<Object?> get props => [
        truststoreUri,
        truststoreVersion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MutualTlsAuthenticationInput');
    helper.add(
      'truststoreUri',
      truststoreUri,
    );
    helper.add(
      'truststoreVersion',
      truststoreVersion,
    );
    return helper.toString();
  }
}

class MutualTlsAuthenticationInputRestJson1Serializer
    extends _i2.StructuredSmithySerializer<MutualTlsAuthenticationInput> {
  const MutualTlsAuthenticationInputRestJson1Serializer()
      : super('MutualTlsAuthenticationInput');

  @override
  Iterable<Type> get types => const [
        MutualTlsAuthenticationInput,
        _$MutualTlsAuthenticationInput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MutualTlsAuthenticationInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MutualTlsAuthenticationInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'truststoreUri':
          if (value != null) {
            result.truststoreUri = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'truststoreVersion':
          if (value != null) {
            result.truststoreVersion = (serializers.deserialize(
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
    final payload = (object as MutualTlsAuthenticationInput);
    final result = <Object?>[];
    if (payload.truststoreUri != null) {
      result
        ..add('truststoreUri')
        ..add(serializers.serialize(
          payload.truststoreUri!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.truststoreVersion != null) {
      result
        ..add('truststoreVersion')
        ..add(serializers.serialize(
          payload.truststoreVersion!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
