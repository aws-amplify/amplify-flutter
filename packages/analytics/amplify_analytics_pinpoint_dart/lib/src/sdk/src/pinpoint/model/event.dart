// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_analytics_pinpoint_dart.pinpoint.model.event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_analytics_pinpoint_dart/src/sdk/src/pinpoint/model/session.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'event.g.dart';

/// Specifies information about an event that reports data to Amazon Pinpoint.
abstract class Event
    with _i1.AWSEquatable<Event>
    implements Built<Event, EventBuilder> {
  /// Specifies information about an event that reports data to Amazon Pinpoint.
  factory Event({
    String? appPackageName,
    String? appTitle,
    String? appVersionCode,
    Map<String, String>? attributes,
    String? clientSdkVersion,
    required String eventType,
    Map<String, double>? metrics,
    String? sdkName,
    _i2.Session? session,
    required String timestamp,
  }) {
    return _$Event._(
      appPackageName: appPackageName,
      appTitle: appTitle,
      appVersionCode: appVersionCode,
      attributes: attributes == null ? null : _i3.BuiltMap(attributes),
      clientSdkVersion: clientSdkVersion,
      eventType: eventType,
      metrics: metrics == null ? null : _i3.BuiltMap(metrics),
      sdkName: sdkName,
      session: session,
      timestamp: timestamp,
    );
  }

  /// Specifies information about an event that reports data to Amazon Pinpoint.
  factory Event.build([void Function(EventBuilder) updates]) = _$Event;

  const Event._();

  static const List<_i4.SmithySerializer<Event>> serializers = [
    EventRestJson1Serializer()
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
  _i3.BuiltMap<String, String>? get attributes;

  /// The version of the SDK that's running on the client device.
  String? get clientSdkVersion;

  /// The name of the event.
  String get eventType;

  /// One or more custom metrics that are associated with the event.
  _i3.BuiltMap<String, double>? get metrics;

  /// The name of the SDK that's being used to record the event.
  String? get sdkName;

  /// Information about the session in which the event occurred.
  _i2.Session? get session;

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
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Event')
      ..add(
        'appPackageName',
        appPackageName,
      )
      ..add(
        'appTitle',
        appTitle,
      )
      ..add(
        'appVersionCode',
        appVersionCode,
      )
      ..add(
        'attributes',
        attributes,
      )
      ..add(
        'clientSdkVersion',
        clientSdkVersion,
      )
      ..add(
        'eventType',
        eventType,
      )
      ..add(
        'metrics',
        metrics,
      )
      ..add(
        'sdkName',
        sdkName,
      )
      ..add(
        'session',
        session,
      )
      ..add(
        'timestamp',
        timestamp,
      );
    return helper.toString();
  }
}

class EventRestJson1Serializer extends _i4.StructuredSmithySerializer<Event> {
  const EventRestJson1Serializer() : super('Event');

  @override
  Iterable<Type> get types => const [
        Event,
        _$Event,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Event deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AppPackageName':
          result.appPackageName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AppTitle':
          result.appTitle = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AppVersionCode':
          result.appVersionCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Attributes':
          result.attributes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'ClientSdkVersion':
          result.clientSdkVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EventType':
          result.eventType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Metrics':
          result.metrics.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(double),
              ],
            ),
          ) as _i3.BuiltMap<String, double>));
        case 'SdkName':
          result.sdkName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Session':
          result.session.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Session),
          ) as _i2.Session));
        case 'Timestamp':
          result.timestamp = (serializers.deserialize(
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
    Event object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Event(
      :appPackageName,
      :appTitle,
      :appVersionCode,
      :attributes,
      :clientSdkVersion,
      :eventType,
      :metrics,
      :sdkName,
      :session,
      :timestamp
    ) = object;
    result$.addAll([
      'EventType',
      serializers.serialize(
        eventType,
        specifiedType: const FullType(String),
      ),
      'Timestamp',
      serializers.serialize(
        timestamp,
        specifiedType: const FullType(String),
      ),
    ]);
    if (appPackageName != null) {
      result$
        ..add('AppPackageName')
        ..add(serializers.serialize(
          appPackageName,
          specifiedType: const FullType(String),
        ));
    }
    if (appTitle != null) {
      result$
        ..add('AppTitle')
        ..add(serializers.serialize(
          appTitle,
          specifiedType: const FullType(String),
        ));
    }
    if (appVersionCode != null) {
      result$
        ..add('AppVersionCode')
        ..add(serializers.serialize(
          appVersionCode,
          specifiedType: const FullType(String),
        ));
    }
    if (attributes != null) {
      result$
        ..add('Attributes')
        ..add(serializers.serialize(
          attributes,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (clientSdkVersion != null) {
      result$
        ..add('ClientSdkVersion')
        ..add(serializers.serialize(
          clientSdkVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (metrics != null) {
      result$
        ..add('Metrics')
        ..add(serializers.serialize(
          metrics,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(double),
            ],
          ),
        ));
    }
    if (sdkName != null) {
      result$
        ..add('SdkName')
        ..add(serializers.serialize(
          sdkName,
          specifiedType: const FullType(String),
        ));
    }
    if (session != null) {
      result$
        ..add('Session')
        ..add(serializers.serialize(
          session,
          specifiedType: const FullType(_i2.Session),
        ));
    }
    return result$;
  }
}
