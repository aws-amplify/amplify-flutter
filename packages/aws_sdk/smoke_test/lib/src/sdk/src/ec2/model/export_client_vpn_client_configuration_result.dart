// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.export_client_vpn_client_configuration_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'export_client_vpn_client_configuration_result.g.dart';

abstract class ExportClientVpnClientConfigurationResult
    with
        _i1.AWSEquatable<ExportClientVpnClientConfigurationResult>
    implements
        Built<ExportClientVpnClientConfigurationResult,
            ExportClientVpnClientConfigurationResultBuilder> {
  factory ExportClientVpnClientConfigurationResult(
      {String? clientConfiguration}) {
    return _$ExportClientVpnClientConfigurationResult._(
        clientConfiguration: clientConfiguration);
  }

  factory ExportClientVpnClientConfigurationResult.build(
      [void Function(ExportClientVpnClientConfigurationResultBuilder)
          updates]) = _$ExportClientVpnClientConfigurationResult;

  const ExportClientVpnClientConfigurationResult._();

  /// Constructs a [ExportClientVpnClientConfigurationResult] from a [payload] and [response].
  factory ExportClientVpnClientConfigurationResult.fromResponse(
    ExportClientVpnClientConfigurationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<ExportClientVpnClientConfigurationResult>>
      serializers = [
    ExportClientVpnClientConfigurationResultEc2QuerySerializer()
  ];

  /// The contents of the Client VPN endpoint configuration file.
  String? get clientConfiguration;
  @override
  List<Object?> get props => [clientConfiguration];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ExportClientVpnClientConfigurationResult')
          ..add(
            'clientConfiguration',
            clientConfiguration,
          );
    return helper.toString();
  }
}

class ExportClientVpnClientConfigurationResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ExportClientVpnClientConfigurationResult> {
  const ExportClientVpnClientConfigurationResultEc2QuerySerializer()
      : super('ExportClientVpnClientConfigurationResult');

  @override
  Iterable<Type> get types => const [
        ExportClientVpnClientConfigurationResult,
        _$ExportClientVpnClientConfigurationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportClientVpnClientConfigurationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportClientVpnClientConfigurationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'clientConfiguration':
          result.clientConfiguration = (serializers.deserialize(
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
    ExportClientVpnClientConfigurationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ExportClientVpnClientConfigurationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ExportClientVpnClientConfigurationResult(:clientConfiguration) =
        object;
    if (clientConfiguration != null) {
      result$
        ..add(const _i2.XmlElementName('ClientConfiguration'))
        ..add(serializers.serialize(
          clientConfiguration,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
