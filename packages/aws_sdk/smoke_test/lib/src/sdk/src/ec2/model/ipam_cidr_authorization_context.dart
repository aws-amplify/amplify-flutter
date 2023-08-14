// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_cidr_authorization_context; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipam_cidr_authorization_context.g.dart';

/// A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP.
abstract class IpamCidrAuthorizationContext
    with
        _i1.AWSEquatable<IpamCidrAuthorizationContext>
    implements
        Built<IpamCidrAuthorizationContext,
            IpamCidrAuthorizationContextBuilder> {
  /// A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP.
  factory IpamCidrAuthorizationContext({
    String? message,
    String? signature,
  }) {
    return _$IpamCidrAuthorizationContext._(
      message: message,
      signature: signature,
    );
  }

  /// A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP.
  factory IpamCidrAuthorizationContext.build(
          [void Function(IpamCidrAuthorizationContextBuilder) updates]) =
      _$IpamCidrAuthorizationContext;

  const IpamCidrAuthorizationContext._();

  static const List<_i2.SmithySerializer<IpamCidrAuthorizationContext>>
      serializers = [IpamCidrAuthorizationContextEc2QuerySerializer()];

  /// The plain-text authorization message for the prefix and account.
  String? get message;

  /// The signed authorization message for the prefix and account.
  String? get signature;
  @override
  List<Object?> get props => [
        message,
        signature,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamCidrAuthorizationContext')
      ..add(
        'message',
        message,
      )
      ..add(
        'signature',
        signature,
      );
    return helper.toString();
  }
}

class IpamCidrAuthorizationContextEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IpamCidrAuthorizationContext> {
  const IpamCidrAuthorizationContextEc2QuerySerializer()
      : super('IpamCidrAuthorizationContext');

  @override
  Iterable<Type> get types => const [
        IpamCidrAuthorizationContext,
        _$IpamCidrAuthorizationContext,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamCidrAuthorizationContext deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamCidrAuthorizationContextBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Signature':
          result.signature = (serializers.deserialize(
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
    IpamCidrAuthorizationContext object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IpamCidrAuthorizationContextResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamCidrAuthorizationContext(:message, :signature) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    if (signature != null) {
      result$
        ..add(const _i2.XmlElementName('Signature'))
        ..add(serializers.serialize(
          signature,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
