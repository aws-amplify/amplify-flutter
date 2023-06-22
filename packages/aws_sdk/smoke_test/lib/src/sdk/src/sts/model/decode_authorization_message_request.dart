// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.decode_authorization_message_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'decode_authorization_message_request.g.dart';

abstract class DecodeAuthorizationMessageRequest
    with
        _i1.HttpInput<DecodeAuthorizationMessageRequest>,
        _i2.AWSEquatable<DecodeAuthorizationMessageRequest>
    implements
        Built<DecodeAuthorizationMessageRequest,
            DecodeAuthorizationMessageRequestBuilder> {
  factory DecodeAuthorizationMessageRequest({required String encodedMessage}) {
    return _$DecodeAuthorizationMessageRequest._(
        encodedMessage: encodedMessage);
  }

  factory DecodeAuthorizationMessageRequest.build(
          [void Function(DecodeAuthorizationMessageRequestBuilder) updates]) =
      _$DecodeAuthorizationMessageRequest;

  const DecodeAuthorizationMessageRequest._();

  factory DecodeAuthorizationMessageRequest.fromRequest(
    DecodeAuthorizationMessageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DecodeAuthorizationMessageRequest>>
      serializers = [DecodeAuthorizationMessageRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DecodeAuthorizationMessageRequestBuilder b) {}

  /// The encoded message that was returned with the response.
  String get encodedMessage;
  @override
  DecodeAuthorizationMessageRequest getPayload() => this;
  @override
  List<Object?> get props => [encodedMessage];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DecodeAuthorizationMessageRequest')
          ..add(
            'encodedMessage',
            encodedMessage,
          );
    return helper.toString();
  }
}

class DecodeAuthorizationMessageRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DecodeAuthorizationMessageRequest> {
  const DecodeAuthorizationMessageRequestAwsQuerySerializer()
      : super('DecodeAuthorizationMessageRequest');

  @override
  Iterable<Type> get types => const [
        DecodeAuthorizationMessageRequest,
        _$DecodeAuthorizationMessageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DecodeAuthorizationMessageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecodeAuthorizationMessageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EncodedMessage':
          result.encodedMessage = (serializers.deserialize(
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
    DecodeAuthorizationMessageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DecodeAuthorizationMessageRequestResponse',
        _i1.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final DecodeAuthorizationMessageRequest(:encodedMessage) = object;
    result$
      ..add(const _i1.XmlElementName('EncodedMessage'))
      ..add(serializers.serialize(
        encodedMessage,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
