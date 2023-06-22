// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.api_gateway.model.stages; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/stage.dart' as _i2;

part 'stages.g.dart';

/// A list of Stage resources that are associated with the ApiKey resource.
abstract class Stages
    with _i1.AWSEquatable<Stages>
    implements Built<Stages, StagesBuilder> {
  /// A list of Stage resources that are associated with the ApiKey resource.
  factory Stages({List<_i2.Stage>? item}) {
    return _$Stages._(item: item == null ? null : _i3.BuiltList(item));
  }

  /// A list of Stage resources that are associated with the ApiKey resource.
  factory Stages.build([void Function(StagesBuilder) updates]) = _$Stages;

  const Stages._();

  /// Constructs a [Stages] from a [payload] and [response].
  factory Stages.fromResponse(
    Stages payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<Stages>> serializers = [
    StagesRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StagesBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.Stage>? get item;
  @override
  List<Object?> get props => [item];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Stages')
      ..add(
        'item',
        item,
      );
    return helper.toString();
  }
}

class StagesRestJson1Serializer extends _i4.StructuredSmithySerializer<Stages> {
  const StagesRestJson1Serializer() : super('Stages');

  @override
  Iterable<Type> get types => const [
        Stages,
        _$Stages,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Stages deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StagesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'item':
          result.item.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Stage)],
            ),
          ) as _i3.BuiltList<_i2.Stage>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Stages object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Stages(:item) = object;
    if (item != null) {
      result$
        ..add('item')
        ..add(serializers.serialize(
          item,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.Stage)],
          ),
        ));
    }
    return result$;
  }
}
