// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.untag_server_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagServerCertificateRequest extends UntagServerCertificateRequest {
  @override
  final String serverCertificateName;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagServerCertificateRequest(
          [void Function(UntagServerCertificateRequestBuilder)? updates]) =>
      (new UntagServerCertificateRequestBuilder()..update(updates))._build();

  _$UntagServerCertificateRequest._(
      {required this.serverCertificateName, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificateName,
        r'UntagServerCertificateRequest', 'serverCertificateName');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagServerCertificateRequest', 'tagKeys');
  }

  @override
  UntagServerCertificateRequest rebuild(
          void Function(UntagServerCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagServerCertificateRequestBuilder toBuilder() =>
      new UntagServerCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagServerCertificateRequest &&
        serverCertificateName == other.serverCertificateName &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverCertificateName.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagServerCertificateRequestBuilder
    implements
        Builder<UntagServerCertificateRequest,
            UntagServerCertificateRequestBuilder> {
  _$UntagServerCertificateRequest? _$v;

  String? _serverCertificateName;
  String? get serverCertificateName => _$this._serverCertificateName;
  set serverCertificateName(String? serverCertificateName) =>
      _$this._serverCertificateName = serverCertificateName;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagServerCertificateRequestBuilder() {
    UntagServerCertificateRequest._init(this);
  }

  UntagServerCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificateName = $v.serverCertificateName;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagServerCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagServerCertificateRequest;
  }

  @override
  void update(void Function(UntagServerCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagServerCertificateRequest build() => _build();

  _$UntagServerCertificateRequest _build() {
    _$UntagServerCertificateRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagServerCertificateRequest._(
              serverCertificateName: BuiltValueNullFieldError.checkNotNull(
                  serverCertificateName,
                  r'UntagServerCertificateRequest',
                  'serverCertificateName'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagServerCertificateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
