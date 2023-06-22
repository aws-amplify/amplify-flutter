// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.list_type_registrations_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'list_type_registrations_output.g.dart';

abstract class ListTypeRegistrationsOutput
    with _i1.AWSEquatable<ListTypeRegistrationsOutput>
    implements
        Built<ListTypeRegistrationsOutput, ListTypeRegistrationsOutputBuilder> {
  factory ListTypeRegistrationsOutput({
    List<String>? registrationTokenList,
    String? nextToken,
  }) {
    return _$ListTypeRegistrationsOutput._(
      registrationTokenList: registrationTokenList == null
          ? null
          : _i2.BuiltList(registrationTokenList),
      nextToken: nextToken,
    );
  }

  factory ListTypeRegistrationsOutput.build(
          [void Function(ListTypeRegistrationsOutputBuilder) updates]) =
      _$ListTypeRegistrationsOutput;

  const ListTypeRegistrationsOutput._();

  /// Constructs a [ListTypeRegistrationsOutput] from a [payload] and [response].
  factory ListTypeRegistrationsOutput.fromResponse(
    ListTypeRegistrationsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListTypeRegistrationsOutput>>
      serializers = [ListTypeRegistrationsOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTypeRegistrationsOutputBuilder b) {}

  /// A list of extension registration tokens.
  ///
  /// Use DescribeTypeRegistration to return detailed information about a type registration request.
  _i2.BuiltList<String>? get registrationTokenList;

  /// If the request doesn't return all the remaining results, `NextToken` is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If the request returns all results, `NextToken` is set to `null`.
  String? get nextToken;
  @override
  List<Object?> get props => [
        registrationTokenList,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTypeRegistrationsOutput')
      ..add(
        'registrationTokenList',
        registrationTokenList,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class ListTypeRegistrationsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListTypeRegistrationsOutput> {
  const ListTypeRegistrationsOutputAwsQuerySerializer()
      : super('ListTypeRegistrationsOutput');

  @override
  Iterable<Type> get types => const [
        ListTypeRegistrationsOutput,
        _$ListTypeRegistrationsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListTypeRegistrationsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTypeRegistrationsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RegistrationTokenList':
          result.registrationTokenList.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'NextToken':
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
    ListTypeRegistrationsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListTypeRegistrationsOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListTypeRegistrationsOutput(:registrationTokenList, :nextToken) =
        object;
    if (registrationTokenList != null) {
      result$
        ..add(const _i3.XmlElementName('RegistrationTokenList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          registrationTokenList,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
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
