// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.add_user_to_group_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddUserToGroupRequest extends AddUserToGroupRequest {
  @override
  final String groupName;
  @override
  final String userName;

  factory _$AddUserToGroupRequest(
          [void Function(AddUserToGroupRequestBuilder)? updates]) =>
      (new AddUserToGroupRequestBuilder()..update(updates))._build();

  _$AddUserToGroupRequest._({required this.groupName, required this.userName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'AddUserToGroupRequest', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        userName, r'AddUserToGroupRequest', 'userName');
  }

  @override
  AddUserToGroupRequest rebuild(
          void Function(AddUserToGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddUserToGroupRequestBuilder toBuilder() =>
      new AddUserToGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddUserToGroupRequest &&
        groupName == other.groupName &&
        userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AddUserToGroupRequestBuilder
    implements Builder<AddUserToGroupRequest, AddUserToGroupRequestBuilder> {
  _$AddUserToGroupRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  AddUserToGroupRequestBuilder() {
    AddUserToGroupRequest._init(this);
  }

  AddUserToGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddUserToGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddUserToGroupRequest;
  }

  @override
  void update(void Function(AddUserToGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddUserToGroupRequest build() => _build();

  _$AddUserToGroupRequest _build() {
    final _$result = _$v ??
        new _$AddUserToGroupRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'AddUserToGroupRequest', 'groupName'),
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'AddUserToGroupRequest', 'userName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
