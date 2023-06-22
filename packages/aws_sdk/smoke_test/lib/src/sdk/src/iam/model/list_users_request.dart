// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_users_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_users_request.g.dart';

abstract class ListUsersRequest
    with _i1.HttpInput<ListUsersRequest>, _i2.AWSEquatable<ListUsersRequest>
    implements Built<ListUsersRequest, ListUsersRequestBuilder> {
  factory ListUsersRequest({
    String? pathPrefix,
    String? marker,
    int? maxItems,
  }) {
    return _$ListUsersRequest._(
      pathPrefix: pathPrefix,
      marker: marker,
      maxItems: maxItems,
    );
  }

  factory ListUsersRequest.build(
      [void Function(ListUsersRequestBuilder) updates]) = _$ListUsersRequest;

  const ListUsersRequest._();

  factory ListUsersRequest.fromRequest(
    ListUsersRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ListUsersRequest>> serializers = [
    ListUsersRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListUsersRequestBuilder b) {}

  /// The path prefix for filtering the results. For example: `/division\_abc/subdivision\_xyz/`, which would get all user names whose path starts with `/division\_abc/subdivision\_xyz/`.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/), listing all user names. This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  String? get pathPrefix;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;
  @override
  ListUsersRequest getPayload() => this;
  @override
  List<Object?> get props => [
        pathPrefix,
        marker,
        maxItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListUsersRequest')
      ..add(
        'pathPrefix',
        pathPrefix,
      )
      ..add(
        'marker',
        marker,
      )
      ..add(
        'maxItems',
        maxItems,
      );
    return helper.toString();
  }
}

class ListUsersRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListUsersRequest> {
  const ListUsersRequestAwsQuerySerializer() : super('ListUsersRequest');

  @override
  Iterable<Type> get types => const [
        ListUsersRequest,
        _$ListUsersRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListUsersRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListUsersRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PathPrefix':
          result.pathPrefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Marker':
          result.marker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxItems':
          result.maxItems = (serializers.deserialize(
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
    ListUsersRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListUsersRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListUsersRequest(:pathPrefix, :marker, :maxItems) = object;
    if (pathPrefix != null) {
      result$
        ..add(const _i1.XmlElementName('PathPrefix'))
        ..add(serializers.serialize(
          pathPrefix,
          specifiedType: const FullType(String),
        ));
    }
    if (marker != null) {
      result$
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    if (maxItems != null) {
      result$
        ..add(const _i1.XmlElementName('MaxItems'))
        ..add(serializers.serialize(
          maxItems,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
