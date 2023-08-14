// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_templates_monitoring_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplatesMonitoringRequest
    extends LaunchTemplatesMonitoringRequest {
  @override
  final bool enabled;

  factory _$LaunchTemplatesMonitoringRequest(
          [void Function(LaunchTemplatesMonitoringRequestBuilder)? updates]) =>
      (new LaunchTemplatesMonitoringRequestBuilder()..update(updates))._build();

  _$LaunchTemplatesMonitoringRequest._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'LaunchTemplatesMonitoringRequest', 'enabled');
  }

  @override
  LaunchTemplatesMonitoringRequest rebuild(
          void Function(LaunchTemplatesMonitoringRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplatesMonitoringRequestBuilder toBuilder() =>
      new LaunchTemplatesMonitoringRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplatesMonitoringRequest &&
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

class LaunchTemplatesMonitoringRequestBuilder
    implements
        Builder<LaunchTemplatesMonitoringRequest,
            LaunchTemplatesMonitoringRequestBuilder> {
  _$LaunchTemplatesMonitoringRequest? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  LaunchTemplatesMonitoringRequestBuilder() {
    LaunchTemplatesMonitoringRequest._init(this);
  }

  LaunchTemplatesMonitoringRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplatesMonitoringRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplatesMonitoringRequest;
  }

  @override
  void update(void Function(LaunchTemplatesMonitoringRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplatesMonitoringRequest build() => _build();

  _$LaunchTemplatesMonitoringRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplatesMonitoringRequest._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'LaunchTemplatesMonitoringRequest', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
