// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.import_api_keys_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportApiKeysRequest extends ImportApiKeysRequest {
  @override
  final _i2.Uint8List body;
  @override
  final bool? failOnWarnings;
  @override
  final _i4.ApiKeysFormat format;

  factory _$ImportApiKeysRequest(
          [void Function(ImportApiKeysRequestBuilder)? updates]) =>
      (new ImportApiKeysRequestBuilder()..update(updates))._build();

  _$ImportApiKeysRequest._(
      {required this.body, this.failOnWarnings, required this.format})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        body, r'ImportApiKeysRequest', 'body');
    BuiltValueNullFieldError.checkNotNull(
        format, r'ImportApiKeysRequest', 'format');
  }

  @override
  ImportApiKeysRequest rebuild(
          void Function(ImportApiKeysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportApiKeysRequestBuilder toBuilder() =>
      new ImportApiKeysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportApiKeysRequest &&
        body == other.body &&
        failOnWarnings == other.failOnWarnings &&
        format == other.format;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, body.hashCode), failOnWarnings.hashCode), format.hashCode));
  }
}

class ImportApiKeysRequestBuilder
    implements Builder<ImportApiKeysRequest, ImportApiKeysRequestBuilder> {
  _$ImportApiKeysRequest? _$v;

  _i2.Uint8List? _body;
  _i2.Uint8List? get body => _$this._body;
  set body(_i2.Uint8List? body) => _$this._body = body;

  bool? _failOnWarnings;
  bool? get failOnWarnings => _$this._failOnWarnings;
  set failOnWarnings(bool? failOnWarnings) =>
      _$this._failOnWarnings = failOnWarnings;

  _i4.ApiKeysFormat? _format;
  _i4.ApiKeysFormat? get format => _$this._format;
  set format(_i4.ApiKeysFormat? format) => _$this._format = format;

  ImportApiKeysRequestBuilder() {
    ImportApiKeysRequest._init(this);
  }

  ImportApiKeysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _failOnWarnings = $v.failOnWarnings;
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportApiKeysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportApiKeysRequest;
  }

  @override
  void update(void Function(ImportApiKeysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportApiKeysRequest build() => _build();

  _$ImportApiKeysRequest _build() {
    final _$result = _$v ??
        new _$ImportApiKeysRequest._(
            body: BuiltValueNullFieldError.checkNotNull(
                body, r'ImportApiKeysRequest', 'body'),
            failOnWarnings: failOnWarnings,
            format: BuiltValueNullFieldError.checkNotNull(
                format, r'ImportApiKeysRequest', 'format'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
