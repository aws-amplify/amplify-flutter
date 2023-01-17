// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.put_object_legal_hold_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i3;

part 'put_object_legal_hold_output.g.dart';

abstract class PutObjectLegalHoldOutput
    with _i1.AWSEquatable<PutObjectLegalHoldOutput>
    implements
        Built<PutObjectLegalHoldOutput, PutObjectLegalHoldOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<PutObjectLegalHoldOutputPayload> {
  factory PutObjectLegalHoldOutput({_i3.RequestCharged? requestCharged}) {
    return _$PutObjectLegalHoldOutput._(requestCharged: requestCharged);
  }

  factory PutObjectLegalHoldOutput.build(
          [void Function(PutObjectLegalHoldOutputBuilder) updates]) =
      _$PutObjectLegalHoldOutput;

  const PutObjectLegalHoldOutput._();

  /// Constructs a [PutObjectLegalHoldOutput] from a [payload] and [response].
  factory PutObjectLegalHoldOutput.fromResponse(
    PutObjectLegalHoldOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      PutObjectLegalHoldOutput.build((b) {
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i3.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    PutObjectLegalHoldOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectLegalHoldOutputBuilder b) {}

  /// If present, indicates that the requester was successfully charged for the request.
  _i3.RequestCharged? get requestCharged;
  @override
  PutObjectLegalHoldOutputPayload getPayload() =>
      PutObjectLegalHoldOutputPayload();
  @override
  List<Object?> get props => [requestCharged];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectLegalHoldOutput');
    helper.add(
      'requestCharged',
      requestCharged,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class PutObjectLegalHoldOutputPayload
    with
        _i1.AWSEquatable<PutObjectLegalHoldOutputPayload>
    implements
        Built<PutObjectLegalHoldOutputPayload,
            PutObjectLegalHoldOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory PutObjectLegalHoldOutputPayload(
          [void Function(PutObjectLegalHoldOutputPayloadBuilder) updates]) =
      _$PutObjectLegalHoldOutputPayload;

  const PutObjectLegalHoldOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectLegalHoldOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutObjectLegalHoldOutputPayload');
    return helper.toString();
  }
}

class PutObjectLegalHoldOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<PutObjectLegalHoldOutputPayload> {
  const PutObjectLegalHoldOutputRestXmlSerializer()
      : super('PutObjectLegalHoldOutput');

  @override
  Iterable<Type> get types => const [
        PutObjectLegalHoldOutput,
        _$PutObjectLegalHoldOutput,
        PutObjectLegalHoldOutputPayload,
        _$PutObjectLegalHoldOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PutObjectLegalHoldOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return PutObjectLegalHoldOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'PutObjectLegalHoldOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
