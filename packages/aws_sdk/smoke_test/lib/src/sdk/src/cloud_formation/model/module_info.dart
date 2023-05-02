// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.module_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'module_info.g.dart';

/// Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
///
/// For more information about modules, see [Using modules to encapsulate and reuse resource configurations](AWSCloudFormation/latest/UserGuide/modules.html) in the _CloudFormation User Guide_.
abstract class ModuleInfo
    with _i1.AWSEquatable<ModuleInfo>
    implements Built<ModuleInfo, ModuleInfoBuilder> {
  /// Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
  ///
  /// For more information about modules, see [Using modules to encapsulate and reuse resource configurations](AWSCloudFormation/latest/UserGuide/modules.html) in the _CloudFormation User Guide_.
  factory ModuleInfo({
    String? typeHierarchy,
    String? logicalIdHierarchy,
  }) {
    return _$ModuleInfo._(
      typeHierarchy: typeHierarchy,
      logicalIdHierarchy: logicalIdHierarchy,
    );
  }

  /// Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
  ///
  /// For more information about modules, see [Using modules to encapsulate and reuse resource configurations](AWSCloudFormation/latest/UserGuide/modules.html) in the _CloudFormation User Guide_.
  factory ModuleInfo.build([void Function(ModuleInfoBuilder) updates]) =
      _$ModuleInfo;

  const ModuleInfo._();

  static const List<_i2.SmithySerializer> serializers = [
    ModuleInfoAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModuleInfoBuilder b) {}

  /// A concatenated list of the module type or types containing the resource. Module types are listed starting with the inner-most nested module, and separated by `/`.
  ///
  /// In the following example, the resource was created from a module of type `AWS::First::Example::MODULE`, that's nested inside a parent module of type `AWS::Second::Example::MODULE`.
  ///
  /// `AWS::First::Example::MODULE/AWS::Second::Example::MODULE`
  String? get typeHierarchy;

  /// A concatenated list of the logical IDs of the module or modules containing the resource. Modules are listed starting with the inner-most nested module, and separated by `/`.
  ///
  /// In the following example, the resource was created from a module, `moduleA`, that's nested inside a parent module, `moduleB`.
  ///
  /// `moduleA/moduleB`
  ///
  /// For more information, see [Referencing resources in a module](AWSCloudFormation/latest/UserGuide/modules.html#module-ref-resources) in the _CloudFormation User Guide_.
  String? get logicalIdHierarchy;
  @override
  List<Object?> get props => [
        typeHierarchy,
        logicalIdHierarchy,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModuleInfo');
    helper.add(
      'typeHierarchy',
      typeHierarchy,
    );
    helper.add(
      'logicalIdHierarchy',
      logicalIdHierarchy,
    );
    return helper.toString();
  }
}

class ModuleInfoAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ModuleInfo> {
  const ModuleInfoAwsQuerySerializer() : super('ModuleInfo');

  @override
  Iterable<Type> get types => const [
        ModuleInfo,
        _$ModuleInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ModuleInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModuleInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TypeHierarchy':
          if (value != null) {
            result.typeHierarchy = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LogicalIdHierarchy':
          if (value != null) {
            result.logicalIdHierarchy = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ModuleInfo);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ModuleInfoResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.typeHierarchy != null) {
      result
        ..add(const _i2.XmlElementName('TypeHierarchy'))
        ..add(serializers.serialize(
          payload.typeHierarchy!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.logicalIdHierarchy != null) {
      result
        ..add(const _i2.XmlElementName('LogicalIdHierarchy'))
        ..add(serializers.serialize(
          payload.logicalIdHierarchy!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
