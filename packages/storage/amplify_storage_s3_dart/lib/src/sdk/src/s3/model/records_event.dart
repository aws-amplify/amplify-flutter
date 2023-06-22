// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.records_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'records_event.g.dart';

/// The container for the records event.
abstract class RecordsEvent
    with _i1.AWSEquatable<RecordsEvent>
    implements Built<RecordsEvent, RecordsEventBuilder> {
  /// The container for the records event.
  factory RecordsEvent({_i2.Uint8List? payload}) {
    return _$RecordsEvent._(payload: payload);
  }

  /// The container for the records event.
  factory RecordsEvent.build([void Function(RecordsEventBuilder) updates]) =
      _$RecordsEvent;

  const RecordsEvent._();

  static const List<_i3.SmithySerializer<RecordsEvent>> serializers = [
    RecordsEventRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecordsEventBuilder b) {}

  /// The byte array of partial, one or more result records.
  _i2.Uint8List? get payload;
  @override
  List<Object?> get props => [payload];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecordsEvent')
      ..add(
        'payload',
        payload,
      );
    return helper.toString();
  }
}

class RecordsEventRestXmlSerializer
    extends _i3.StructuredSmithySerializer<RecordsEvent> {
  const RecordsEventRestXmlSerializer() : super('RecordsEvent');

  @override
  Iterable<Type> get types => const [
        RecordsEvent,
        _$RecordsEvent,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  RecordsEvent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordsEventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Payload':
          result.payload = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Uint8List),
          ) as _i2.Uint8List);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecordsEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'RecordsEvent',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final RecordsEvent(:payload) = object;
    if (payload != null) {
      result$
        ..add(const _i3.XmlElementName('Payload'))
        ..add(serializers.serialize(
          payload,
          specifiedType: const FullType.nullable(_i2.Uint8List),
        ));
    }
    return result$;
  }
}
