// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.set_security_token_service_preferences_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/global_endpoint_token_version.dart'
    as _i3;

part 'set_security_token_service_preferences_request.g.dart';

abstract class SetSecurityTokenServicePreferencesRequest
    with
        _i1.HttpInput<SetSecurityTokenServicePreferencesRequest>,
        _i2.AWSEquatable<SetSecurityTokenServicePreferencesRequest>
    implements
        Built<SetSecurityTokenServicePreferencesRequest,
            SetSecurityTokenServicePreferencesRequestBuilder> {
  factory SetSecurityTokenServicePreferencesRequest(
      {required _i3.GlobalEndpointTokenVersion globalEndpointTokenVersion}) {
    return _$SetSecurityTokenServicePreferencesRequest._(
        globalEndpointTokenVersion: globalEndpointTokenVersion);
  }

  factory SetSecurityTokenServicePreferencesRequest.build(
      [void Function(SetSecurityTokenServicePreferencesRequestBuilder)
          updates]) = _$SetSecurityTokenServicePreferencesRequest;

  const SetSecurityTokenServicePreferencesRequest._();

  factory SetSecurityTokenServicePreferencesRequest.fromRequest(
    SetSecurityTokenServicePreferencesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<SetSecurityTokenServicePreferencesRequest>>
      serializers = [
    SetSecurityTokenServicePreferencesRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetSecurityTokenServicePreferencesRequestBuilder b) {}

  /// The version of the global endpoint token. Version 1 tokens are valid only in Amazon Web Services Regions that are available by default. These tokens do not work in manually enabled Regions, such as Asia Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However, version 2 tokens are longer and might affect systems where you temporarily store tokens.
  ///
  /// For information, see [Activating and deactivating STS in an Amazon Web Services Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html) in the _IAM User Guide_.
  _i3.GlobalEndpointTokenVersion get globalEndpointTokenVersion;
  @override
  SetSecurityTokenServicePreferencesRequest getPayload() => this;
  @override
  List<Object?> get props => [globalEndpointTokenVersion];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SetSecurityTokenServicePreferencesRequest')
          ..add(
            'globalEndpointTokenVersion',
            globalEndpointTokenVersion,
          );
    return helper.toString();
  }
}

class SetSecurityTokenServicePreferencesRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<SetSecurityTokenServicePreferencesRequest> {
  const SetSecurityTokenServicePreferencesRequestAwsQuerySerializer()
      : super('SetSecurityTokenServicePreferencesRequest');

  @override
  Iterable<Type> get types => const [
        SetSecurityTokenServicePreferencesRequest,
        _$SetSecurityTokenServicePreferencesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SetSecurityTokenServicePreferencesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetSecurityTokenServicePreferencesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GlobalEndpointTokenVersion':
          result.globalEndpointTokenVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.GlobalEndpointTokenVersion),
          ) as _i3.GlobalEndpointTokenVersion);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SetSecurityTokenServicePreferencesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SetSecurityTokenServicePreferencesRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final SetSecurityTokenServicePreferencesRequest(
      :globalEndpointTokenVersion
    ) = object;
    result$
      ..add(const _i1.XmlElementName('GlobalEndpointTokenVersion'))
      ..add(serializers.serialize(
        globalEndpointTokenVersion,
        specifiedType: const FullType.nullable(_i3.GlobalEndpointTokenVersion),
      ));
    return result$;
  }
}
