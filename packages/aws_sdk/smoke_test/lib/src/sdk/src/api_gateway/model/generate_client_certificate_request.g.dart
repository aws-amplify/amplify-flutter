// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.generate_client_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenerateClientCertificateRequest
    extends GenerateClientCertificateRequest {
  @override
  final String? description;
  @override
  final _i3.BuiltMap<String, String>? tags;

  factory _$GenerateClientCertificateRequest(
          [void Function(GenerateClientCertificateRequestBuilder)? updates]) =>
      (new GenerateClientCertificateRequestBuilder()..update(updates))._build();

  _$GenerateClientCertificateRequest._({this.description, this.tags})
      : super._();

  @override
  GenerateClientCertificateRequest rebuild(
          void Function(GenerateClientCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenerateClientCertificateRequestBuilder toBuilder() =>
      new GenerateClientCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenerateClientCertificateRequest &&
        description == other.description &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GenerateClientCertificateRequestBuilder
    implements
        Builder<GenerateClientCertificateRequest,
            GenerateClientCertificateRequestBuilder> {
  _$GenerateClientCertificateRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.MapBuilder<String, String>? _tags;
  _i3.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i3.MapBuilder<String, String>();
  set tags(_i3.MapBuilder<String, String>? tags) => _$this._tags = tags;

  GenerateClientCertificateRequestBuilder() {
    GenerateClientCertificateRequest._init(this);
  }

  GenerateClientCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenerateClientCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenerateClientCertificateRequest;
  }

  @override
  void update(void Function(GenerateClientCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenerateClientCertificateRequest build() => _build();

  _$GenerateClientCertificateRequest _build() {
    _$GenerateClientCertificateRequest _$result;
    try {
      _$result = _$v ??
          new _$GenerateClientCertificateRequest._(
              description: description, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GenerateClientCertificateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
