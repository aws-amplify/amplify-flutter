// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    _i2.Owner? owner,
    String? key,
    String? versionId,
    bool? isLatest,
    DateTime? lastModified,
  }) {
    return _$DeleteMarkerEntry._(
      owner: owner,
      key: key,
      versionId: versionId,
      isLatest: isLatest,
      lastModified: lastModified,
    );
  }

  /// Information about the delete marker.
  factory DeleteMarkerEntry.build(
      [void Function(DeleteMarkerEntryBuilder) updates]) = _$DeleteMarkerEntry;

  const DeleteMarkerEntry._();

  static const List<_i3.SmithySerializer<DeleteMarkerEntry>> serializers = [
    DeleteMarkerEntryRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteMarkerEntryBuilder b) {}

  /// The account that created the delete marker.>
  _i2.Owner? get owner;

  /// The object key.
  String? get key;

  /// Version ID of an object.
  String? get versionId;

  /// Specifies whether the object is (true) or is not (false) the latest version of an object.
  bool? get isLatest;

  /// Date and time the object was last modified.
  DateTime? get lastModified;
  @override
  List<Object?> get props => [
        owner,
        key,
        versionId,
        isLatest,
        lastModified,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteMarkerEntry')
      ..add(
        'owner',
        owner,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'versionId',
        versionId,
      )
      ..add(
        'isLatest',
        isLatest,
      )
      ..add(
        'lastModified',
        lastModified,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IsLatest':
          result.isLatest = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastModified':
          result.lastModified = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Owner),
          ) as _i2.Owner));
        case 'VersionId':
          result.versionId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteMarkerEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DeleteMarkerEntry',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final DeleteMarkerEntry(
      :isLatest,
      :key,
      :lastModified,
      :owner,
      :versionId
    ) = object;
    if (isLatest != null) {
      result$
        ..add(const _i3.XmlElementName('IsLatest'))
        ..add(serializers.serialize(
          isLatest,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (key != null) {
      result$
        ..add(const _i3.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (lastModified != null) {
      result$
        ..add(const _i3.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          lastModified,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i3.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(_i2.Owner),
        ));
    }
    if (versionId != null) {
      result$
        ..add(const _i3.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          versionId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
