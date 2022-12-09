// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.tls_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'tls_config.g.dart';

/// Specifies the TLS configuration for an integration.
abstract class TlsConfig
    with _i1.AWSEquatable<TlsConfig>
    implements Built<TlsConfig, TlsConfigBuilder> {
  /// Specifies the TLS configuration for an integration.
  factory TlsConfig({bool? insecureSkipVerification}) {
    return _$TlsConfig._(insecureSkipVerification: insecureSkipVerification);
  }

  /// Specifies the TLS configuration for an integration.
  factory TlsConfig.build([void Function(TlsConfigBuilder) updates]) =
      _$TlsConfig;

  const TlsConfig._();

  static const List<_i2.SmithySerializer> serializers = [
    TlsConfigRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TlsConfigBuilder b) {}

  /// Specifies whether or not API Gateway skips verification that the certificate for an integration endpoint is issued by a supported certificate authority. This isn’t recommended, but it enables you to use certificates that are signed by private certificate authorities, or certificates that are self-signed. If enabled, API Gateway still performs basic certificate validation, which includes checking the certificate's expiration date, hostname, and presence of a root certificate authority. Supported only for `HTTP` and `HTTP_PROXY` integrations.
  ///
  /// Enabling `insecureSkipVerification` isn't recommended, especially for integrations with public HTTPS endpoints. If you enable `insecureSkipVerification`, you increase the risk of man-in-the-middle attacks.
  bool? get insecureSkipVerification;
  @override
  List<Object?> get props => [insecureSkipVerification];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TlsConfig');
    helper.add(
      'insecureSkipVerification',
      insecureSkipVerification,
    );
    return helper.toString();
  }
}

class TlsConfigRestJson1Serializer
    extends _i2.StructuredSmithySerializer<TlsConfig> {
  const TlsConfigRestJson1Serializer() : super('TlsConfig');

  @override
  Iterable<Type> get types => const [
        TlsConfig,
        _$TlsConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  TlsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TlsConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'insecureSkipVerification':
          if (value != null) {
            result.insecureSkipVerification = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as TlsConfig);
    final result = <Object?>[];
    if (payload.insecureSkipVerification != null) {
      result
        ..add('insecureSkipVerification')
        ..add(serializers.serialize(
          payload.insecureSkipVerification!,
          specifiedType: const FullType(bool),
        ));
    }
    return result;
  }
}
