// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.remove_user_from_group_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoveUserFromGroupRequest extends RemoveUserFromGroupRequest {
  @override
  final String groupName;
  @override
  final String userName;

  factory _$RemoveUserFromGroupRequest(
          [void Function(RemoveUserFromGroupRequestBuilder)? updates]) =>
      (new RemoveUserFromGroupRequestBuilder()..update(updates))._build();

  _$RemoveUserFromGroupRequest._(
      {required this.groupName, required this.userName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'RemoveUserFromGroupRequest', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        userName, r'RemoveUserFromGroupRequest', 'userName');
  }

  @override
  RemoveUserFromGroupRequest rebuild(
          void Function(RemoveUserFromGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveUserFromGroupRequestBuilder toBuilder() =>
      new RemoveUserFromGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveUserFromGroupRequest &&
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

class RemoveUserFromGroupRequestBuilder
    implements
        Builder<RemoveUserFromGroupRequest, RemoveUserFromGroupRequestBuilder> {
  _$RemoveUserFromGroupRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  RemoveUserFromGroupRequestBuilder() {
    RemoveUserFromGroupRequest._init(this);
  }

  RemoveUserFromGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveUserFromGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveUserFromGroupRequest;
  }

  @override
  void update(void Function(RemoveUserFromGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveUserFromGroupRequest build() => _build();

  _$RemoveUserFromGroupRequest _build() {
    final _$result = _$v ??
        new _$RemoveUserFromGroupRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'RemoveUserFromGroupRequest', 'groupName'),
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'RemoveUserFromGroupRequest', 'userName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
