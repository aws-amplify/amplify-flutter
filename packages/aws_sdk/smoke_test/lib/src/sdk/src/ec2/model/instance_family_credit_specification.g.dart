// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_family_credit_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceFamilyCreditSpecification
    extends InstanceFamilyCreditSpecification {
  @override
  final UnlimitedSupportedInstanceFamily? instanceFamily;
  @override
  final String? cpuCredits;

  factory _$InstanceFamilyCreditSpecification(
          [void Function(InstanceFamilyCreditSpecificationBuilder)? updates]) =>
      (new InstanceFamilyCreditSpecificationBuilder()..update(updates))
          ._build();

  _$InstanceFamilyCreditSpecification._({this.instanceFamily, this.cpuCredits})
      : super._();

  @override
  InstanceFamilyCreditSpecification rebuild(
          void Function(InstanceFamilyCreditSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceFamilyCreditSpecificationBuilder toBuilder() =>
      new InstanceFamilyCreditSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceFamilyCreditSpecification &&
        instanceFamily == other.instanceFamily &&
        cpuCredits == other.cpuCredits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceFamily.hashCode);
    _$hash = $jc(_$hash, cpuCredits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceFamilyCreditSpecificationBuilder
    implements
        Builder<InstanceFamilyCreditSpecification,
            InstanceFamilyCreditSpecificationBuilder> {
  _$InstanceFamilyCreditSpecification? _$v;

  UnlimitedSupportedInstanceFamily? _instanceFamily;
  UnlimitedSupportedInstanceFamily? get instanceFamily =>
      _$this._instanceFamily;
  set instanceFamily(UnlimitedSupportedInstanceFamily? instanceFamily) =>
      _$this._instanceFamily = instanceFamily;

  String? _cpuCredits;
  String? get cpuCredits => _$this._cpuCredits;
  set cpuCredits(String? cpuCredits) => _$this._cpuCredits = cpuCredits;

  InstanceFamilyCreditSpecificationBuilder();

  InstanceFamilyCreditSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceFamily = $v.instanceFamily;
      _cpuCredits = $v.cpuCredits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceFamilyCreditSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceFamilyCreditSpecification;
  }

  @override
  void update(
      void Function(InstanceFamilyCreditSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceFamilyCreditSpecification build() => _build();

  _$InstanceFamilyCreditSpecification _build() {
    final _$result = _$v ??
        new _$InstanceFamilyCreditSpecification._(
            instanceFamily: instanceFamily, cpuCredits: cpuCredits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
