// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.grant;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Grant extends Grant {
  @override
  final _i2.Grantee? grantee;
  @override
  final _i3.Permission? permission;

  factory _$Grant([void Function(GrantBuilder)? updates]) =>
      (new GrantBuilder()..update(updates))._build();

  _$Grant._({this.grantee, this.permission}) : super._();

  @override
  Grant rebuild(void Function(GrantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrantBuilder toBuilder() => new GrantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grant &&
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

class GrantBuilder implements Builder<Grant, GrantBuilder> {
  _$Grant? _$v;

  _i2.GranteeBuilder? _grantee;
  _i2.GranteeBuilder get grantee =>
      _$this._grantee ??= new _i2.GranteeBuilder();
  set grantee(_i2.GranteeBuilder? grantee) => _$this._grantee = grantee;

  _i3.Permission? _permission;
  _i3.Permission? get permission => _$this._permission;
  set permission(_i3.Permission? permission) => _$this._permission = permission;

  GrantBuilder() {
    Grant._init(this);
  }

  GrantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantee = $v.grantee?.toBuilder();
      _permission = $v.permission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Grant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Grant;
  }

  @override
  void update(void Function(GrantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Grant build() => _build();

  _$Grant _build() {
    _$Grant _$result;
    try {
      _$result = _$v ??
          new _$Grant._(grantee: _grantee?.build(), permission: permission);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'grantee';
        _grantee?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Grant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
