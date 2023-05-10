// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.federated_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FederatedUser extends FederatedUser {
  @override
  final String federatedUserId;
  @override
  final String arn;

  factory _$FederatedUser([void Function(FederatedUserBuilder)? updates]) =>
      (new FederatedUserBuilder()..update(updates))._build();

  _$FederatedUser._({required this.federatedUserId, required this.arn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        federatedUserId, r'FederatedUser', 'federatedUserId');
    BuiltValueNullFieldError.checkNotNull(arn, r'FederatedUser', 'arn');
  }

  @override
  FederatedUser rebuild(void Function(FederatedUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FederatedUserBuilder toBuilder() => new FederatedUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FederatedUser &&
        federatedUserId == other.federatedUserId &&
        arn == other.arn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, federatedUserId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FederatedUserBuilder
    implements Builder<FederatedUser, FederatedUserBuilder> {
  _$FederatedUser? _$v;

  String? _federatedUserId;
  String? get federatedUserId => _$this._federatedUserId;
  set federatedUserId(String? federatedUserId) =>
      _$this._federatedUserId = federatedUserId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  FederatedUserBuilder() {
    FederatedUser._init(this);
  }

  FederatedUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _federatedUserId = $v.federatedUserId;
      _arn = $v.arn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FederatedUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FederatedUser;
  }

  @override
  void update(void Function(FederatedUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FederatedUser build() => _build();

  _$FederatedUser _build() {
    final _$result = _$v ??
        new _$FederatedUser._(
            federatedUserId: BuiltValueNullFieldError.checkNotNull(
                federatedUserId, r'FederatedUser', 'federatedUserId'),
            arn: BuiltValueNullFieldError.checkNotNull(
                arn, r'FederatedUser', 'arn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
