// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.import_documentation_parts_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportDocumentationPartsRequest
    extends ImportDocumentationPartsRequest {
  @override
  final _i2.Uint8List body;
  @override
  final bool? failOnWarnings;
  @override
  final _i4.PutMode? mode;
  @override
  final String restApiId;

  factory _$ImportDocumentationPartsRequest(
          [void Function(ImportDocumentationPartsRequestBuilder)? updates]) =>
      (new ImportDocumentationPartsRequestBuilder()..update(updates))._build();

  _$ImportDocumentationPartsRequest._(
      {required this.body,
      this.failOnWarnings,
      this.mode,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        body, r'ImportDocumentationPartsRequest', 'body');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'ImportDocumentationPartsRequest', 'restApiId');
  }

  @override
  ImportDocumentationPartsRequest rebuild(
          void Function(ImportDocumentationPartsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportDocumentationPartsRequestBuilder toBuilder() =>
      new ImportDocumentationPartsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportDocumentationPartsRequest &&
        body == other.body &&
        failOnWarnings == other.failOnWarnings &&
        mode == other.mode &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, body.hashCode), failOnWarnings.hashCode), mode.hashCode),
        restApiId.hashCode));
  }
}

class ImportDocumentationPartsRequestBuilder
    implements
        Builder<ImportDocumentationPartsRequest,
            ImportDocumentationPartsRequestBuilder> {
  _$ImportDocumentationPartsRequest? _$v;

  _i2.Uint8List? _body;
  _i2.Uint8List? get body => _$this._body;
  set body(_i2.Uint8List? body) => _$this._body = body;

  bool? _failOnWarnings;
  bool? get failOnWarnings => _$this._failOnWarnings;
  set failOnWarnings(bool? failOnWarnings) =>
      _$this._failOnWarnings = failOnWarnings;

  _i4.PutMode? _mode;
  _i4.PutMode? get mode => _$this._mode;
  set mode(_i4.PutMode? mode) => _$this._mode = mode;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  ImportDocumentationPartsRequestBuilder() {
    ImportDocumentationPartsRequest._init(this);
  }

  ImportDocumentationPartsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _failOnWarnings = $v.failOnWarnings;
      _mode = $v.mode;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportDocumentationPartsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportDocumentationPartsRequest;
  }

  @override
  void update(void Function(ImportDocumentationPartsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportDocumentationPartsRequest build() => _build();

  _$ImportDocumentationPartsRequest _build() {
    final _$result = _$v ??
        new _$ImportDocumentationPartsRequest._(
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'ImportDocumentationPartsRequest', 'body'),
            failOnWarnings: failOnWarnings,
            mode: mode,
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'ImportDocumentationPartsRequest', 'restApiId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
