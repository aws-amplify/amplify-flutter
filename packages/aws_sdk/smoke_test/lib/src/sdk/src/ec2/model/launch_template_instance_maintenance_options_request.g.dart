// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_template_instance_maintenance_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateInstanceMaintenanceOptionsRequest
    extends LaunchTemplateInstanceMaintenanceOptionsRequest {
  @override
  final LaunchTemplateAutoRecoveryState? autoRecovery;

  factory _$LaunchTemplateInstanceMaintenanceOptionsRequest(
          [void Function(
                  LaunchTemplateInstanceMaintenanceOptionsRequestBuilder)?
              updates]) =>
      (new LaunchTemplateInstanceMaintenanceOptionsRequestBuilder()
            ..update(updates))
          ._build();

  _$LaunchTemplateInstanceMaintenanceOptionsRequest._({this.autoRecovery})
      : super._();

  @override
  LaunchTemplateInstanceMaintenanceOptionsRequest rebuild(
          void Function(LaunchTemplateInstanceMaintenanceOptionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateInstanceMaintenanceOptionsRequestBuilder toBuilder() =>
      new LaunchTemplateInstanceMaintenanceOptionsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplateInstanceMaintenanceOptionsRequest &&
        autoRecovery == other.autoRecovery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, autoRecovery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateInstanceMaintenanceOptionsRequestBuilder
    implements
        Builder<LaunchTemplateInstanceMaintenanceOptionsRequest,
            LaunchTemplateInstanceMaintenanceOptionsRequestBuilder> {
  _$LaunchTemplateInstanceMaintenanceOptionsRequest? _$v;

  LaunchTemplateAutoRecoveryState? _autoRecovery;
  LaunchTemplateAutoRecoveryState? get autoRecovery => _$this._autoRecovery;
  set autoRecovery(LaunchTemplateAutoRecoveryState? autoRecovery) =>
      _$this._autoRecovery = autoRecovery;

  LaunchTemplateInstanceMaintenanceOptionsRequestBuilder();

  LaunchTemplateInstanceMaintenanceOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _autoRecovery = $v.autoRecovery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplateInstanceMaintenanceOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateInstanceMaintenanceOptionsRequest;
  }

  @override
  void update(
      void Function(LaunchTemplateInstanceMaintenanceOptionsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateInstanceMaintenanceOptionsRequest build() => _build();

  _$LaunchTemplateInstanceMaintenanceOptionsRequest _build() {
    final _$result = _$v ??
        new _$LaunchTemplateInstanceMaintenanceOptionsRequest._(
            autoRecovery: autoRecovery);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
