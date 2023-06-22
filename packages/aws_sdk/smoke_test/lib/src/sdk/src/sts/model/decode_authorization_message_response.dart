// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.decode_authorization_message_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'decode_authorization_message_response.g.dart';

/// A document that contains additional information about the authorization status of a request from an encoded message that is returned in response to an Amazon Web Services request.
abstract class DecodeAuthorizationMessageResponse
    with
        _i1.AWSEquatable<DecodeAuthorizationMessageResponse>
    implements
        Built<DecodeAuthorizationMessageResponse,
            DecodeAuthorizationMessageResponseBuilder> {
  /// A document that contains additional information about the authorization status of a request from an encoded message that is returned in response to an Amazon Web Services request.
  factory DecodeAuthorizationMessageResponse({String? decodedMessage}) {
    return _$DecodeAuthorizationMessageResponse._(
        decodedMessage: decodedMessage);
  }

  /// A document that contains additional information about the authorization status of a request from an encoded message that is returned in response to an Amazon Web Services request.
  factory DecodeAuthorizationMessageResponse.build(
          [void Function(DecodeAuthorizationMessageResponseBuilder) updates]) =
      _$DecodeAuthorizationMessageResponse;

  const DecodeAuthorizationMessageResponse._();

  /// Constructs a [DecodeAuthorizationMessageResponse] from a [payload] and [response].
  factory DecodeAuthorizationMessageResponse.fromResponse(
    DecodeAuthorizationMessageResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DecodeAuthorizationMessageResponse>>
      serializers = [DecodeAuthorizationMessageResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DecodeAuthorizationMessageResponseBuilder b) {}

  /// The API returns a response with the decoded message.
  String? get decodedMessage;
  @override
  List<Object?> get props => [decodedMessage];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DecodeAuthorizationMessageResponse')
          ..add(
            'decodedMessage',
            decodedMessage,
          );
    return helper.toString();
  }
}

class DecodeAuthorizationMessageResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DecodeAuthorizationMessageResponse> {
  const DecodeAuthorizationMessageResponseAwsQuerySerializer()
      : super('DecodeAuthorizationMessageResponse');

  @override
  Iterable<Type> get types => const [
        DecodeAuthorizationMessageResponse,
        _$DecodeAuthorizationMessageResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DecodeAuthorizationMessageResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecodeAuthorizationMessageResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DecodedMessage':
          result.decodedMessage = (serializers.deserialize(
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
    DecodeAuthorizationMessageResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DecodeAuthorizationMessageResponseResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final DecodeAuthorizationMessageResponse(:decodedMessage) = object;
    if (decodedMessage != null) {
      result$
        ..add(const _i2.XmlElementName('DecodedMessage'))
        ..add(serializers.serialize(
          decodedMessage,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
