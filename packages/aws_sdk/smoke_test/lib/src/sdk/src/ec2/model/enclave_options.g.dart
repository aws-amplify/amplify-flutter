// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enclave_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnclaveOptions extends EnclaveOptions {
  @override
  final bool enabled;

  factory _$EnclaveOptions([void Function(EnclaveOptionsBuilder)? updates]) =>
      (new EnclaveOptionsBuilder()..update(updates))._build();

  _$EnclaveOptions._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'EnclaveOptions', 'enabled');
  }

  @override
  EnclaveOptions rebuild(void Function(EnclaveOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnclaveOptionsBuilder toBuilder() =>
      new EnclaveOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnclaveOptions && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnclaveOptionsBuilder
    implements Builder<EnclaveOptions, EnclaveOptionsBuilder> {
  _$EnclaveOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  EnclaveOptionsBuilder() {
    EnclaveOptions._init(this);
  }

  EnclaveOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnclaveOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnclaveOptions;
  }

  @override
  void update(void Function(EnclaveOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnclaveOptions build() => _build();

  _$EnclaveOptions _build() {
    final _$result = _$v ??
        new _$EnclaveOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'EnclaveOptions', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
