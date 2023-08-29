// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_managed_prefix_list_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/add_prefix_list_entry.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_managed_prefix_list_request.g.dart';

abstract class CreateManagedPrefixListRequest
    with
        _i1.HttpInput<CreateManagedPrefixListRequest>,
        _i2.AWSEquatable<CreateManagedPrefixListRequest>
    implements
        Built<CreateManagedPrefixListRequest,
            CreateManagedPrefixListRequestBuilder> {
  factory CreateManagedPrefixListRequest({
    bool? dryRun,
    String? prefixListName,
    List<AddPrefixListEntry>? entries,
    int? maxEntries,
    List<TagSpecification>? tagSpecifications,
    String? addressFamily,
    String? clientToken,
  }) {
    dryRun ??= false;
    maxEntries ??= 0;
    return _$CreateManagedPrefixListRequest._(
      dryRun: dryRun,
      prefixListName: prefixListName,
      entries: entries == null ? null : _i3.BuiltList(entries),
      maxEntries: maxEntries,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      addressFamily: addressFamily,
      clientToken: clientToken,
    );
  }

  factory CreateManagedPrefixListRequest.build(
          [void Function(CreateManagedPrefixListRequestBuilder) updates]) =
      _$CreateManagedPrefixListRequest;

  const CreateManagedPrefixListRequest._();

  factory CreateManagedPrefixListRequest.fromRequest(
    CreateManagedPrefixListRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateManagedPrefixListRequest>>
      serializers = [CreateManagedPrefixListRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateManagedPrefixListRequestBuilder b) {
    b
      ..dryRun = false
      ..maxEntries = 0
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A name for the prefix list.
  ///
  /// Constraints: Up to 255 characters in length. The name cannot start with `com.amazonaws`.
  String? get prefixListName;

  /// One or more entries for the prefix list.
  _i3.BuiltList<AddPrefixListEntry>? get entries;

  /// The maximum number of entries for the prefix list.
  int get maxEntries;

  /// The tags to apply to the prefix list during creation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// The IP address type.
  ///
  /// Valid Values: `IPv4` | `IPv6`
  String? get addressFamily;

  /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraints: Up to 255 UTF-8 characters in length.
  String? get clientToken;
  @override
  CreateManagedPrefixListRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        prefixListName,
        entries,
        maxEntries,
        tagSpecifications,
        addressFamily,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateManagedPrefixListRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'prefixListName',
        prefixListName,
      )
      ..add(
        'entries',
        entries,
      )
      ..add(
        'maxEntries',
        maxEntries,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'addressFamily',
        addressFamily,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class CreateManagedPrefixListRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateManagedPrefixListRequest> {
  const CreateManagedPrefixListRequestEc2QuerySerializer()
      : super('CreateManagedPrefixListRequest');

  @override
  Iterable<Type> get types => const [
        CreateManagedPrefixListRequest,
        _$CreateManagedPrefixListRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateManagedPrefixListRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateManagedPrefixListRequestBuilder();
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
        case 'PrefixListName':
          result.prefixListName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Entry':
          result.entries.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(AddPrefixListEntry)],
            ),
          ) as _i3.BuiltList<AddPrefixListEntry>));
        case 'MaxEntries':
          result.maxEntries = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'AddressFamily':
          result.addressFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    CreateManagedPrefixListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateManagedPrefixListRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateManagedPrefixListRequest(
      :dryRun,
      :prefixListName,
      :entries,
      :maxEntries,
      :tagSpecifications,
      :addressFamily,
      :clientToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (prefixListName != null) {
      result$
        ..add(const _i1.XmlElementName('PrefixListName'))
        ..add(serializers.serialize(
          prefixListName,
          specifiedType: const FullType(String),
        ));
    }
    if (entries != null) {
      result$
        ..add(const _i1.XmlElementName('Entry'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          entries,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(AddPrefixListEntry)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxEntries'))
      ..add(serializers.serialize(
        maxEntries,
        specifiedType: const FullType(int),
      ));
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (addressFamily != null) {
      result$
        ..add(const _i1.XmlElementName('AddressFamily'))
        ..add(serializers.serialize(
          addressFamily,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
