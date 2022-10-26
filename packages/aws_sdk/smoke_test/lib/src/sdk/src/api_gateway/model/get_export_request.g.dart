// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_export_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetExportRequest extends GetExportRequest {
  @override
  final String? accepts;
  @override
  final String exportType;
  @override
  final _i3.BuiltMap<String, String>? parameters;
  @override
  final String restApiId;
  @override
  final String stageName;

  factory _$GetExportRequest(
          [void Function(GetExportRequestBuilder)? updates]) =>
      (new GetExportRequestBuilder()..update(updates))._build();

  _$GetExportRequest._(
      {this.accepts,
      required this.exportType,
      this.parameters,
      required this.restApiId,
      required this.stageName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        exportType, r'GetExportRequest', 'exportType');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'GetExportRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        stageName, r'GetExportRequest', 'stageName');
  }

  @override
  GetExportRequest rebuild(void Function(GetExportRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetExportRequestBuilder toBuilder() =>
      new GetExportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetExportRequest &&
        accepts == other.accepts &&
        exportType == other.exportType &&
        parameters == other.parameters &&
        restApiId == other.restApiId &&
        stageName == other.stageName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, accepts.hashCode), exportType.hashCode),
                parameters.hashCode),
            restApiId.hashCode),
        stageName.hashCode));
  }
}

class GetExportRequestBuilder
    implements Builder<GetExportRequest, GetExportRequestBuilder> {
  _$GetExportRequest? _$v;

  String? _accepts;
  String? get accepts => _$this._accepts;
  set accepts(String? accepts) => _$this._accepts = accepts;

  String? _exportType;
  String? get exportType => _$this._exportType;
  set exportType(String? exportType) => _$this._exportType = exportType;

  _i3.MapBuilder<String, String>? _parameters;
  _i3.MapBuilder<String, String> get parameters =>
      _$this._parameters ??= new _i3.MapBuilder<String, String>();
  set parameters(_i3.MapBuilder<String, String>? parameters) =>
      _$this._parameters = parameters;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  GetExportRequestBuilder() {
    GetExportRequest._init(this);
  }

  GetExportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accepts = $v.accepts;
      _exportType = $v.exportType;
      _parameters = $v.parameters?.toBuilder();
      _restApiId = $v.restApiId;
      _stageName = $v.stageName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetExportRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetExportRequest;
  }

  @override
  void update(void Function(GetExportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetExportRequest build() => _build();

  _$GetExportRequest _build() {
    _$GetExportRequest _$result;
    try {
      _$result = _$v ??
          new _$GetExportRequest._(
              accepts: accepts,
              exportType: BuiltValueNullFieldError.checkNotNull(
                  exportType, r'GetExportRequest', 'exportType'),
              parameters: _parameters?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'GetExportRequest', 'restApiId'),
              stageName: BuiltValueNullFieldError.checkNotNull(
                  stageName, r'GetExportRequest', 'stageName'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetExportRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetExportRequestPayload extends GetExportRequestPayload {
  factory _$GetExportRequestPayload(
          [void Function(GetExportRequestPayloadBuilder)? updates]) =>
      (new GetExportRequestPayloadBuilder()..update(updates))._build();

  _$GetExportRequestPayload._() : super._();

  @override
  GetExportRequestPayload rebuild(
          void Function(GetExportRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetExportRequestPayloadBuilder toBuilder() =>
      new GetExportRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetExportRequestPayload;
  }

  @override
  int get hashCode {
    return 832289684;
  }
}

class GetExportRequestPayloadBuilder
    implements
        Builder<GetExportRequestPayload, GetExportRequestPayloadBuilder> {
  _$GetExportRequestPayload? _$v;

  GetExportRequestPayloadBuilder() {
    GetExportRequestPayload._init(this);
  }

  @override
  void replace(GetExportRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetExportRequestPayload;
  }

  @override
  void update(void Function(GetExportRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetExportRequestPayload build() => _build();

  _$GetExportRequestPayload _build() {
    final _$result = _$v ?? new _$GetExportRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
