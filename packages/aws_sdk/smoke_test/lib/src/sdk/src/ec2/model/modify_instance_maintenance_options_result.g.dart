// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_instance_maintenance_options_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceMaintenanceOptionsResult
    extends ModifyInstanceMaintenanceOptionsResult {
  @override
  final String? instanceId;
  @override
  final InstanceAutoRecoveryState? autoRecovery;

  factory _$ModifyInstanceMaintenanceOptionsResult(
          [void Function(ModifyInstanceMaintenanceOptionsResultBuilder)?
              updates]) =>
      (new ModifyInstanceMaintenanceOptionsResultBuilder()..update(updates))
          ._build();

  _$ModifyInstanceMaintenanceOptionsResult._(
      {this.instanceId, this.autoRecovery})
      : super._();

  @override
  ModifyInstanceMaintenanceOptionsResult rebuild(
          void Function(ModifyInstanceMaintenanceOptionsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceMaintenanceOptionsResultBuilder toBuilder() =>
      new ModifyInstanceMaintenanceOptionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceMaintenanceOptionsResult &&
        instanceId == other.instanceId &&
        autoRecovery == other.autoRecovery;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, autoRecovery.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceMaintenanceOptionsResultBuilder
    implements
        Builder<ModifyInstanceMaintenanceOptionsResult,
            ModifyInstanceMaintenanceOptionsResultBuilder> {
  _$ModifyInstanceMaintenanceOptionsResult? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  InstanceAutoRecoveryState? _autoRecovery;
  InstanceAutoRecoveryState? get autoRecovery => _$this._autoRecovery;
  set autoRecovery(InstanceAutoRecoveryState? autoRecovery) =>
      _$this._autoRecovery = autoRecovery;

  ModifyInstanceMaintenanceOptionsResultBuilder();

  ModifyInstanceMaintenanceOptionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _autoRecovery = $v.autoRecovery;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceMaintenanceOptionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceMaintenanceOptionsResult;
  }

  @override
  void update(
      void Function(ModifyInstanceMaintenanceOptionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceMaintenanceOptionsResult build() => _build();

  _$ModifyInstanceMaintenanceOptionsResult _build() {
    final _$result = _$v ??
        new _$ModifyInstanceMaintenanceOptionsResult._(
            instanceId: instanceId, autoRecovery: autoRecovery);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
