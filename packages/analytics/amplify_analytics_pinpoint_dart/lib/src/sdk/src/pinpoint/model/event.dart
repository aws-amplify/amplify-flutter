// Generated with smithy-dart 0.5.2. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.event;

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/session.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'event.g.dart';

/// Specifies information about an event that reports data to Amazon Pinpoint.
abstract class Event
    with _i1.AWSEquatable<Event>
    implements Built<Event, EventBuilder> {
  /// Specifies information about an event that reports data to Amazon Pinpoint.
  factory Event(
      {String? appPackageName,
      String? appTitle,
      String? appVersionCode,
      _i2.BuiltMap<String, String>? attributes,
      String? clientSdkVersion,
      required String eventType,
      _i2.BuiltMap<String, double>? metrics,
      String? sdkName,
      _i3.Session? session,
      required String timestamp}) {
    return _$Event._(
        appPackageName: appPackageName,
        appTitle: appTitle,
        appVersionCode: appVersionCode,
        attributes: attributes,
        clientSdkVersion: clientSdkVersion,
        eventType: eventType,
        metrics: metrics,
        sdkName: sdkName,
        session: session,
        timestamp: timestamp);
  }

  /// Specifies information about an event that reports data to Amazon Pinpoint.
  factory Event.build([void Function(EventBuilder) updates]) = _$Event;

  const Event._();

  static const List<_i4.SmithySerializer> serializers = [
    _EventRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EventBuilder b) {}

  /// The package name of the app that's recording the event.
  String? get appPackageName;

  /// The title of the app that's recording the event.
  String? get appTitle;

  /// The version number of the app that's recording the event.
  String? get appVersionCode;

  /// One or more custom attributes that are associated with the event.
  _i2.BuiltMap<String, String>? get attributes;

  /// The version of the SDK that's running on the client device.
  String? get clientSdkVersion;

  /// The name of the event.
  String get eventType;

  /// One or more custom metrics that are associated with the event.
  _i2.BuiltMap<String, double>? get metrics;

  /// The name of the SDK that's being used to record the event.
  String? get sdkName;

  /// Information about the session in which the event occurred.
  _i3.Session? get session;

  /// The date and time, in ISO 8601 format, when the event occurred.
  String get timestamp;
  @override
  List<Object?> get props => [
        appPackageName,
        appTitle,
        appVersionCode,
        attributes,
        clientSdkVersion,
        eventType,
        metrics,
        sdkName,
        session,
        timestamp
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Event');
    helper.add('appPackageName', appPackageName);
    helper.add('appTitle', appTitle);
    helper.add('appVersionCode', appVersionCode);
    helper.add('attributes', attributes);
    helper.add('clientSdkVersion', clientSdkVersion);
    helper.add('eventType', eventType);
    helper.add('metrics', metrics);
    helper.add('sdkName', sdkName);
    helper.add('session', session);
    helper.add('timestamp', timestamp);
    return helper.toString();
  }
}

class _EventRestJson1Serializer extends _i4.StructuredSmithySerializer<Event> {
  const _EventRestJson1Serializer() : super('Event');

  @override
  Iterable<Type> get types => const [Event, _$Event];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  Event deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = EventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AppPackageName':
          if (value != null) {
            result.appPackageName = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'AppTitle':
          if (value != null) {
            result.appTitle = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'AppVersionCode':
          if (value != null) {
            result.appVersionCode = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Attributes':
          if (value != null) {
            result.attributes.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltMap, [FullType(String), FullType(String)]))
                as _i2.BuiltMap<String, String>));
          }
          break;
        case 'ClientSdkVersion':
          if (value != null) {
            result.clientSdkVersion = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'EventType':
          result.eventType = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
        case 'Metrics':
          if (value != null) {
            result.metrics.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i2.BuiltMap, [FullType(String), FullType(double)]))
                as _i2.BuiltMap<String, double>));
          }
          break;
        case 'SdkName':
          if (value != null) {
            result.sdkName = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Session':
          if (value != null) {
            result.session.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i3.Session)) as _i3.Session));
          }
          break;
        case 'Timestamp':
          result.timestamp = (serializers.deserialize(value!,
              specifiedType: const FullType(String)) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as Event);
    final result = <Object?>[
      'EventType',
      serializers.serialize(payload.eventType,
          specifiedType: const FullType(String)),
      'Timestamp',
      serializers.serialize(payload.timestamp,
          specifiedType: const FullType(String))
    ];
    if (payload.appPackageName != null) {
      result
        ..add('AppPackageName')
        ..add(serializers.serialize(payload.appPackageName!,
            specifiedType: const FullType(String)));
    }
    if (payload.appTitle != null) {
      result
        ..add('AppTitle')
        ..add(serializers.serialize(payload.appTitle!,
            specifiedType: const FullType(String)));
    }
    if (payload.appVersionCode != null) {
      result
        ..add('AppVersionCode')
        ..add(serializers.serialize(payload.appVersionCode!,
            specifiedType: const FullType(String)));
    }
    if (payload.attributes != null) {
      result
        ..add('Attributes')
        ..add(serializers.serialize(payload.attributes!,
            specifiedType: const FullType(
                _i2.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.clientSdkVersion != null) {
      result
        ..add('ClientSdkVersion')
        ..add(serializers.serialize(payload.clientSdkVersion!,
            specifiedType: const FullType(String)));
    }
    if (payload.metrics != null) {
      result
        ..add('Metrics')
        ..add(serializers.serialize(payload.metrics!,
            specifiedType: const FullType(
                _i2.BuiltMap, [FullType(String), FullType(double)])));
    }
    if (payload.sdkName != null) {
      result
        ..add('SdkName')
        ..add(serializers.serialize(payload.sdkName!,
            specifiedType: const FullType(String)));
    }
    if (payload.session != null) {
      result
        ..add('Session')
        ..add(serializers.serialize(payload.session!,
            specifiedType: const FullType(_i3.Session)));
    }
    return result;
  }
}
