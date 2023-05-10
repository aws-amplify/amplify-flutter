// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.untag_user_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagUserRequest extends UntagUserRequest {
  @override
  final String userName;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagUserRequest(
          [void Function(UntagUserRequestBuilder)? updates]) =>
      (new UntagUserRequestBuilder()..update(updates))._build();

  _$UntagUserRequest._({required this.userName, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'UntagUserRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagUserRequest', 'tagKeys');
  }

  @override
  UntagUserRequest rebuild(void Function(UntagUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagUserRequestBuilder toBuilder() =>
      new UntagUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagUserRequest &&
        userName == other.userName &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagUserRequestBuilder
    implements Builder<UntagUserRequest, UntagUserRequestBuilder> {
  _$UntagUserRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagUserRequestBuilder() {
    UntagUserRequest._init(this);
  }

  UntagUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagUserRequest;
  }

  @override
  void update(void Function(UntagUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagUserRequest build() => _build();

  _$UntagUserRequest _build() {
    _$UntagUserRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagUserRequest._(
              userName: BuiltValueNullFieldError.checkNotNull(
                  userName, r'UntagUserRequest', 'userName'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagUserRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
