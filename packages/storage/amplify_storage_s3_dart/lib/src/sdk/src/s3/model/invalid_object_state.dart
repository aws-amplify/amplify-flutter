// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.invalid_object_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/intelligent_tiering_access_tier.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart'
    as _i4;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_object_state.g.dart';

/// Object is archived and inaccessible until restored.
abstract class InvalidObjectState
    with _i1.AWSEquatable<InvalidObjectState>
    implements
        Built<InvalidObjectState, InvalidObjectStateBuilder>,
        _i2.SmithyHttpException {
  /// Object is archived and inaccessible until restored.
  factory InvalidObjectState(
      {_i3.IntelligentTieringAccessTier? accessTier,
      _i4.StorageClass? storageClass}) {
    return _$InvalidObjectState._(
        accessTier: accessTier, storageClass: storageClass);
  }

  /// Object is archived and inaccessible until restored.
  factory InvalidObjectState.build(
          [void Function(InvalidObjectStateBuilder) updates]) =
      _$InvalidObjectState;

  const InvalidObjectState._();

  /// Constructs a [InvalidObjectState] from a [payload] and [response].
  factory InvalidObjectState.fromResponse(
          InvalidObjectState payload, _i1.AWSBaseHttpResponse response) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidObjectStateRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidObjectStateBuilder b) {}
  _i3.IntelligentTieringAccessTier? get accessTier;
  _i4.StorageClass? get storageClass;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'com.amazonaws.s3', shape: 'InvalidObjectState');
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [accessTier, storageClass];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidObjectState');
    helper.add('accessTier', accessTier);
    helper.add('storageClass', storageClass);
    return helper.toString();
  }
}

class InvalidObjectStateRestXmlSerializer
    extends _i2.StructuredSmithySerializer<InvalidObjectState> {
  const InvalidObjectStateRestXmlSerializer() : super('InvalidObjectState');

  @override
  Iterable<Type> get types => const [InvalidObjectState, _$InvalidObjectState];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  InvalidObjectState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InvalidObjectStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AccessTier':
          if (value != null) {
            result.accessTier = (serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.IntelligentTieringAccessTier))
                as _i3.IntelligentTieringAccessTier);
          }
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(value,
                    specifiedType: const FullType(_i4.StorageClass))
                as _i4.StorageClass);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as InvalidObjectState);
    final result = <Object?>[
      const _i2.XmlElementName('InvalidObjectState',
          _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload.accessTier != null) {
      result
        ..add(const _i2.XmlElementName('AccessTier'))
        ..add(serializers.serialize(payload.accessTier!,
            specifiedType:
                const FullType.nullable(_i3.IntelligentTieringAccessTier)));
    }
    if (payload.storageClass != null) {
      result
        ..add(const _i2.XmlElementName('StorageClass'))
        ..add(serializers.serialize(payload.storageClass!,
            specifiedType: const FullType.nullable(_i4.StorageClass)));
    }
    return result;
  }
}
