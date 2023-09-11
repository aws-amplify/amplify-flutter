// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_instance_metadata_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_http_tokens_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_endpoint_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_protocol_ipv6.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_tags_state.dart';

part 'launch_template_instance_metadata_options.g.dart';

/// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
abstract class LaunchTemplateInstanceMetadataOptions
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMetadataOptions>
    implements
        Built<LaunchTemplateInstanceMetadataOptions,
            LaunchTemplateInstanceMetadataOptionsBuilder> {
  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory LaunchTemplateInstanceMetadataOptions({
    LaunchTemplateInstanceMetadataOptionsState? state,
    LaunchTemplateHttpTokensState? httpTokens,
    int? httpPutResponseHopLimit,
    LaunchTemplateInstanceMetadataEndpointState? httpEndpoint,
    LaunchTemplateInstanceMetadataProtocolIpv6? httpProtocolIpv6,
    LaunchTemplateInstanceMetadataTagsState? instanceMetadataTags,
  }) {
    httpPutResponseHopLimit ??= 0;
    return _$LaunchTemplateInstanceMetadataOptions._(
      state: state,
      httpTokens: httpTokens,
      httpPutResponseHopLimit: httpPutResponseHopLimit,
      httpEndpoint: httpEndpoint,
      httpProtocolIpv6: httpProtocolIpv6,
      instanceMetadataTags: instanceMetadataTags,
    );
  }

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory LaunchTemplateInstanceMetadataOptions.build(
      [void Function(LaunchTemplateInstanceMetadataOptionsBuilder)
          updates]) = _$LaunchTemplateInstanceMetadataOptions;

  const LaunchTemplateInstanceMetadataOptions._();

  static const List<_i2.SmithySerializer<LaunchTemplateInstanceMetadataOptions>>
      serializers = [LaunchTemplateInstanceMetadataOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateInstanceMetadataOptionsBuilder b) {
    b.httpPutResponseHopLimit = 0;
  }

  /// The state of the metadata option changes.
  ///
  /// `pending` \- The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection.
  ///
  /// `applied` \- The metadata options have been successfully applied on the instance.
  LaunchTemplateInstanceMetadataOptionsState? get state;

  /// Indicates whether IMDSv2 is `optional` or `required`.
  ///
  /// `optional` \- When IMDSv2 is optional, you can choose to retrieve instance metadata with or without a session token in your request. If you retrieve the IAM role credentials without a token, the IMDSv1 role credentials are returned. If you retrieve the IAM role credentials using a valid session token, the IMDSv2 role credentials are returned.
  ///
  /// `required` \- When IMDSv2 is required, you must send a session token with any instance metadata retrieval requests. In this state, retrieving the IAM role credentials always returns IMDSv2 credentials; IMDSv1 credentials are not available.
  ///
  /// Default: `optional`
  LaunchTemplateHttpTokensState? get httpTokens;

  /// The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel.
  ///
  /// Default: 1
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
        state,
        httpTokens,
        httpPutResponseHopLimit,
        httpEndpoint,
        httpProtocolIpv6,
        instanceMetadataTags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateInstanceMetadataOptions')
          ..add(
            'state',
            state,
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

class LaunchTemplateInstanceMetadataOptionsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateInstanceMetadataOptions> {
  const LaunchTemplateInstanceMetadataOptionsEc2QuerySerializer()
      : super('LaunchTemplateInstanceMetadataOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMetadataOptions,
        _$LaunchTemplateInstanceMetadataOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMetadataOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMetadataOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMetadataOptionsState),
          ) as LaunchTemplateInstanceMetadataOptionsState);
        case 'httpTokens':
          result.httpTokens = (serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateHttpTokensState),
          ) as LaunchTemplateHttpTokensState);
        case 'httpPutResponseHopLimit':
          result.httpPutResponseHopLimit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'httpEndpoint':
          result.httpEndpoint = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMetadataEndpointState),
          ) as LaunchTemplateInstanceMetadataEndpointState);
        case 'httpProtocolIpv6':
          result.httpProtocolIpv6 = (serializers.deserialize(
            value,
            specifiedType:
                const FullType(LaunchTemplateInstanceMetadataProtocolIpv6),
          ) as LaunchTemplateInstanceMetadataProtocolIpv6);
        case 'instanceMetadataTags':
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
    LaunchTemplateInstanceMetadataOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateInstanceMetadataOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateInstanceMetadataOptions(
      :state,
      :httpTokens,
      :httpPutResponseHopLimit,
      :httpEndpoint,
      :httpProtocolIpv6,
      :instanceMetadataTags
    ) = object;
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType(LaunchTemplateInstanceMetadataOptionsState),
        ));
    }
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
