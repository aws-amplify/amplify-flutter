// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_response;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/channel_type.dart'
    as _i3;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_demographic.dart'
    as _i4;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_location.dart'
    as _i5;
import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/endpoint_user.dart'
    as _i6;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;

part 'endpoint_response.g.dart';

/// Provides information about the channel type and other settings for an endpoint.
abstract class EndpointResponse
    with _i1.AWSEquatable<EndpointResponse>
    implements Built<EndpointResponse, EndpointResponseBuilder> {
  /// Provides information about the channel type and other settings for an endpoint.
  factory EndpointResponse(
      {String? address,
      String? applicationId,
      _i2.BuiltListMultimap<String, String>? attributes,
      _i3.ChannelType? channelType,
      String? cohortId,
      String? creationDate,
      _i4.EndpointDemographic? demographic,
      String? effectiveDate,
      String? endpointStatus,
      String? id,
      _i5.EndpointLocation? location,
      _i2.BuiltMap<String, double>? metrics,
      String? optOut,
      String? requestId,
      _i6.EndpointUser? user}) {
    return _$EndpointResponse._(
        address: address,
        applicationId: applicationId,
        attributes: attributes,
        channelType: channelType,
        cohortId: cohortId,
        creationDate: creationDate,
        demographic: demographic,
        effectiveDate: effectiveDate,
        endpointStatus: endpointStatus,
        id: id,
        location: location,
        metrics: metrics,
        optOut: optOut,
        requestId: requestId,
        user: user);
  }

  /// Provides information about the channel type and other settings for an endpoint.
  factory EndpointResponse.build(
      [void Function(EndpointResponseBuilder) updates]) = _$EndpointResponse;

  const EndpointResponse._();

  static const List<_i7.SmithySerializer> serializers = [
    _EndpointResponseRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EndpointResponseBuilder b) {}

  /// The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For example, the address for a push-notification channel is typically the token provided by a push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. The address for the SMS channel is a phone number in E.164 format, such as +12065550100. The address for the email channel is an email address.
  String? get address;

  /// The unique identifier for the application that's associated with the endpoint.
  String? get applicationId;

  /// One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: \["Science", "Music", "Travel"\]. You can use these attributes as filter criteria when you create segments.
  _i2.BuiltListMultimap<String, String>? get attributes;

  /// The channel that's used when sending messages or push notifications to the endpoint.
  _i3.ChannelType? get channelType;

  /// A number from 0-99 that represents the cohort that the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an application. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for campaigns.
  String? get cohortId;

  /// The date and time, in ISO 8601 format, when the endpoint was created.
  String? get creationDate;

  /// The demographic information for the endpoint, such as the time zone and platform.
  _i4.EndpointDemographic? get demographic;

  /// The date and time, in ISO 8601 format, when the endpoint was last updated.
  String? get effectiveDate;

  /// Specifies whether messages or push notifications are sent to the endpoint. Possible values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint.
  ///
  /// Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.
  String? get endpointStatus;

  /// The unique identifier that you assigned to the endpoint. The identifier should be a globally unique identifier (GUID) to ensure that it doesn't conflict with other endpoint identifiers that are associated with the application.
  String? get id;

  /// The geographic information for the endpoint.
  _i5.EndpointLocation? get location;

  /// One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.
  _i2.BuiltMap<String, double>? get metrics;

  /// Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.
  String? get optOut;

  /// The unique identifier for the most recent request to update the endpoint.
  String? get requestId;

  /// One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.
  _i6.EndpointUser? get user;
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
        user
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EndpointResponse');
    helper.add('address', address);
    helper.add('applicationId', applicationId);
    helper.add('attributes', attributes);
    helper.add('channelType', channelType);
    helper.add('cohortId', cohortId);
    helper.add('creationDate', creationDate);
    helper.add('demographic', demographic);
    helper.add('effectiveDate', effectiveDate);
    helper.add('endpointStatus', endpointStatus);
    helper.add('id', id);
    helper.add('location', location);
    helper.add('metrics', metrics);
    helper.add('optOut', optOut);
    helper.add('requestId', requestId);
    helper.add('user', user);
    return helper.toString();
  }
}

class _EndpointResponseRestJson1Serializer
    extends _i7.StructuredSmithySerializer<EndpointResponse> {
  const _EndpointResponseRestJson1Serializer() : super('EndpointResponse');

  @override
  Iterable<Type> get types => const [EndpointResponse, _$EndpointResponse];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols =>
      const [_i7.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  EndpointResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = EndpointResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Address':
          if (value != null) {
            result.address = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'ApplicationId':
          if (value != null) {
            result.applicationId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Attributes':
          if (value != null) {
            result.attributes.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i2.BuiltListMultimap, [
                  FullType(String),
                  FullType(String)
                ])) as _i2.BuiltListMultimap<String, String>));
          }
          break;
        case 'ChannelType':
          if (value != null) {
            result.channelType = (serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ChannelType))
                as _i3.ChannelType);
          }
          break;
        case 'CohortId':
          if (value != null) {
            result.cohortId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'CreationDate':
          if (value != null) {
            result.creationDate = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Demographic':
          if (value != null) {
            result.demographic.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i4.EndpointDemographic))
                as _i4.EndpointDemographic));
          }
          break;
        case 'EffectiveDate':
          if (value != null) {
            result.effectiveDate = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'EndpointStatus':
          if (value != null) {
            result.endpointStatus = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Id':
          if (value != null) {
            result.id = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Location':
          if (value != null) {
            result.location.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i5.EndpointLocation))
                as _i5.EndpointLocation));
          }
          break;
        case 'Metrics':
          if (value != null) {
            result.metrics.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltMap, [FullType(String), FullType(double)]))
                as _i2.BuiltMap<String, double>));
          }
          break;
        case 'OptOut':
          if (value != null) {
            result.optOut = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'RequestId':
          if (value != null) {
            result.requestId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'User':
          if (value != null) {
            result.user.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i6.EndpointUser))
                as _i6.EndpointUser));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as EndpointResponse);
    final result = <Object?>[];
    if (payload.address != null) {
      result
        ..add('Address')
        ..add(serializers.serialize(payload.address!,
            specifiedType: const FullType(String)));
    }
    if (payload.applicationId != null) {
      result
        ..add('ApplicationId')
        ..add(serializers.serialize(payload.applicationId!,
            specifiedType: const FullType(String)));
    }
    if (payload.attributes != null) {
      result
        ..add('Attributes')
        ..add(serializers.serialize(payload.attributes!,
            specifiedType: const FullType(
                _i2.BuiltListMultimap, [FullType(String), FullType(String)])));
    }
    if (payload.channelType != null) {
      result
        ..add('ChannelType')
        ..add(serializers.serialize(payload.channelType!,
            specifiedType: const FullType(_i3.ChannelType)));
    }
    if (payload.cohortId != null) {
      result
        ..add('CohortId')
        ..add(serializers.serialize(payload.cohortId!,
            specifiedType: const FullType(String)));
    }
    if (payload.creationDate != null) {
      result
        ..add('CreationDate')
        ..add(serializers.serialize(payload.creationDate!,
            specifiedType: const FullType(String)));
    }
    if (payload.demographic != null) {
      result
        ..add('Demographic')
        ..add(serializers.serialize(payload.demographic!,
            specifiedType: const FullType(_i4.EndpointDemographic)));
    }
    if (payload.effectiveDate != null) {
      result
        ..add('EffectiveDate')
        ..add(serializers.serialize(payload.effectiveDate!,
            specifiedType: const FullType(String)));
    }
    if (payload.endpointStatus != null) {
      result
        ..add('EndpointStatus')
        ..add(serializers.serialize(payload.endpointStatus!,
            specifiedType: const FullType(String)));
    }
    if (payload.id != null) {
      result
        ..add('Id')
        ..add(serializers.serialize(payload.id!,
            specifiedType: const FullType(String)));
    }
    if (payload.location != null) {
      result
        ..add('Location')
        ..add(serializers.serialize(payload.location!,
            specifiedType: const FullType(_i5.EndpointLocation)));
    }
    if (payload.metrics != null) {
      result
        ..add('Metrics')
        ..add(serializers.serialize(payload.metrics!,
            specifiedType: const FullType(
                _i2.BuiltMap, [FullType(String), FullType(double)])));
    }
    if (payload.optOut != null) {
      result
        ..add('OptOut')
        ..add(serializers.serialize(payload.optOut!,
            specifiedType: const FullType(String)));
    }
    if (payload.requestId != null) {
      result
        ..add('RequestId')
        ..add(serializers.serialize(payload.requestId!,
            specifiedType: const FullType(String)));
    }
    if (payload.user != null) {
      result
        ..add('User')
        ..add(serializers.serialize(payload.user!,
            specifiedType: const FullType(_i6.EndpointUser)));
    }
    return result;
  }
}
