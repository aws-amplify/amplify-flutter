// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.put_user_permissions_boundary_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutUserPermissionsBoundaryRequest
    extends PutUserPermissionsBoundaryRequest {
  @override
  final String userName;
  @override
  final String permissionsBoundary;

  factory _$PutUserPermissionsBoundaryRequest(
          [void Function(PutUserPermissionsBoundaryRequestBuilder)? updates]) =>
      (new PutUserPermissionsBoundaryRequestBuilder()..update(updates))
          ._build();

  _$PutUserPermissionsBoundaryRequest._(
      {required this.userName, required this.permissionsBoundary})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'PutUserPermissionsBoundaryRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(permissionsBoundary,
        r'PutUserPermissionsBoundaryRequest', 'permissionsBoundary');
  }

  @override
  PutUserPermissionsBoundaryRequest rebuild(
          void Function(PutUserPermissionsBoundaryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutUserPermissionsBoundaryRequestBuilder toBuilder() =>
      new PutUserPermissionsBoundaryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutUserPermissionsBoundaryRequest &&
        userName == other.userName &&
        permissionsBoundary == other.permissionsBoundary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, permissionsBoundary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutUserPermissionsBoundaryRequestBuilder
    implements
        Builder<PutUserPermissionsBoundaryRequest,
            PutUserPermissionsBoundaryRequestBuilder> {
  _$PutUserPermissionsBoundaryRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _permissionsBoundary;
  String? get permissionsBoundary => _$this._permissionsBoundary;
  set permissionsBoundary(String? permissionsBoundary) =>
      _$this._permissionsBoundary = permissionsBoundary;

  PutUserPermissionsBoundaryRequestBuilder() {
    PutUserPermissionsBoundaryRequest._init(this);
  }

  PutUserPermissionsBoundaryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _permissionsBoundary = $v.permissionsBoundary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutUserPermissionsBoundaryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutUserPermissionsBoundaryRequest;
  }

  @override
  void update(
      void Function(PutUserPermissionsBoundaryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutUserPermissionsBoundaryRequest build() => _build();

  _$PutUserPermissionsBoundaryRequest _build() {
    final _$result = _$v ??
        new _$PutUserPermissionsBoundaryRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'PutUserPermissionsBoundaryRequest', 'userName'),
            permissionsBoundary: BuiltValueNullFieldError.checkNotNull(
                permissionsBoundary,
                r'PutUserPermissionsBoundaryRequest',
                'permissionsBoundary'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
