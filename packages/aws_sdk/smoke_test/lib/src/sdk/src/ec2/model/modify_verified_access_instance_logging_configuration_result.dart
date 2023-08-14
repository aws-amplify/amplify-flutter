// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_instance_logging_configuration_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance_logging_configuration.dart';

part 'modify_verified_access_instance_logging_configuration_result.g.dart';

abstract class ModifyVerifiedAccessInstanceLoggingConfigurationResult
    with
        _i1.AWSEquatable<ModifyVerifiedAccessInstanceLoggingConfigurationResult>
    implements
        Built<ModifyVerifiedAccessInstanceLoggingConfigurationResult,
            ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder> {
  factory ModifyVerifiedAccessInstanceLoggingConfigurationResult(
      {VerifiedAccessInstanceLoggingConfiguration? loggingConfiguration}) {
    return _$ModifyVerifiedAccessInstanceLoggingConfigurationResult._(
        loggingConfiguration: loggingConfiguration);
  }

  factory ModifyVerifiedAccessInstanceLoggingConfigurationResult.build(
      [void Function(
              ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder)
          updates]) = _$ModifyVerifiedAccessInstanceLoggingConfigurationResult;

  const ModifyVerifiedAccessInstanceLoggingConfigurationResult._();

  /// Constructs a [ModifyVerifiedAccessInstanceLoggingConfigurationResult] from a [payload] and [response].
  factory ModifyVerifiedAccessInstanceLoggingConfigurationResult.fromResponse(
    ModifyVerifiedAccessInstanceLoggingConfigurationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<
              ModifyVerifiedAccessInstanceLoggingConfigurationResult>>
      serializers = [
    ModifyVerifiedAccessInstanceLoggingConfigurationResultEc2QuerySerializer()
  ];

  /// The logging configuration for the Verified Access instance.
  VerifiedAccessInstanceLoggingConfiguration? get loggingConfiguration;
  @override
  List<Object?> get props => [loggingConfiguration];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVerifiedAccessInstanceLoggingConfigurationResult')
      ..add(
        'loggingConfiguration',
        loggingConfiguration,
      );
    return helper.toString();
  }
}

class ModifyVerifiedAccessInstanceLoggingConfigurationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        ModifyVerifiedAccessInstanceLoggingConfigurationResult> {
  const ModifyVerifiedAccessInstanceLoggingConfigurationResultEc2QuerySerializer()
      : super('ModifyVerifiedAccessInstanceLoggingConfigurationResult');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessInstanceLoggingConfigurationResult,
        _$ModifyVerifiedAccessInstanceLoggingConfigurationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessInstanceLoggingConfigurationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ModifyVerifiedAccessInstanceLoggingConfigurationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'loggingConfiguration':
          result.loggingConfiguration.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(VerifiedAccessInstanceLoggingConfiguration),
          ) as VerifiedAccessInstanceLoggingConfiguration));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVerifiedAccessInstanceLoggingConfigurationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyVerifiedAccessInstanceLoggingConfigurationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessInstanceLoggingConfigurationResult(
      :loggingConfiguration
    ) = object;
    if (loggingConfiguration != null) {
      result$
        ..add(const _i2.XmlElementName('LoggingConfiguration'))
        ..add(serializers.serialize(
          loggingConfiguration,
          specifiedType:
              const FullType(VerifiedAccessInstanceLoggingConfiguration),
        ));
    }
    return result$;
  }
}
