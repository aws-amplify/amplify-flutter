// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library ec2_query_v1.ec2_protocol.model.fractional_seconds_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'fractional_seconds_output.g.dart';

abstract class FractionalSecondsOutput
    with _i1.AWSEquatable<FractionalSecondsOutput>
    implements Built<FractionalSecondsOutput, FractionalSecondsOutputBuilder> {
  factory FractionalSecondsOutput({
    DateTime? datetime,
    DateTime? httpdate,
  }) {
    return _$FractionalSecondsOutput._(
      datetime: datetime,
      httpdate: httpdate,
    );
  }

  factory FractionalSecondsOutput.build(
          [void Function(FractionalSecondsOutputBuilder) updates]) =
      _$FractionalSecondsOutput;

  const FractionalSecondsOutput._();

  /// Constructs a [FractionalSecondsOutput] from a [payload] and [response].
  factory FractionalSecondsOutput.fromResponse(
    FractionalSecondsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<FractionalSecondsOutput>> serializers =
      [FractionalSecondsOutputEc2QuerySerializer()];

  DateTime? get datetime;
  DateTime? get httpdate;
  @override
  List<Object?> get props => [
        datetime,
        httpdate,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FractionalSecondsOutput')
      ..add(
        'datetime',
        datetime,
      )
      ..add(
        'httpdate',
        httpdate,
      );
    return helper.toString();
  }
}

class FractionalSecondsOutputEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FractionalSecondsOutput> {
  const FractionalSecondsOutputEc2QuerySerializer()
      : super('FractionalSecondsOutput');

  @override
  Iterable<Type> get types => const [
        FractionalSecondsOutput,
        _$FractionalSecondsOutput,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];

  @override
  FractionalSecondsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FractionalSecondsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'datetime':
          result.datetime = _i2.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
        case 'httpdate':
          result.httpdate = _i2.TimestampSerializer.httpDate.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FractionalSecondsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FractionalSecondsOutputResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    final FractionalSecondsOutput(:datetime, :httpdate) = object;
    if (datetime != null) {
      result$
        ..add(const _i2.XmlElementName('Datetime'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          datetime,
        ));
    }
    if (httpdate != null) {
      result$
        ..add(const _i2.XmlElementName('Httpdate'))
        ..add(_i2.TimestampSerializer.httpDate.serialize(
          serializers,
          httpdate,
        ));
    }
    return result$;
  }
}
