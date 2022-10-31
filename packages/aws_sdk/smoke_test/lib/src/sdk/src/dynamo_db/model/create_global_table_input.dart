// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.create_global_table_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/replica.dart' as _i3;

part 'create_global_table_input.g.dart';

abstract class CreateGlobalTableInput
    with
        _i1.HttpInput<CreateGlobalTableInput>,
        _i2.AWSEquatable<CreateGlobalTableInput>
    implements Built<CreateGlobalTableInput, CreateGlobalTableInputBuilder> {
  factory CreateGlobalTableInput({
    required String globalTableName,
    required List<_i3.Replica> replicationGroup,
  }) {
    return _$CreateGlobalTableInput._(
      globalTableName: globalTableName,
      replicationGroup: _i4.BuiltList(replicationGroup),
    );
  }

  factory CreateGlobalTableInput.build(
          [void Function(CreateGlobalTableInputBuilder) updates]) =
      _$CreateGlobalTableInput;

  const CreateGlobalTableInput._();

  factory CreateGlobalTableInput.fromRequest(
    CreateGlobalTableInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateGlobalTableInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateGlobalTableInputBuilder b) {}

  /// The global table name.
  String get globalTableName;

  /// The Regions where the global table needs to be created.
  _i4.BuiltList<_i3.Replica> get replicationGroup;
  @override
  CreateGlobalTableInput getPayload() => this;
  @override
  List<Object?> get props => [
        globalTableName,
        replicationGroup,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateGlobalTableInput');
    helper.add(
      'globalTableName',
      globalTableName,
    );
    helper.add(
      'replicationGroup',
      replicationGroup,
    );
    return helper.toString();
  }
}

class CreateGlobalTableInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<CreateGlobalTableInput> {
  const CreateGlobalTableInputAwsJson10Serializer()
      : super('CreateGlobalTableInput');

  @override
  Iterable<Type> get types => const [
        CreateGlobalTableInput,
        _$CreateGlobalTableInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CreateGlobalTableInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateGlobalTableInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'GlobalTableName':
          result.globalTableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ReplicationGroup':
          result.replicationGroup.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Replica)],
            ),
          ) as _i4.BuiltList<_i3.Replica>));
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
    final payload = (object as CreateGlobalTableInput);
    final result = <Object?>[
      'GlobalTableName',
      serializers.serialize(
        payload.globalTableName,
        specifiedType: const FullType(String),
      ),
      'ReplicationGroup',
      serializers.serialize(
        payload.replicationGroup,
        specifiedType: const FullType(
          _i4.BuiltList,
          [FullType(_i3.Replica)],
        ),
      ),
    ];
    return result;
  }
}
