// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.policy_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyUser extends PolicyUser {
  @override
  final String? userName;
  @override
  final String? userId;

  factory _$PolicyUser([void Function(PolicyUserBuilder)? updates]) =>
      (new PolicyUserBuilder()..update(updates))._build();

  _$PolicyUser._({this.userName, this.userId}) : super._();

  @override
  PolicyUser rebuild(void Function(PolicyUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyUserBuilder toBuilder() => new PolicyUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyUser &&
        userName == other.userName &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PolicyUserBuilder implements Builder<PolicyUser, PolicyUserBuilder> {
  _$PolicyUser? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  PolicyUserBuilder() {
    PolicyUser._init(this);
  }

  PolicyUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PolicyUser;
  }

  @override
  void update(void Function(PolicyUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyUser build() => _build();

  _$PolicyUser _build() {
    final _$result =
        _$v ?? new _$PolicyUser._(userName: userName, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
