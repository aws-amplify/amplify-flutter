// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_permission_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoadPermissionRequest extends LoadPermissionRequest {
  @override
  final PermissionGroup? group;
  @override
  final String? userId;

  factory _$LoadPermissionRequest(
          [void Function(LoadPermissionRequestBuilder)? updates]) =>
      (new LoadPermissionRequestBuilder()..update(updates))._build();

  _$LoadPermissionRequest._({this.group, this.userId}) : super._();

  @override
  LoadPermissionRequest rebuild(
          void Function(LoadPermissionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadPermissionRequestBuilder toBuilder() =>
      new LoadPermissionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadPermissionRequest &&
        group == other.group &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LoadPermissionRequestBuilder
    implements Builder<LoadPermissionRequest, LoadPermissionRequestBuilder> {
  _$LoadPermissionRequest? _$v;

  PermissionGroup? _group;
  PermissionGroup? get group => _$this._group;
  set group(PermissionGroup? group) => _$this._group = group;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  LoadPermissionRequestBuilder();

  LoadPermissionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _group = $v.group;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoadPermissionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoadPermissionRequest;
  }

  @override
  void update(void Function(LoadPermissionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoadPermissionRequest build() => _build();

  _$LoadPermissionRequest _build() {
    final _$result =
        _$v ?? new _$LoadPermissionRequest._(group: group, userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
