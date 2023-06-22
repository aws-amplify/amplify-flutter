// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.public_endpoint; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/channel_type.dart'
    as _i2;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_demographic.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_location.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_user.dart'
    as _i5;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;

part 'public_endpoint.g.dart';

/// Specifies the properties and attributes of an endpoint that's associated with an event.
abstract class PublicEndpoint
    with _i1.AWSEquatable<PublicEndpoint>
    implements Built<PublicEndpoint, PublicEndpointBuilder> {
  /// Specifies the properties and attributes of an endpoint that's associated with an event.
  factory PublicEndpoint({
    String? address,
    Map<String, List<String>>? attributes,
    _i2.ChannelType? channelType,
    _i3.EndpointDemographic? demographic,
    String? effectiveDate,
    String? endpointStatus,
    _i4.EndpointLocation? location,
    Map<String, double>? metrics,
    String? optOut,
    String? requestId,
    _i5.EndpointUser? user,
  }) {
    return _$PublicEndpoint._(
      address: address,
      attributes: attributes == null ? null : _i6.BuiltListMultimap(attributes),
      channelType: channelType,
      demographic: demographic,
      effectiveDate: effectiveDate,
      endpointStatus: endpointStatus,
      location: location,
      metrics: metrics == null ? null : _i6.BuiltMap(metrics),
      optOut: optOut,
      requestId: requestId,
      user: user,
    );
  }

  /// Specifies the properties and attributes of an endpoint that's associated with an event.
  factory PublicEndpoint.build([void Function(PublicEndpointBuilder) updates]) =
      _$PublicEndpoint;

  const PublicEndpoint._();

  static const List<_i7.SmithySerializer<PublicEndpoint>> serializers = [
    PublicEndpointRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PublicEndpointBuilder b) {}

  /// The unique identifier for the recipient, such as a device token, email address, or mobile phone number.
  String? get address;

  /// One or more custom attributes that describe the endpoint by associating a name with an array of values. You can use these attributes as filter criteria when you create segments.
  _i6.BuiltListMultimap<String, String>? get attributes;

  /// The channel that's used when sending messages or push notifications to the endpoint.
  _i2.ChannelType? get channelType;

  /// The demographic information for the endpoint, such as the time zone and platform.
  _i3.EndpointDemographic? get demographic;

  /// The date and time, in ISO 8601 format, when the endpoint was last updated.
  String? get effectiveDate;

  /// Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.
  ///
  /// Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.
  String? get endpointStatus;

  /// The geographic information for the endpoint.
  _i4.EndpointLocation? get location;

  /// One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.
  _i6.BuiltMap<String, double>? get metrics;

  /// Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.
  String? get optOut;

  /// A unique identifier that's generated each time the endpoint is updated.
  String? get requestId;

  /// One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.
  _i5.EndpointUser? get user;
  @override
  List<Object?> get props => [
        address,
        attributes,
        channelType,
        demographic,
        effectiveDate,
        endpointStatus,
        location,
        metrics,
        optOut,
        requestId,
        user,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PublicEndpoint')
      ..add(
        'address',
        address,
      )
      ..add(
        'attributes',
        attributes,
      )
      ..add(
        'channelType',
        channelType,
      )
      ..add(
        'demographic',
        demographic,
      )
      ..add(
        'effectiveDate',
        effectiveDate,
      )
      ..add(
        'endpointStatus',
        endpointStatus,
      )
      ..add(
        'location',
        location,
      )
      ..add(
        'metrics',
        metrics,
      )
      ..add(
        'optOut',
        optOut,
      )
      ..add(
        'requestId',
        requestId,
      )
      ..add(
        'user',
        user,
      );
    return helper.toString();
  }
}

class PublicEndpointRestJson1Serializer
    extends _i7.StructuredSmithySerializer<PublicEndpoint> {
  const PublicEndpointRestJson1Serializer() : super('PublicEndpoint');

  @override
  Iterable<Type> get types => const [
        PublicEndpoint,
        _$PublicEndpoint,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  PublicEndpoint deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublicEndpointBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Address':
          result.address = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Attributes':
          result.attributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltListMultimap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i6.BuiltListMultimap<String, String>));
        case 'ChannelType':
          result.channelType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ChannelType),
          ) as _i2.ChannelType);
        case 'Demographic':
          result.demographic.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EndpointDemographic),
          ) as _i3.EndpointDemographic));
        case 'EffectiveDate':
          result.effectiveDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EndpointStatus':
          result.endpointStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Location':
          result.location.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.EndpointLocation),
          ) as _i4.EndpointLocation));
        case 'Metrics':
          result.metrics.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(double),
              ],
            ),
          ) as _i6.BuiltMap<String, double>));
        case 'OptOut':
          result.optOut = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RequestId':
          result.requestId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'User':
          result.user.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.EndpointUser),
          ) as _i5.EndpointUser));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PublicEndpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PublicEndpoint(
      :address,
      :attributes,
      :channelType,
      :demographic,
      :effectiveDate,
      :endpointStatus,
      :location,
      :metrics,
      :optOut,
      :requestId,
      :user
    ) = object;
    if (address != null) {
      result$
        ..add('Address')
        ..add(serializers.serialize(
          address,
          specifiedType: const FullType(String),
        ));
    }
    if (attributes != null) {
      result$
        ..add('Attributes')
        ..add(serializers.serialize(
          attributes,
          specifiedType: const FullType(
            _i6.BuiltListMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (channelType != null) {
      result$
        ..add('ChannelType')
        ..add(serializers.serialize(
          channelType,
          specifiedType: const FullType(_i2.ChannelType),
        ));
    }
    if (demographic != null) {
      result$
        ..add('Demographic')
        ..add(serializers.serialize(
          demographic,
          specifiedType: const FullType(_i3.EndpointDemographic),
        ));
    }
    if (effectiveDate != null) {
      result$
        ..add('EffectiveDate')
        ..add(serializers.serialize(
          effectiveDate,
          specifiedType: const FullType(String),
        ));
    }
    if (endpointStatus != null) {
      result$
        ..add('EndpointStatus')
        ..add(serializers.serialize(
          endpointStatus,
          specifiedType: const FullType(String),
        ));
    }
    if (location != null) {
      result$
        ..add('Location')
        ..add(serializers.serialize(
          location,
          specifiedType: const FullType(_i4.EndpointLocation),
        ));
    }
    if (metrics != null) {
      result$
        ..add('Metrics')
        ..add(serializers.serialize(
          metrics,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(double),
            ],
          ),
        ));
    }
    if (optOut != null) {
      result$
        ..add('OptOut')
        ..add(serializers.serialize(
          optOut,
          specifiedType: const FullType(String),
        ));
    }
    if (requestId != null) {
      result$
        ..add('RequestId')
        ..add(serializers.serialize(
          requestId,
          specifiedType: const FullType(String),
        ));
    }
    if (user != null) {
      result$
        ..add('User')
        ..add(serializers.serialize(
          user,
          specifiedType: const FullType(_i5.EndpointUser),
        ));
    }
    return result$;
  }
}
