// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_continuous_backups_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_description.dart'
    as _i2;

part 'describe_continuous_backups_output.g.dart';

abstract class DescribeContinuousBackupsOutput
    with
        _i1.AWSEquatable<DescribeContinuousBackupsOutput>
    implements
        Built<DescribeContinuousBackupsOutput,
            DescribeContinuousBackupsOutputBuilder> {
  factory DescribeContinuousBackupsOutput(
      {_i2.ContinuousBackupsDescription? continuousBackupsDescription}) {
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

  static const List<_i3.SmithySerializer> serializers = [
    DescribeContinuousBackupsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeContinuousBackupsOutputBuilder b) {}

  /// Represents the continuous backups and point in time recovery settings on the table.
  _i2.ContinuousBackupsDescription? get continuousBackupsDescription;
  @override
  List<Object?> get props => [continuousBackupsDescription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeContinuousBackupsOutput');
    helper.add(
      'continuousBackupsDescription',
      continuousBackupsDescription,
    );
    return helper.toString();
  }
}

class DescribeContinuousBackupsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DescribeContinuousBackupsOutput> {
  const DescribeContinuousBackupsOutputAwsJson10Serializer()
      : super('DescribeContinuousBackupsOutput');

  @override
  Iterable<Type> get types => const [
        DescribeContinuousBackupsOutput,
        _$DescribeContinuousBackupsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'ContinuousBackupsDescription':
          if (value != null) {
            result.continuousBackupsDescription
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ContinuousBackupsDescription),
            ) as _i2.ContinuousBackupsDescription));
          }
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
    final payload = (object as DescribeContinuousBackupsOutput);
    final result = <Object?>[];
    if (payload.continuousBackupsDescription != null) {
      result
        ..add('ContinuousBackupsDescription')
        ..add(serializers.serialize(
          payload.continuousBackupsDescription!,
          specifiedType: const FullType(_i2.ContinuousBackupsDescription),
        ));
    }
    return result;
  }
}
