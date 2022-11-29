// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_accelerate_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_accelerate_status.dart'
    as _i2;

part 'get_bucket_accelerate_configuration_output.g.dart';

abstract class GetBucketAccelerateConfigurationOutput
    with
        _i1.AWSEquatable<GetBucketAccelerateConfigurationOutput>
    implements
        Built<GetBucketAccelerateConfigurationOutput,
            GetBucketAccelerateConfigurationOutputBuilder> {
  factory GetBucketAccelerateConfigurationOutput(
      {_i2.BucketAccelerateStatus? status}) {
    return _$GetBucketAccelerateConfigurationOutput._(status: status);
  }

  factory GetBucketAccelerateConfigurationOutput.build(
      [void Function(GetBucketAccelerateConfigurationOutputBuilder)
          updates]) = _$GetBucketAccelerateConfigurationOutput;

  const GetBucketAccelerateConfigurationOutput._();

  /// Constructs a [GetBucketAccelerateConfigurationOutput] from a [payload] and [response].
  factory GetBucketAccelerateConfigurationOutput.fromResponse(
    GetBucketAccelerateConfigurationOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GetBucketAccelerateConfigurationOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAccelerateConfigurationOutputBuilder b) {}

  /// The accelerate configuration of the bucket.
  _i2.BucketAccelerateStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketAccelerateConfigurationOutput');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class GetBucketAccelerateConfigurationOutputRestXmlSerializer extends _i3
    .StructuredSmithySerializer<GetBucketAccelerateConfigurationOutput> {
  const GetBucketAccelerateConfigurationOutputRestXmlSerializer()
      : super('GetBucketAccelerateConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketAccelerateConfigurationOutput,
        _$GetBucketAccelerateConfigurationOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketAccelerateConfigurationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBucketAccelerateConfigurationOutputBuilder();
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
              specifiedType: const FullType(_i2.BucketAccelerateStatus),
            ) as _i2.BucketAccelerateStatus);
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
    final payload = (object as GetBucketAccelerateConfigurationOutput);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AccelerateConfiguration',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.BucketAccelerateStatus),
        ));
    }
    return result;
  }
}
