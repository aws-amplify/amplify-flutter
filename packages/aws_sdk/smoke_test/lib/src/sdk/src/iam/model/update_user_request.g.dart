// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_user_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserRequest extends UpdateUserRequest {
  @override
  final String userName;
  @override
  final String? newPath;
  @override
  final String? newUserName;

  factory _$UpdateUserRequest(
          [void Function(UpdateUserRequestBuilder)? updates]) =>
      (new UpdateUserRequestBuilder()..update(updates))._build();

  _$UpdateUserRequest._(
      {required this.userName, this.newPath, this.newUserName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'UpdateUserRequest', 'userName');
  }

  @override
  UpdateUserRequest rebuild(void Function(UpdateUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserRequestBuilder toBuilder() =>
      new UpdateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserRequest &&
        userName == other.userName &&
        newPath == other.newPath &&
        newUserName == other.newUserName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, newPath.hashCode);
    _$hash = $jc(_$hash, newUserName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateUserRequestBuilder
    implements Builder<UpdateUserRequest, UpdateUserRequestBuilder> {
  _$UpdateUserRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _newPath;
  String? get newPath => _$this._newPath;
  set newPath(String? newPath) => _$this._newPath = newPath;

  String? _newUserName;
  String? get newUserName => _$this._newUserName;
  set newUserName(String? newUserName) => _$this._newUserName = newUserName;

  UpdateUserRequestBuilder() {
    UpdateUserRequest._init(this);
  }

  UpdateUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _newPath = $v.newPath;
      _newUserName = $v.newUserName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserRequest;
  }

  @override
  void update(void Function(UpdateUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserRequest build() => _build();

  _$UpdateUserRequest _build() {
    final _$result = _$v ??
        new _$UpdateUserRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'UpdateUserRequest', 'userName'),
            newPath: newPath,
            newUserName: newUserName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
