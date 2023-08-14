// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.connection_log_response_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'connection_log_response_options.g.dart';

/// Information about the client connection logging options for a Client VPN endpoint.
abstract class ConnectionLogResponseOptions
    with
        _i1.AWSEquatable<ConnectionLogResponseOptions>
    implements
        Built<ConnectionLogResponseOptions,
            ConnectionLogResponseOptionsBuilder> {
  /// Information about the client connection logging options for a Client VPN endpoint.
  factory ConnectionLogResponseOptions({
    bool? enabled,
    String? cloudwatchLogGroup,
    String? cloudwatchLogStream,
  }) {
    enabled ??= false;
    return _$ConnectionLogResponseOptions._(
      enabled: enabled,
      cloudwatchLogGroup: cloudwatchLogGroup,
      cloudwatchLogStream: cloudwatchLogStream,
    );
  }

  /// Information about the client connection logging options for a Client VPN endpoint.
  factory ConnectionLogResponseOptions.build(
          [void Function(ConnectionLogResponseOptionsBuilder) updates]) =
      _$ConnectionLogResponseOptions;

  const ConnectionLogResponseOptions._();

  static const List<_i2.SmithySerializer<ConnectionLogResponseOptions>>
      serializers = [ConnectionLogResponseOptionsEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConnectionLogResponseOptionsBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether client connection logging is enabled for the Client VPN endpoint.
  bool get enabled;

  /// The name of the Amazon CloudWatch Logs log group to which connection logging data is published.
  String? get cloudwatchLogGroup;

  /// The name of the Amazon CloudWatch Logs log stream to which connection logging data is published.
  String? get cloudwatchLogStream;
  @override
  List<Object?> get props => [
        enabled,
        cloudwatchLogGroup,
        cloudwatchLogStream,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConnectionLogResponseOptions')
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

class ConnectionLogResponseOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ConnectionLogResponseOptions> {
  const ConnectionLogResponseOptionsEc2QuerySerializer()
      : super('ConnectionLogResponseOptions');

  @override
  Iterable<Type> get types => const [
        ConnectionLogResponseOptions,
        _$ConnectionLogResponseOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ConnectionLogResponseOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConnectionLogResponseOptionsBuilder();
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
    ConnectionLogResponseOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ConnectionLogResponseOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ConnectionLogResponseOptions(
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
