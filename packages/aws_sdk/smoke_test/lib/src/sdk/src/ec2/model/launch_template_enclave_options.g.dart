// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_enclave_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateEnclaveOptions extends LaunchTemplateEnclaveOptions {
  @override
  final bool enabled;

  factory _$LaunchTemplateEnclaveOptions(
          [void Function(LaunchTemplateEnclaveOptionsBuilder)? updates]) =>
      (new LaunchTemplateEnclaveOptionsBuilder()..update(updates))._build();

  _$LaunchTemplateEnclaveOptions._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'LaunchTemplateEnclaveOptions', 'enabled');
  }

  @override
  LaunchTemplateEnclaveOptions rebuild(
          void Function(LaunchTemplateEnclaveOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateEnclaveOptionsBuilder toBuilder() =>
      new LaunchTemplateEnclaveOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateEnclaveOptions && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateEnclaveOptionsBuilder
    implements
        Builder<LaunchTemplateEnclaveOptions,
            LaunchTemplateEnclaveOptionsBuilder> {
  _$LaunchTemplateEnclaveOptions? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  LaunchTemplateEnclaveOptionsBuilder() {
    LaunchTemplateEnclaveOptions._init(this);
  }

  LaunchTemplateEnclaveOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateEnclaveOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateEnclaveOptions;
  }

  @override
  void update(void Function(LaunchTemplateEnclaveOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateEnclaveOptions build() => _build();

  _$LaunchTemplateEnclaveOptions _build() {
    final _$result = _$v ??
        new _$LaunchTemplateEnclaveOptions._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'LaunchTemplateEnclaveOptions', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
