// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update_continuous_backups_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_description.dart'
    as _i2;

part 'update_continuous_backups_output.g.dart';

abstract class UpdateContinuousBackupsOutput
    with
        _i1.AWSEquatable<UpdateContinuousBackupsOutput>
    implements
        Built<UpdateContinuousBackupsOutput,
            UpdateContinuousBackupsOutputBuilder> {
  factory UpdateContinuousBackupsOutput(
      {_i2.ContinuousBackupsDescription? continuousBackupsDescription}) {
    return _$UpdateContinuousBackupsOutput._(
        continuousBackupsDescription: continuousBackupsDescription);
  }

  factory UpdateContinuousBackupsOutput.build(
          [void Function(UpdateContinuousBackupsOutputBuilder) updates]) =
      _$UpdateContinuousBackupsOutput;

  const UpdateContinuousBackupsOutput._();

  /// Constructs a [UpdateContinuousBackupsOutput] from a [payload] and [response].
  factory UpdateContinuousBackupsOutput.fromResponse(
    UpdateContinuousBackupsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    UpdateContinuousBackupsOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateContinuousBackupsOutputBuilder b) {}

  /// Represents the continuous backups and point in time recovery settings on the table.
  _i2.ContinuousBackupsDescription? get continuousBackupsDescription;
  @override
  List<Object?> get props => [continuousBackupsDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateContinuousBackupsOutput');
    helper.add(
      'continuousBackupsDescription',
      continuousBackupsDescription,
    );
    return helper.toString();
  }
}

class UpdateContinuousBackupsOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<UpdateContinuousBackupsOutput> {
  const UpdateContinuousBackupsOutputAwsJson10Serializer()
      : super('UpdateContinuousBackupsOutput');

  @override
  Iterable<Type> get types => const [
        UpdateContinuousBackupsOutput,
        _$UpdateContinuousBackupsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateContinuousBackupsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateContinuousBackupsOutputBuilder();
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
    final payload = (object as UpdateContinuousBackupsOutput);
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
