// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_group_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteGroupRequest extends DeleteGroupRequest {
  @override
  final String groupName;

  factory _$DeleteGroupRequest(
          [void Function(DeleteGroupRequestBuilder)? updates]) =>
      (new DeleteGroupRequestBuilder()..update(updates))._build();

  _$DeleteGroupRequest._({required this.groupName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'DeleteGroupRequest', 'groupName');
  }

  @override
  DeleteGroupRequest rebuild(
          void Function(DeleteGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteGroupRequestBuilder toBuilder() =>
      new DeleteGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteGroupRequest && groupName == other.groupName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteGroupRequestBuilder
    implements Builder<DeleteGroupRequest, DeleteGroupRequestBuilder> {
  _$DeleteGroupRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  DeleteGroupRequestBuilder() {
    DeleteGroupRequest._init(this);
  }

  DeleteGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteGroupRequest;
  }

  @override
  void update(void Function(DeleteGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteGroupRequest build() => _build();

  _$DeleteGroupRequest _build() {
    final _$result = _$v ??
        new _$DeleteGroupRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'DeleteGroupRequest', 'groupName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
