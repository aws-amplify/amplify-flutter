// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update_global_table_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/global_table_description.dart'
    as _i2;

part 'update_global_table_output.g.dart';

abstract class UpdateGlobalTableOutput
    with _i1.AWSEquatable<UpdateGlobalTableOutput>
    implements Built<UpdateGlobalTableOutput, UpdateGlobalTableOutputBuilder> {
  factory UpdateGlobalTableOutput(
      {_i2.GlobalTableDescription? globalTableDescription}) {
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

  static const List<_i3.SmithySerializer> serializers = [
    UpdateGlobalTableOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateGlobalTableOutputBuilder b) {}

  /// Contains the details of the global table.
  _i2.GlobalTableDescription? get globalTableDescription;
  @override
  List<Object?> get props => [globalTableDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateGlobalTableOutput');
    helper.add(
      'globalTableDescription',
      globalTableDescription,
    );
    return helper.toString();
  }
}

class UpdateGlobalTableOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<UpdateGlobalTableOutput> {
  const UpdateGlobalTableOutputAwsJson10Serializer()
      : super('UpdateGlobalTableOutput');

  @override
  Iterable<Type> get types => const [
        UpdateGlobalTableOutput,
        _$UpdateGlobalTableOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'GlobalTableDescription':
          if (value != null) {
            result.globalTableDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.GlobalTableDescription),
            ) as _i2.GlobalTableDescription));
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
    final payload = (object as UpdateGlobalTableOutput);
    final result = <Object?>[];
    if (payload.globalTableDescription != null) {
      result
        ..add('GlobalTableDescription')
        ..add(serializers.serialize(
          payload.globalTableDescription!,
          specifiedType: const FullType(_i2.GlobalTableDescription),
        ));
    }
    return result;
  }
}
