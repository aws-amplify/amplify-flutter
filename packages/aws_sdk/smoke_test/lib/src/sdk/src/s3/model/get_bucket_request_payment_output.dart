// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_request_payment_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/payer.dart';

part 'get_bucket_request_payment_output.g.dart';

abstract class GetBucketRequestPaymentOutput
    with
        _i1.AWSEquatable<GetBucketRequestPaymentOutput>
    implements
        Built<GetBucketRequestPaymentOutput,
            GetBucketRequestPaymentOutputBuilder> {
  factory GetBucketRequestPaymentOutput({Payer? payer}) {
    return _$GetBucketRequestPaymentOutput._(payer: payer);
  }

  factory GetBucketRequestPaymentOutput.build(
          [void Function(GetBucketRequestPaymentOutputBuilder) updates]) =
      _$GetBucketRequestPaymentOutput;

  const GetBucketRequestPaymentOutput._();

  /// Constructs a [GetBucketRequestPaymentOutput] from a [payload] and [response].
  factory GetBucketRequestPaymentOutput.fromResponse(
    GetBucketRequestPaymentOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetBucketRequestPaymentOutput>>
      serializers = [GetBucketRequestPaymentOutputRestXmlSerializer()];

  /// Specifies who pays for the download and request fees.
  Payer? get payer;
  @override
  List<Object?> get props => [payer];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketRequestPaymentOutput')
      ..add(
        'payer',
        payer,
      );
    return helper.toString();
  }
}

class GetBucketRequestPaymentOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<GetBucketRequestPaymentOutput> {
  const GetBucketRequestPaymentOutputRestXmlSerializer()
      : super('GetBucketRequestPaymentOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketRequestPaymentOutput,
        _$GetBucketRequestPaymentOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketRequestPaymentOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBucketRequestPaymentOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Payer':
          result.payer = (serializers.deserialize(
            value,
            specifiedType: const FullType(Payer),
          ) as Payer);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketRequestPaymentOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RequestPaymentConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetBucketRequestPaymentOutput(:payer) = object;
    if (payer != null) {
      result$
        ..add(const _i2.XmlElementName('Payer'))
        ..add(serializers.serialize(
          payer,
          specifiedType: const FullType(Payer),
        ));
    }
    return result$;
  }
}
