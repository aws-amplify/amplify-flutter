// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_dhcp_options_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteDhcpOptionsRequest extends DeleteDhcpOptionsRequest {
  @override
  final String? dhcpOptionsId;
  @override
  final bool dryRun;

  factory _$DeleteDhcpOptionsRequest(
          [void Function(DeleteDhcpOptionsRequestBuilder)? updates]) =>
      (new DeleteDhcpOptionsRequestBuilder()..update(updates))._build();

  _$DeleteDhcpOptionsRequest._({this.dhcpOptionsId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteDhcpOptionsRequest', 'dryRun');
  }

  @override
  DeleteDhcpOptionsRequest rebuild(
          void Function(DeleteDhcpOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDhcpOptionsRequestBuilder toBuilder() =>
      new DeleteDhcpOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDhcpOptionsRequest &&
        dhcpOptionsId == other.dhcpOptionsId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dhcpOptionsId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteDhcpOptionsRequestBuilder
    implements
        Builder<DeleteDhcpOptionsRequest, DeleteDhcpOptionsRequestBuilder> {
  _$DeleteDhcpOptionsRequest? _$v;

  String? _dhcpOptionsId;
  String? get dhcpOptionsId => _$this._dhcpOptionsId;
  set dhcpOptionsId(String? dhcpOptionsId) =>
      _$this._dhcpOptionsId = dhcpOptionsId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteDhcpOptionsRequestBuilder() {
    DeleteDhcpOptionsRequest._init(this);
  }

  DeleteDhcpOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dhcpOptionsId = $v.dhcpOptionsId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteDhcpOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDhcpOptionsRequest;
  }

  @override
  void update(void Function(DeleteDhcpOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDhcpOptionsRequest build() => _build();

  _$DeleteDhcpOptionsRequest _build() {
    final _$result = _$v ??
        new _$DeleteDhcpOptionsRequest._(
            dhcpOptionsId: dhcpOptionsId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteDhcpOptionsRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
