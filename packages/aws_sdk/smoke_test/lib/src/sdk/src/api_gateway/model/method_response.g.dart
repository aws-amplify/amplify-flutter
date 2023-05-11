// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.method_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MethodResponse extends MethodResponse {
  @override
  final String? statusCode;
  @override
  final _i2.BuiltMap<String, bool>? responseParameters;
  @override
  final _i2.BuiltMap<String, String>? responseModels;

  factory _$MethodResponse([void Function(MethodResponseBuilder)? updates]) =>
      (new MethodResponseBuilder()..update(updates))._build();

  _$MethodResponse._(
      {this.statusCode, this.responseParameters, this.responseModels})
      : super._();

  @override
  MethodResponse rebuild(void Function(MethodResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MethodResponseBuilder toBuilder() =>
      new MethodResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MethodResponse &&
        statusCode == other.statusCode &&
        responseParameters == other.responseParameters &&
        responseModels == other.responseModels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jc(_$hash, responseParameters.hashCode);
    _$hash = $jc(_$hash, responseModels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MethodResponseBuilder
    implements Builder<MethodResponse, MethodResponseBuilder> {
  _$MethodResponse? _$v;

  String? _statusCode;
  String? get statusCode => _$this._statusCode;
  set statusCode(String? statusCode) => _$this._statusCode = statusCode;

  _i2.MapBuilder<String, bool>? _responseParameters;
  _i2.MapBuilder<String, bool> get responseParameters =>
      _$this._responseParameters ??= new _i2.MapBuilder<String, bool>();
  set responseParameters(_i2.MapBuilder<String, bool>? responseParameters) =>
      _$this._responseParameters = responseParameters;

  _i2.MapBuilder<String, String>? _responseModels;
  _i2.MapBuilder<String, String> get responseModels =>
      _$this._responseModels ??= new _i2.MapBuilder<String, String>();
  set responseModels(_i2.MapBuilder<String, String>? responseModels) =>
      _$this._responseModels = responseModels;

  MethodResponseBuilder() {
    MethodResponse._init(this);
  }

  MethodResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusCode = $v.statusCode;
      _responseParameters = $v.responseParameters?.toBuilder();
      _responseModels = $v.responseModels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MethodResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MethodResponse;
  }

  @override
  void update(void Function(MethodResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MethodResponse build() => _build();

  _$MethodResponse _build() {
    _$MethodResponse _$result;
    try {
      _$result = _$v ??
          new _$MethodResponse._(
              statusCode: statusCode,
              responseParameters: _responseParameters?.build(),
              responseModels: _responseModels?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'responseParameters';
        _responseParameters?.build();
        _$failedField = 'responseModels';
        _responseModels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MethodResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
