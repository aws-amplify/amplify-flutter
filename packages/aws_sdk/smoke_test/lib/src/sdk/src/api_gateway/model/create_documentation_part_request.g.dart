// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_documentation_part_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDocumentationPartRequest extends CreateDocumentationPartRequest {
  @override
  final _i3.DocumentationPartLocation location;
  @override
  final String properties;
  @override
  final String restApiId;

  factory _$CreateDocumentationPartRequest(
          [void Function(CreateDocumentationPartRequestBuilder)? updates]) =>
      (new CreateDocumentationPartRequestBuilder()..update(updates))._build();

  _$CreateDocumentationPartRequest._(
      {required this.location,
      required this.properties,
      required this.restApiId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        location, r'CreateDocumentationPartRequest', 'location');
    BuiltValueNullFieldError.checkNotNull(
        properties, r'CreateDocumentationPartRequest', 'properties');
    BuiltValueNullFieldError.checkNotNull(
        restApiId, r'CreateDocumentationPartRequest', 'restApiId');
  }

  @override
  CreateDocumentationPartRequest rebuild(
          void Function(CreateDocumentationPartRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDocumentationPartRequestBuilder toBuilder() =>
      new CreateDocumentationPartRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDocumentationPartRequest &&
        location == other.location &&
        properties == other.properties &&
        restApiId == other.restApiId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, location.hashCode), properties.hashCode),
        restApiId.hashCode));
  }
}

class CreateDocumentationPartRequestBuilder
    implements
        Builder<CreateDocumentationPartRequest,
            CreateDocumentationPartRequestBuilder> {
  _$CreateDocumentationPartRequest? _$v;

  _i3.DocumentationPartLocationBuilder? _location;
  _i3.DocumentationPartLocationBuilder get location =>
      _$this._location ??= new _i3.DocumentationPartLocationBuilder();
  set location(_i3.DocumentationPartLocationBuilder? location) =>
      _$this._location = location;

  String? _properties;
  String? get properties => _$this._properties;
  set properties(String? properties) => _$this._properties = properties;

  String? _restApiId;
  String? get restApiId => _$this._restApiId;
  set restApiId(String? restApiId) => _$this._restApiId = restApiId;

  CreateDocumentationPartRequestBuilder() {
    CreateDocumentationPartRequest._init(this);
  }

  CreateDocumentationPartRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location.toBuilder();
      _properties = $v.properties;
      _restApiId = $v.restApiId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDocumentationPartRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDocumentationPartRequest;
  }

  @override
  void update(void Function(CreateDocumentationPartRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDocumentationPartRequest build() => _build();

  _$CreateDocumentationPartRequest _build() {
    _$CreateDocumentationPartRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateDocumentationPartRequest._(
              location: location.build(),
              properties: BuiltValueNullFieldError.checkNotNull(
                  properties, r'CreateDocumentationPartRequest', 'properties'),
              restApiId: BuiltValueNullFieldError.checkNotNull(
                  restApiId, r'CreateDocumentationPartRequest', 'restApiId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateDocumentationPartRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateDocumentationPartRequestPayload
    extends CreateDocumentationPartRequestPayload {
  @override
  final _i3.DocumentationPartLocation location;
  @override
  final String properties;

  factory _$CreateDocumentationPartRequestPayload(
          [void Function(CreateDocumentationPartRequestPayloadBuilder)?
              updates]) =>
      (new CreateDocumentationPartRequestPayloadBuilder()..update(updates))
          ._build();

  _$CreateDocumentationPartRequestPayload._(
      {required this.location, required this.properties})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        location, r'CreateDocumentationPartRequestPayload', 'location');
    BuiltValueNullFieldError.checkNotNull(
        properties, r'CreateDocumentationPartRequestPayload', 'properties');
  }

  @override
  CreateDocumentationPartRequestPayload rebuild(
          void Function(CreateDocumentationPartRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDocumentationPartRequestPayloadBuilder toBuilder() =>
      new CreateDocumentationPartRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDocumentationPartRequestPayload &&
        location == other.location &&
        properties == other.properties;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, location.hashCode), properties.hashCode));
  }
}

class CreateDocumentationPartRequestPayloadBuilder
    implements
        Builder<CreateDocumentationPartRequestPayload,
            CreateDocumentationPartRequestPayloadBuilder> {
  _$CreateDocumentationPartRequestPayload? _$v;

  _i3.DocumentationPartLocationBuilder? _location;
  _i3.DocumentationPartLocationBuilder get location =>
      _$this._location ??= new _i3.DocumentationPartLocationBuilder();
  set location(_i3.DocumentationPartLocationBuilder? location) =>
      _$this._location = location;

  String? _properties;
  String? get properties => _$this._properties;
  set properties(String? properties) => _$this._properties = properties;

  CreateDocumentationPartRequestPayloadBuilder() {
    CreateDocumentationPartRequestPayload._init(this);
  }

  CreateDocumentationPartRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location.toBuilder();
      _properties = $v.properties;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDocumentationPartRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDocumentationPartRequestPayload;
  }

  @override
  void update(
      void Function(CreateDocumentationPartRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDocumentationPartRequestPayload build() => _build();

  _$CreateDocumentationPartRequestPayload _build() {
    _$CreateDocumentationPartRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$CreateDocumentationPartRequestPayload._(
              location: location.build(),
              properties: BuiltValueNullFieldError.checkNotNull(properties,
                  r'CreateDocumentationPartRequestPayload', 'properties'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateDocumentationPartRequestPayload',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
