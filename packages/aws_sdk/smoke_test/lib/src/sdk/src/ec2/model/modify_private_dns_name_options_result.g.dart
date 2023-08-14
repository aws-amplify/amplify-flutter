// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_private_dns_name_options_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyPrivateDnsNameOptionsResult
    extends ModifyPrivateDnsNameOptionsResult {
  @override
  final bool return_;

  factory _$ModifyPrivateDnsNameOptionsResult(
          [void Function(ModifyPrivateDnsNameOptionsResultBuilder)? updates]) =>
      (new ModifyPrivateDnsNameOptionsResultBuilder()..update(updates))
          ._build();

  _$ModifyPrivateDnsNameOptionsResult._({required this.return_}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        return_, r'ModifyPrivateDnsNameOptionsResult', 'return_');
  }

  @override
  ModifyPrivateDnsNameOptionsResult rebuild(
          void Function(ModifyPrivateDnsNameOptionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyPrivateDnsNameOptionsResultBuilder toBuilder() =>
      new ModifyPrivateDnsNameOptionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyPrivateDnsNameOptionsResult &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyPrivateDnsNameOptionsResultBuilder
    implements
        Builder<ModifyPrivateDnsNameOptionsResult,
            ModifyPrivateDnsNameOptionsResultBuilder> {
  _$ModifyPrivateDnsNameOptionsResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ModifyPrivateDnsNameOptionsResultBuilder() {
    ModifyPrivateDnsNameOptionsResult._init(this);
  }

  ModifyPrivateDnsNameOptionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyPrivateDnsNameOptionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyPrivateDnsNameOptionsResult;
  }

  @override
  void update(
      void Function(ModifyPrivateDnsNameOptionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyPrivateDnsNameOptionsResult build() => _build();

  _$ModifyPrivateDnsNameOptionsResult _build() {
    final _$result = _$v ??
        new _$ModifyPrivateDnsNameOptionsResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_, r'ModifyPrivateDnsNameOptionsResult', 'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
