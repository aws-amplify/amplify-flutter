// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.tag_server_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TagServerCertificateRequest extends TagServerCertificateRequest {
  @override
  final String serverCertificateName;
  @override
  final _i4.BuiltList<_i3.Tag> tags;

  factory _$TagServerCertificateRequest(
          [void Function(TagServerCertificateRequestBuilder)? updates]) =>
      (new TagServerCertificateRequestBuilder()..update(updates))._build();

  _$TagServerCertificateRequest._(
      {required this.serverCertificateName, required this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificateName,
        r'TagServerCertificateRequest', 'serverCertificateName');
    BuiltValueNullFieldError.checkNotNull(
        tags, r'TagServerCertificateRequest', 'tags');
  }

  @override
  TagServerCertificateRequest rebuild(
          void Function(TagServerCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagServerCertificateRequestBuilder toBuilder() =>
      new TagServerCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagServerCertificateRequest &&
        serverCertificateName == other.serverCertificateName &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverCertificateName.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TagServerCertificateRequestBuilder
    implements
        Builder<TagServerCertificateRequest,
            TagServerCertificateRequestBuilder> {
  _$TagServerCertificateRequest? _$v;

  String? _serverCertificateName;
  String? get serverCertificateName => _$this._serverCertificateName;
  set serverCertificateName(String? serverCertificateName) =>
      _$this._serverCertificateName = serverCertificateName;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  TagServerCertificateRequestBuilder() {
    TagServerCertificateRequest._init(this);
  }

  TagServerCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificateName = $v.serverCertificateName;
      _tags = $v.tags.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagServerCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagServerCertificateRequest;
  }

  @override
  void update(void Function(TagServerCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagServerCertificateRequest build() => _build();

  _$TagServerCertificateRequest _build() {
    _$TagServerCertificateRequest _$result;
    try {
      _$result = _$v ??
          new _$TagServerCertificateRequest._(
              serverCertificateName: BuiltValueNullFieldError.checkNotNull(
                  serverCertificateName,
                  r'TagServerCertificateRequest',
                  'serverCertificateName'),
              tags: tags.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagServerCertificateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
