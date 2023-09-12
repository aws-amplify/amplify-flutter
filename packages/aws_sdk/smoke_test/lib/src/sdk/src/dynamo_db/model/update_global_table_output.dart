// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.update_global_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_description.dart';

part 'update_global_table_output.g.dart';

abstract class UpdateGlobalTableOutput
    with _i1.AWSEquatable<UpdateGlobalTableOutput>
    implements Built<UpdateGlobalTableOutput, UpdateGlobalTableOutputBuilder> {
  factory UpdateGlobalTableOutput(
      {GlobalTableDescription? globalTableDescription}) {
    return _$UpdateGlobalTableOutput._(
        globalTableDescription: globalTableDescription);
  }

  factory UpdateGlobalTableOutput.build(
          [void Function(UpdateGlobalTableOutputBuilder) updates]) =
      _$UpdateGlobalTableOutput;

  const UpdateGlobalTableOutput._();

  /// Constructs a [UpdateGlobalTableOutput] from a [payload] and [response].
  factory UpdateGlobalTableOutput.fromResponse(
    UpdateGlobalTableOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<UpdateGlobalTableOutput>> serializers =
      [UpdateGlobalTableOutputAwsJson10Serializer()];

  /// Contains the details of the global table.
  GlobalTableDescription? get globalTableDescription;
  @override
  List<Object?> get props => [globalTableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateGlobalTableOutput')
      ..add(
        'globalTableDescription',
        globalTableDescription,
      );
    return helper.toString();
  }
}

class UpdateGlobalTableOutputAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<UpdateGlobalTableOutput> {
  const UpdateGlobalTableOutputAwsJson10Serializer()
      : super('UpdateGlobalTableOutput');

  @override
  Iterable<Type> get types => const [
        UpdateGlobalTableOutput,
        _$UpdateGlobalTableOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateGlobalTableOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateGlobalTableOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'GlobalTableDescription':
          result.globalTableDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(GlobalTableDescription),
          ) as GlobalTableDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateGlobalTableOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final UpdateGlobalTableOutput(:globalTableDescription) = object;
    if (globalTableDescription != null) {
      result$
        ..add('GlobalTableDescription')
        ..add(serializers.serialize(
          globalTableDescription,
          specifiedType: const FullType(GlobalTableDescription),
        ));
    }
    return result$;
  }
}