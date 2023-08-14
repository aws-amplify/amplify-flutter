// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointResult extends ModifyVpcEndpointResult {
  @override
  final bool return_;

  factory _$ModifyVpcEndpointResult(
          [void Function(ModifyVpcEndpointResultBuilder)? updates]) =>
      (new ModifyVpcEndpointResultBuilder()..update(updates))._build();

  _$ModifyVpcEndpointResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifyVpcEndpointResult', 'return_');
  }

  @override
  ModifyVpcEndpointResult rebuild(
          void Function(ModifyVpcEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointResultBuilder toBuilder() =>
      new ModifyVpcEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointResult && return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcEndpointResultBuilder
    implements
        Builder<ModifyVpcEndpointResult, ModifyVpcEndpointResultBuilder> {
  _$ModifyVpcEndpointResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyVpcEndpointResultBuilder() {
    ModifyVpcEndpointResult._init(this);
  }

  ModifyVpcEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointResult;
  }

  @override
  void update(void Function(ModifyVpcEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointResult build() => _build();

  _$ModifyVpcEndpointResult _build() {
    final _$result = _$v ??
        new _$ModifyVpcEndpointResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifyVpcEndpointResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
