// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.execute_transaction_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/consumed_capacity.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/item_response.dart';

part 'execute_transaction_output.g.dart';

abstract class ExecuteTransactionOutput
    with _i1.AWSEquatable<ExecuteTransactionOutput>
    implements
        Built<ExecuteTransactionOutput, ExecuteTransactionOutputBuilder> {
  factory ExecuteTransactionOutput({
    List<ItemResponse>? responses,
    List<ConsumedCapacity>? consumedCapacity,
  }) {
    return _$ExecuteTransactionOutput._(
      responses: responses == null ? null : _i2.BuiltList(responses),
      consumedCapacity:
          consumedCapacity == null ? null : _i2.BuiltList(consumedCapacity),
    );
  }

  factory ExecuteTransactionOutput.build(
          [void Function(ExecuteTransactionOutputBuilder) updates]) =
      _$ExecuteTransactionOutput;

  const ExecuteTransactionOutput._();

  /// Constructs a [ExecuteTransactionOutput] from a [payload] and [response].
  factory ExecuteTransactionOutput.fromResponse(
    ExecuteTransactionOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ExecuteTransactionOutput>>
      serializers = [ExecuteTransactionOutputAwsJson10Serializer()];

  /// The response to a PartiQL transaction.
  _i2.BuiltList<ItemResponse>? get responses;

  /// The capacity units consumed by the entire operation. The values of the list are ordered according to the ordering of the statements.
  _i2.BuiltList<ConsumedCapacity>? get consumedCapacity;
  @override
  List<Object?> get props => [
        responses,
        consumedCapacity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExecuteTransactionOutput')
      ..add(
        'responses',
        responses,
      )
      ..add(
        'consumedCapacity',
        consumedCapacity,
      );
    return helper.toString();
  }
}

class ExecuteTransactionOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ExecuteTransactionOutput> {
  const ExecuteTransactionOutputAwsJson10Serializer()
      : super('ExecuteTransactionOutput');

  @override
  Iterable<Type> get types => const [
        ExecuteTransactionOutput,
        _$ExecuteTransactionOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExecuteTransactionOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExecuteTransactionOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Responses':
          result.responses.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ItemResponse)],
            ),
          ) as _i2.BuiltList<ItemResponse>));
        case 'ConsumedCapacity':
          result.consumedCapacity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ConsumedCapacity)],
            ),
          ) as _i2.BuiltList<ConsumedCapacity>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExecuteTransactionOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExecuteTransactionOutput(:responses, :consumedCapacity) = object;
    if (responses != null) {
      result$
        ..add('Responses')
        ..add(serializers.serialize(
          responses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ItemResponse)],
          ),
        ));
    }
    if (consumedCapacity != null) {
      result$
        ..add('ConsumedCapacity')
        ..add(serializers.serialize(
          consumedCapacity,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ConsumedCapacity)],
          ),
        ));
    }
    return result$;
  }
}
