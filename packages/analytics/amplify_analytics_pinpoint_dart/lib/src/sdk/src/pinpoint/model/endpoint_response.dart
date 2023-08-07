// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/channel_type.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_demographic.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_location.dart';
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_user.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'endpoint_response.g.dart';

/// Provides information about the channel type and other settings for an endpoint.
abstract class EndpointResponse
    with _i1.AWSEquatable<EndpointResponse>
    implements Built<EndpointResponse, EndpointResponseBuilder> {
  /// Provides information about the channel type and other settings for an endpoint.
  factory EndpointResponse({
    String? address,
    String? applicationId,
    Map<String, List<String>>? attributes,
    ChannelType? channelType,
    String? cohortId,
    String? creationDate,
    EndpointDemographic? demographic,
    String? effectiveDate,
    String? endpointStatus,
    String? id,
    EndpointLocation? location,
    Map<String, double>? metrics,
    String? optOut,
    String? requestId,
    EndpointUser? user,
  }) {
    return _$EndpointResponse._(
      address: address,
      applicationId: applicationId,
      attributes: attributes == null ? null : _i2.BuiltListMultimap(attributes),
      channelType: channelType,
      cohortId: cohortId,
      creationDate: creationDate,
      demographic: demographic,
      effectiveDate: effectiveDate,
      endpointStatus: endpointStatus,
      id: id,
      location: location,
      metrics: metrics == null ? null : _i2.BuiltMap(metrics),
      optOut: optOut,
      requestId: requestId,
      user: user,
    );
  }

  /// Provides information about the channel type and other settings for an endpoint.
  factory EndpointResponse.build(
      [void Function(EndpointResponseBuilder) updates]) = _$EndpointResponse;

  const EndpointResponse._();

  static const List<_i3.SmithySerializer<EndpointResponse>> serializers = [
    EndpointResponseRestJson1Serializer()
  ];

  /// The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For example, the address for a push-notification channel is typically the token provided by a push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. The address for the SMS channel is a phone number in E.164 format, such as +12065550100. The address for the email channel is an email address.
  String? get address;

  /// The unique identifier for the application that's associated with the endpoint.
  String? get applicationId;

  /// One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: \["Science", "Music", "Travel"\]. You can use these attributes as filter criteria when you create segments.
  _i2.BuiltListMultimap<String, String>? get attributes;

  /// The channel that's used when sending messages or push notifications to the endpoint.
  ChannelType? get channelType;

  /// A number from 0-99 that represents the cohort that the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an application. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for campaigns.
  String? get cohortId;

  /// The date and time, in ISO 8601 format, when the endpoint was created.
  String? get creationDate;

  /// The demographic information for the endpoint, such as the time zone and platform.
  EndpointDemographic? get demographic;

  /// The date and time, in ISO 8601 format, when the endpoint was last updated.
  String? get effectiveDate;

  /// Specifies whether messages or push notifications are sent to the endpoint. Possible values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.
  ///
  /// Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.
  String? get endpointStatus;

  /// The unique identifier that you assigned to the endpoint. The identifier should be a globally unique identifier (GUID) to ensure that it doesn't conflict with other endpoint identifiers that are associated with the application.
  String? get id;

  /// The geographic information for the endpoint.
  EndpointLocation? get location;

  /// One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.
  _i2.BuiltMap<String, double>? get metrics;

  /// Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.
  String? get optOut;

  /// The unique identifier for the most recent request to update the endpoint.
  String? get requestId;

  /// One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.
  EndpointUser? get user;
  @override
  List<Object?> get props => [
        address,
        applicationId,
        attributes,
        channelType,
        cohortId,
        creationDate,
        demographic,
        effectiveDate,
        endpointStatus,
        id,
        location,
        metrics,
        optOut,
        requestId,
        user,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndpointResponse')
      ..add(
        'address',
        address,
      )
      ..add(
        'applicationId',
        applicationId,
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
        'cohortId',
        cohortId,
      )
      ..add(
        'creationDate',
        creationDate,
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
        'id',
        id,
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

class EndpointResponseRestJson1Serializer
    extends _i3.StructuredSmithySerializer<EndpointResponse> {
  const EndpointResponseRestJson1Serializer() : super('EndpointResponse');

  @override
  Iterable<Type> get types => const [
        EndpointResponse,
        _$EndpointResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  EndpointResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndpointResponseBuilder();
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
        case 'ApplicationId':
          result.applicationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Attributes':
          result.attributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltListMultimap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i2.BuiltListMultimap<String, String>));
        case 'ChannelType':
          result.channelType = (serializers.deserialize(
            value,
            specifiedType: const FullType(ChannelType),
          ) as ChannelType);
        case 'CohortId':
          result.cohortId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CreationDate':
          result.creationDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Demographic':
          result.demographic.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EndpointDemographic),
          ) as EndpointDemographic));
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
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Location':
          result.location.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EndpointLocation),
          ) as EndpointLocation));
        case 'Metrics':
          result.metrics.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(double),
              ],
            ),
          ) as _i2.BuiltMap<String, double>));
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
            specifiedType: const FullType(EndpointUser),
          ) as EndpointUser));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    EndpointResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final EndpointResponse(
      :address,
      :applicationId,
      :attributes,
      :channelType,
      :cohortId,
      :creationDate,
      :demographic,
      :effectiveDate,
      :endpointStatus,
      :id,
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
    if (applicationId != null) {
      result$
        ..add('ApplicationId')
        ..add(serializers.serialize(
          applicationId,
          specifiedType: const FullType(String),
        ));
    }
    if (attributes != null) {
      result$
        ..add('Attributes')
        ..add(serializers.serialize(
          attributes,
          specifiedType: const FullType(
            _i2.BuiltListMultimap,
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
          specifiedType: const FullType(ChannelType),
        ));
    }
    if (cohortId != null) {
      result$
        ..add('CohortId')
        ..add(serializers.serialize(
          cohortId,
          specifiedType: const FullType(String),
        ));
    }
    if (creationDate != null) {
      result$
        ..add('CreationDate')
        ..add(serializers.serialize(
          creationDate,
          specifiedType: const FullType(String),
        ));
    }
    if (demographic != null) {
      result$
        ..add('Demographic')
        ..add(serializers.serialize(
          demographic,
          specifiedType: const FullType(EndpointDemographic),
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
    if (id != null) {
      result$
        ..add('Id')
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (location != null) {
      result$
        ..add('Location')
        ..add(serializers.serialize(
          location,
          specifiedType: const FullType(EndpointLocation),
        ));
    }
    if (metrics != null) {
      result$
        ..add('Metrics')
        ..add(serializers.serialize(
          metrics,
          specifiedType: const FullType(
            _i2.BuiltMap,
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
          specifiedType: const FullType(EndpointUser),
        ));
    }
    return result$;
  }
}
