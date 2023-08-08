// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_rest_api_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRestApiRequest extends CreateRestApiRequest {
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? version;
  @override
  final String? cloneFrom;
  @override
  final _i5.BuiltList<String>? binaryMediaTypes;
  @override
  final int? minimumCompressionSize;
  @override
  final _i3.ApiKeySourceType? apiKeySource;
  @override
  final _i4.EndpointConfiguration? endpointConfiguration;
  @override
  final String? policy;
  @override
  final _i5.BuiltMap<String, String>? tags;
  @override
  final bool disableExecuteApiEndpoint;

  factory _$CreateRestApiRequest(
          [void Function(CreateRestApiRequestBuilder)? updates]) =>
      (new CreateRestApiRequestBuilder()..update(updates))._build();

  _$CreateRestApiRequest._(
      {required this.name,
      this.description,
      this.version,
      this.cloneFrom,
      this.binaryMediaTypes,
      this.minimumCompressionSize,
      this.apiKeySource,
      this.endpointConfiguration,
      this.policy,
      this.tags,
      required this.disableExecuteApiEndpoint})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateRestApiRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(disableExecuteApiEndpoint,
        r'CreateRestApiRequest', 'disableExecuteApiEndpoint');
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
        name == other.name &&
        description == other.description &&
        version == other.version &&
        cloneFrom == other.cloneFrom &&
        binaryMediaTypes == other.binaryMediaTypes &&
        minimumCompressionSize == other.minimumCompressionSize &&
        apiKeySource == other.apiKeySource &&
        endpointConfiguration == other.endpointConfiguration &&
        policy == other.policy &&
        tags == other.tags &&
        disableExecuteApiEndpoint == other.disableExecuteApiEndpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, cloneFrom.hashCode);
    _$hash = $jc(_$hash, binaryMediaTypes.hashCode);
    _$hash = $jc(_$hash, minimumCompressionSize.hashCode);
    _$hash = $jc(_$hash, apiKeySource.hashCode);
    _$hash = $jc(_$hash, endpointConfiguration.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, disableExecuteApiEndpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRestApiRequestBuilder
    implements Builder<CreateRestApiRequest, CreateRestApiRequestBuilder> {
  _$CreateRestApiRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _cloneFrom;
  String? get cloneFrom => _$this._cloneFrom;
  set cloneFrom(String? cloneFrom) => _$this._cloneFrom = cloneFrom;

  _i5.ListBuilder<String>? _binaryMediaTypes;
  _i5.ListBuilder<String> get binaryMediaTypes =>
      _$this._binaryMediaTypes ??= new _i5.ListBuilder<String>();
  set binaryMediaTypes(_i5.ListBuilder<String>? binaryMediaTypes) =>
      _$this._binaryMediaTypes = binaryMediaTypes;

  int? _minimumCompressionSize;
  int? get minimumCompressionSize => _$this._minimumCompressionSize;
  set minimumCompressionSize(int? minimumCompressionSize) =>
      _$this._minimumCompressionSize = minimumCompressionSize;

  _i3.ApiKeySourceType? _apiKeySource;
  _i3.ApiKeySourceType? get apiKeySource => _$this._apiKeySource;
  set apiKeySource(_i3.ApiKeySourceType? apiKeySource) =>
      _$this._apiKeySource = apiKeySource;

  _i4.EndpointConfigurationBuilder? _endpointConfiguration;
  _i4.EndpointConfigurationBuilder get endpointConfiguration =>
      _$this._endpointConfiguration ??= new _i4.EndpointConfigurationBuilder();
  set endpointConfiguration(
          _i4.EndpointConfigurationBuilder? endpointConfiguration) =>
      _$this._endpointConfiguration = endpointConfiguration;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  _i5.MapBuilder<String, String>? _tags;
  _i5.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i5.MapBuilder<String, String>();
  set tags(_i5.MapBuilder<String, String>? tags) => _$this._tags = tags;

  bool? _disableExecuteApiEndpoint;
  bool? get disableExecuteApiEndpoint => _$this._disableExecuteApiEndpoint;
  set disableExecuteApiEndpoint(bool? disableExecuteApiEndpoint) =>
      _$this._disableExecuteApiEndpoint = disableExecuteApiEndpoint;

  CreateRestApiRequestBuilder() {
    CreateRestApiRequest._init(this);
  }

  CreateRestApiRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _version = $v.version;
      _cloneFrom = $v.cloneFrom;
      _binaryMediaTypes = $v.binaryMediaTypes?.toBuilder();
      _minimumCompressionSize = $v.minimumCompressionSize;
      _apiKeySource = $v.apiKeySource;
      _endpointConfiguration = $v.endpointConfiguration?.toBuilder();
      _policy = $v.policy;
      _tags = $v.tags?.toBuilder();
      _disableExecuteApiEndpoint = $v.disableExecuteApiEndpoint;
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
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateRestApiRequest', 'name'),
              description: description,
              version: version,
              cloneFrom: cloneFrom,
              binaryMediaTypes: _binaryMediaTypes?.build(),
              minimumCompressionSize: minimumCompressionSize,
              apiKeySource: apiKeySource,
              endpointConfiguration: _endpointConfiguration?.build(),
              policy: policy,
              tags: _tags?.build(),
              disableExecuteApiEndpoint: BuiltValueNullFieldError.checkNotNull(
                  disableExecuteApiEndpoint,
                  r'CreateRestApiRequest',
                  'disableExecuteApiEndpoint'));
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
