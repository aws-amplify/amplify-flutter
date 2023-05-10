// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_role_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRoleRequest extends CreateRoleRequest {
  @override
  final String? path;
  @override
  final String roleName;
  @override
  final String assumeRolePolicyDocument;
  @override
  final String? description;
  @override
  final int? maxSessionDuration;
  @override
  final String? permissionsBoundary;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$CreateRoleRequest(
          [void Function(CreateRoleRequestBuilder)? updates]) =>
      (new CreateRoleRequestBuilder()..update(updates))._build();

  _$CreateRoleRequest._(
      {this.path,
      required this.roleName,
      required this.assumeRolePolicyDocument,
      this.description,
      this.maxSessionDuration,
      this.permissionsBoundary,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'CreateRoleRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(assumeRolePolicyDocument,
        r'CreateRoleRequest', 'assumeRolePolicyDocument');
  }

  @override
  CreateRoleRequest rebuild(void Function(CreateRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRoleRequestBuilder toBuilder() =>
      new CreateRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRoleRequest &&
        path == other.path &&
        roleName == other.roleName &&
        assumeRolePolicyDocument == other.assumeRolePolicyDocument &&
        description == other.description &&
        maxSessionDuration == other.maxSessionDuration &&
        permissionsBoundary == other.permissionsBoundary &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, assumeRolePolicyDocument.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, maxSessionDuration.hashCode);
    _$hash = $jc(_$hash, permissionsBoundary.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRoleRequestBuilder
    implements Builder<CreateRoleRequest, CreateRoleRequestBuilder> {
  _$CreateRoleRequest? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  String? _assumeRolePolicyDocument;
  String? get assumeRolePolicyDocument => _$this._assumeRolePolicyDocument;
  set assumeRolePolicyDocument(String? assumeRolePolicyDocument) =>
      _$this._assumeRolePolicyDocument = assumeRolePolicyDocument;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _maxSessionDuration;
  int? get maxSessionDuration => _$this._maxSessionDuration;
  set maxSessionDuration(int? maxSessionDuration) =>
      _$this._maxSessionDuration = maxSessionDuration;

  String? _permissionsBoundary;
  String? get permissionsBoundary => _$this._permissionsBoundary;
  set permissionsBoundary(String? permissionsBoundary) =>
      _$this._permissionsBoundary = permissionsBoundary;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  CreateRoleRequestBuilder() {
    CreateRoleRequest._init(this);
  }

  CreateRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _roleName = $v.roleName;
      _assumeRolePolicyDocument = $v.assumeRolePolicyDocument;
      _description = $v.description;
      _maxSessionDuration = $v.maxSessionDuration;
      _permissionsBoundary = $v.permissionsBoundary;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRoleRequest;
  }

  @override
  void update(void Function(CreateRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRoleRequest build() => _build();

  _$CreateRoleRequest _build() {
    _$CreateRoleRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateRoleRequest._(
              path: path,
              roleName: BuiltValueNullFieldError.checkNotNull(
                  roleName, r'CreateRoleRequest', 'roleName'),
              assumeRolePolicyDocument: BuiltValueNullFieldError.checkNotNull(
                  assumeRolePolicyDocument,
                  r'CreateRoleRequest',
                  'assumeRolePolicyDocument'),
              description: description,
              maxSessionDuration: maxSessionDuration,
              permissionsBoundary: permissionsBoundary,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateRoleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
