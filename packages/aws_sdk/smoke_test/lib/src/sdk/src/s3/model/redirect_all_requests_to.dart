// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.redirect_all_requests_to; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/protocol.dart' as _i2;

part 'redirect_all_requests_to.g.dart';

/// Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
abstract class RedirectAllRequestsTo
    with _i1.AWSEquatable<RedirectAllRequestsTo>
    implements Built<RedirectAllRequestsTo, RedirectAllRequestsToBuilder> {
  /// Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
  factory RedirectAllRequestsTo({
    required String hostName,
    _i2.Protocol? protocol,
  }) {
    return _$RedirectAllRequestsTo._(
      hostName: hostName,
      protocol: protocol,
    );
  }

  /// Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
  factory RedirectAllRequestsTo.build(
          [void Function(RedirectAllRequestsToBuilder) updates]) =
      _$RedirectAllRequestsTo;

  const RedirectAllRequestsTo._();

  static const List<_i3.SmithySerializer> serializers = [
    RedirectAllRequestsToRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RedirectAllRequestsToBuilder b) {}

  /// Name of the host where requests are redirected.
  String get hostName;

  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
  _i2.Protocol? get protocol;
  @override
  List<Object?> get props => [
        hostName,
        protocol,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RedirectAllRequestsTo');
    helper.add(
      'hostName',
      hostName,
    );
    helper.add(
      'protocol',
      protocol,
    );
    return helper.toString();
  }
}

class RedirectAllRequestsToRestXmlSerializer
    extends _i3.StructuredSmithySerializer<RedirectAllRequestsTo> {
  const RedirectAllRequestsToRestXmlSerializer()
      : super('RedirectAllRequestsTo');

  @override
  Iterable<Type> get types => const [
        RedirectAllRequestsTo,
        _$RedirectAllRequestsTo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  RedirectAllRequestsTo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RedirectAllRequestsToBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'HostName':
          result.hostName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Protocol':
          if (value != null) {
            result.protocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Protocol),
            ) as _i2.Protocol);
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
    final payload = (object as RedirectAllRequestsTo);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RedirectAllRequestsTo',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('HostName'))
      ..add(serializers.serialize(
        payload.hostName,
        specifiedType: const FullType(String),
      ));
    if (payload.protocol != null) {
      result
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          payload.protocol!,
          specifiedType: const FullType.nullable(_i2.Protocol),
        ));
    }
    return result;
  }
}
