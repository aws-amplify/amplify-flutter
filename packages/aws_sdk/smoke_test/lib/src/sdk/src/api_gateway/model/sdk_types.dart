// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.sdk_types; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/sdk_type.dart' as _i2;

part 'sdk_types.g.dart';

/// The collection of SdkType instances.
abstract class SdkTypes
    with _i1.AWSEquatable<SdkTypes>
    implements Built<SdkTypes, SdkTypesBuilder> {
  /// The collection of SdkType instances.
  factory SdkTypes({List<_i2.SdkType>? items}) {
    return _$SdkTypes._(items: items == null ? null : _i3.BuiltList(items));
  }

  /// The collection of SdkType instances.
  factory SdkTypes.build([void Function(SdkTypesBuilder) updates]) = _$SdkTypes;

  const SdkTypes._();

  /// Constructs a [SdkTypes] from a [payload] and [response].
  factory SdkTypes.fromResponse(
    SdkTypes payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    SdkTypesRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SdkTypesBuilder b) {}

  /// The current page of elements from this collection.
  _i3.BuiltList<_i2.SdkType>? get items;
  @override
  List<Object?> get props => [items];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SdkTypes');
    helper.add(
      'items',
      items,
    );
    return helper.toString();
  }
}

class SdkTypesRestJson1Serializer
    extends _i4.StructuredSmithySerializer<SdkTypes> {
  const SdkTypesRestJson1Serializer() : super('SdkTypes');

  @override
  Iterable<Type> get types => const [
        SdkTypes,
        _$SdkTypes,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  SdkTypes deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdkTypesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'item':
          if (value != null) {
            result.items.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SdkType)],
              ),
            ) as _i3.BuiltList<_i2.SdkType>));
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
    final payload = (object as SdkTypes);
    final result = <Object?>[];
    if (payload.items != null) {
      result
        ..add('item')
        ..add(serializers.serialize(
          payload.items!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.SdkType)],
          ),
        ));
    }
    return result;
  }
}
