// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.untag_role_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagRoleRequest extends UntagRoleRequest {
  @override
  final String roleName;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagRoleRequest(
          [void Function(UntagRoleRequestBuilder)? updates]) =>
      (new UntagRoleRequestBuilder()..update(updates))._build();

  _$UntagRoleRequest._({required this.roleName, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleName, r'UntagRoleRequest', 'roleName');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagRoleRequest', 'tagKeys');
  }

  @override
  UntagRoleRequest rebuild(void Function(UntagRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagRoleRequestBuilder toBuilder() =>
      new UntagRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagRoleRequest &&
        roleName == other.roleName &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagRoleRequestBuilder
    implements Builder<UntagRoleRequest, UntagRoleRequestBuilder> {
  _$UntagRoleRequest? _$v;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagRoleRequestBuilder() {
    UntagRoleRequest._init(this);
  }

  UntagRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleName = $v.roleName;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagRoleRequest;
  }

  @override
  void update(void Function(UntagRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagRoleRequest build() => _build();

  _$UntagRoleRequest _build() {
    _$UntagRoleRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagRoleRequest._(
              roleName: BuiltValueNullFieldError.checkNotNull(
                  roleName, r'UntagRoleRequest', 'roleName'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagRoleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
