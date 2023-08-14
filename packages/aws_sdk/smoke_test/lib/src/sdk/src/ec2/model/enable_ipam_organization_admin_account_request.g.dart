// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_ipam_organization_admin_account_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableIpamOrganizationAdminAccountRequest
    extends EnableIpamOrganizationAdminAccountRequest {
  @override
  final bool dryRun;
  @override
  final String? delegatedAdminAccountId;

  factory _$EnableIpamOrganizationAdminAccountRequest(
          [void Function(EnableIpamOrganizationAdminAccountRequestBuilder)?
              updates]) =>
      (new EnableIpamOrganizationAdminAccountRequestBuilder()..update(updates))
          ._build();

  _$EnableIpamOrganizationAdminAccountRequest._(
      {required this.dryRun, this.delegatedAdminAccountId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableIpamOrganizationAdminAccountRequest', 'dryRun');
  }

  @override
  EnableIpamOrganizationAdminAccountRequest rebuild(
          void Function(EnableIpamOrganizationAdminAccountRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableIpamOrganizationAdminAccountRequestBuilder toBuilder() =>
      new EnableIpamOrganizationAdminAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableIpamOrganizationAdminAccountRequest &&
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

class EnableIpamOrganizationAdminAccountRequestBuilder
    implements
        Builder<EnableIpamOrganizationAdminAccountRequest,
            EnableIpamOrganizationAdminAccountRequestBuilder> {
  _$EnableIpamOrganizationAdminAccountRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _delegatedAdminAccountId;
  String? get delegatedAdminAccountId => _$this._delegatedAdminAccountId;
  set delegatedAdminAccountId(String? delegatedAdminAccountId) =>
      _$this._delegatedAdminAccountId = delegatedAdminAccountId;

  EnableIpamOrganizationAdminAccountRequestBuilder() {
    EnableIpamOrganizationAdminAccountRequest._init(this);
  }

  EnableIpamOrganizationAdminAccountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _delegatedAdminAccountId = $v.delegatedAdminAccountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableIpamOrganizationAdminAccountRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableIpamOrganizationAdminAccountRequest;
  }

  @override
  void update(
      void Function(EnableIpamOrganizationAdminAccountRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableIpamOrganizationAdminAccountRequest build() => _build();

  _$EnableIpamOrganizationAdminAccountRequest _build() {
    final _$result = _$v ??
        new _$EnableIpamOrganizationAdminAccountRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'EnableIpamOrganizationAdminAccountRequest', 'dryRun'),
            delegatedAdminAccountId: delegatedAdminAccountId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
