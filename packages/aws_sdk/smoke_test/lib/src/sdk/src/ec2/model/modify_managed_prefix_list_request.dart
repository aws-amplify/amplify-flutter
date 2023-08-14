// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_managed_prefix_list_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/add_prefix_list_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/remove_prefix_list_entry.dart';

part 'modify_managed_prefix_list_request.g.dart';

abstract class ModifyManagedPrefixListRequest
    with
        _i1.HttpInput<ModifyManagedPrefixListRequest>,
        _i2.AWSEquatable<ModifyManagedPrefixListRequest>
    implements
        Built<ModifyManagedPrefixListRequest,
            ModifyManagedPrefixListRequestBuilder> {
  factory ModifyManagedPrefixListRequest({
    bool? dryRun,
    String? prefixListId,
    _i3.Int64? currentVersion,
    String? prefixListName,
    List<AddPrefixListEntry>? addEntries,
    List<RemovePrefixListEntry>? removeEntries,
    int? maxEntries,
  }) {
    dryRun ??= false;
    currentVersion ??= _i3.Int64.ZERO;
    maxEntries ??= 0;
    return _$ModifyManagedPrefixListRequest._(
      dryRun: dryRun,
      prefixListId: prefixListId,
      currentVersion: currentVersion,
      prefixListName: prefixListName,
      addEntries: addEntries == null ? null : _i4.BuiltList(addEntries),
      removeEntries:
          removeEntries == null ? null : _i4.BuiltList(removeEntries),
      maxEntries: maxEntries,
    );
  }

  factory ModifyManagedPrefixListRequest.build(
          [void Function(ModifyManagedPrefixListRequestBuilder) updates]) =
      _$ModifyManagedPrefixListRequest;

  const ModifyManagedPrefixListRequest._();

  factory ModifyManagedPrefixListRequest.fromRequest(
    ModifyManagedPrefixListRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyManagedPrefixListRequest>>
      serializers = [ModifyManagedPrefixListRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyManagedPrefixListRequestBuilder b) {
    b
      ..dryRun = false
      ..currentVersion = _i3.Int64.ZERO
      ..maxEntries = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The current version of the prefix list.
  _i3.Int64 get currentVersion;

  /// A name for the prefix list.
  String? get prefixListName;

  /// One or more entries to add to the prefix list.
  _i4.BuiltList<AddPrefixListEntry>? get addEntries;

  /// One or more entries to remove from the prefix list.
  _i4.BuiltList<RemovePrefixListEntry>? get removeEntries;

  /// The maximum number of entries for the prefix list. You cannot modify the entries of a prefix list and modify the size of a prefix list at the same time.
  ///
  /// If any of the resources that reference the prefix list cannot support the new maximum size, the modify operation fails. Check the state message for the IDs of the first ten resources that do not support the new maximum size.
  int get maxEntries;
  @override
  ModifyManagedPrefixListRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        prefixListId,
        currentVersion,
        prefixListName,
        addEntries,
        removeEntries,
        maxEntries,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyManagedPrefixListRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'prefixListId',
        prefixListId,
      )
      ..add(
        'currentVersion',
        currentVersion,
      )
      ..add(
        'prefixListName',
        prefixListName,
      )
      ..add(
        'addEntries',
        addEntries,
      )
      ..add(
        'removeEntries',
        removeEntries,
      )
      ..add(
        'maxEntries',
        maxEntries,
      );
    return helper.toString();
  }
}

class ModifyManagedPrefixListRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyManagedPrefixListRequest> {
  const ModifyManagedPrefixListRequestEc2QuerySerializer()
      : super('ModifyManagedPrefixListRequest');

  @override
  Iterable<Type> get types => const [
        ModifyManagedPrefixListRequest,
        _$ModifyManagedPrefixListRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyManagedPrefixListRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyManagedPrefixListRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'PrefixListId':
          result.prefixListId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CurrentVersion':
          result.currentVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'PrefixListName':
          result.prefixListName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AddEntry':
          result.addEntries.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(AddPrefixListEntry)],
            ),
          ) as _i4.BuiltList<AddPrefixListEntry>));
        case 'RemoveEntry':
          result.removeEntries.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(RemovePrefixListEntry)],
            ),
          ) as _i4.BuiltList<RemovePrefixListEntry>));
        case 'MaxEntries':
          result.maxEntries = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyManagedPrefixListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyManagedPrefixListRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyManagedPrefixListRequest(
      :dryRun,
      :prefixListId,
      :currentVersion,
      :prefixListName,
      :addEntries,
      :removeEntries,
      :maxEntries
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (prefixListId != null) {
      result$
        ..add(const _i1.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          prefixListId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('CurrentVersion'))
      ..add(serializers.serialize(
        currentVersion,
        specifiedType: const FullType(_i3.Int64),
      ));
    if (prefixListName != null) {
      result$
        ..add(const _i1.XmlElementName('PrefixListName'))
        ..add(serializers.serialize(
          prefixListName,
          specifiedType: const FullType(String),
        ));
    }
    if (addEntries != null) {
      result$
        ..add(const _i1.XmlElementName('AddEntry'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          addEntries,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(AddPrefixListEntry)],
          ),
        ));
    }
    if (removeEntries != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveEntry'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          removeEntries,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(RemovePrefixListEntry)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxEntries'))
      ..add(serializers.serialize(
        maxEntries,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
