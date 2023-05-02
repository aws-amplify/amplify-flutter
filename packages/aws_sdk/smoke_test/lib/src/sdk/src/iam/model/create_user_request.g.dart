// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_user_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateUserRequest extends CreateUserRequest {
  @override
  final String? path;
  @override
  final String userName;
  @override
  final String? permissionsBoundary;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$CreateUserRequest(
          [void Function(CreateUserRequestBuilder)? updates]) =>
      (new CreateUserRequestBuilder()..update(updates))._build();

  _$CreateUserRequest._(
      {this.path, required this.userName, this.permissionsBoundary, this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'CreateUserRequest', 'userName');
  }

  @override
  CreateUserRequest rebuild(void Function(CreateUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUserRequestBuilder toBuilder() =>
      new CreateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUserRequest &&
        path == other.path &&
        userName == other.userName &&
        permissionsBoundary == other.permissionsBoundary &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, permissionsBoundary.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateUserRequestBuilder
    implements Builder<CreateUserRequest, CreateUserRequestBuilder> {
  _$CreateUserRequest? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _permissionsBoundary;
  String? get permissionsBoundary => _$this._permissionsBoundary;
  set permissionsBoundary(String? permissionsBoundary) =>
      _$this._permissionsBoundary = permissionsBoundary;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  CreateUserRequestBuilder() {
    CreateUserRequest._init(this);
  }

  CreateUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _userName = $v.userName;
      _permissionsBoundary = $v.permissionsBoundary;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateUserRequest;
  }

  @override
  void update(void Function(CreateUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUserRequest build() => _build();

  _$CreateUserRequest _build() {
    _$CreateUserRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateUserRequest._(
              path: path,
              userName: BuiltValueNullFieldError.checkNotNull(
                  userName, r'CreateUserRequest', 'userName'),
              permissionsBoundary: permissionsBoundary,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateUserRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
