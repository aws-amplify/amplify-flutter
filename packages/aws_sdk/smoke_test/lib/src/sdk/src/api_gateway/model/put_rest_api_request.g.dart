// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.put_rest_api_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRestApiRequest extends PutRestApiRequest {
  @override
  final _i2.Uint8List body;
  @override
  final bool? failOnWarnings;
  @override
  final _i4.PutMode? mode;
  @override
  final _i5.BuiltMap<String, String>? parameters;
  @override
  final String restApiId;

  factory _$PutRestApiRequest(
          [void Function(PutRestApiRequestBuilder)? updates]) =>
      (new PutRestApiRequestBuilder()..update(updates))._build();

  _$PutRestApiRequest._(
      {required this.body,
      this.failOnWarnings,
      this.mode,
      this.parameters,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(body, r'PutRestApiRequest', 'body');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'PutRestApiRequest', 'restApiId');
  }

  @override
  PutRestApiRequest rebuild(void Function(PutRestApiRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRestApiRequestBuilder toBuilder() =>
      new PutRestApiRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRestApiRequest &&
        body == other.body &&
        failOnWarnings == other.failOnWarnings &&
        mode == other.mode &&
        parameters == other.parameters &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, failOnWarnings.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRestApiRequestBuilder
    implements Builder<PutRestApiRequest, PutRestApiRequestBuilder> {
  _$PutRestApiRequest? _$v;

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

  _i5.MapBuilder<String, String>? _parameters;
  _i5.MapBuilder<String, String> get parameters =>
      _$this._parameters ??= new _i5.MapBuilder<String, String>();
  set parameters(_i5.MapBuilder<String, String>? parameters) =>
      _$this._parameters = parameters;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  PutRestApiRequestBuilder() {
    PutRestApiRequest._init(this);
  }

  PutRestApiRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _failOnWarnings = $v.failOnWarnings;
      _mode = $v.mode;
      _parameters = $v.parameters?.toBuilder();
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRestApiRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRestApiRequest;
  }

  @override
  void update(void Function(PutRestApiRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRestApiRequest build() => _build();

  _$PutRestApiRequest _build() {
    _$PutRestApiRequest _$result;
    try {
      _$result = _$v ??
          new _$PutRestApiRequest._(
              body: BuiltValueNullFieldError.checkNotNull(
                  body, r'PutRestApiRequest', 'body'),
              failOnWarnings: failOnWarnings,
              mode: mode,
              parameters: _parameters?.build(),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'PutRestApiRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRestApiRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
