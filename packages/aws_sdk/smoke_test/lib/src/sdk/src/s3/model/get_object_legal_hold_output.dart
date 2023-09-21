// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_object_legal_hold_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_lock_legal_hold_status.dart';

part 'get_object_legal_hold_output.g.dart';

abstract class GetObjectLegalHoldOutput
    with _i1.AWSEquatable<GetObjectLegalHoldOutput>
    implements
        Built<GetObjectLegalHoldOutput, GetObjectLegalHoldOutputBuilder>,
        _i2.HasPayload<ObjectLockLegalHold> {
  factory GetObjectLegalHoldOutput({ObjectLockLegalHold? legalHold}) {
    return _$GetObjectLegalHoldOutput._(legalHold: legalHold);
  }

  factory GetObjectLegalHoldOutput.build(
          [void Function(GetObjectLegalHoldOutputBuilder) updates]) =
      _$GetObjectLegalHoldOutput;

  const GetObjectLegalHoldOutput._();

  /// Constructs a [GetObjectLegalHoldOutput] from a [payload] and [response].
  factory GetObjectLegalHoldOutput.fromResponse(
    ObjectLockLegalHold? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectLegalHoldOutput.build((b) {
        if (payload != null) {
          b.legalHold.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer<ObjectLockLegalHold?>> serializers = [
    GetObjectLegalHoldOutputRestXmlSerializer()
  ];

  /// The current legal hold status for the specified object.
  ObjectLockLegalHold? get legalHold;
  @override
  ObjectLockLegalHold? getPayload() => legalHold ?? ObjectLockLegalHold();
  @override
  List<Object?> get props => [legalHold];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectLegalHoldOutput')
      ..add(
        'legalHold',
        legalHold,
      );
    return helper.toString();
  }
}

class GetObjectLegalHoldOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ObjectLockLegalHold> {
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
  ObjectLockLegalHold deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ObjectLockLegalHoldBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectLockLegalHoldStatus),
          ) as ObjectLockLegalHoldStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ObjectLockLegalHold object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ObjectLockLegalHold',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ObjectLockLegalHold(:status) = object;
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(ObjectLockLegalHoldStatus),
        ));
    }
    return result$;
  }
}
