// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_maintenance_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceMaintenanceOptionsRequest
    extends ModifyInstanceMaintenanceOptionsRequest {
  @override
  final String? instanceId;
  @override
  final InstanceAutoRecoveryState? autoRecovery;
  @override
  final bool dryRun;

  factory _$ModifyInstanceMaintenanceOptionsRequest(
          [void Function(ModifyInstanceMaintenanceOptionsRequestBuilder)?
              updates]) =>
      (new ModifyInstanceMaintenanceOptionsRequestBuilder()..update(updates))
          ._build();

  _$ModifyInstanceMaintenanceOptionsRequest._(
      {this.instanceId, this.autoRecovery, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyInstanceMaintenanceOptionsRequest', 'dryRun');
  }

  @override
  ModifyInstanceMaintenanceOptionsRequest rebuild(
          void Function(ModifyInstanceMaintenanceOptionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceMaintenanceOptionsRequestBuilder toBuilder() =>
      new ModifyInstanceMaintenanceOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceMaintenanceOptionsRequest &&
        instanceId == other.instanceId &&
        autoRecovery == other.autoRecovery &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, autoRecovery.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceMaintenanceOptionsRequestBuilder
    implements
        Builder<ModifyInstanceMaintenanceOptionsRequest,
            ModifyInstanceMaintenanceOptionsRequestBuilder> {
  _$ModifyInstanceMaintenanceOptionsRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  InstanceAutoRecoveryState? _autoRecovery;
  InstanceAutoRecoveryState? get autoRecovery => _$this._autoRecovery;
  set autoRecovery(InstanceAutoRecoveryState? autoRecovery) =>
      _$this._autoRecovery = autoRecovery;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyInstanceMaintenanceOptionsRequestBuilder() {
    ModifyInstanceMaintenanceOptionsRequest._init(this);
  }

  ModifyInstanceMaintenanceOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _autoRecovery = $v.autoRecovery;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceMaintenanceOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceMaintenanceOptionsRequest;
  }

  @override
  void update(
      void Function(ModifyInstanceMaintenanceOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceMaintenanceOptionsRequest build() => _build();

  _$ModifyInstanceMaintenanceOptionsRequest _build() {
    final _$result = _$v ??
        new _$ModifyInstanceMaintenanceOptionsRequest._(
            instanceId: instanceId,
            autoRecovery: autoRecovery,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyInstanceMaintenanceOptionsRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
