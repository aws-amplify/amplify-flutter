// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_launch_template_data_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/response_launch_template_data.dart';

part 'get_launch_template_data_result.g.dart';

abstract class GetLaunchTemplateDataResult
    with _i1.AWSEquatable<GetLaunchTemplateDataResult>
    implements
        Built<GetLaunchTemplateDataResult, GetLaunchTemplateDataResultBuilder> {
  factory GetLaunchTemplateDataResult(
      {ResponseLaunchTemplateData? launchTemplateData}) {
    return _$GetLaunchTemplateDataResult._(
        launchTemplateData: launchTemplateData);
  }

  factory GetLaunchTemplateDataResult.build(
          [void Function(GetLaunchTemplateDataResultBuilder) updates]) =
      _$GetLaunchTemplateDataResult;

  const GetLaunchTemplateDataResult._();

  /// Constructs a [GetLaunchTemplateDataResult] from a [payload] and [response].
  factory GetLaunchTemplateDataResult.fromResponse(
    GetLaunchTemplateDataResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetLaunchTemplateDataResult>>
      serializers = [GetLaunchTemplateDataResultEc2QuerySerializer()];

  /// The instance data.
  ResponseLaunchTemplateData? get launchTemplateData;
  @override
  List<Object?> get props => [launchTemplateData];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetLaunchTemplateDataResult')
      ..add(
        'launchTemplateData',
        launchTemplateData,
      );
    return helper.toString();
  }
}

class GetLaunchTemplateDataResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetLaunchTemplateDataResult> {
  const GetLaunchTemplateDataResultEc2QuerySerializer()
      : super('GetLaunchTemplateDataResult');

  @override
  Iterable<Type> get types => const [
        GetLaunchTemplateDataResult,
        _$GetLaunchTemplateDataResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetLaunchTemplateDataResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLaunchTemplateDataResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplateData':
          result.launchTemplateData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ResponseLaunchTemplateData),
          ) as ResponseLaunchTemplateData));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetLaunchTemplateDataResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetLaunchTemplateDataResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetLaunchTemplateDataResult(:launchTemplateData) = object;
    if (launchTemplateData != null) {
      result$
        ..add(const _i2.XmlElementName('LaunchTemplateData'))
        ..add(serializers.serialize(
          launchTemplateData,
          specifiedType: const FullType(ResponseLaunchTemplateData),
        ));
    }
    return result$;
  }
}
