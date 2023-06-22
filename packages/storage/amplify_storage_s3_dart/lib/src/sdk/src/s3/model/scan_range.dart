// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.scan_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'scan_range.g.dart';

/// Specifies the byte range of the object to get the records from. A record is processed when its first byte is contained by the range. This parameter is optional, but when specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the start and end of the range.
abstract class ScanRange
    with _i1.AWSEquatable<ScanRange>
    implements Built<ScanRange, ScanRangeBuilder> {
  /// Specifies the byte range of the object to get the records from. A record is processed when its first byte is contained by the range. This parameter is optional, but when specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the start and end of the range.
  factory ScanRange({
    _i2.Int64? start,
    _i2.Int64? end,
  }) {
    return _$ScanRange._(
      start: start,
      end: end,
    );
  }

  /// Specifies the byte range of the object to get the records from. A record is processed when its first byte is contained by the range. This parameter is optional, but when specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the start and end of the range.
  factory ScanRange.build([void Function(ScanRangeBuilder) updates]) =
      _$ScanRange;

  const ScanRange._();

  static const List<_i3.SmithySerializer<ScanRange>> serializers = [
    ScanRangeRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScanRangeBuilder b) {}

  /// Specifies the start of the byte range. This parameter is optional. Valid values: non-negative integers. The default value is 0. If only `start` is supplied, it means scan from that point to the end of the file. For example, `50` means scan from byte 50 until the end of the file.
  _i2.Int64? get start;

  /// Specifies the end of the byte range. This parameter is optional. Valid values: non-negative integers. The default value is one less than the size of the object being queried. If only the End parameter is supplied, it is interpreted to mean scan the last N bytes of the file. For example, `50` means scan the last 50 bytes.
  _i2.Int64? get end;
  @override
  List<Object?> get props => [
        start,
        end,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScanRange')
      ..add(
        'start',
        start,
      )
      ..add(
        'end',
        end,
      );
    return helper.toString();
  }
}

class ScanRangeRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ScanRange> {
  const ScanRangeRestXmlSerializer() : super('ScanRange');

  @override
  Iterable<Type> get types => const [
        ScanRange,
        _$ScanRange,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ScanRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScanRangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'End':
          result.end = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
        case 'Start':
          result.start = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ScanRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ScanRange',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ScanRange(:end, :start) = object;
    if (end != null) {
      result$
        ..add(const _i3.XmlElementName('End'))
        ..add(serializers.serialize(
          end,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (start != null) {
      result$
        ..add(const _i3.XmlElementName('Start'))
        ..add(serializers.serialize(
          start,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    return result$;
  }
}
