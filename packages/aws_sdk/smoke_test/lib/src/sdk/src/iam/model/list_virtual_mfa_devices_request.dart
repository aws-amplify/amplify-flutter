// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.list_virtual_mfa_devices_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/assignment_status_type.dart'
    as _i3;

part 'list_virtual_mfa_devices_request.g.dart';

abstract class ListVirtualMfaDevicesRequest
    with
        _i1.HttpInput<ListVirtualMfaDevicesRequest>,
        _i2.AWSEquatable<ListVirtualMfaDevicesRequest>
    implements
        Built<ListVirtualMfaDevicesRequest,
            ListVirtualMfaDevicesRequestBuilder> {
  factory ListVirtualMfaDevicesRequest({
    _i3.AssignmentStatusType? assignmentStatus,
    String? marker,
    int? maxItems,
  }) {
    return _$ListVirtualMfaDevicesRequest._(
      assignmentStatus: assignmentStatus,
      marker: marker,
      maxItems: maxItems,
    );
  }

  factory ListVirtualMfaDevicesRequest.build(
          [void Function(ListVirtualMfaDevicesRequestBuilder) updates]) =
      _$ListVirtualMfaDevicesRequest;

  const ListVirtualMfaDevicesRequest._();

  factory ListVirtualMfaDevicesRequest.fromRequest(
    ListVirtualMfaDevicesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListVirtualMfaDevicesRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListVirtualMfaDevicesRequestBuilder b) {}

  /// The status (`Unassigned` or `Assigned`) of the devices to list. If you do not specify an `AssignmentStatus`, the operation defaults to `Any`, which lists both assigned and unassigned virtual MFA devices.,
  _i3.AssignmentStatusType? get assignmentStatus;

  /// Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the `Marker` element in the response that you received to indicate where the next call should start.
  String? get marker;

  /// Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the `IsTruncated` response element is `true`.
  ///
  /// If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the `IsTruncated` response element returns `true`, and `Marker` contains a value to include in the subsequent call that tells the service where to continue from.
  int? get maxItems;
  @override
  ListVirtualMfaDevicesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        assignmentStatus,
        marker,
        maxItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListVirtualMfaDevicesRequest');
    helper.add(
      'assignmentStatus',
      assignmentStatus,
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

class ListVirtualMfaDevicesRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ListVirtualMfaDevicesRequest> {
  const ListVirtualMfaDevicesRequestAwsQuerySerializer()
      : super('ListVirtualMfaDevicesRequest');

  @override
  Iterable<Type> get types => const [
        ListVirtualMfaDevicesRequest,
        _$ListVirtualMfaDevicesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListVirtualMfaDevicesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListVirtualMfaDevicesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AssignmentStatus':
          result.assignmentStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AssignmentStatusType),
          ) as _i3.AssignmentStatusType);
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
    ListVirtualMfaDevicesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ListVirtualMfaDevicesRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListVirtualMfaDevicesRequest(:assignmentStatus, :marker, :maxItems) =
        object;
    if (assignmentStatus != null) {
      result$
        ..add(const _i1.XmlElementName('AssignmentStatus'))
        ..add(serializers.serialize(
          assignmentStatus,
          specifiedType: const FullType.nullable(_i3.AssignmentStatusType),
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
