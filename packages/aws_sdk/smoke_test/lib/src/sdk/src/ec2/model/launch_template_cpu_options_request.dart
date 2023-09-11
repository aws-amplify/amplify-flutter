// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_cpu_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/amd_sev_snp_specification.dart';

part 'launch_template_cpu_options_request.g.dart';

/// The CPU options for the instance. Both the core count and threads per core must be specified in the request.
abstract class LaunchTemplateCpuOptionsRequest
    with
        _i1.AWSEquatable<LaunchTemplateCpuOptionsRequest>
    implements
        Built<LaunchTemplateCpuOptionsRequest,
            LaunchTemplateCpuOptionsRequestBuilder> {
  /// The CPU options for the instance. Both the core count and threads per core must be specified in the request.
  factory LaunchTemplateCpuOptionsRequest({
    int? coreCount,
    int? threadsPerCore,
    AmdSevSnpSpecification? amdSevSnp,
  }) {
    coreCount ??= 0;
    threadsPerCore ??= 0;
    return _$LaunchTemplateCpuOptionsRequest._(
      coreCount: coreCount,
      threadsPerCore: threadsPerCore,
      amdSevSnp: amdSevSnp,
    );
  }

  /// The CPU options for the instance. Both the core count and threads per core must be specified in the request.
  factory LaunchTemplateCpuOptionsRequest.build(
          [void Function(LaunchTemplateCpuOptionsRequestBuilder) updates]) =
      _$LaunchTemplateCpuOptionsRequest;

  const LaunchTemplateCpuOptionsRequest._();

  static const List<_i2.SmithySerializer<LaunchTemplateCpuOptionsRequest>>
      serializers = [LaunchTemplateCpuOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateCpuOptionsRequestBuilder b) {
    b
      ..coreCount = 0
      ..threadsPerCore = 0;
  }

  /// The number of CPU cores for the instance.
  int get coreCount;

  /// The number of threads per CPU core. To disable multithreading for the instance, specify a value of `1`. Otherwise, specify the default value of `2`.
  int get threadsPerCore;

  /// Indicates whether to enable the instance for AMD SEV-SNP. AMD SEV-SNP is supported with M6a, R6a, and C6a instance types only. For more information, see [AMD SEV-SNP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sev-snp.html).
  AmdSevSnpSpecification? get amdSevSnp;
  @override
  List<Object?> get props => [
        coreCount,
        threadsPerCore,
        amdSevSnp,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateCpuOptionsRequest')
          ..add(
            'coreCount',
            coreCount,
          )
          ..add(
            'threadsPerCore',
            threadsPerCore,
          )
          ..add(
            'amdSevSnp',
            amdSevSnp,
          );
    return helper.toString();
  }
}

class LaunchTemplateCpuOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateCpuOptionsRequest> {
  const LaunchTemplateCpuOptionsRequestEc2QuerySerializer()
      : super('LaunchTemplateCpuOptionsRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateCpuOptionsRequest,
        _$LaunchTemplateCpuOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateCpuOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateCpuOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CoreCount':
          result.coreCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ThreadsPerCore':
          result.threadsPerCore = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'AmdSevSnp':
          result.amdSevSnp = (serializers.deserialize(
            value,
            specifiedType: const FullType(AmdSevSnpSpecification),
          ) as AmdSevSnpSpecification);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LaunchTemplateCpuOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateCpuOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateCpuOptionsRequest(
      :coreCount,
      :threadsPerCore,
      :amdSevSnp
    ) = object;
    result$
      ..add(const _i2.XmlElementName('CoreCount'))
      ..add(serializers.serialize(
        coreCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('ThreadsPerCore'))
      ..add(serializers.serialize(
        threadsPerCore,
        specifiedType: const FullType(int),
      ));
    if (amdSevSnp != null) {
      result$
        ..add(const _i2.XmlElementName('AmdSevSnp'))
        ..add(serializers.serialize(
          amdSevSnp,
          specifiedType: const FullType(AmdSevSnpSpecification),
        ));
    }
    return result$;
  }
}
