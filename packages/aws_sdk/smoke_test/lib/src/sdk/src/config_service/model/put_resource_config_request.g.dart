// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_resource_config_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutResourceConfigRequest extends PutResourceConfigRequest {
  @override
  final String configuration;
  @override
  final String resourceId;
  @override
  final String? resourceName;
  @override
  final String resourceType;
  @override
  final String schemaVersionId;
  @override
  final _i3.BuiltMap<String, String>? tags;

  factory _$PutResourceConfigRequest(
          [void Function(PutResourceConfigRequestBuilder)? updates]) =>
      (new PutResourceConfigRequestBuilder()..update(updates))._build();

  _$PutResourceConfigRequest._(
      {required this.configuration,
      required this.resourceId,
      this.resourceName,
      required this.resourceType,
      required this.schemaVersionId,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configuration, r'PutResourceConfigRequest', 'configuration');
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'PutResourceConfigRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'PutResourceConfigRequest', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(
        schemaVersionId, r'PutResourceConfigRequest', 'schemaVersionId');
  }

  @override
  PutResourceConfigRequest rebuild(
          void Function(PutResourceConfigRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutResourceConfigRequestBuilder toBuilder() =>
      new PutResourceConfigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutResourceConfigRequest &&
        configuration == other.configuration &&
        resourceId == other.resourceId &&
        resourceName == other.resourceName &&
        resourceType == other.resourceType &&
        schemaVersionId == other.schemaVersionId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, configuration.hashCode), resourceId.hashCode),
                    resourceName.hashCode),
                resourceType.hashCode),
            schemaVersionId.hashCode),
        tags.hashCode));
  }
}

class PutResourceConfigRequestBuilder
    implements
        Builder<PutResourceConfigRequest, PutResourceConfigRequestBuilder> {
  _$PutResourceConfigRequest? _$v;

  String? _configuration;
  String? get configuration => _$this._configuration;
  set configuration(String? configuration) =>
      _$this._configuration = configuration;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceName;
  String? get resourceName => _$this._resourceName;
  set resourceName(String? resourceName) => _$this._resourceName = resourceName;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  String? _schemaVersionId;
  String? get schemaVersionId => _$this._schemaVersionId;
  set schemaVersionId(String? schemaVersionId) =>
      _$this._schemaVersionId = schemaVersionId;

  _i3.MapBuilder<String, String>? _tags;
  _i3.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i3.MapBuilder<String, String>();
  set tags(_i3.MapBuilder<String, String>? tags) => _$this._tags = tags;

  PutResourceConfigRequestBuilder() {
    PutResourceConfigRequest._init(this);
  }

  PutResourceConfigRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configuration = $v.configuration;
      _resourceId = $v.resourceId;
      _resourceName = $v.resourceName;
      _resourceType = $v.resourceType;
      _schemaVersionId = $v.schemaVersionId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutResourceConfigRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutResourceConfigRequest;
  }

  @override
  void update(void Function(PutResourceConfigRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutResourceConfigRequest build() => _build();

  _$PutResourceConfigRequest _build() {
    _$PutResourceConfigRequest _$result;
    try {
      _$result = _$v ??
          new _$PutResourceConfigRequest._(
              configuration: BuiltValueNullFieldError.checkNotNull(
                  configuration, r'PutResourceConfigRequest', 'configuration'),
              resourceId: BuiltValueNullFieldError.checkNotNull(
                  resourceId, r'PutResourceConfigRequest', 'resourceId'),
              resourceName: resourceName,
              resourceType: BuiltValueNullFieldError.checkNotNull(
                  resourceType, r'PutResourceConfigRequest', 'resourceType'),
              schemaVersionId: BuiltValueNullFieldError.checkNotNull(
                  schemaVersionId,
                  r'PutResourceConfigRequest',
                  'schemaVersionId'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutResourceConfigRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
