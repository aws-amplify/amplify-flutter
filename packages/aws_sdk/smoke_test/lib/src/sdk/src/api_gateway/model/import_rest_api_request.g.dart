// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_rest_api_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportRestApiRequest extends ImportRestApiRequest {
  @override
  final bool failOnWarnings;
  @override
  final _i4.BuiltMap<String, String>? parameters;
  @override
  final _i2.Uint8List body;

  factory _$ImportRestApiRequest(
          [void Function(ImportRestApiRequestBuilder)? updates]) =>
      (new ImportRestApiRequestBuilder()..update(updates))._build();

  _$ImportRestApiRequest._(
      {required this.failOnWarnings, this.parameters, required this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        failOnWarnings, r'ImportRestApiRequest', 'failOnWarnings');
    BuiltValueNullFieldError.checkNotNull(
        body, r'ImportRestApiRequest', 'body');
  }

  @override
  ImportRestApiRequest rebuild(
          void Function(ImportRestApiRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportRestApiRequestBuilder toBuilder() =>
      new ImportRestApiRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportRestApiRequest &&
        failOnWarnings == other.failOnWarnings &&
        parameters == other.parameters &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failOnWarnings.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportRestApiRequestBuilder
    implements Builder<ImportRestApiRequest, ImportRestApiRequestBuilder> {
  _$ImportRestApiRequest? _$v;

  bool? _failOnWarnings;
  bool? get failOnWarnings => _$this._failOnWarnings;
  set failOnWarnings(bool? failOnWarnings) =>
      _$this._failOnWarnings = failOnWarnings;

  _i4.MapBuilder<String, String>? _parameters;
  _i4.MapBuilder<String, String> get parameters =>
      _$this._parameters ??= new _i4.MapBuilder<String, String>();
  set parameters(_i4.MapBuilder<String, String>? parameters) =>
      _$this._parameters = parameters;

  _i2.Uint8List? _body;
  _i2.Uint8List? get body => _$this._body;
  set body(_i2.Uint8List? body) => _$this._body = body;

  ImportRestApiRequestBuilder() {
    ImportRestApiRequest._init(this);
  }

  ImportRestApiRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failOnWarnings = $v.failOnWarnings;
      _parameters = $v.parameters?.toBuilder();
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportRestApiRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportRestApiRequest;
  }

  @override
  void update(void Function(ImportRestApiRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportRestApiRequest build() => _build();

  _$ImportRestApiRequest _build() {
    _$ImportRestApiRequest _$result;
    try {
      _$result = _$v ??
          new _$ImportRestApiRequest._(
              failOnWarnings: BuiltValueNullFieldError.checkNotNull(
                  failOnWarnings, r'ImportRestApiRequest', 'failOnWarnings'),
              parameters: _parameters?.build(),
              body: BuiltValueNullFieldError.checkNotNull(
                  body, r'ImportRestApiRequest', 'body'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportRestApiRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
