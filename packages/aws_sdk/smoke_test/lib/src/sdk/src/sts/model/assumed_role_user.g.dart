// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.assumed_role_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssumedRoleUser extends AssumedRoleUser {
  @override
  final String assumedRoleId;
  @override
  final String arn;

  factory _$AssumedRoleUser([void Function(AssumedRoleUserBuilder)? updates]) =>
      (new AssumedRoleUserBuilder()..update(updates))._build();

  _$AssumedRoleUser._({required this.assumedRoleId, required this.arn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        assumedRoleId, r'AssumedRoleUser', 'assumedRoleId');
    BuiltValueNullFieldError.checkNotNull(arn, r'AssumedRoleUser', 'arn');
  }

  @override
  AssumedRoleUser rebuild(void Function(AssumedRoleUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssumedRoleUserBuilder toBuilder() =>
      new AssumedRoleUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssumedRoleUser &&
        assumedRoleId == other.assumedRoleId &&
        arn == other.arn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assumedRoleId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssumedRoleUserBuilder
    implements Builder<AssumedRoleUser, AssumedRoleUserBuilder> {
  _$AssumedRoleUser? _$v;

  String? _assumedRoleId;
  String? get assumedRoleId => _$this._assumedRoleId;
  set assumedRoleId(String? assumedRoleId) =>
      _$this._assumedRoleId = assumedRoleId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  AssumedRoleUserBuilder() {
    AssumedRoleUser._init(this);
  }

  AssumedRoleUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assumedRoleId = $v.assumedRoleId;
      _arn = $v.arn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssumedRoleUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssumedRoleUser;
  }

  @override
  void update(void Function(AssumedRoleUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssumedRoleUser build() => _build();

  _$AssumedRoleUser _build() {
    final _$result = _$v ??
        new _$AssumedRoleUser._(
            assumedRoleId: BuiltValueNullFieldError.checkNotNull(
                assumedRoleId, r'AssumedRoleUser', 'assumedRoleId'),
            arn: BuiltValueNullFieldError.checkNotNull(
                arn, r'AssumedRoleUser', 'arn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
