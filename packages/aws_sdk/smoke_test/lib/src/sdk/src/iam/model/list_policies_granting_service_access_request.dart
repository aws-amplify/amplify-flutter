// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_policies_granting_service_access_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_policies_granting_service_access_request.g.dart';

abstract class ListPoliciesGrantingServiceAccessRequest
    with
        _i1.HttpInput<ListPoliciesGrantingServiceAccessRequest>,
        _i2.AWSEquatable<ListPoliciesGrantingServiceAccessRequest>
    implements
        Built<ListPoliciesGrantingServiceAccessRequest,
            ListPoliciesGrantingServiceAccessRequestBuilder> {
  factory ListPoliciesGrantingServiceAccessRequest({
    String? marker,
    required String arn,
    required List<String> serviceNamespaces,
  }) {
    return _$ListPoliciesGrantingServiceAccessRequest._(
      marker: marker,
      arn: arn,
      serviceNamespaces: _i3.BuiltList(serviceNamespaces),
    );
  }

  factory ListPoliciesGrantingServiceAccessRequest.build(
      [void Function(ListPoliciesGrantingServiceAccessRequestBuilder)
          updates]) = _$ListPoliciesGrantingServiceAccessRequest;

  const ListPoliciesGrantingServiceAccessRequest._();

  factory ListPoliciesGrantingServiceAccessRequest.fromRequest(
    ListPoliciesGrantingServiceAccessRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ListPoliciesGrantingServiceAccessRequest>>
      serializers = [
    ListPoliciesGrantingServiceAccessRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListPoliciesGrantingServiceAccessRequestBuilder b) {}

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;

  /// The ARN of the IAM identity (user, group, or role) whose policies you want to list.
  String get arn;

  /// The service namespace for the Amazon Web Services services whose policies you want to list.
  ///
  /// To learn the service namespace for a service, see [Actions, resources, and condition keys for Amazon Web Services services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html) in the _IAM User Guide_. Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, `(service prefix: a4b)`. For more information about service namespaces, see [Amazon Web Services service namespaces](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the _Amazon Web Services General Reference_.
  _i3.BuiltList<String> get serviceNamespaces;
  @override
  ListPoliciesGrantingServiceAccessRequest getPayload() => this;
  @override
  List<Object?> get props => [
        marker,
        arn,
        serviceNamespaces,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListPoliciesGrantingServiceAccessRequest')
          ..add(
            'marker',
            marker,
          )
          ..add(
            'arn',
            arn,
          )
          ..add(
            'serviceNamespaces',
            serviceNamespaces,
          );
    return helper.toString();
  }
}

class ListPoliciesGrantingServiceAccessRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<ListPoliciesGrantingServiceAccessRequest> {
  const ListPoliciesGrantingServiceAccessRequestAwsQuerySerializer()
      : super('ListPoliciesGrantingServiceAccessRequest');

  @override
  Iterable<Type> get types => const [
        ListPoliciesGrantingServiceAccessRequest,
        _$ListPoliciesGrantingServiceAccessRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListPoliciesGrantingServiceAccessRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListPoliciesGrantingServiceAccessRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Marker':
          result.marker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ServiceNamespaces':
          result.serviceNamespaces.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListPoliciesGrantingServiceAccessRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListPoliciesGrantingServiceAccessRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListPoliciesGrantingServiceAccessRequest(
      :marker,
      :arn,
      :serviceNamespaces
    ) = object;
    if (marker != null) {
      result$
        ..add(const _i1.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Arn'))
      ..add(serializers.serialize(
        arn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('ServiceNamespaces'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        serviceNamespaces,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    return result$;
  }
}
