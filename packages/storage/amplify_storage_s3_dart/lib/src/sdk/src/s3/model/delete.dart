// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.delete; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_identifier.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'delete.g.dart';

/// Container for the objects to delete.
abstract class Delete
    with _i1.AWSEquatable<Delete>
    implements Built<Delete, DeleteBuilder> {
  /// Container for the objects to delete.
  factory Delete({
    required List<_i2.ObjectIdentifier> objects,
    bool? quiet,
  }) {
    quiet ??= false;
    return _$Delete._(
      objects: _i3.BuiltList(objects),
      quiet: quiet,
    );
  }

  /// Container for the objects to delete.
  factory Delete.build([void Function(DeleteBuilder) updates]) = _$Delete;

  const Delete._();

  static const List<_i4.SmithySerializer> serializers = [
    DeleteRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteBuilder b) {
    b.quiet = false;
  }

  /// The objects to delete.
  _i3.BuiltList<_i2.ObjectIdentifier> get objects;

  /// Element to enable quiet mode for the request. When you add this element, you must set its value to true.
  bool get quiet;
  @override
  List<Object?> get props => [
        objects,
        quiet,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Delete');
    helper.add(
      'objects',
      objects,
    );
    helper.add(
      'quiet',
      quiet,
    );
    return helper.toString();
  }
}

class DeleteRestXmlSerializer extends _i4.StructuredSmithySerializer<Delete> {
  const DeleteRestXmlSerializer() : super('Delete');

  @override
  Iterable<Type> get types => const [
        Delete,
        _$Delete,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Delete deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Object':
          result.objects.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ObjectIdentifier),
          ) as _i2.ObjectIdentifier));
          break;
        case 'Quiet':
          result.quiet = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as Delete);
    final result = <Object?>[
      const _i4.XmlElementName(
        'Delete',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result.addAll(
        const _i4.XmlBuiltListSerializer(memberName: 'Object').serialize(
      serializers,
      payload.objects,
      specifiedType: const FullType.nullable(
        _i3.BuiltList,
        [FullType(_i2.ObjectIdentifier)],
      ),
    ));
    result
      ..add(const _i4.XmlElementName('Quiet'))
      ..add(serializers.serialize(
        payload.quiet,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
