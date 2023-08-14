// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enclave_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnclaveOptionsRequest extends EnclaveOptionsRequest {
  @override
  final bool enabled;

  factory _$EnclaveOptionsRequest(
          [void Function(EnclaveOptionsRequestBuilder)? updates]) =>
      (new EnclaveOptionsRequestBuilder()..update(updates))._build();

  _$EnclaveOptionsRequest._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'EnclaveOptionsRequest', 'enabled');
  }

  @override
  EnclaveOptionsRequest rebuild(
          void Function(EnclaveOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnclaveOptionsRequestBuilder toBuilder() =>
      new EnclaveOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnclaveOptionsRequest && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnclaveOptionsRequestBuilder
    implements Builder<EnclaveOptionsRequest, EnclaveOptionsRequestBuilder> {
  _$EnclaveOptionsRequest? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  EnclaveOptionsRequestBuilder() {
    EnclaveOptionsRequest._init(this);
  }

  EnclaveOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnclaveOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnclaveOptionsRequest;
  }

  @override
  void update(void Function(EnclaveOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnclaveOptionsRequest build() => _build();

  _$EnclaveOptionsRequest _build() {
    final _$result = _$v ??
        new _$EnclaveOptionsRequest._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'EnclaveOptionsRequest', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
