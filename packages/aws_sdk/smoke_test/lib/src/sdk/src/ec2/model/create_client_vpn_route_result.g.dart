// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_client_vpn_route_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateClientVpnRouteResult extends CreateClientVpnRouteResult {
  @override
  final ClientVpnRouteStatus? status;

  factory _$CreateClientVpnRouteResult(
          [void Function(CreateClientVpnRouteResultBuilder)? updates]) =>
      (new CreateClientVpnRouteResultBuilder()..update(updates))._build();

  _$CreateClientVpnRouteResult._({this.status}) : super._();

  @override
  CreateClientVpnRouteResult rebuild(
          void Function(CreateClientVpnRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateClientVpnRouteResultBuilder toBuilder() =>
      new CreateClientVpnRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateClientVpnRouteResult && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateClientVpnRouteResultBuilder
    implements
        Builder<CreateClientVpnRouteResult, CreateClientVpnRouteResultBuilder> {
  _$CreateClientVpnRouteResult? _$v;

  ClientVpnRouteStatusBuilder? _status;
  ClientVpnRouteStatusBuilder get status =>
      _$this._status ??= new ClientVpnRouteStatusBuilder();
  set status(ClientVpnRouteStatusBuilder? status) => _$this._status = status;

  CreateClientVpnRouteResultBuilder();

  CreateClientVpnRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateClientVpnRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateClientVpnRouteResult;
  }

  @override
  void update(void Function(CreateClientVpnRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateClientVpnRouteResult build() => _build();

  _$CreateClientVpnRouteResult _build() {
    _$CreateClientVpnRouteResult _$result;
    try {
      _$result =
          _$v ?? new _$CreateClientVpnRouteResult._(status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateClientVpnRouteResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
