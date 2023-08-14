// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_enclave_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateEnclaveOptionsRequest
    extends LaunchTemplateEnclaveOptionsRequest {
  @override
  final bool enabled;

  factory _$LaunchTemplateEnclaveOptionsRequest(
          [void Function(LaunchTemplateEnclaveOptionsRequestBuilder)?
              updates]) =>
      (new LaunchTemplateEnclaveOptionsRequestBuilder()..update(updates))
          ._build();

  _$LaunchTemplateEnclaveOptionsRequest._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'LaunchTemplateEnclaveOptionsRequest', 'enabled');
  }

  @override
  LaunchTemplateEnclaveOptionsRequest rebuild(
          void Function(LaunchTemplateEnclaveOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateEnclaveOptionsRequestBuilder toBuilder() =>
      new LaunchTemplateEnclaveOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateEnclaveOptionsRequest &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateEnclaveOptionsRequestBuilder
    implements
        Builder<LaunchTemplateEnclaveOptionsRequest,
            LaunchTemplateEnclaveOptionsRequestBuilder> {
  _$LaunchTemplateEnclaveOptionsRequest? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  LaunchTemplateEnclaveOptionsRequestBuilder() {
    LaunchTemplateEnclaveOptionsRequest._init(this);
  }

  LaunchTemplateEnclaveOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateEnclaveOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateEnclaveOptionsRequest;
  }

  @override
  void update(
      void Function(LaunchTemplateEnclaveOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateEnclaveOptionsRequest build() => _build();

  _$LaunchTemplateEnclaveOptionsRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplateEnclaveOptionsRequest._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'LaunchTemplateEnclaveOptionsRequest', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
