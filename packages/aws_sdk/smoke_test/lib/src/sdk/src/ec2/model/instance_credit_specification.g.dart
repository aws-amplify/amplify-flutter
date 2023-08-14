// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_credit_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceCreditSpecification extends InstanceCreditSpecification {
  @override
  final String? instanceId;
  @override
  final String? cpuCredits;

  factory _$InstanceCreditSpecification(
          [void Function(InstanceCreditSpecificationBuilder)? updates]) =>
      (new InstanceCreditSpecificationBuilder()..update(updates))._build();

  _$InstanceCreditSpecification._({this.instanceId, this.cpuCredits})
      : super._();

  @override
  InstanceCreditSpecification rebuild(
          void Function(InstanceCreditSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceCreditSpecificationBuilder toBuilder() =>
      new InstanceCreditSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceCreditSpecification &&
        instanceId == other.instanceId &&
        cpuCredits == other.cpuCredits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, cpuCredits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceCreditSpecificationBuilder
    implements
        Builder<InstanceCreditSpecification,
            InstanceCreditSpecificationBuilder> {
  _$InstanceCreditSpecification? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _cpuCredits;
  String? get cpuCredits => _$this._cpuCredits;
  set cpuCredits(String? cpuCredits) => _$this._cpuCredits = cpuCredits;

  InstanceCreditSpecificationBuilder();

  InstanceCreditSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _cpuCredits = $v.cpuCredits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceCreditSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceCreditSpecification;
  }

  @override
  void update(void Function(InstanceCreditSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceCreditSpecification build() => _build();

  _$InstanceCreditSpecification _build() {
    final _$result = _$v ??
        new _$InstanceCreditSpecification._(
            instanceId: instanceId, cpuCredits: cpuCredits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
