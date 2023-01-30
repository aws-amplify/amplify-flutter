// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.mutual_tls_authentication; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'mutual_tls_authentication.g.dart';

/// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
abstract class MutualTlsAuthentication
    with _i1.AWSEquatable<MutualTlsAuthentication>
    implements Built<MutualTlsAuthentication, MutualTlsAuthenticationBuilder> {
  /// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
  factory MutualTlsAuthentication({
    String? truststoreUri,
    String? truststoreVersion,
    List<String>? truststoreWarnings,
  }) {
    return _$MutualTlsAuthentication._(
      truststoreUri: truststoreUri,
      truststoreVersion: truststoreVersion,
      truststoreWarnings:
          truststoreWarnings == null ? null : _i2.BuiltList(truststoreWarnings),
    );
  }

  /// The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway performs two-way authentication between the client and the server. Clients must present a trusted certificate to access your API.
  factory MutualTlsAuthentication.build(
          [void Function(MutualTlsAuthenticationBuilder) updates]) =
      _$MutualTlsAuthentication;

  const MutualTlsAuthentication._();

  static const List<_i3.SmithySerializer> serializers = [
    MutualTlsAuthenticationRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MutualTlsAuthenticationBuilder b) {}

  /// An Amazon S3 URL that specifies the truststore for mutual TLS authentication, for example `s3://bucket-name/key-name`. The truststore can contain certificates from public or private certificate authorities. To update the truststore, upload a new version to S3, and then update your custom domain name to use the new version. To update the truststore, you must have permissions to access the S3 object.
  String? get truststoreUri;

  /// The version of the S3 object that contains your truststore. To specify a version, you must have versioning enabled for the S3 bucket.
  String? get truststoreVersion;

  /// A list of warnings that API Gateway returns while processing your truststore. Invalid certificates produce warnings. Mutual TLS is still enabled, but some clients might not be able to access your API. To resolve warnings, upload a new truststore to S3, and then update you domain name to use the new version.
  _i2.BuiltList<String>? get truststoreWarnings;
  @override
  List<Object?> get props => [
        truststoreUri,
        truststoreVersion,
        truststoreWarnings,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MutualTlsAuthentication');
    helper.add(
      'truststoreUri',
      truststoreUri,
    );
    helper.add(
      'truststoreVersion',
      truststoreVersion,
    );
    helper.add(
      'truststoreWarnings',
      truststoreWarnings,
    );
    return helper.toString();
  }
}

class MutualTlsAuthenticationRestJson1Serializer
    extends _i3.StructuredSmithySerializer<MutualTlsAuthentication> {
  const MutualTlsAuthenticationRestJson1Serializer()
      : super('MutualTlsAuthentication');

  @override
  Iterable<Type> get types => const [
        MutualTlsAuthentication,
        _$MutualTlsAuthentication,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MutualTlsAuthentication deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MutualTlsAuthenticationBuilder();
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
        case 'truststoreWarnings':
          if (value != null) {
            result.truststoreWarnings.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
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
    final payload = (object as MutualTlsAuthentication);
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
    if (payload.truststoreWarnings != null) {
      result
        ..add('truststoreWarnings')
        ..add(serializers.serialize(
          payload.truststoreWarnings!,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
