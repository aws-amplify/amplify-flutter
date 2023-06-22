// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_publisher_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/identity_provider.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/publisher_status.dart'
    as _i2;

part 'describe_publisher_output.g.dart';

abstract class DescribePublisherOutput
    with _i1.AWSEquatable<DescribePublisherOutput>
    implements Built<DescribePublisherOutput, DescribePublisherOutputBuilder> {
  factory DescribePublisherOutput({
    String? publisherId,
    _i2.PublisherStatus? publisherStatus,
    _i3.IdentityProvider? identityProvider,
    String? publisherProfile,
  }) {
    return _$DescribePublisherOutput._(
      publisherId: publisherId,
      publisherStatus: publisherStatus,
      identityProvider: identityProvider,
      publisherProfile: publisherProfile,
    );
  }

  factory DescribePublisherOutput.build(
          [void Function(DescribePublisherOutputBuilder) updates]) =
      _$DescribePublisherOutput;

  const DescribePublisherOutput._();

  /// Constructs a [DescribePublisherOutput] from a [payload] and [response].
  factory DescribePublisherOutput.fromResponse(
    DescribePublisherOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<DescribePublisherOutput>> serializers =
      [DescribePublisherOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePublisherOutputBuilder b) {}

  /// The ID of the extension publisher.
  String? get publisherId;

  /// Whether the publisher is verified. Currently, all registered publishers are verified.
  _i2.PublisherStatus? get publisherStatus;

  /// The type of account used as the identity provider when registering this publisher with CloudFormation.
  _i3.IdentityProvider? get identityProvider;

  /// The URL to the publisher's profile with the identity provider.
  String? get publisherProfile;
  @override
  List<Object?> get props => [
        publisherId,
        publisherStatus,
        identityProvider,
        publisherProfile,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribePublisherOutput')
      ..add(
        'publisherId',
        publisherId,
      )
      ..add(
        'publisherStatus',
        publisherStatus,
      )
      ..add(
        'identityProvider',
        identityProvider,
      )
      ..add(
        'publisherProfile',
        publisherProfile,
      );
    return helper.toString();
  }
}

class DescribePublisherOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<DescribePublisherOutput> {
  const DescribePublisherOutputAwsQuerySerializer()
      : super('DescribePublisherOutput');

  @override
  Iterable<Type> get types => const [
        DescribePublisherOutput,
        _$DescribePublisherOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribePublisherOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePublisherOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PublisherId':
          result.publisherId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublisherStatus':
          result.publisherStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.PublisherStatus),
          ) as _i2.PublisherStatus);
        case 'IdentityProvider':
          result.identityProvider = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IdentityProvider),
          ) as _i3.IdentityProvider);
        case 'PublisherProfile':
          result.publisherProfile = (serializers.deserialize(
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
    DescribePublisherOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'DescribePublisherOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribePublisherOutput(
      :publisherId,
      :publisherStatus,
      :identityProvider,
      :publisherProfile
    ) = object;
    if (publisherId != null) {
      result$
        ..add(const _i4.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          publisherId,
          specifiedType: const FullType(String),
        ));
    }
    if (publisherStatus != null) {
      result$
        ..add(const _i4.XmlElementName('PublisherStatus'))
        ..add(serializers.serialize(
          publisherStatus,
          specifiedType: const FullType.nullable(_i2.PublisherStatus),
        ));
    }
    if (identityProvider != null) {
      result$
        ..add(const _i4.XmlElementName('IdentityProvider'))
        ..add(serializers.serialize(
          identityProvider,
          specifiedType: const FullType.nullable(_i3.IdentityProvider),
        ));
    }
    if (publisherProfile != null) {
      result$
        ..add(const _i4.XmlElementName('PublisherProfile'))
        ..add(serializers.serialize(
          publisherProfile,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
