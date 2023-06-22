// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_object_retention_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_retention_mode.dart'
    as _i4;

part 'get_object_retention_output.g.dart';

abstract class GetObjectRetentionOutput
    with _i1.AWSEquatable<GetObjectRetentionOutput>
    implements
        Built<GetObjectRetentionOutput, GetObjectRetentionOutputBuilder>,
        _i2.HasPayload<_i3.ObjectLockRetention> {
  factory GetObjectRetentionOutput({_i3.ObjectLockRetention? retention}) {
    return _$GetObjectRetentionOutput._(retention: retention);
  }

  factory GetObjectRetentionOutput.build(
          [void Function(GetObjectRetentionOutputBuilder) updates]) =
      _$GetObjectRetentionOutput;

  const GetObjectRetentionOutput._();

  /// Constructs a [GetObjectRetentionOutput] from a [payload] and [response].
  factory GetObjectRetentionOutput.fromResponse(
    _i3.ObjectLockRetention? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectRetentionOutput.build((b) {
        if (payload != null) {
          b.retention.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<_i3.ObjectLockRetention?>>
      serializers = [GetObjectRetentionOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectRetentionOutputBuilder b) {}

  /// The container element for an object's retention settings.
  _i3.ObjectLockRetention? get retention;
  @override
  _i3.ObjectLockRetention? getPayload() =>
      retention ?? _i3.ObjectLockRetention();
  @override
  List<Object?> get props => [retention];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectRetentionOutput')
      ..add(
        'retention',
        retention,
      );
    return helper.toString();
  }
}

class GetObjectRetentionOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.ObjectLockRetention> {
  const GetObjectRetentionOutputRestXmlSerializer()
      : super('GetObjectRetentionOutput');

  @override
  Iterable<Type> get types => const [
        GetObjectRetentionOutput,
        _$GetObjectRetentionOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.ObjectLockRetention deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.ObjectLockRetentionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Mode':
          result.mode = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ObjectLockRetentionMode),
          ) as _i4.ObjectLockRetentionMode);
        case 'RetainUntilDate':
          result.retainUntilDate = _i2.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i3.ObjectLockRetention object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ObjectLockRetention',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i3.ObjectLockRetention(:mode, :retainUntilDate) = object;
    if (mode != null) {
      result$
        ..add(const _i2.XmlElementName('Mode'))
        ..add(serializers.serialize(
          mode,
          specifiedType: const FullType.nullable(_i4.ObjectLockRetentionMode),
        ));
    }
    if (retainUntilDate != null) {
      result$
        ..add(const _i2.XmlElementName('RetainUntilDate'))
        ..add(_i2.TimestampSerializer.dateTime.serialize(
          serializers,
          retainUntilDate,
        ));
    }
    return result$;
  }
}
