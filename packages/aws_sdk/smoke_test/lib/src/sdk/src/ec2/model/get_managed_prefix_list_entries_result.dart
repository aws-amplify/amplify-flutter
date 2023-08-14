// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_managed_prefix_list_entries_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_entry.dart';

part 'get_managed_prefix_list_entries_result.g.dart';

abstract class GetManagedPrefixListEntriesResult
    with
        _i1.AWSEquatable<GetManagedPrefixListEntriesResult>
    implements
        Built<GetManagedPrefixListEntriesResult,
            GetManagedPrefixListEntriesResultBuilder> {
  factory GetManagedPrefixListEntriesResult({
    List<PrefixListEntry>? entries,
    String? nextToken,
  }) {
    return _$GetManagedPrefixListEntriesResult._(
      entries: entries == null ? null : _i2.BuiltList(entries),
      nextToken: nextToken,
    );
  }

  factory GetManagedPrefixListEntriesResult.build(
          [void Function(GetManagedPrefixListEntriesResultBuilder) updates]) =
      _$GetManagedPrefixListEntriesResult;

  const GetManagedPrefixListEntriesResult._();

  /// Constructs a [GetManagedPrefixListEntriesResult] from a [payload] and [response].
  factory GetManagedPrefixListEntriesResult.fromResponse(
    GetManagedPrefixListEntriesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetManagedPrefixListEntriesResult>>
      serializers = [GetManagedPrefixListEntriesResultEc2QuerySerializer()];

  /// Information about the prefix list entries.
  _i2.BuiltList<PrefixListEntry>? get entries;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        entries,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetManagedPrefixListEntriesResult')
          ..add(
            'entries',
            entries,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetManagedPrefixListEntriesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetManagedPrefixListEntriesResult> {
  const GetManagedPrefixListEntriesResultEc2QuerySerializer()
      : super('GetManagedPrefixListEntriesResult');

  @override
  Iterable<Type> get types => const [
        GetManagedPrefixListEntriesResult,
        _$GetManagedPrefixListEntriesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetManagedPrefixListEntriesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetManagedPrefixListEntriesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'entrySet':
          result.entries.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PrefixListEntry)],
            ),
          ) as _i2.BuiltList<PrefixListEntry>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    GetManagedPrefixListEntriesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetManagedPrefixListEntriesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetManagedPrefixListEntriesResult(:entries, :nextToken) = object;
    if (entries != null) {
      result$
        ..add(const _i3.XmlElementName('EntrySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          entries,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PrefixListEntry)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
