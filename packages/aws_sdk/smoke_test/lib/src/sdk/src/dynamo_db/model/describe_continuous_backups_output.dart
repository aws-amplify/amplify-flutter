// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.describe_continuous_backups_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_description.dart';

part 'describe_continuous_backups_output.g.dart';

abstract class DescribeContinuousBackupsOutput
    with
        _i1.AWSEquatable<DescribeContinuousBackupsOutput>
    implements
        Built<DescribeContinuousBackupsOutput,
            DescribeContinuousBackupsOutputBuilder> {
  factory DescribeContinuousBackupsOutput(
      {ContinuousBackupsDescription? continuousBackupsDescription}) {
    return _$DescribeContinuousBackupsOutput._(
        continuousBackupsDescription: continuousBackupsDescription);
  }

  factory DescribeContinuousBackupsOutput.build(
          [void Function(DescribeContinuousBackupsOutputBuilder) updates]) =
      _$DescribeContinuousBackupsOutput;

  const DescribeContinuousBackupsOutput._();

  /// Constructs a [DescribeContinuousBackupsOutput] from a [payload] and [response].
  factory DescribeContinuousBackupsOutput.fromResponse(
    DescribeContinuousBackupsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DescribeContinuousBackupsOutput>>
      serializers = [DescribeContinuousBackupsOutputAwsJson10Serializer()];

  /// Represents the continuous backups and point in time recovery settings on the table.
  ContinuousBackupsDescription? get continuousBackupsDescription;
  @override
  List<Object?> get props => [continuousBackupsDescription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeContinuousBackupsOutput')
          ..add(
            'continuousBackupsDescription',
            continuousBackupsDescription,
          );
    return helper.toString();
  }
}

class DescribeContinuousBackupsOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<DescribeContinuousBackupsOutput> {
  const DescribeContinuousBackupsOutputAwsJson10Serializer()
      : super('DescribeContinuousBackupsOutput');

  @override
  Iterable<Type> get types => const [
        DescribeContinuousBackupsOutput,
        _$DescribeContinuousBackupsOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeContinuousBackupsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeContinuousBackupsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ContinuousBackupsDescription':
          result.continuousBackupsDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ContinuousBackupsDescription),
          ) as ContinuousBackupsDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeContinuousBackupsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeContinuousBackupsOutput(:continuousBackupsDescription) =
        object;
    if (continuousBackupsDescription != null) {
      result$
        ..add('ContinuousBackupsDescription')
        ..add(serializers.serialize(
          continuousBackupsDescription,
          specifiedType: const FullType(ContinuousBackupsDescription),
        ));
    }
    return result$;
  }
}
