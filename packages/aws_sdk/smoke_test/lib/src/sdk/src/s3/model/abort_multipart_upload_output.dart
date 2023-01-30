// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.abort_multipart_upload_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i3;

part 'abort_multipart_upload_output.g.dart';

abstract class AbortMultipartUploadOutput
    with _i1.AWSEquatable<AbortMultipartUploadOutput>
    implements
        Built<AbortMultipartUploadOutput, AbortMultipartUploadOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<AbortMultipartUploadOutputPayload> {
  factory AbortMultipartUploadOutput({_i3.RequestCharged? requestCharged}) {
    return _$AbortMultipartUploadOutput._(requestCharged: requestCharged);
  }

  factory AbortMultipartUploadOutput.build(
          [void Function(AbortMultipartUploadOutputBuilder) updates]) =
      _$AbortMultipartUploadOutput;

  const AbortMultipartUploadOutput._();

  /// Constructs a [AbortMultipartUploadOutput] from a [payload] and [response].
  factory AbortMultipartUploadOutput.fromResponse(
    AbortMultipartUploadOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      AbortMultipartUploadOutput.build((b) {
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i3.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    AbortMultipartUploadOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AbortMultipartUploadOutputBuilder b) {}

  /// If present, indicates that the requester was successfully charged for the request.
  _i3.RequestCharged? get requestCharged;
  @override
  AbortMultipartUploadOutputPayload getPayload() =>
      AbortMultipartUploadOutputPayload();
  @override
  List<Object?> get props => [requestCharged];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AbortMultipartUploadOutput');
    helper.add(
      'requestCharged',
      requestCharged,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class AbortMultipartUploadOutputPayload
    with
        _i1.AWSEquatable<AbortMultipartUploadOutputPayload>
    implements
        Built<AbortMultipartUploadOutputPayload,
            AbortMultipartUploadOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory AbortMultipartUploadOutputPayload(
          [void Function(AbortMultipartUploadOutputPayloadBuilder) updates]) =
      _$AbortMultipartUploadOutputPayload;

  const AbortMultipartUploadOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AbortMultipartUploadOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AbortMultipartUploadOutputPayload');
    return helper.toString();
  }
}

class AbortMultipartUploadOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<AbortMultipartUploadOutputPayload> {
  const AbortMultipartUploadOutputRestXmlSerializer()
      : super('AbortMultipartUploadOutput');

  @override
  Iterable<Type> get types => const [
        AbortMultipartUploadOutput,
        _$AbortMultipartUploadOutput,
        AbortMultipartUploadOutputPayload,
        _$AbortMultipartUploadOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AbortMultipartUploadOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return AbortMultipartUploadOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'AbortMultipartUploadOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
