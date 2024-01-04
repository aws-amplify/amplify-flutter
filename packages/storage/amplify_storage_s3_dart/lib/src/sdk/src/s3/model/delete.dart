// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.delete; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object_identifier.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'delete.g.dart';

/// Container for the objects to delete.
abstract class Delete
    with _i1.AWSEquatable<Delete>
    implements Built<Delete, DeleteBuilder> {
  /// Container for the objects to delete.
  factory Delete({
    required List<ObjectIdentifier> objects,
    bool? quiet,
  }) {
    return _$Delete._(
      objects: _i2.BuiltList(objects),
      quiet: quiet,
    );
  }

  /// Container for the objects to delete.
  factory Delete.build([void Function(DeleteBuilder) updates]) = _$Delete;

  const Delete._();

  static const List<_i3.SmithySerializer<Delete>> serializers = [
    DeleteRestXmlSerializer()
  ];

  /// The object to delete.
  ///
  /// **Directory buckets** \- For directory buckets, an object that's composed entirely of whitespace characters is not supported by the `DeleteObjects` API operation. The request will receive a `400 Bad Request` error and none of the objects in the request will be deleted.
  _i2.BuiltList<ObjectIdentifier> get objects;

  /// Element to enable quiet mode for the request. When you add this element, you must set its value to `true`.
  bool? get quiet;
  @override
  List<Object?> get props => [
        objects,
        quiet,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Delete')
      ..add(
        'objects',
        objects,
      )
      ..add(
        'quiet',
        quiet,
      );
    return helper.toString();
  }
}

class DeleteRestXmlSerializer extends _i3.StructuredSmithySerializer<Delete> {
  const DeleteRestXmlSerializer() : super('Delete');

  @override
  Iterable<Type> get types => const [
        Delete,
        _$Delete,
      ];

  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Object':
          result.objects.add((serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectIdentifier),
          ) as ObjectIdentifier));
        case 'Quiet':
          result.quiet = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Delete object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'Delete',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Delete(:objects, :quiet) = object;
    result$.addAll(
        const _i3.XmlBuiltListSerializer(memberName: 'Object').serialize(
      serializers,
      objects,
      specifiedType: const FullType(
        _i2.BuiltList,
        [FullType(ObjectIdentifier)],
      ),
    ));
    if (quiet != null) {
      result$
        ..add(const _i3.XmlElementName('Quiet'))
        ..add(serializers.serialize(
          quiet,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
