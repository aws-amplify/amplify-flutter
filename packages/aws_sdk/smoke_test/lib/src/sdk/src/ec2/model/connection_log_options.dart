// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.connection_log_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'connection_log_options.g.dart';

/// Describes the client connection logging options for the Client VPN endpoint.
abstract class ConnectionLogOptions
    with _i1.AWSEquatable<ConnectionLogOptions>
    implements Built<ConnectionLogOptions, ConnectionLogOptionsBuilder> {
  /// Describes the client connection logging options for the Client VPN endpoint.
  factory ConnectionLogOptions({
    bool? enabled,
    String? cloudwatchLogGroup,
    String? cloudwatchLogStream,
  }) {
    enabled ??= false;
    return _$ConnectionLogOptions._(
      enabled: enabled,
      cloudwatchLogGroup: cloudwatchLogGroup,
      cloudwatchLogStream: cloudwatchLogStream,
    );
  }

  /// Describes the client connection logging options for the Client VPN endpoint.
  factory ConnectionLogOptions.build(
          [void Function(ConnectionLogOptionsBuilder) updates]) =
      _$ConnectionLogOptions;

  const ConnectionLogOptions._();

  static const List<_i2.SmithySerializer<ConnectionLogOptions>> serializers = [
    ConnectionLogOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConnectionLogOptionsBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether connection logging is enabled.
  bool get enabled;

  /// The name of the CloudWatch Logs log group. Required if connection logging is enabled.
  String? get cloudwatchLogGroup;

  /// The name of the CloudWatch Logs log stream to which the connection data is published.
  String? get cloudwatchLogStream;
  @override
  List<Object?> get props => [
        enabled,
        cloudwatchLogGroup,
        cloudwatchLogStream,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConnectionLogOptions')
      ..add(
        'enabled',
        enabled,
      )
      ..add(
        'cloudwatchLogGroup',
        cloudwatchLogGroup,
      )
      ..add(
        'cloudwatchLogStream',
        cloudwatchLogStream,
      );
    return helper.toString();
  }
}

class ConnectionLogOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ConnectionLogOptions> {
  const ConnectionLogOptionsEc2QuerySerializer()
      : super('ConnectionLogOptions');

  @override
  Iterable<Type> get types => const [
        ConnectionLogOptions,
        _$ConnectionLogOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ConnectionLogOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConnectionLogOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'CloudwatchLogGroup':
          result.cloudwatchLogGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CloudwatchLogStream':
          result.cloudwatchLogStream = (serializers.deserialize(
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
    ConnectionLogOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ConnectionLogOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ConnectionLogOptions(
      :enabled,
      :cloudwatchLogGroup,
      :cloudwatchLogStream
    ) = object;
    result$
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    if (cloudwatchLogGroup != null) {
      result$
        ..add(const _i2.XmlElementName('CloudwatchLogGroup'))
        ..add(serializers.serialize(
          cloudwatchLogGroup,
          specifiedType: const FullType(String),
        ));
    }
    if (cloudwatchLogStream != null) {
      result$
        ..add(const _i2.XmlElementName('CloudwatchLogStream'))
        ..add(serializers.serialize(
          cloudwatchLogStream,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
