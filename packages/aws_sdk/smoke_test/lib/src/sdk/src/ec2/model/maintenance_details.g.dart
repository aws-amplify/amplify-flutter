// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaintenanceDetails extends MaintenanceDetails {
  @override
  final String? pendingMaintenance;
  @override
  final DateTime? maintenanceAutoAppliedAfter;
  @override
  final DateTime? lastMaintenanceApplied;

  factory _$MaintenanceDetails(
          [void Function(MaintenanceDetailsBuilder)? updates]) =>
      (new MaintenanceDetailsBuilder()..update(updates))._build();

  _$MaintenanceDetails._(
      {this.pendingMaintenance,
      this.maintenanceAutoAppliedAfter,
      this.lastMaintenanceApplied})
      : super._();

  @override
  MaintenanceDetails rebuild(
          void Function(MaintenanceDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaintenanceDetailsBuilder toBuilder() =>
      new MaintenanceDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaintenanceDetails &&
        pendingMaintenance == other.pendingMaintenance &&
        maintenanceAutoAppliedAfter == other.maintenanceAutoAppliedAfter &&
        lastMaintenanceApplied == other.lastMaintenanceApplied;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pendingMaintenance.hashCode);
    _$hash = $jc(_$hash, maintenanceAutoAppliedAfter.hashCode);
    _$hash = $jc(_$hash, lastMaintenanceApplied.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MaintenanceDetailsBuilder
    implements Builder<MaintenanceDetails, MaintenanceDetailsBuilder> {
  _$MaintenanceDetails? _$v;

  String? _pendingMaintenance;
  String? get pendingMaintenance => _$this._pendingMaintenance;
  set pendingMaintenance(String? pendingMaintenance) =>
      _$this._pendingMaintenance = pendingMaintenance;

  DateTime? _maintenanceAutoAppliedAfter;
  DateTime? get maintenanceAutoAppliedAfter =>
      _$this._maintenanceAutoAppliedAfter;
  set maintenanceAutoAppliedAfter(DateTime? maintenanceAutoAppliedAfter) =>
      _$this._maintenanceAutoAppliedAfter = maintenanceAutoAppliedAfter;

  DateTime? _lastMaintenanceApplied;
  DateTime? get lastMaintenanceApplied => _$this._lastMaintenanceApplied;
  set lastMaintenanceApplied(DateTime? lastMaintenanceApplied) =>
      _$this._lastMaintenanceApplied = lastMaintenanceApplied;

  MaintenanceDetailsBuilder();

  MaintenanceDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pendingMaintenance = $v.pendingMaintenance;
      _maintenanceAutoAppliedAfter = $v.maintenanceAutoAppliedAfter;
      _lastMaintenanceApplied = $v.lastMaintenanceApplied;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaintenanceDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaintenanceDetails;
  }

  @override
  void update(void Function(MaintenanceDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaintenanceDetails build() => _build();

  _$MaintenanceDetails _build() {
    final _$result = _$v ??
        new _$MaintenanceDetails._(
            pendingMaintenance: pendingMaintenance,
            maintenanceAutoAppliedAfter: maintenanceAutoAppliedAfter,
            lastMaintenanceApplied: lastMaintenanceApplied);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
