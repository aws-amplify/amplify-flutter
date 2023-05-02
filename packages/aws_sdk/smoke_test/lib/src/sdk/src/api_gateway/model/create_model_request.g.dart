// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_model_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateModelRequest extends CreateModelRequest {
  @override
  final String restApiId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? schema;
  @override
  final String contentType;

  factory _$CreateModelRequest(
          [void Function(CreateModelRequestBuilder)? updates]) =>
      (new CreateModelRequestBuilder()..update(updates))._build();

  _$CreateModelRequest._(
      {required this.restApiId,
      required this.name,
      this.description,
      this.schema,
      required this.contentType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateModelRequest', 'restApiId');
    BuiltValueNullFieldError.checkNotNull(name, r'CreateModelRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        contentType, r'CreateModelRequest', 'contentType');
  }

  @override
  CreateModelRequest rebuild(
          void Function(CreateModelRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateModelRequestBuilder toBuilder() =>
      new CreateModelRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateModelRequest &&
        restApiId == other.restApiId &&
        name == other.name &&
        description == other.description &&
        schema == other.schema &&
        contentType == other.contentType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restApiId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, schema.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateModelRequestBuilder
    implements Builder<CreateModelRequest, CreateModelRequestBuilder> {
  _$CreateModelRequest? _$v;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _schema;
  String? get schema => _$this._schema;
  set schema(String? schema) => _$this._schema = schema;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  CreateModelRequestBuilder() {
    CreateModelRequest._init(this);
  }

  CreateModelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restApiId = $v.restApiId;
      _name = $v.name;
      _description = $v.description;
      _schema = $v.schema;
      _contentType = $v.contentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateModelRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateModelRequest;
  }

  @override
  void update(void Function(CreateModelRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateModelRequest build() => _build();

  _$CreateModelRequest _build() {
    final _$result = _$v ??
        new _$CreateModelRequest._(
            restApiId: BuiltValueNullFieldError.checkNotNull(
                restApiId, r'CreateModelRequest', 'restApiId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateModelRequest', 'name'),
            description: description,
            schema: schema,
            contentType: BuiltValueNullFieldError.checkNotNull(
                contentType, r'CreateModelRequest', 'contentType'));
    replace(_$result);
    return _$result;
  }
}

class _$CreateModelRequestPayload extends CreateModelRequestPayload {
  @override
  final String contentType;
  @override
  final String? description;
  @override
  final String name;
  @override
  final String? schema;

  factory _$CreateModelRequestPayload(
          [void Function(CreateModelRequestPayloadBuilder)? updates]) =>
      (new CreateModelRequestPayloadBuilder()..update(updates))._build();

  _$CreateModelRequestPayload._(
      {required this.contentType,
      this.description,
      required this.name,
      this.schema})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        contentType, r'CreateModelRequestPayload', 'contentType');
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateModelRequestPayload', 'name');
  }

  @override
  CreateModelRequestPayload rebuild(
          void Function(CreateModelRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateModelRequestPayloadBuilder toBuilder() =>
      new CreateModelRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateModelRequestPayload &&
        contentType == other.contentType &&
        description == other.description &&
        name == other.name &&
        schema == other.schema;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, schema.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateModelRequestPayloadBuilder
    implements
        Builder<CreateModelRequestPayload, CreateModelRequestPayloadBuilder> {
  _$CreateModelRequestPayload? _$v;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _schema;
  String? get schema => _$this._schema;
  set schema(String? schema) => _$this._schema = schema;

  CreateModelRequestPayloadBuilder() {
    CreateModelRequestPayload._init(this);
  }

  CreateModelRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contentType = $v.contentType;
      _description = $v.description;
      _name = $v.name;
      _schema = $v.schema;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateModelRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateModelRequestPayload;
  }

  @override
  void update(void Function(CreateModelRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateModelRequestPayload build() => _build();

  _$CreateModelRequestPayload _build() {
    final _$result = _$v ??
        new _$CreateModelRequestPayload._(
            contentType: BuiltValueNullFieldError.checkNotNull(
                contentType, r'CreateModelRequestPayload', 'contentType'),
            description: description,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateModelRequestPayload', 'name'),
            schema: schema);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
