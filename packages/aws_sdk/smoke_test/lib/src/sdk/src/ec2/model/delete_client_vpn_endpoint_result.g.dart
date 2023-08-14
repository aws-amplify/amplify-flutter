// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_client_vpn_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteClientVpnEndpointResult extends DeleteClientVpnEndpointResult {
  @override
  final ClientVpnEndpointStatus? status;

  factory _$DeleteClientVpnEndpointResult(
          [void Function(DeleteClientVpnEndpointResultBuilder)? updates]) =>
      (new DeleteClientVpnEndpointResultBuilder()..update(updates))._build();

  _$DeleteClientVpnEndpointResult._({this.status}) : super._();

  @override
  DeleteClientVpnEndpointResult rebuild(
          void Function(DeleteClientVpnEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteClientVpnEndpointResultBuilder toBuilder() =>
      new DeleteClientVpnEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteClientVpnEndpointResult && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteClientVpnEndpointResultBuilder
    implements
        Builder<DeleteClientVpnEndpointResult,
            DeleteClientVpnEndpointResultBuilder> {
  _$DeleteClientVpnEndpointResult? _$v;

  ClientVpnEndpointStatusBuilder? _status;
  ClientVpnEndpointStatusBuilder get status =>
      _$this._status ??= new ClientVpnEndpointStatusBuilder();
  set status(ClientVpnEndpointStatusBuilder? status) => _$this._status = status;

  DeleteClientVpnEndpointResultBuilder();

  DeleteClientVpnEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteClientVpnEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteClientVpnEndpointResult;
  }

  @override
  void update(void Function(DeleteClientVpnEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteClientVpnEndpointResult build() => _build();

  _$DeleteClientVpnEndpointResult _build() {
    _$DeleteClientVpnEndpointResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteClientVpnEndpointResult._(status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteClientVpnEndpointResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
