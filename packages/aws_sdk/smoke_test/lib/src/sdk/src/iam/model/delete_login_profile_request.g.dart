// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_login_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLoginProfileRequest extends DeleteLoginProfileRequest {
  @override
  final String userName;

  factory _$DeleteLoginProfileRequest(
          [void Function(DeleteLoginProfileRequestBuilder)? updates]) =>
      (new DeleteLoginProfileRequestBuilder()..update(updates))._build();

  _$DeleteLoginProfileRequest._({required this.userName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'DeleteLoginProfileRequest', 'userName');
  }

  @override
  DeleteLoginProfileRequest rebuild(
          void Function(DeleteLoginProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLoginProfileRequestBuilder toBuilder() =>
      new DeleteLoginProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLoginProfileRequest && userName == other.userName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLoginProfileRequestBuilder
    implements
        Builder<DeleteLoginProfileRequest, DeleteLoginProfileRequestBuilder> {
  _$DeleteLoginProfileRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  DeleteLoginProfileRequestBuilder() {
    DeleteLoginProfileRequest._init(this);
  }

  DeleteLoginProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLoginProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLoginProfileRequest;
  }

  @override
  void update(void Function(DeleteLoginProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLoginProfileRequest build() => _build();

  _$DeleteLoginProfileRequest _build() {
    final _$result = _$v ??
        new _$DeleteLoginProfileRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'DeleteLoginProfileRequest', 'userName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
