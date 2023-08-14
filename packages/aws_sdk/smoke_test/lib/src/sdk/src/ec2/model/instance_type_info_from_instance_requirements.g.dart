// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_type_info_from_instance_requirements.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceTypeInfoFromInstanceRequirements
    extends InstanceTypeInfoFromInstanceRequirements {
  @override
  final String? instanceType;

  factory _$InstanceTypeInfoFromInstanceRequirements(
          [void Function(InstanceTypeInfoFromInstanceRequirementsBuilder)?
              updates]) =>
      (new InstanceTypeInfoFromInstanceRequirementsBuilder()..update(updates))
          ._build();

  _$InstanceTypeInfoFromInstanceRequirements._({this.instanceType}) : super._();

  @override
  InstanceTypeInfoFromInstanceRequirements rebuild(
          void Function(InstanceTypeInfoFromInstanceRequirementsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceTypeInfoFromInstanceRequirementsBuilder toBuilder() =>
      new InstanceTypeInfoFromInstanceRequirementsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceTypeInfoFromInstanceRequirements &&
        instanceType == other.instanceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceTypeInfoFromInstanceRequirementsBuilder
    implements
        Builder<InstanceTypeInfoFromInstanceRequirements,
            InstanceTypeInfoFromInstanceRequirementsBuilder> {
  _$InstanceTypeInfoFromInstanceRequirements? _$v;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  InstanceTypeInfoFromInstanceRequirementsBuilder();

  InstanceTypeInfoFromInstanceRequirementsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceType = $v.instanceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceTypeInfoFromInstanceRequirements other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceTypeInfoFromInstanceRequirements;
  }

  @override
  void update(
      void Function(InstanceTypeInfoFromInstanceRequirementsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceTypeInfoFromInstanceRequirements build() => _build();

  _$InstanceTypeInfoFromInstanceRequirements _build() {
    final _$result = _$v ??
        new _$InstanceTypeInfoFromInstanceRequirements._(
            instanceType: instanceType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
