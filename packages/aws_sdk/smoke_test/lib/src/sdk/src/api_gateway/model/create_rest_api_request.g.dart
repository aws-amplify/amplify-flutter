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
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKeySource.hashCode);
    _$hash = $jc(_$hash, binaryMediaTypes.hashCode);
    _$hash = $jc(_$hash, cloneFrom.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, disableExecuteApiEndpoint.hashCode);
    _$hash = $jc(_$hash, endpointConfiguration.hashCode);
    _$hash = $jc(_$hash, minimumCompressionSize.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
