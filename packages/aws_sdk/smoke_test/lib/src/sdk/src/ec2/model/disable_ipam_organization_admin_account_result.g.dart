// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_ipam_organization_admin_account_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableIpamOrganizationAdminAccountResult
    extends DisableIpamOrganizationAdminAccountResult {
  @override
  final bool success;

  factory _$DisableIpamOrganizationAdminAccountResult(
          [void Function(DisableIpamOrganizationAdminAccountResultBuilder)?
              updates]) =>
      (new DisableIpamOrganizationAdminAccountResultBuilder()..update(updates))
          ._build();

  _$DisableIpamOrganizationAdminAccountResult._({required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'DisableIpamOrganizationAdminAccountResult', 'success');
  }

  @override
  DisableIpamOrganizationAdminAccountResult rebuild(
          void Function(DisableIpamOrganizationAdminAccountResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableIpamOrganizationAdminAccountResultBuilder toBuilder() =>
      new DisableIpamOrganizationAdminAccountResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableIpamOrganizationAdminAccountResult &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableIpamOrganizationAdminAccountResultBuilder
    implements
        Builder<DisableIpamOrganizationAdminAccountResult,
            DisableIpamOrganizationAdminAccountResultBuilder> {
  _$DisableIpamOrganizationAdminAccountResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  DisableIpamOrganizationAdminAccountResultBuilder() {
    DisableIpamOrganizationAdminAccountResult._init(this);
  }

  DisableIpamOrganizationAdminAccountResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableIpamOrganizationAdminAccountResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableIpamOrganizationAdminAccountResult;
  }

  @override
  void update(
      void Function(DisableIpamOrganizationAdminAccountResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableIpamOrganizationAdminAccountResult build() => _build();

  _$DisableIpamOrganizationAdminAccountResult _build() {
    final _$result = _$v ??
        new _$DisableIpamOrganizationAdminAccountResult._(
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'DisableIpamOrganizationAdminAccountResult', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
