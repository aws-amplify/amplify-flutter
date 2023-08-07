// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_control_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessControlPolicy extends AccessControlPolicy {
  @override
  final _i2.BuiltList<Grant>? grants;
  @override
  final Owner? owner;

  factory _$AccessControlPolicy(
          [void Function(AccessControlPolicyBuilder)? updates]) =>
      (new AccessControlPolicyBuilder()..update(updates))._build();

  _$AccessControlPolicy._({this.grants, this.owner}) : super._();

  @override
  AccessControlPolicy rebuild(
          void Function(AccessControlPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessControlPolicyBuilder toBuilder() =>
      new AccessControlPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessControlPolicy &&
        grants == other.grants &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grants.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccessControlPolicyBuilder
    implements Builder<AccessControlPolicy, AccessControlPolicyBuilder> {
  _$AccessControlPolicy? _$v;

  _i2.ListBuilder<Grant>? _grants;
  _i2.ListBuilder<Grant> get grants =>
      _$this._grants ??= new _i2.ListBuilder<Grant>();
  set grants(_i2.ListBuilder<Grant>? grants) => _$this._grants = grants;

  OwnerBuilder? _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder? owner) => _$this._owner = owner;

  AccessControlPolicyBuilder();

  AccessControlPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grants = $v.grants?.toBuilder();
      _owner = $v.owner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessControlPolicy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessControlPolicy;
  }

  @override
  void update(void Function(AccessControlPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessControlPolicy build() => _build();

  _$AccessControlPolicy _build() {
    _$AccessControlPolicy _$result;
    try {
      _$result = _$v ??
          new _$AccessControlPolicy._(
              grants: _grants?.build(), owner: _owner?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'grants';
        _grants?.build();
        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccessControlPolicy', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
