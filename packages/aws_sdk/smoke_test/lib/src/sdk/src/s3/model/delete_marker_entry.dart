// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.delete_marker_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i2;

part 'delete_marker_entry.g.dart';

/// Information about the delete marker.
abstract class DeleteMarkerEntry
    with _i1.AWSEquatable<DeleteMarkerEntry>
    implements Built<DeleteMarkerEntry, DeleteMarkerEntryBuilder> {
  /// Information about the delete marker.
  factory DeleteMarkerEntry({
    bool? isLatest,
    String? key,
    DateTime? lastModified,
    _i2.Owner? owner,
    String? versionId,
  }) {
    return _$DeleteMarkerEntry._(
      isLatest: isLatest,
      key: key,
      lastModified: lastModified,
      owner: owner,
      versionId: versionId,
    );
  }

  /// Information about the delete marker.
  factory DeleteMarkerEntry.build(
      [void Function(DeleteMarkerEntryBuilder) updates]) = _$DeleteMarkerEntry;

  const DeleteMarkerEntry._();

  static const List<_i3.SmithySerializer> serializers = [
    DeleteMarkerEntryRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteMarkerEntryBuilder b) {}

  /// Specifies whether the object is (true) or is not (false) the latest version of an object.
  bool? get isLatest;

  /// The object key.
  String? get key;

  /// Date and time the object was last modified.
  DateTime? get lastModified;

  /// The account that created the delete marker.>
  _i2.Owner? get owner;

  /// Version ID of an object.
  String? get versionId;
  @override
  List<Object?> get props => [
        isLatest,
        key,
        lastModified,
        owner,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteMarkerEntry');
    helper.add(
      'isLatest',
      isLatest,
    );
    helper.add(
      'key',
      key,
    );
    helper.add(
      'lastModified',
      lastModified,
    );
    helper.add(
      'owner',
      owner,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

class DeleteMarkerEntryRestXmlSerializer
    extends _i3.StructuredSmithySerializer<DeleteMarkerEntry> {
  const DeleteMarkerEntryRestXmlSerializer() : super('DeleteMarkerEntry');

  @override
  Iterable<Type> get types => const [
        DeleteMarkerEntry,
        _$DeleteMarkerEntry,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  DeleteMarkerEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteMarkerEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'IsLatest':
          if (value != null) {
            result.isLatest = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastModified':
          if (value != null) {
            result.lastModified = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Owner':
          if (value != null) {
            result.owner.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Owner),
            ) as _i2.Owner));
          }
          break;
        case 'VersionId':
          if (value != null) {
            result.versionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DeleteMarkerEntry);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteMarkerEntry',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.isLatest != null) {
      result
        ..add(const _i3.XmlElementName('IsLatest'))
        ..add(serializers.serialize(
          payload.isLatest!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.key != null) {
      result
        ..add(const _i3.XmlElementName('Key'))
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastModified != null) {
      result
        ..add(const _i3.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          payload.lastModified!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.owner != null) {
      result
        ..add(const _i3.XmlElementName('Owner'))
        ..add(serializers.serialize(
          payload.owner!,
          specifiedType: const FullType(_i2.Owner),
        ));
    }
    if (payload.versionId != null) {
      result
        ..add(const _i3.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          payload.versionId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
