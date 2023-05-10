// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_group_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGroupRequest extends UpdateGroupRequest {
  @override
  final String groupName;
  @override
  final String? newPath;
  @override
  final String? newGroupName;

  factory _$UpdateGroupRequest(
          [void Function(UpdateGroupRequestBuilder)? updates]) =>
      (new UpdateGroupRequestBuilder()..update(updates))._build();

  _$UpdateGroupRequest._(
      {required this.groupName, this.newPath, this.newGroupName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'UpdateGroupRequest', 'groupName');
  }

  @override
  UpdateGroupRequest rebuild(
          void Function(UpdateGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGroupRequestBuilder toBuilder() =>
      new UpdateGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGroupRequest &&
        groupName == other.groupName &&
        newPath == other.newPath &&
        newGroupName == other.newGroupName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, newPath.hashCode);
    _$hash = $jc(_$hash, newGroupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateGroupRequestBuilder
    implements Builder<UpdateGroupRequest, UpdateGroupRequestBuilder> {
  _$UpdateGroupRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _newPath;
  String? get newPath => _$this._newPath;
  set newPath(String? newPath) => _$this._newPath = newPath;

  String? _newGroupName;
  String? get newGroupName => _$this._newGroupName;
  set newGroupName(String? newGroupName) => _$this._newGroupName = newGroupName;

  UpdateGroupRequestBuilder() {
    UpdateGroupRequest._init(this);
  }

  UpdateGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _newPath = $v.newPath;
      _newGroupName = $v.newGroupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGroupRequest;
  }

  @override
  void update(void Function(UpdateGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGroupRequest build() => _build();

  _$UpdateGroupRequest _build() {
    final _$result = _$v ??
        new _$UpdateGroupRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'UpdateGroupRequest', 'groupName'),
            newPath: newPath,
            newGroupName: newGroupName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
