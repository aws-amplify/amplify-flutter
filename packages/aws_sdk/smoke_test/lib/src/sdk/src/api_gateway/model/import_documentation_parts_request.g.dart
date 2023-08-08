// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_documentation_parts_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportDocumentationPartsRequest
    extends ImportDocumentationPartsRequest {
  @override
  final String restApiId;
  @override
  final _i4.PutMode? mode;
  @override
  final bool failOnWarnings;
  @override
  final _i2.Uint8List body;

  factory _$ImportDocumentationPartsRequest(
          [void Function(ImportDocumentationPartsRequestBuilder)? updates]) =>
      (new ImportDocumentationPartsRequestBuilder()..update(updates))._build();

  _$ImportDocumentationPartsRequest._(
      {required this.restApiId,
      this.mode,
      required this.failOnWarnings,
      required this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'ImportDocumentationPartsRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(
        failOnWarnings, r'ImportDocumentationPartsRequest', 'failOnWarnings');
    BuiltValueNullFieldError.checkNotNull(
        body, r'ImportDocumentationPartsRequest', 'body');
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
        restApiId == other.restApiId &&
        mode == other.mode &&
        failOnWarnings == other.failOnWarnings &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, failOnWarnings.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportDocumentationPartsRequestBuilder
    implements
        Builder<ImportDocumentationPartsRequest,
            ImportDocumentationPartsRequestBuilder> {
  _$ImportDocumentationPartsRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  _i4.PutMode? _mode;
  _i4.PutMode? get mode => _$this._mode;
  set mode(_i4.PutMode? mode) => _$this._mode = mode;

  bool? _failOnWarnings;
  bool? get failOnWarnings => _$this._failOnWarnings;
  set failOnWarnings(bool? failOnWarnings) =>
      _$this._failOnWarnings = failOnWarnings;

  _i2.Uint8List? _body;
  _i2.Uint8List? get body => _$this._body;
  set body(_i2.Uint8List? body) => _$this._body = body;

  ImportDocumentationPartsRequestBuilder() {
    ImportDocumentationPartsRequest._init(this);
  }

  ImportDocumentationPartsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _mode = $v.mode;
      _failOnWarnings = $v.failOnWarnings;
      _body = $v.body;
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
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'ImportDocumentationPartsRequest', 'restApiId'),
            mode: mode,
            failOnWarnings: BuiltValueNullFieldError.checkNotNull(
                failOnWarnings,
                r'ImportDocumentationPartsRequest',
                'failOnWarnings'),
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'ImportDocumentationPartsRequest', 'body'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
