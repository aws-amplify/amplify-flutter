// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_ipam_organization_admin_account_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableIpamOrganizationAdminAccountRequest
    extends DisableIpamOrganizationAdminAccountRequest {
  @override
  final bool dryRun;
  @override
  final String? delegatedAdminAccountId;

  factory _$DisableIpamOrganizationAdminAccountRequest(
          [void Function(DisableIpamOrganizationAdminAccountRequestBuilder)?
              updates]) =>
      (new DisableIpamOrganizationAdminAccountRequestBuilder()..update(updates))
          ._build();

  _$DisableIpamOrganizationAdminAccountRequest._(
      {required this.dryRun, this.delegatedAdminAccountId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableIpamOrganizationAdminAccountRequest', 'dryRun');
  }

  @override
  DisableIpamOrganizationAdminAccountRequest rebuild(
          void Function(DisableIpamOrganizationAdminAccountRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableIpamOrganizationAdminAccountRequestBuilder toBuilder() =>
      new DisableIpamOrganizationAdminAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableIpamOrganizationAdminAccountRequest &&
        dryRun == other.dryRun &&
        delegatedAdminAccountId == other.delegatedAdminAccountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, delegatedAdminAccountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableIpamOrganizationAdminAccountRequestBuilder
    implements
        Builder<DisableIpamOrganizationAdminAccountRequest,
            DisableIpamOrganizationAdminAccountRequestBuilder> {
  _$DisableIpamOrganizationAdminAccountRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _delegatedAdminAccountId;
  String? get delegatedAdminAccountId => _$this._delegatedAdminAccountId;
  set delegatedAdminAccountId(String? delegatedAdminAccountId) =>
      _$this._delegatedAdminAccountId = delegatedAdminAccountId;

  DisableIpamOrganizationAdminAccountRequestBuilder() {
    DisableIpamOrganizationAdminAccountRequest._init(this);
  }

  DisableIpamOrganizationAdminAccountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _delegatedAdminAccountId = $v.delegatedAdminAccountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableIpamOrganizationAdminAccountRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableIpamOrganizationAdminAccountRequest;
  }

  @override
  void update(
      void Function(DisableIpamOrganizationAdminAccountRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableIpamOrganizationAdminAccountRequest build() => _build();

  _$DisableIpamOrganizationAdminAccountRequest _build() {
    final _$result = _$v ??
        new _$DisableIpamOrganizationAdminAccountRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DisableIpamOrganizationAdminAccountRequest', 'dryRun'),
            delegatedAdminAccountId: delegatedAdminAccountId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
