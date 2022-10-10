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
    return $jf($jc($jc(0, description.hashCode), tags.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
