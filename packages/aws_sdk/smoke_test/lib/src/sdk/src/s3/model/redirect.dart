// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.redirect; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/protocol.dart' as _i2;

part 'redirect.g.dart';

/// Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
abstract class Redirect
    with _i1.AWSEquatable<Redirect>
    implements Built<Redirect, RedirectBuilder> {
  /// Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
  factory Redirect({
    String? hostName,
    String? httpRedirectCode,
    _i2.Protocol? protocol,
    String? replaceKeyPrefixWith,
    String? replaceKeyWith,
  }) {
    return _$Redirect._(
      hostName: hostName,
      httpRedirectCode: httpRedirectCode,
      protocol: protocol,
      replaceKeyPrefixWith: replaceKeyPrefixWith,
      replaceKeyWith: replaceKeyWith,
    );
  }

  /// Specifies how requests are redirected. In the event of an error, you can specify a different error code to return.
  factory Redirect.build([void Function(RedirectBuilder) updates]) = _$Redirect;

  const Redirect._();

  static const List<_i3.SmithySerializer<Redirect>> serializers = [
    RedirectRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RedirectBuilder b) {}

  /// The host name to use in the redirect request.
  String? get hostName;

  /// The HTTP redirect code to use on the response. Not required if one of the siblings is present.
  String? get httpRedirectCode;

  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
  _i2.Protocol? get protocol;

  /// The object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix `docs/` (objects in the `docs/` folder) to `documents/`, you can set a condition block with `KeyPrefixEquals` set to `docs/` and in the Redirect set `ReplaceKeyPrefixWith` to `/documents`. Not required if one of the siblings is present. Can be present only if `ReplaceKeyWith` is not provided.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String? get replaceKeyPrefixWith;

  /// The specific object key to use in the redirect request. For example, redirect request to `error.html`. Not required if one of the siblings is present. Can be present only if `ReplaceKeyPrefixWith` is not provided.
  ///
  /// Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  String? get replaceKeyWith;
  @override
  List<Object?> get props => [
        hostName,
        httpRedirectCode,
        protocol,
        replaceKeyPrefixWith,
        replaceKeyWith,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Redirect')
      ..add(
        'hostName',
        hostName,
      )
      ..add(
        'httpRedirectCode',
        httpRedirectCode,
      )
      ..add(
        'protocol',
        protocol,
      )
      ..add(
        'replaceKeyPrefixWith',
        replaceKeyPrefixWith,
      )
      ..add(
        'replaceKeyWith',
        replaceKeyWith,
      );
    return helper.toString();
  }
}

class RedirectRestXmlSerializer
    extends _i3.StructuredSmithySerializer<Redirect> {
  const RedirectRestXmlSerializer() : super('Redirect');

  @override
  Iterable<Type> get types => const [
        Redirect,
        _$Redirect,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Redirect deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RedirectBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'HostName':
          result.hostName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'HttpRedirectCode':
          result.httpRedirectCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Protocol),
          ) as _i2.Protocol);
        case 'ReplaceKeyPrefixWith':
          result.replaceKeyPrefixWith = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ReplaceKeyWith':
          result.replaceKeyWith = (serializers.deserialize(
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
    Redirect object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'Redirect',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Redirect(
      :hostName,
      :httpRedirectCode,
      :protocol,
      :replaceKeyPrefixWith,
      :replaceKeyWith
    ) = object;
    if (hostName != null) {
      result$
        ..add(const _i3.XmlElementName('HostName'))
        ..add(serializers.serialize(
          hostName,
          specifiedType: const FullType(String),
        ));
    }
    if (httpRedirectCode != null) {
      result$
        ..add(const _i3.XmlElementName('HttpRedirectCode'))
        ..add(serializers.serialize(
          httpRedirectCode,
          specifiedType: const FullType(String),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType.nullable(_i2.Protocol),
        ));
    }
    if (replaceKeyPrefixWith != null) {
      result$
        ..add(const _i3.XmlElementName('ReplaceKeyPrefixWith'))
        ..add(serializers.serialize(
          replaceKeyPrefixWith,
          specifiedType: const FullType(String),
        ));
    }
    if (replaceKeyWith != null) {
      result$
        ..add(const _i3.XmlElementName('ReplaceKeyWith'))
        ..add(serializers.serialize(
          replaceKeyWith,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
