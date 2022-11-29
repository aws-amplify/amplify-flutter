// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_object_legal_hold_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart'
    as _i4;

part 'get_object_legal_hold_output.g.dart';

abstract class GetObjectLegalHoldOutput
    with _i1.AWSEquatable<GetObjectLegalHoldOutput>
    implements
        Built<GetObjectLegalHoldOutput, GetObjectLegalHoldOutputBuilder>,
        _i2.HasPayload<_i3.ObjectLockLegalHold> {
  factory GetObjectLegalHoldOutput({_i3.ObjectLockLegalHold? legalHold}) {
    return _$GetObjectLegalHoldOutput._(legalHold: legalHold);
  }

  factory GetObjectLegalHoldOutput.build(
          [void Function(GetObjectLegalHoldOutputBuilder) updates]) =
      _$GetObjectLegalHoldOutput;

  const GetObjectLegalHoldOutput._();

  /// Constructs a [GetObjectLegalHoldOutput] from a [payload] and [response].
  factory GetObjectLegalHoldOutput.fromResponse(
    _i3.ObjectLockLegalHold? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectLegalHoldOutput.build((b) {
        if (payload != null) {
          b.legalHold.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetObjectLegalHoldOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectLegalHoldOutputBuilder b) {}

  /// The current legal hold status for the specified object.
  _i3.ObjectLockLegalHold? get legalHold;
  @override
  _i3.ObjectLockLegalHold? getPayload() =>
      legalHold ?? _i3.ObjectLockLegalHold();
  @override
  List<Object?> get props => [legalHold];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectLegalHoldOutput');
    helper.add(
      'legalHold',
      legalHold,
    );
    return helper.toString();
  }
}

class GetObjectLegalHoldOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.ObjectLockLegalHold> {
  const GetObjectLegalHoldOutputRestXmlSerializer()
      : super('GetObjectLegalHoldOutput');

  @override
  Iterable<Type> get types => const [
        GetObjectLegalHoldOutput,
        _$GetObjectLegalHoldOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.ObjectLockLegalHold deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.ObjectLockLegalHoldBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ObjectLockLegalHoldStatus),
            ) as _i4.ObjectLockLegalHoldStatus);
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
    final payload = object is GetObjectLegalHoldOutput
        ? object.getPayload()
        : (object as _i3.ObjectLockLegalHold?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ObjectLockLegalHold',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    if (payload.status != null) {
      result
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i4.ObjectLockLegalHoldStatus),
        ));
    }
    return result;
  }
}
