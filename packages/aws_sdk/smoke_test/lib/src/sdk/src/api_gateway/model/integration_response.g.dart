// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.integration_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrationResponse extends IntegrationResponse {
  @override
  final String? statusCode;
  @override
  final String? selectionPattern;
  @override
  final _i3.BuiltMap<String, String>? responseParameters;
  @override
  final _i3.BuiltMap<String, String>? responseTemplates;
  @override
  final _i2.ContentHandlingStrategy? contentHandling;

  factory _$IntegrationResponse(
          [void Function(IntegrationResponseBuilder)? updates]) =>
      (new IntegrationResponseBuilder()..update(updates))._build();

  _$IntegrationResponse._(
      {this.statusCode,
      this.selectionPattern,
      this.responseParameters,
      this.responseTemplates,
      this.contentHandling})
      : super._();

  @override
  IntegrationResponse rebuild(
          void Function(IntegrationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationResponseBuilder toBuilder() =>
      new IntegrationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationResponse &&
        statusCode == other.statusCode &&
        selectionPattern == other.selectionPattern &&
        responseParameters == other.responseParameters &&
        responseTemplates == other.responseTemplates &&
        contentHandling == other.contentHandling;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, selectionPattern.hashCode);
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseTemplates.hashCode);
    _$hash = $jc(_$hash, contentHandling.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IntegrationResponseBuilder
    implements Builder<IntegrationResponse, IntegrationResponseBuilder> {
  _$IntegrationResponse? _$v;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  String? _selectionPattern;
  String? get selectionPattern => _$this._selectionPattern;
  set selectionPattern(String? selectionPattern) =>
      _$this._selectionPattern = selectionPattern;

  _i3.MapBuilder<String, String>? _responseParameters;
  _i3.MapBuilder<String, String> get responseParameters =>
      _$this._responseParameters ??= new _i3.MapBuilder<String, String>();
  set responseParameters(_i3.MapBuilder<String, String>? responseParameters) =>
      _$this._responseParameters = responseParameters;

  _i3.MapBuilder<String, String>? _responseTemplates;
  _i3.MapBuilder<String, String> get responseTemplates =>
      _$this._responseTemplates ??= new _i3.MapBuilder<String, String>();
  set responseTemplates(_i3.MapBuilder<String, String>? responseTemplates) =>
      _$this._responseTemplates = responseTemplates;

  _i2.ContentHandlingStrategy? _contentHandling;
  _i2.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i2.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

  IntegrationResponseBuilder() {
    IntegrationResponse._init(this);
  }

  IntegrationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _selectionPattern = $v.selectionPattern;
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseTemplates = $v.responseTemplates?.toBuilder();
      _contentHandling = $v.contentHandling;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntegrationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IntegrationResponse;
  }

  @override
  void update(void Function(IntegrationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationResponse build() => _build();

  _$IntegrationResponse _build() {
    _$IntegrationResponse _$result;
    try {
      _$result = _$v ??
          new _$IntegrationResponse._(
              statusCode: statusCode,
              selectionPattern: selectionPattern,
              responseParameters: _responseParameters?.build(),
              responseTemplates: _responseTemplates?.build(),
              contentHandling: contentHandling);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseParameters';
        _responseParameters?.build();
        _$failedField = 'responseTemplates';
        _responseTemplates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IntegrationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
