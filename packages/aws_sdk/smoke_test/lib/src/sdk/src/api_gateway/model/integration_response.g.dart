// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.integration_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrationResponse extends IntegrationResponse {
  @override
  final _i2.ContentHandlingStrategy? contentHandling;
  @override
  final _i3.BuiltMap<String, String>? responseParameters;
  @override
  final _i3.BuiltMap<String, String>? responseTemplates;
  @override
  final String? selectionPattern;
  @override
  final String? statusCode;

  factory _$IntegrationResponse(
          [void Function(IntegrationResponseBuilder)? updates]) =>
      (new IntegrationResponseBuilder()..update(updates))._build();

  _$IntegrationResponse._(
      {this.contentHandling,
      this.responseParameters,
      this.responseTemplates,
      this.selectionPattern,
      this.statusCode})
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
        contentHandling == other.contentHandling &&
        responseParameters == other.responseParameters &&
        responseTemplates == other.responseTemplates &&
        selectionPattern == other.selectionPattern &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, contentHandling.hashCode),
                    responseParameters.hashCode),
                responseTemplates.hashCode),
            selectionPattern.hashCode),
        statusCode.hashCode));
  }
}

class IntegrationResponseBuilder
    implements Builder<IntegrationResponse, IntegrationResponseBuilder> {
  _$IntegrationResponse? _$v;

  _i2.ContentHandlingStrategy? _contentHandling;
  _i2.ContentHandlingStrategy? get contentHandling => _$this._contentHandling;
  set contentHandling(_i2.ContentHandlingStrategy? contentHandling) =>
      _$this._contentHandling = contentHandling;

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

  String? _selectionPattern;
  String? get selectionPattern => _$this._selectionPattern;
  set selectionPattern(String? selectionPattern) =>
      _$this._selectionPattern = selectionPattern;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  IntegrationResponseBuilder() {
    IntegrationResponse._init(this);
  }

  IntegrationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contentHandling = $v.contentHandling;
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseTemplates = $v.responseTemplates?.toBuilder();
      _selectionPattern = $v.selectionPattern;
      _statusCode = $v.statusCode;
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
              contentHandling: contentHandling,
              responseParameters: _responseParameters?.build(),
              responseTemplates: _responseTemplates?.build(),
              selectionPattern: selectionPattern,
              statusCode: statusCode);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
