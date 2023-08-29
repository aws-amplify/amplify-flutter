// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_ipam_organization_admin_account_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableIpamOrganizationAdminAccountResult
    extends EnableIpamOrganizationAdminAccountResult {
  @override
  final bool success;

  factory _$EnableIpamOrganizationAdminAccountResult(
          [void Function(EnableIpamOrganizationAdminAccountResultBuilder)?
              updates]) =>
      (new EnableIpamOrganizationAdminAccountResultBuilder()..update(updates))
          ._build();

  _$EnableIpamOrganizationAdminAccountResult._({required this.success})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'EnableIpamOrganizationAdminAccountResult', 'success');
  }

  @override
  EnableIpamOrganizationAdminAccountResult rebuild(
          void Function(EnableIpamOrganizationAdminAccountResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableIpamOrganizationAdminAccountResultBuilder toBuilder() =>
      new EnableIpamOrganizationAdminAccountResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableIpamOrganizationAdminAccountResult &&
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

class EnableIpamOrganizationAdminAccountResultBuilder
    implements
        Builder<EnableIpamOrganizationAdminAccountResult,
            EnableIpamOrganizationAdminAccountResultBuilder> {
  _$EnableIpamOrganizationAdminAccountResult? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  EnableIpamOrganizationAdminAccountResultBuilder() {
    EnableIpamOrganizationAdminAccountResult._init(this);
  }

  EnableIpamOrganizationAdminAccountResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableIpamOrganizationAdminAccountResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableIpamOrganizationAdminAccountResult;
  }

  @override
  void update(
      void Function(EnableIpamOrganizationAdminAccountResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableIpamOrganizationAdminAccountResult build() => _build();

  _$EnableIpamOrganizationAdminAccountResult _build() {
    final _$result = _$v ??
        new _$EnableIpamOrganizationAdminAccountResult._(
            success: BuiltValueNullFieldError.checkNotNull(success,
                r'EnableIpamOrganizationAdminAccountResult', 'success'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
