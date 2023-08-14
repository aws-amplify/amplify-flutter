// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_grant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TargetGrant extends TargetGrant {
  @override
  final Grantee? grantee;
  @override
  final BucketLogsPermission? permission;

  factory _$TargetGrant([void Function(TargetGrantBuilder)? updates]) =>
      (new TargetGrantBuilder()..update(updates))._build();

  _$TargetGrant._({this.grantee, this.permission}) : super._();

  @override
  TargetGrant rebuild(void Function(TargetGrantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TargetGrantBuilder toBuilder() => new TargetGrantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TargetGrant &&
        grantee == other.grantee &&
        permission == other.permission;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grantee.hashCode);
    _$hash = $jc(_$hash, permission.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TargetGrantBuilder implements Builder<TargetGrant, TargetGrantBuilder> {
  _$TargetGrant? _$v;

  GranteeBuilder? _grantee;
  GranteeBuilder get grantee => _$this._grantee ??= new GranteeBuilder();
  set grantee(GranteeBuilder? grantee) => _$this._grantee = grantee;

  BucketLogsPermission? _permission;
  BucketLogsPermission? get permission => _$this._permission;
  set permission(BucketLogsPermission? permission) =>
      _$this._permission = permission;

  TargetGrantBuilder();

  TargetGrantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantee = $v.grantee?.toBuilder();
      _permission = $v.permission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TargetGrant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TargetGrant;
  }

  @override
  void update(void Function(TargetGrantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TargetGrant build() => _build();

  _$TargetGrant _build() {
    _$TargetGrant _$result;
    try {
      _$result = _$v ??
          new _$TargetGrant._(
              grantee: _grantee?.build(), permission: permission);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'grantee';
        _grantee?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TargetGrant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
