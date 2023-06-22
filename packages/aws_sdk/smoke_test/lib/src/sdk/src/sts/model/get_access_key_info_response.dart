// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.get_access_key_info_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_access_key_info_response.g.dart';

abstract class GetAccessKeyInfoResponse
    with _i1.AWSEquatable<GetAccessKeyInfoResponse>
    implements
        Built<GetAccessKeyInfoResponse, GetAccessKeyInfoResponseBuilder> {
  factory GetAccessKeyInfoResponse({String? account}) {
    return _$GetAccessKeyInfoResponse._(account: account);
  }

  factory GetAccessKeyInfoResponse.build(
          [void Function(GetAccessKeyInfoResponseBuilder) updates]) =
      _$GetAccessKeyInfoResponse;

  const GetAccessKeyInfoResponse._();

  /// Constructs a [GetAccessKeyInfoResponse] from a [payload] and [response].
  factory GetAccessKeyInfoResponse.fromResponse(
    GetAccessKeyInfoResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetAccessKeyInfoResponse>>
      serializers = [GetAccessKeyInfoResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAccessKeyInfoResponseBuilder b) {}

  /// The number used to identify the Amazon Web Services account.
  String? get account;
  @override
  List<Object?> get props => [account];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetAccessKeyInfoResponse')
      ..add(
        'account',
        account,
      );
    return helper.toString();
  }
}

class GetAccessKeyInfoResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetAccessKeyInfoResponse> {
  const GetAccessKeyInfoResponseAwsQuerySerializer()
      : super('GetAccessKeyInfoResponse');

  @override
  Iterable<Type> get types => const [
        GetAccessKeyInfoResponse,
        _$GetAccessKeyInfoResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetAccessKeyInfoResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccessKeyInfoResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Account':
          result.account = (serializers.deserialize(
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
    GetAccessKeyInfoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetAccessKeyInfoResponseResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final GetAccessKeyInfoResponse(:account) = object;
    if (account != null) {
      result$
        ..add(const _i2.XmlElementName('Account'))
        ..add(serializers.serialize(
          account,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
