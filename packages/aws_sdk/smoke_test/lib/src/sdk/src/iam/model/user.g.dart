// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final String path;
  @override
  final String userName;
  @override
  final String userId;
  @override
  final String arn;
  @override
  final DateTime createDate;
  @override
  final DateTime? passwordLastUsed;
  @override
  final _i2.AttachedPermissionsBoundary? permissionsBoundary;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {required this.path,
      required this.userName,
      required this.userId,
      required this.arn,
      required this.createDate,
      this.passwordLastUsed,
      this.permissionsBoundary,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(path, r'User', 'path');
    BuiltValueNullFieldError.checkNotNull(userName, r'User', 'userName');
    BuiltValueNullFieldError.checkNotNull(userId, r'User', 'userId');
    BuiltValueNullFieldError.checkNotNull(arn, r'User', 'arn');
    BuiltValueNullFieldError.checkNotNull(createDate, r'User', 'createDate');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        path == other.path &&
        userName == other.userName &&
        userId == other.userId &&
        arn == other.arn &&
        createDate == other.createDate &&
        passwordLastUsed == other.passwordLastUsed &&
        permissionsBoundary == other.permissionsBoundary &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, passwordLastUsed.hashCode);
    _$hash = $jc(_$hash, permissionsBoundary.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  DateTime? _passwordLastUsed;
  DateTime? get passwordLastUsed => _$this._passwordLastUsed;
  set passwordLastUsed(DateTime? passwordLastUsed) =>
      _$this._passwordLastUsed = passwordLastUsed;

  _i2.AttachedPermissionsBoundaryBuilder? _permissionsBoundary;
  _i2.AttachedPermissionsBoundaryBuilder get permissionsBoundary =>
      _$this._permissionsBoundary ??=
          new _i2.AttachedPermissionsBoundaryBuilder();
  set permissionsBoundary(
          _i2.AttachedPermissionsBoundaryBuilder? permissionsBoundary) =>
      _$this._permissionsBoundary = permissionsBoundary;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  UserBuilder() {
    User._init(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _userName = $v.userName;
      _userId = $v.userId;
      _arn = $v.arn;
      _createDate = $v.createDate;
      _passwordLastUsed = $v.passwordLastUsed;
      _permissionsBoundary = $v.permissionsBoundary?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              path:
                  BuiltValueNullFieldError.checkNotNull(path, r'User', 'path'),
              userName: BuiltValueNullFieldError.checkNotNull(
                  userName, r'User', 'userName'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'User', 'userId'),
              arn: BuiltValueNullFieldError.checkNotNull(arn, r'User', 'arn'),
              createDate: BuiltValueNullFieldError.checkNotNull(
                  createDate, r'User', 'createDate'),
              passwordLastUsed: passwordLastUsed,
              permissionsBoundary: _permissionsBoundary?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissionsBoundary';
        _permissionsBoundary?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
