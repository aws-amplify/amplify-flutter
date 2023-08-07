// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.update_continuous_backups_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/continuous_backups_description.dart';

part 'update_continuous_backups_output.g.dart';

abstract class UpdateContinuousBackupsOutput
    with
        _i1.AWSEquatable<UpdateContinuousBackupsOutput>
    implements
        Built<UpdateContinuousBackupsOutput,
            UpdateContinuousBackupsOutputBuilder> {
  factory UpdateContinuousBackupsOutput(
      {ContinuousBackupsDescription? continuousBackupsDescription}) {
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

  static const List<_i2.SmithySerializer<UpdateContinuousBackupsOutput>>
      serializers = [UpdateContinuousBackupsOutputAwsJson10Serializer()];

  /// Represents the continuous backups and point in time recovery settings on the table.
  ContinuousBackupsDescription? get continuousBackupsDescription;
  @override
  List<Object?> get props => [continuousBackupsDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateContinuousBackupsOutput')
      ..add(
        'continuousBackupsDescription',
        continuousBackupsDescription,
      );
    return helper.toString();
  }
}

class UpdateContinuousBackupsOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<UpdateContinuousBackupsOutput> {
  const UpdateContinuousBackupsOutputAwsJson10Serializer()
      : super('UpdateContinuousBackupsOutput');

  @override
  Iterable<Type> get types => const [
        UpdateContinuousBackupsOutput,
        _$UpdateContinuousBackupsOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
    UpdateContinuousBackupsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateContinuousBackupsOutput(:continuousBackupsDescription) = object;
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
