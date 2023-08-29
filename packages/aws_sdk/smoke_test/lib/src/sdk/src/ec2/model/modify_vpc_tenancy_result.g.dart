// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_tenancy_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcTenancyResult extends ModifyVpcTenancyResult {
  @override
  final bool returnValue;

  factory _$ModifyVpcTenancyResult(
          [void Function(ModifyVpcTenancyResultBuilder)? updates]) =>
      (new ModifyVpcTenancyResultBuilder()..update(updates))._build();

  _$ModifyVpcTenancyResult._({required this.returnValue}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        returnValue, r'ModifyVpcTenancyResult', 'returnValue');
  }

  @override
  ModifyVpcTenancyResult rebuild(
          void Function(ModifyVpcTenancyResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcTenancyResultBuilder toBuilder() =>
      new ModifyVpcTenancyResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcTenancyResult && returnValue == other.returnValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, returnValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcTenancyResultBuilder
    implements Builder<ModifyVpcTenancyResult, ModifyVpcTenancyResultBuilder> {
  _$ModifyVpcTenancyResult? _$v;

  bool? _returnValue;
  bool? get returnValue => _$this._returnValue;
  set returnValue(bool? returnValue) => _$this._returnValue = returnValue;

  ModifyVpcTenancyResultBuilder() {
    ModifyVpcTenancyResult._init(this);
  }

  ModifyVpcTenancyResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnValue = $v.returnValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcTenancyResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcTenancyResult;
  }

  @override
  void update(void Function(ModifyVpcTenancyResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcTenancyResult build() => _build();

  _$ModifyVpcTenancyResult _build() {
    final _$result = _$v ??
        new _$ModifyVpcTenancyResult._(
            returnValue: BuiltValueNullFieldError.checkNotNull(
                returnValue, r'ModifyVpcTenancyResult', 'returnValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
