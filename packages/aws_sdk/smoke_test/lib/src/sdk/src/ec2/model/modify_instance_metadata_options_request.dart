// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_instance_metadata_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/http_tokens_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_endpoint_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_protocol_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_tags_state.dart';

part 'modify_instance_metadata_options_request.g.dart';

abstract class ModifyInstanceMetadataOptionsRequest
    with
        _i1.HttpInput<ModifyInstanceMetadataOptionsRequest>,
        _i2.AWSEquatable<ModifyInstanceMetadataOptionsRequest>
    implements
        Built<ModifyInstanceMetadataOptionsRequest,
            ModifyInstanceMetadataOptionsRequestBuilder> {
  factory ModifyInstanceMetadataOptionsRequest({
    String? instanceId,
    HttpTokensState? httpTokens,
    int? httpPutResponseHopLimit,
    InstanceMetadataEndpointState? httpEndpoint,
    bool? dryRun,
    InstanceMetadataProtocolState? httpProtocolIpv6,
    InstanceMetadataTagsState? instanceMetadataTags,
  }) {
    httpPutResponseHopLimit ??= 0;
    dryRun ??= false;
    return _$ModifyInstanceMetadataOptionsRequest._(
      instanceId: instanceId,
      httpTokens: httpTokens,
      httpPutResponseHopLimit: httpPutResponseHopLimit,
      httpEndpoint: httpEndpoint,
      dryRun: dryRun,
      httpProtocolIpv6: httpProtocolIpv6,
      instanceMetadataTags: instanceMetadataTags,
    );
  }

  factory ModifyInstanceMetadataOptionsRequest.build(
      [void Function(ModifyInstanceMetadataOptionsRequestBuilder)
          updates]) = _$ModifyInstanceMetadataOptionsRequest;

  const ModifyInstanceMetadataOptionsRequest._();

  factory ModifyInstanceMetadataOptionsRequest.fromRequest(
    ModifyInstanceMetadataOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyInstanceMetadataOptionsRequest>>
      serializers = [ModifyInstanceMetadataOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceMetadataOptionsRequestBuilder b) {
    b
      ..httpPutResponseHopLimit = 0
      ..dryRun = false;
  }

  /// The ID of the instance.
  String? get instanceId;

  /// IMDSv2 uses token-backed sessions. Set the use of HTTP tokens to `optional` (in other words, set the use of IMDSv2 to `optional`) or `required` (in other words, set the use of IMDSv2 to `required`).
  ///
  /// *   `optional` \- When IMDSv2 is optional, you can choose to retrieve instance metadata with or without a session token in your request. If you retrieve the IAM role credentials without a token, the IMDSv1 role credentials are returned. If you retrieve the IAM role credentials using a valid session token, the IMDSv2 role credentials are returned.
  ///
  /// *   `required` \- When IMDSv2 is required, you must send a session token with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns IMDSv2 credentials; IMDSv1 credentials are not available.
  ///
  ///
  /// Default: `optional`
  HttpTokensState? get httpTokens;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. If no parameter is specified, the existing state is maintained.
  ///
  /// Possible values: Integers from 1 to 64
  int get httpPutResponseHopLimit;

  /// Enables or disables the HTTP metadata endpoint on your instances. If this parameter is not specified, the existing state is maintained.
  ///
  /// If you specify a value of `disabled`, you cannot access your instance metadata.
  InstanceMetadataEndpointState? get httpEndpoint;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Enables or disables the IPv6 endpoint for the instance metadata service. Applies only if you enabled the HTTP metadata endpoint.
  InstanceMetadataProtocolState? get httpProtocolIpv6;

  /// Set to `enabled` to allow access to instance tags from the instance metadata. Set to `disabled` to turn off access to instance tags from the instance metadata. For more information, see [Work with instance tags using the instance metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS).
  ///
  /// Default: `disabled`
  InstanceMetadataTagsState? get instanceMetadataTags;
  @override
  ModifyInstanceMetadataOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        httpTokens,
        httpPutResponseHopLimit,
        httpEndpoint,
        dryRun,
        httpProtocolIpv6,
        instanceMetadataTags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceMetadataOptionsRequest')
          ..add(
            'instanceId',
            instanceId,
          )
          ..add(
            'httpTokens',
            httpTokens,
          )
          ..add(
            'httpPutResponseHopLimit',
            httpPutResponseHopLimit,
          )
          ..add(
            'httpEndpoint',
            httpEndpoint,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'httpProtocolIpv6',
            httpProtocolIpv6,
          )
          ..add(
            'instanceMetadataTags',
            instanceMetadataTags,
          );
    return helper.toString();
  }
}

class ModifyInstanceMetadataOptionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyInstanceMetadataOptionsRequest> {
  const ModifyInstanceMetadataOptionsRequestEc2QuerySerializer()
      : super('ModifyInstanceMetadataOptionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceMetadataOptionsRequest,
        _$ModifyInstanceMetadataOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceMetadataOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceMetadataOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'HttpTokens':
          result.httpTokens = (serializers.deserialize(
            value,
            specifiedType: const FullType(HttpTokensState),
          ) as HttpTokensState);
        case 'HttpPutResponseHopLimit':
          result.httpPutResponseHopLimit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'HttpEndpoint':
          result.httpEndpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceMetadataEndpointState),
          ) as InstanceMetadataEndpointState);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'HttpProtocolIpv6':
          result.httpProtocolIpv6 = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceMetadataProtocolState),
          ) as InstanceMetadataProtocolState);
        case 'InstanceMetadataTags':
          result.instanceMetadataTags = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceMetadataTagsState),
          ) as InstanceMetadataTagsState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyInstanceMetadataOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceMetadataOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyInstanceMetadataOptionsRequest(
      :instanceId,
      :httpTokens,
      :httpPutResponseHopLimit,
      :httpEndpoint,
      :dryRun,
      :httpProtocolIpv6,
      :instanceMetadataTags
    ) = object;
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (httpTokens != null) {
      result$
        ..add(const _i1.XmlElementName('HttpTokens'))
        ..add(serializers.serialize(
          httpTokens,
          specifiedType: const FullType(HttpTokensState),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('HttpPutResponseHopLimit'))
      ..add(serializers.serialize(
        httpPutResponseHopLimit,
        specifiedType: const FullType(int),
      ));
    if (httpEndpoint != null) {
      result$
        ..add(const _i1.XmlElementName('HttpEndpoint'))
        ..add(serializers.serialize(
          httpEndpoint,
          specifiedType: const FullType(InstanceMetadataEndpointState),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (httpProtocolIpv6 != null) {
      result$
        ..add(const _i1.XmlElementName('HttpProtocolIpv6'))
        ..add(serializers.serialize(
          httpProtocolIpv6,
          specifiedType: const FullType(InstanceMetadataProtocolState),
        ));
    }
    if (instanceMetadataTags != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceMetadataTags'))
        ..add(serializers.serialize(
          instanceMetadataTags,
          specifiedType: const FullType(InstanceMetadataTagsState),
        ));
    }
    return result$;
  }
}
