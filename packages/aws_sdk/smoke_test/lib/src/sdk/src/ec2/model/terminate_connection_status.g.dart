// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminate_connection_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TerminateConnectionStatus extends TerminateConnectionStatus {
  @override
  final String? connectionId;
  @override
  final ClientVpnConnectionStatus? previousStatus;
  @override
  final ClientVpnConnectionStatus? currentStatus;

  factory _$TerminateConnectionStatus(
          [void Function(TerminateConnectionStatusBuilder)? updates]) =>
      (new TerminateConnectionStatusBuilder()..update(updates))._build();

  _$TerminateConnectionStatus._(
      {this.connectionId, this.previousStatus, this.currentStatus})
      : super._();

  @override
  TerminateConnectionStatus rebuild(
          void Function(TerminateConnectionStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TerminateConnectionStatusBuilder toBuilder() =>
      new TerminateConnectionStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerminateConnectionStatus &&
        connectionId == other.connectionId &&
        previousStatus == other.previousStatus &&
        currentStatus == other.currentStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, connectionId.hashCode);
    _$hash = $jc(_$hash, previousStatus.hashCode);
    _$hash = $jc(_$hash, currentStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TerminateConnectionStatusBuilder
    implements
        Builder<TerminateConnectionStatus, TerminateConnectionStatusBuilder> {
  _$TerminateConnectionStatus? _$v;

  String? _connectionId;
  String? get connectionId => _$this._connectionId;
  set connectionId(String? connectionId) => _$this._connectionId = connectionId;

  ClientVpnConnectionStatusBuilder? _previousStatus;
  ClientVpnConnectionStatusBuilder get previousStatus =>
      _$this._previousStatus ??= new ClientVpnConnectionStatusBuilder();
  set previousStatus(ClientVpnConnectionStatusBuilder? previousStatus) =>
      _$this._previousStatus = previousStatus;

  ClientVpnConnectionStatusBuilder? _currentStatus;
  ClientVpnConnectionStatusBuilder get currentStatus =>
      _$this._currentStatus ??= new ClientVpnConnectionStatusBuilder();
  set currentStatus(ClientVpnConnectionStatusBuilder? currentStatus) =>
      _$this._currentStatus = currentStatus;

  TerminateConnectionStatusBuilder();

  TerminateConnectionStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connectionId = $v.connectionId;
      _previousStatus = $v.previousStatus?.toBuilder();
      _currentStatus = $v.currentStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TerminateConnectionStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TerminateConnectionStatus;
  }

  @override
  void update(void Function(TerminateConnectionStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TerminateConnectionStatus build() => _build();

  _$TerminateConnectionStatus _build() {
    _$TerminateConnectionStatus _$result;
    try {
      _$result = _$v ??
          new _$TerminateConnectionStatus._(
              connectionId: connectionId,
              previousStatus: _previousStatus?.build(),
              currentStatus: _currentStatus?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'previousStatus';
        _previousStatus?.build();
        _$failedField = 'currentStatus';
        _currentStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TerminateConnectionStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
