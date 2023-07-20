// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreStatus extends RestoreStatus {
  @override
  final bool? isRestoreInProgress;
  @override
  final DateTime? restoreExpiryDate;

  factory _$RestoreStatus([void Function(RestoreStatusBuilder)? updates]) =>
      (new RestoreStatusBuilder()..update(updates))._build();

  _$RestoreStatus._({this.isRestoreInProgress, this.restoreExpiryDate})
      : super._();

  @override
  RestoreStatus rebuild(void Function(RestoreStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreStatusBuilder toBuilder() => new RestoreStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreStatus &&
        isRestoreInProgress == other.isRestoreInProgress &&
        restoreExpiryDate == other.restoreExpiryDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isRestoreInProgress.hashCode);
    _$hash = $jc(_$hash, restoreExpiryDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestoreStatusBuilder
    implements Builder<RestoreStatus, RestoreStatusBuilder> {
  _$RestoreStatus? _$v;

  bool? _isRestoreInProgress;
  bool? get isRestoreInProgress => _$this._isRestoreInProgress;
  set isRestoreInProgress(bool? isRestoreInProgress) =>
      _$this._isRestoreInProgress = isRestoreInProgress;

  DateTime? _restoreExpiryDate;
  DateTime? get restoreExpiryDate => _$this._restoreExpiryDate;
  set restoreExpiryDate(DateTime? restoreExpiryDate) =>
      _$this._restoreExpiryDate = restoreExpiryDate;

  RestoreStatusBuilder();

  RestoreStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isRestoreInProgress = $v.isRestoreInProgress;
      _restoreExpiryDate = $v.restoreExpiryDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreStatus;
  }

  @override
  void update(void Function(RestoreStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreStatus build() => _build();

  _$RestoreStatus _build() {
    final _$result = _$v ??
        new _$RestoreStatus._(
            isRestoreInProgress: isRestoreInProgress,
            restoreExpiryDate: restoreExpiryDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
