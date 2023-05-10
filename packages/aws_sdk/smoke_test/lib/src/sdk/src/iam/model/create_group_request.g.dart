// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_group_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateGroupRequest extends CreateGroupRequest {
  @override
  final String? path;
  @override
  final String groupName;

  factory _$CreateGroupRequest(
          [void Function(CreateGroupRequestBuilder)? updates]) =>
      (new CreateGroupRequestBuilder()..update(updates))._build();

  _$CreateGroupRequest._({this.path, required this.groupName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'CreateGroupRequest', 'groupName');
  }

  @override
  CreateGroupRequest rebuild(
          void Function(CreateGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateGroupRequestBuilder toBuilder() =>
      new CreateGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateGroupRequest &&
        path == other.path &&
        groupName == other.groupName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateGroupRequestBuilder
    implements Builder<CreateGroupRequest, CreateGroupRequestBuilder> {
  _$CreateGroupRequest? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  CreateGroupRequestBuilder() {
    CreateGroupRequest._init(this);
  }

  CreateGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _groupName = $v.groupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateGroupRequest;
  }

  @override
  void update(void Function(CreateGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateGroupRequest build() => _build();

  _$CreateGroupRequest _build() {
    final _$result = _$v ??
        new _$CreateGroupRequest._(
            path: path,
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'CreateGroupRequest', 'groupName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
