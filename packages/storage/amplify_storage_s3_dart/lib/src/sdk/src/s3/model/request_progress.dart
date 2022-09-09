// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.request_progress; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'request_progress.g.dart';

/// Container for specifying if periodic `QueryProgress` messages should be sent.
abstract class RequestProgress
    with _i1.AWSEquatable<RequestProgress>
    implements Built<RequestProgress, RequestProgressBuilder> {
  /// Container for specifying if periodic `QueryProgress` messages should be sent.
  factory RequestProgress({bool? enabled}) {
    return _$RequestProgress._(enabled: enabled);
  }

  /// Container for specifying if periodic `QueryProgress` messages should be sent.
  factory RequestProgress.build(
      [void Function(RequestProgressBuilder) updates]) = _$RequestProgress;

  const RequestProgress._();

  static const List<_i2.SmithySerializer> serializers = [
    RequestProgressRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestProgressBuilder b) {}

  /// Specifies whether periodic QueryProgress frames should be sent. Valid values: TRUE, FALSE. Default value: FALSE.
  bool? get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestProgress');
    helper.add('enabled', enabled);
    return helper.toString();
  }
}

class RequestProgressRestXmlSerializer
    extends _i2.StructuredSmithySerializer<RequestProgress> {
  const RequestProgressRestXmlSerializer() : super('RequestProgress');

  @override
  Iterable<Type> get types => const [RequestProgress, _$RequestProgress];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  RequestProgress deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = RequestProgressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Enabled':
          if (value != null) {
            result.enabled = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as RequestProgress);
    final result = <Object?>[
      const _i2.XmlElementName('RequestProgress',
          _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload.enabled != null) {
      result
        ..add(const _i2.XmlElementName('Enabled'))
        ..add(serializers.serialize(payload.enabled!,
            specifiedType: const FullType.nullable(bool)));
    }
    return result;
  }
}
