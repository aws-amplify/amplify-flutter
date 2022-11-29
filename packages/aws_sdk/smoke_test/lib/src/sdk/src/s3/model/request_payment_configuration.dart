// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.request_payment_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/payer.dart' as _i2;

part 'request_payment_configuration.g.dart';

/// Container for Payer.
abstract class RequestPaymentConfiguration
    with _i1.AWSEquatable<RequestPaymentConfiguration>
    implements
        Built<RequestPaymentConfiguration, RequestPaymentConfigurationBuilder> {
  /// Container for Payer.
  factory RequestPaymentConfiguration({required _i2.Payer payer}) {
    return _$RequestPaymentConfiguration._(payer: payer);
  }

  /// Container for Payer.
  factory RequestPaymentConfiguration.build(
          [void Function(RequestPaymentConfigurationBuilder) updates]) =
      _$RequestPaymentConfiguration;

  const RequestPaymentConfiguration._();

  static const List<_i3.SmithySerializer> serializers = [
    RequestPaymentConfigurationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestPaymentConfigurationBuilder b) {}

  /// Specifies who pays for the download and request fees.
  _i2.Payer get payer;
  @override
  List<Object?> get props => [payer];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestPaymentConfiguration');
    helper.add(
      'payer',
      payer,
    );
    return helper.toString();
  }
}

class RequestPaymentConfigurationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<RequestPaymentConfiguration> {
  const RequestPaymentConfigurationRestXmlSerializer()
      : super('RequestPaymentConfiguration');

  @override
  Iterable<Type> get types => const [
        RequestPaymentConfiguration,
        _$RequestPaymentConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  RequestPaymentConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestPaymentConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Payer':
          result.payer = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Payer),
          ) as _i2.Payer);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as RequestPaymentConfiguration);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RequestPaymentConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Payer'))
      ..add(serializers.serialize(
        payload.payer,
        specifiedType: const FullType.nullable(_i2.Payer),
      ));
    return result;
  }
}
