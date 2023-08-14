// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_export_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceExportDetails extends InstanceExportDetails {
  @override
  final String? instanceId;
  @override
  final ExportEnvironment? targetEnvironment;

  factory _$InstanceExportDetails(
          [void Function(InstanceExportDetailsBuilder)? updates]) =>
      (new InstanceExportDetailsBuilder()..update(updates))._build();

  _$InstanceExportDetails._({this.instanceId, this.targetEnvironment})
      : super._();

  @override
  InstanceExportDetails rebuild(
          void Function(InstanceExportDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceExportDetailsBuilder toBuilder() =>
      new InstanceExportDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceExportDetails &&
        instanceId == other.instanceId &&
        targetEnvironment == other.targetEnvironment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, targetEnvironment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceExportDetailsBuilder
    implements Builder<InstanceExportDetails, InstanceExportDetailsBuilder> {
  _$InstanceExportDetails? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  ExportEnvironment? _targetEnvironment;
  ExportEnvironment? get targetEnvironment => _$this._targetEnvironment;
  set targetEnvironment(ExportEnvironment? targetEnvironment) =>
      _$this._targetEnvironment = targetEnvironment;

  InstanceExportDetailsBuilder();

  InstanceExportDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _targetEnvironment = $v.targetEnvironment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceExportDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceExportDetails;
  }

  @override
  void update(void Function(InstanceExportDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceExportDetails build() => _build();

  _$InstanceExportDetails _build() {
    final _$result = _$v ??
        new _$InstanceExportDetails._(
            instanceId: instanceId, targetEnvironment: targetEnvironment);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
