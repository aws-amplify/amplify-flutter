// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.client_login_banner_response_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'client_login_banner_response_options.g.dart';

/// Current state of options for customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
abstract class ClientLoginBannerResponseOptions
    with
        _i1.AWSEquatable<ClientLoginBannerResponseOptions>
    implements
        Built<ClientLoginBannerResponseOptions,
            ClientLoginBannerResponseOptionsBuilder> {
  /// Current state of options for customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
  factory ClientLoginBannerResponseOptions({
    bool? enabled,
    String? bannerText,
  }) {
    enabled ??= false;
    return _$ClientLoginBannerResponseOptions._(
      enabled: enabled,
      bannerText: bannerText,
    );
  }

  /// Current state of options for customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
  factory ClientLoginBannerResponseOptions.build(
          [void Function(ClientLoginBannerResponseOptionsBuilder) updates]) =
      _$ClientLoginBannerResponseOptions;

  const ClientLoginBannerResponseOptions._();

  static const List<_i2.SmithySerializer<ClientLoginBannerResponseOptions>>
      serializers = [ClientLoginBannerResponseOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientLoginBannerResponseOptionsBuilder b) {
    b.enabled = false;
  }

  /// Current state of text banner feature.
  ///
  /// Valid values: `true | false`
  bool get enabled;

  /// Customizable text that will be displayed in a banner on Amazon Web Services provided clients when a VPN session is established. UTF-8 encoded characters only. Maximum of 1400 characters.
  String? get bannerText;
  @override
  List<Object?> get props => [
        enabled,
        bannerText,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ClientLoginBannerResponseOptions')
          ..add(
            'enabled',
            enabled,
          )
          ..add(
            'bannerText',
            bannerText,
          );
    return helper.toString();
  }
}

class ClientLoginBannerResponseOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientLoginBannerResponseOptions> {
  const ClientLoginBannerResponseOptionsEc2QuerySerializer()
      : super('ClientLoginBannerResponseOptions');

  @override
  Iterable<Type> get types => const [
        ClientLoginBannerResponseOptions,
        _$ClientLoginBannerResponseOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientLoginBannerResponseOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientLoginBannerResponseOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'bannerText':
          result.bannerText = (serializers.deserialize(
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
    ClientLoginBannerResponseOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ClientLoginBannerResponseOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ClientLoginBannerResponseOptions(:enabled, :bannerText) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    if (bannerText != null) {
      result$
        ..add(const _i2.XmlElementName('BannerText'))
        ..add(serializers.serialize(
          bannerText,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
