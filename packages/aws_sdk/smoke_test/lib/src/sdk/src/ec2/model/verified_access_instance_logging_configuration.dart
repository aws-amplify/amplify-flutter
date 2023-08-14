// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.verified_access_instance_logging_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_logs.dart';

part 'verified_access_instance_logging_configuration.g.dart';

/// Describes logging options for an Amazon Web Services Verified Access instance.
abstract class VerifiedAccessInstanceLoggingConfiguration
    with
        _i1.AWSEquatable<VerifiedAccessInstanceLoggingConfiguration>
    implements
        Built<VerifiedAccessInstanceLoggingConfiguration,
            VerifiedAccessInstanceLoggingConfigurationBuilder> {
  /// Describes logging options for an Amazon Web Services Verified Access instance.
  factory VerifiedAccessInstanceLoggingConfiguration({
    String? verifiedAccessInstanceId,
    VerifiedAccessLogs? accessLogs,
  }) {
    return _$VerifiedAccessInstanceLoggingConfiguration._(
      verifiedAccessInstanceId: verifiedAccessInstanceId,
      accessLogs: accessLogs,
    );
  }

  /// Describes logging options for an Amazon Web Services Verified Access instance.
  factory VerifiedAccessInstanceLoggingConfiguration.build(
      [void Function(VerifiedAccessInstanceLoggingConfigurationBuilder)
          updates]) = _$VerifiedAccessInstanceLoggingConfiguration;

  const VerifiedAccessInstanceLoggingConfiguration._();

  static const List<
          _i2.SmithySerializer<VerifiedAccessInstanceLoggingConfiguration>>
      serializers = [
    VerifiedAccessInstanceLoggingConfigurationEc2QuerySerializer()
  ];

  /// The ID of the Amazon Web Services Verified Access instance.
  String? get verifiedAccessInstanceId;

  /// Details about the logging options.
  VerifiedAccessLogs? get accessLogs;
  @override
  List<Object?> get props => [
        verifiedAccessInstanceId,
        accessLogs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'VerifiedAccessInstanceLoggingConfiguration')
      ..add(
        'verifiedAccessInstanceId',
        verifiedAccessInstanceId,
      )
      ..add(
        'accessLogs',
        accessLogs,
      );
    return helper.toString();
  }
}

class VerifiedAccessInstanceLoggingConfigurationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<VerifiedAccessInstanceLoggingConfiguration> {
  const VerifiedAccessInstanceLoggingConfigurationEc2QuerySerializer()
      : super('VerifiedAccessInstanceLoggingConfiguration');

  @override
  Iterable<Type> get types => const [
        VerifiedAccessInstanceLoggingConfiguration,
        _$VerifiedAccessInstanceLoggingConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VerifiedAccessInstanceLoggingConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifiedAccessInstanceLoggingConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessInstanceId':
          result.verifiedAccessInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'accessLogs':
          result.accessLogs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessLogs),
          ) as VerifiedAccessLogs));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VerifiedAccessInstanceLoggingConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VerifiedAccessInstanceLoggingConfigurationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final VerifiedAccessInstanceLoggingConfiguration(
      :verifiedAccessInstanceId,
      :accessLogs
    ) = object;
    if (verifiedAccessInstanceId != null) {
      result$
        ..add(const _i2.XmlElementName('VerifiedAccessInstanceId'))
        ..add(serializers.serialize(
          verifiedAccessInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (accessLogs != null) {
      result$
        ..add(const _i2.XmlElementName('AccessLogs'))
        ..add(serializers.serialize(
          accessLogs,
          specifiedType: const FullType(VerifiedAccessLogs),
        ));
    }
    return result$;
  }
}
