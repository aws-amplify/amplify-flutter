// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_specification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreditSpecification extends CreditSpecification {
  @override
  final String? cpuCredits;

  factory _$CreditSpecification(
          [void Function(CreditSpecificationBuilder)? updates]) =>
      (new CreditSpecificationBuilder()..update(updates))._build();

  _$CreditSpecification._({this.cpuCredits}) : super._();

  @override
  CreditSpecification rebuild(
          void Function(CreditSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreditSpecificationBuilder toBuilder() =>
      new CreditSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreditSpecification && cpuCredits == other.cpuCredits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cpuCredits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreditSpecificationBuilder
    implements Builder<CreditSpecification, CreditSpecificationBuilder> {
  _$CreditSpecification? _$v;

  String? _cpuCredits;
  String? get cpuCredits => _$this._cpuCredits;
  set cpuCredits(String? cpuCredits) => _$this._cpuCredits = cpuCredits;

  CreditSpecificationBuilder();

  CreditSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cpuCredits = $v.cpuCredits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreditSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreditSpecification;
  }

  @override
  void update(void Function(CreditSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreditSpecification build() => _build();

  _$CreditSpecification _build() {
    final _$result = _$v ?? new _$CreditSpecification._(cpuCredits: cpuCredits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
