// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.request_validator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestValidator extends RequestValidator {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final bool? validateRequestBody;
  @override
  final bool? validateRequestParameters;

  factory _$RequestValidator(
          [void Function(RequestValidatorBuilder)? updates]) =>
      (new RequestValidatorBuilder()..update(updates))._build();

  _$RequestValidator._(
      {this.id,
      this.name,
      this.validateRequestBody,
      this.validateRequestParameters})
      : super._();

  @override
  RequestValidator rebuild(void Function(RequestValidatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestValidatorBuilder toBuilder() =>
      new RequestValidatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestValidator &&
        id == other.id &&
        name == other.name &&
        validateRequestBody == other.validateRequestBody &&
        validateRequestParameters == other.validateRequestParameters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, validateRequestBody.hashCode);
    _$hash = $jc(_$hash, validateRequestParameters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestValidatorBuilder
    implements Builder<RequestValidator, RequestValidatorBuilder> {
  _$RequestValidator? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _validateRequestBody;
  bool? get validateRequestBody => _$this._validateRequestBody;
  set validateRequestBody(bool? validateRequestBody) =>
      _$this._validateRequestBody = validateRequestBody;

  bool? _validateRequestParameters;
  bool? get validateRequestParameters => _$this._validateRequestParameters;
  set validateRequestParameters(bool? validateRequestParameters) =>
      _$this._validateRequestParameters = validateRequestParameters;

  RequestValidatorBuilder() {
    RequestValidator._init(this);
  }

  RequestValidatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _validateRequestBody = $v.validateRequestBody;
      _validateRequestParameters = $v.validateRequestParameters;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestValidator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestValidator;
  }

  @override
  void update(void Function(RequestValidatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestValidator build() => _build();

  _$RequestValidator _build() {
    final _$result = _$v ??
        new _$RequestValidator._(
            id: id,
            name: name,
            validateRequestBody: validateRequestBody,
            validateRequestParameters: validateRequestParameters);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
