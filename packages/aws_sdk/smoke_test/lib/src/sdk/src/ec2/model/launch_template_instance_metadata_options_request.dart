// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_instance_metadata_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_http_tokens_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_endpoint_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_protocol_ipv6.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_tags_state.dart';

part 'launch_template_instance_metadata_options_request.g.dart';

/// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
abstract class LaunchTemplateInstanceMetadataOptionsRequest
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMetadataOptionsRequest>
    implements
        Built<LaunchTemplateInstanceMetadataOptionsRequest,
            LaunchTemplateInstanceMetadataOptionsRequestBuilder> {
  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory LaunchTemplateInstanceMetadataOptionsRequest({
    LaunchTemplateHttpTokensState? httpTokens,
    int? httpPutResponseHopLimit,
    LaunchTemplateInstanceMetadataEndpointState? httpEndpoint,
    LaunchTemplateInstanceMetadataProtocolIpv6? httpProtocolIpv6,
    LaunchTemplateInstanceMetadataTagsState? instanceMetadataTags,
  }) {
    httpPutResponseHopLimit ??= 0;
    return _$LaunchTemplateInstanceMetadataOptionsRequest._(
      httpTokens: httpTokens,
      httpPutResponseHopLimit: httpPutResponseHopLimit,
      httpEndpoint: httpEndpoint,
      httpProtocolIpv6: httpProtocolIpv6,
      instanceMetadataTags: instanceMetadataTags,
    );
  }

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory LaunchTemplateInstanceMetadataOptionsRequest.build(
      [void Function(LaunchTemplateInstanceMetadataOptionsRequestBuilder)
          updates]) = _$LaunchTemplateInstanceMetadataOptionsRequest;

  const LaunchTemplateInstanceMetadataOptionsRequest._();

  static const List<
          _i2.SmithySerializer<LaunchTemplateInstanceMetadataOptionsRequest>>
      serializers = [
    LaunchTemplateInstanceMetadataOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateInstanceMetadataOptionsRequestBuilder b) {
    b.httpPutResponseHopLimit = 0;
  }

  /// IMDSv2 uses token-backed sessions. Set the use of HTTP tokens to `optional` (in other words, set the use of IMDSv2 to `optional`) or `required` (in other words, set the use of IMDSv2 to `required`).
  ///
  /// *   `optional` \- When IMDSv2 is optional, you can choose to retrieve instance metadata with or without a session token in your request. If you retrieve the IAM role credentials without a token, the IMDSv1 role credentials are returned. If you retrieve the IAM role credentials using a valid session token, the IMDSv2 role credentials are returned.
  ///
  /// *   `required` \- When IMDSv2 is required, you must send a session token with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns IMDSv2 credentials; IMDSv1 credentials are not available.
  ///
  ///
  /// Default: `optional`
  LaunchTemplateHttpTokensState? get httpTokens;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel.
  ///
  /// Default: `1`
  ///
  /// Possible values: Integers from 1 to 64
  int get httpPutResponseHopLimit;

  /// Enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the default state is `enabled`.
  ///
  /// If you specify a value of `disabled`, you will not be able to access your instance metadata.
  LaunchTemplateInstanceMetadataEndpointState? get httpEndpoint;

  /// Enables or disables the IPv6 endpoint for the instance metadata service.
  ///
  /// Default: `disabled`
  LaunchTemplateInstanceMetadataProtocolIpv6? get httpProtocolIpv6;

  /// Set to `enabled` to allow access to instance tags from the instance metadata. Set to `disabled` to turn off access to instance tags from the instance metadata. For more information, see [Work with instance tags using the instance metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS).
  ///
  /// Default: `disabled`
  LaunchTemplateInstanceMetadataTagsState? get instanceMetadataTags;
  @override
  List<Object?> get props => [
        httpTokens,
        httpPutResponseHopLimit,
        httpEndpoint,
        httpProtocolIpv6,
        instanceMetadataTags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateInstanceMetadataOptionsRequest')
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

class LaunchTemplateInstanceMetadataOptionsRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateInstanceMetadataOptionsRequest> {
  const LaunchTemplateInstanceMetadataOptionsRequestEc2QuerySerializer()
      : super('LaunchTemplateInstanceMetadataOptionsRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMetadataOptionsRequest,
        _$LaunchTemplateInstanceMetadataOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMetadataOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMetadataOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'HttpTokens':
          result.httpTokens = (serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateHttpTokensState),
          ) as LaunchTemplateHttpTokensState);
        case 'HttpPutResponseHopLimit':
          result.httpPutResponseHopLimit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'HttpEndpoint':
          result.httpEndpoint = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMetadataEndpointState),
          ) as LaunchTemplateInstanceMetadataEndpointState);
        case 'HttpProtocolIpv6':
          result.httpProtocolIpv6 = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMetadataProtocolIpv6),
          ) as LaunchTemplateInstanceMetadataProtocolIpv6);
        case 'InstanceMetadataTags':
          result.instanceMetadataTags = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMetadataTagsState),
          ) as LaunchTemplateInstanceMetadataTagsState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchTemplateInstanceMetadataOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateInstanceMetadataOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateInstanceMetadataOptionsRequest(
      :httpTokens,
      :httpPutResponseHopLimit,
      :httpEndpoint,
      :httpProtocolIpv6,
      :instanceMetadataTags
    ) = object;
    if (httpTokens != null) {
      result$
        ..add(const _i2.XmlElementName('HttpTokens'))
        ..add(serializers.serialize(
          httpTokens,
          specifiedType: const FullType(LaunchTemplateHttpTokensState),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('HttpPutResponseHopLimit'))
      ..add(serializers.serialize(
        httpPutResponseHopLimit,
        specifiedType: const FullType(int),
      ));
    if (httpEndpoint != null) {
      result$
        ..add(const _i2.XmlElementName('HttpEndpoint'))
        ..add(serializers.serialize(
          httpEndpoint,
          specifiedType:
              const FullType(LaunchTemplateInstanceMetadataEndpointState),
        ));
    }
    if (httpProtocolIpv6 != null) {
      result$
        ..add(const _i2.XmlElementName('HttpProtocolIpv6'))
        ..add(serializers.serialize(
          httpProtocolIpv6,
          specifiedType:
              const FullType(LaunchTemplateInstanceMetadataProtocolIpv6),
        ));
    }
    if (instanceMetadataTags != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceMetadataTags'))
        ..add(serializers.serialize(
          instanceMetadataTags,
          specifiedType:
              const FullType(LaunchTemplateInstanceMetadataTagsState),
        ));
    }
    return result$;
  }
}
