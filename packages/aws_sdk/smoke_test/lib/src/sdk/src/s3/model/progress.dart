// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.progress; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'progress.g.dart';

/// This data type contains information about progress of an operation.
abstract class Progress
    with _i1.AWSEquatable<Progress>
    implements Built<Progress, ProgressBuilder> {
  /// This data type contains information about progress of an operation.
  factory Progress({
    _i2.Int64? bytesProcessed,
    _i2.Int64? bytesReturned,
    _i2.Int64? bytesScanned,
  }) {
    return _$Progress._(
      bytesProcessed: bytesProcessed,
      bytesReturned: bytesReturned,
      bytesScanned: bytesScanned,
    );
  }

  /// This data type contains information about progress of an operation.
  factory Progress.build([void Function(ProgressBuilder) updates]) = _$Progress;

  const Progress._();

  static const List<_i3.SmithySerializer> serializers = [
    ProgressRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProgressBuilder b) {}

  /// The current number of uncompressed object bytes processed.
  _i2.Int64? get bytesProcessed;

  /// The current number of bytes of records payload data returned.
  _i2.Int64? get bytesReturned;

  /// The current number of object bytes scanned.
  _i2.Int64? get bytesScanned;
  @override
  List<Object?> get props => [
        bytesProcessed,
        bytesReturned,
        bytesScanned,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Progress');
    helper.add(
      'bytesProcessed',
      bytesProcessed,
    );
    helper.add(
      'bytesReturned',
      bytesReturned,
    );
    helper.add(
      'bytesScanned',
      bytesScanned,
    );
    return helper.toString();
  }
}

class ProgressRestXmlSerializer
    extends _i3.StructuredSmithySerializer<Progress> {
  const ProgressRestXmlSerializer() : super('Progress');

  @override
  Iterable<Type> get types => const [
        Progress,
        _$Progress,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Progress deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProgressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'BytesProcessed':
          if (value != null) {
            result.bytesProcessed = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'BytesReturned':
          if (value != null) {
            result.bytesReturned = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'BytesScanned':
          if (value != null) {
            result.bytesScanned = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
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
    final payload = (object as Progress);
    final result = <Object?>[
      const _i3.XmlElementName(
        'Progress',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.bytesProcessed != null) {
      result
        ..add(const _i3.XmlElementName('BytesProcessed'))
        ..add(serializers.serialize(
          payload.bytesProcessed!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (payload.bytesReturned != null) {
      result
        ..add(const _i3.XmlElementName('BytesReturned'))
        ..add(serializers.serialize(
          payload.bytesReturned!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (payload.bytesScanned != null) {
      result
        ..add(const _i3.XmlElementName('BytesScanned'))
        ..add(serializers.serialize(
          payload.bytesScanned!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    return result;
  }
}
