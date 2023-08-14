// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_client_vpn_route_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteClientVpnRouteResult extends DeleteClientVpnRouteResult {
  @override
  final ClientVpnRouteStatus? status;

  factory _$DeleteClientVpnRouteResult(
          [void Function(DeleteClientVpnRouteResultBuilder)? updates]) =>
      (new DeleteClientVpnRouteResultBuilder()..update(updates))._build();

  _$DeleteClientVpnRouteResult._({this.status}) : super._();

  @override
  DeleteClientVpnRouteResult rebuild(
          void Function(DeleteClientVpnRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteClientVpnRouteResultBuilder toBuilder() =>
      new DeleteClientVpnRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteClientVpnRouteResult && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteClientVpnRouteResultBuilder
    implements
        Builder<DeleteClientVpnRouteResult, DeleteClientVpnRouteResultBuilder> {
  _$DeleteClientVpnRouteResult? _$v;

  ClientVpnRouteStatusBuilder? _status;
  ClientVpnRouteStatusBuilder get status =>
      _$this._status ??= new ClientVpnRouteStatusBuilder();
  set status(ClientVpnRouteStatusBuilder? status) => _$this._status = status;

  DeleteClientVpnRouteResultBuilder();

  DeleteClientVpnRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteClientVpnRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteClientVpnRouteResult;
  }

  @override
  void update(void Function(DeleteClientVpnRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteClientVpnRouteResult build() => _build();

  _$DeleteClientVpnRouteResult _build() {
    _$DeleteClientVpnRouteResult _$result;
    try {
      _$result =
          _$v ?? new _$DeleteClientVpnRouteResult._(status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteClientVpnRouteResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
