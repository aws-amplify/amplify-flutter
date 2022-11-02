// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.create_rest_api_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRestApiRequest extends CreateRestApiRequest {
  @override
  final _i3.ApiKeySourceType? apiKeySource;
  @override
  final _i5.BuiltList<String>? binaryMediaTypes;
  @override
  final String? cloneFrom;
  @override
  final String? description;
  @override
  final bool? disableExecuteApiEndpoint;
  @override
  final _i4.EndpointConfiguration? endpointConfiguration;
  @override
  final int? minimumCompressionSize;
  @override
  final String name;
  @override
  final String? policy;
  @override
  final _i5.BuiltMap<String, String>? tags;
  @override
  final String? version;

  factory _$CreateRestApiRequest(
          [void Function(CreateRestApiRequestBuilder)? updates]) =>
      (new CreateRestApiRequestBuilder()..update(updates))._build();

  _$CreateRestApiRequest._(
      {this.apiKeySource,
      this.binaryMediaTypes,
      this.cloneFrom,
      this.description,
      this.disableExecuteApiEndpoint,
      this.endpointConfiguration,
      this.minimumCompressionSize,
      required this.name,
      this.policy,
      this.tags,
      this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateRestApiRequest', 'name');
  }

  @override
  CreateRestApiRequest rebuild(
          void Function(CreateRestApiRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRestApiRequestBuilder toBuilder() =>
      new CreateRestApiRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRestApiRequest &&
        apiKeySource == other.apiKeySource &&
        binaryMediaTypes == other.binaryMediaTypes &&
        cloneFrom == other.cloneFrom &&
        description == other.description &&
        disableExecuteApiEndpoint == other.disableExecuteApiEndpoint &&
        endpointConfiguration == other.endpointConfiguration &&
        minimumCompressionSize == other.minimumCompressionSize &&
        name == other.name &&
        policy == other.policy &&
        tags == other.tags &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, apiKeySource.hashCode),
                                            binaryMediaTypes.hashCode),
                                        cloneFrom.hashCode),
                                    description.hashCode),
                                disableExecuteApiEndpoint.hashCode),
                            endpointConfiguration.hashCode),
                        minimumCompressionSize.hashCode),
                    name.hashCode),
                policy.hashCode),
            tags.hashCode),
        version.hashCode));
  }
}

class CreateRestApiRequestBuilder
    implements Builder<CreateRestApiRequest, CreateRestApiRequestBuilder> {
  _$CreateRestApiRequest? _$v;

  _i3.ApiKeySourceType? _apiKeySource;
  _i3.ApiKeySourceType? get apiKeySource => _$this._apiKeySource;
  set apiKeySource(_i3.ApiKeySourceType? apiKeySource) =>
      _$this._apiKeySource = apiKeySource;

  _i5.ListBuilder<String>? _binaryMediaTypes;
  _i5.ListBuilder<String> get binaryMediaTypes =>
      _$this._binaryMediaTypes ??= new _i5.ListBuilder<String>();
  set binaryMediaTypes(_i5.ListBuilder<String>? binaryMediaTypes) =>
      _$this._binaryMediaTypes = binaryMediaTypes;

  String? _cloneFrom;
  String? get cloneFrom => _$this._cloneFrom;
  set cloneFrom(String? cloneFrom) => _$this._cloneFrom = cloneFrom;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _disableExecuteApiEndpoint;
  bool? get disableExecuteApiEndpoint => _$this._disableExecuteApiEndpoint;
  set disableExecuteApiEndpoint(bool? disableExecuteApiEndpoint) =>
      _$this._disableExecuteApiEndpoint = disableExecuteApiEndpoint;

  _i4.EndpointConfigurationBuilder? _endpointConfiguration;
  _i4.EndpointConfigurationBuilder get endpointConfiguration =>
      _$this._endpointConfiguration ??= new _i4.EndpointConfigurationBuilder();
  set endpointConfiguration(
          _i4.EndpointConfigurationBuilder? endpointConfiguration) =>
      _$this._endpointConfiguration = endpointConfiguration;

  int? _minimumCompressionSize;
  int? get minimumCompressionSize => _$this._minimumCompressionSize;
  set minimumCompressionSize(int? minimumCompressionSize) =>
      _$this._minimumCompressionSize = minimumCompressionSize;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  _i5.MapBuilder<String, String>? _tags;
  _i5.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i5.MapBuilder<String, String>();
  set tags(_i5.MapBuilder<String, String>? tags) => _$this._tags = tags;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  CreateRestApiRequestBuilder() {
    CreateRestApiRequest._init(this);
  }

  CreateRestApiRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKeySource = $v.apiKeySource;
      _binaryMediaTypes = $v.binaryMediaTypes?.toBuilder();
      _cloneFrom = $v.cloneFrom;
      _description = $v.description;
      _disableExecuteApiEndpoint = $v.disableExecuteApiEndpoint;
      _endpointConfiguration = $v.endpointConfiguration?.toBuilder();
      _minimumCompressionSize = $v.minimumCompressionSize;
      _name = $v.name;
      _policy = $v.policy;
      _tags = $v.tags?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestApiRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRestApiRequest;
  }

  @override
  void update(void Function(CreateRestApiRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRestApiRequest build() => _build();

  _$CreateRestApiRequest _build() {
    _$CreateRestApiRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateRestApiRequest._(
              apiKeySource: apiKeySource,
              binaryMediaTypes: _binaryMediaTypes?.build(),
              cloneFrom: cloneFrom,
              description: description,
              disableExecuteApiEndpoint: disableExecuteApiEndpoint,
              endpointConfiguration: _endpointConfiguration?.build(),
              minimumCompressionSize: minimumCompressionSize,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateRestApiRequest', 'name'),
              policy: policy,
              tags: _tags?.build(),
              version: version);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'binaryMediaTypes';
        _binaryMediaTypes?.build();

        _$failedField = 'endpointConfiguration';
        _endpointConfiguration?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateRestApiRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
