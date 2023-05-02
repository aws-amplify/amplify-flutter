// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.list_role_policies_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_role_policies_request.g.dart';

abstract class ListRolePoliciesRequest
    with
        _i1.HttpInput<ListRolePoliciesRequest>,
        _i2.AWSEquatable<ListRolePoliciesRequest>
    implements Built<ListRolePoliciesRequest, ListRolePoliciesRequestBuilder> {
  factory ListRolePoliciesRequest({
    required String roleName,
    String? marker,
    int? maxItems,
  }) {
    return _$ListRolePoliciesRequest._(
      roleName: roleName,
      marker: marker,
      maxItems: maxItems,
    );
  }

  factory ListRolePoliciesRequest.build(
          [void Function(ListRolePoliciesRequestBuilder) updates]) =
      _$ListRolePoliciesRequest;

  const ListRolePoliciesRequest._();

  factory ListRolePoliciesRequest.fromRequest(
    ListRolePoliciesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListRolePoliciesRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListRolePoliciesRequestBuilder b) {}

  /// The name of the role to list policies for.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get roleName;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;
  @override
  ListRolePoliciesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        roleName,
        marker,
        maxItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListRolePoliciesRequest');
    helper.add(
      'roleName',
      roleName,
    );
    helper.add(
      'marker',
      marker,
    );
    helper.add(
      'maxItems',
      maxItems,
    );
    return helper.toString();
  }
}

class ListRolePoliciesRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListRolePoliciesRequest> {
  const ListRolePoliciesRequestAwsQuerySerializer()
      : super('ListRolePoliciesRequest');

  @override
  Iterable<Type> get types => const [
        ListRolePoliciesRequest,
        _$ListRolePoliciesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListRolePoliciesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListRolePoliciesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Marker':
          if (value != null) {
            result.marker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxItems':
          if (value != null) {
            result.maxItems = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as ListRolePoliciesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListRolePoliciesRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('RoleName'))
      ..add(serializers.serialize(
        payload.roleName,
        specifiedType: const FullType(String),
      ));
    if (payload.marker != null) {
      result
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          payload.marker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxItems != null) {
      result
        ..add(const _i1.XmlElementName('MaxItems'))
        ..add(serializers.serialize(
          payload.maxItems!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
