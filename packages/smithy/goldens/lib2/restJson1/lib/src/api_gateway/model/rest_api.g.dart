// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.api_gateway.model.rest_api;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestApi extends RestApi {
  @override
  final _i2.ApiKeySourceType? apiKeySource;
  @override
  final _i4.BuiltList<String>? binaryMediaTypes;
  @override
  final DateTime? createdDate;
  @override
  final String? description;
  @override
  final bool? disableExecuteApiEndpoint;
  @override
  final _i3.EndpointConfiguration? endpointConfiguration;
  @override
  final String? id;
  @override
  final int? minimumCompressionSize;
  @override
  final String? name;
  @override
  final String? policy;
  @override
  final _i4.BuiltMap<String, String>? tags;
  @override
  final String? version;
  @override
  final _i4.BuiltList<String>? warnings;

  factory _$RestApi([void Function(RestApiBuilder)? updates]) =>
      (new RestApiBuilder()..update(updates))._build();

  _$RestApi._(
      {this.apiKeySource,
      this.binaryMediaTypes,
      this.createdDate,
      this.description,
      this.disableExecuteApiEndpoint,
      this.endpointConfiguration,
      this.id,
      this.minimumCompressionSize,
      this.name,
      this.policy,
      this.tags,
      this.version,
      this.warnings})
      : super._();

  @override
  RestApi rebuild(void Function(RestApiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestApiBuilder toBuilder() => new RestApiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestApi &&
        apiKeySource == other.apiKeySource &&
        binaryMediaTypes == other.binaryMediaTypes &&
        createdDate == other.createdDate &&
        description == other.description &&
        disableExecuteApiEndpoint == other.disableExecuteApiEndpoint &&
        endpointConfiguration == other.endpointConfiguration &&
        id == other.id &&
        minimumCompressionSize == other.minimumCompressionSize &&
        name == other.name &&
        policy == other.policy &&
        tags == other.tags &&
        version == other.version &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKeySource.hashCode);
    _$hash = $jc(_$hash, binaryMediaTypes.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, disableExecuteApiEndpoint.hashCode);
    _$hash = $jc(_$hash, endpointConfiguration.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, minimumCompressionSize.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RestApiBuilder implements Builder<RestApi, RestApiBuilder> {
  _$RestApi? _$v;

  _i2.ApiKeySourceType? _apiKeySource;
  _i2.ApiKeySourceType? get apiKeySource => _$this._apiKeySource;
  set apiKeySource(_i2.ApiKeySourceType? apiKeySource) =>
      _$this._apiKeySource = apiKeySource;

  _i4.ListBuilder<String>? _binaryMediaTypes;
  _i4.ListBuilder<String> get binaryMediaTypes =>
      _$this._binaryMediaTypes ??= new _i4.ListBuilder<String>();
  set binaryMediaTypes(_i4.ListBuilder<String>? binaryMediaTypes) =>
      _$this._binaryMediaTypes = binaryMediaTypes;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _disableExecuteApiEndpoint;
  bool? get disableExecuteApiEndpoint => _$this._disableExecuteApiEndpoint;
  set disableExecuteApiEndpoint(bool? disableExecuteApiEndpoint) =>
      _$this._disableExecuteApiEndpoint = disableExecuteApiEndpoint;

  _i3.EndpointConfigurationBuilder? _endpointConfiguration;
  _i3.EndpointConfigurationBuilder get endpointConfiguration =>
      _$this._endpointConfiguration ??= new _i3.EndpointConfigurationBuilder();
  set endpointConfiguration(
          _i3.EndpointConfigurationBuilder? endpointConfiguration) =>
      _$this._endpointConfiguration = endpointConfiguration;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  _i4.MapBuilder<String, String>? _tags;
  _i4.MapBuilder<String, String> get tags =>
      _$this._tags ??= new _i4.MapBuilder<String, String>();
  set tags(_i4.MapBuilder<String, String>? tags) => _$this._tags = tags;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  _i4.ListBuilder<String>? _warnings;
  _i4.ListBuilder<String> get warnings =>
      _$this._warnings ??= new _i4.ListBuilder<String>();
  set warnings(_i4.ListBuilder<String>? warnings) =>
      _$this._warnings = warnings;

  RestApiBuilder() {
    RestApi._init(this);
  }

  RestApiBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKeySource = $v.apiKeySource;
      _binaryMediaTypes = $v.binaryMediaTypes?.toBuilder();
      _createdDate = $v.createdDate;
      _description = $v.description;
      _disableExecuteApiEndpoint = $v.disableExecuteApiEndpoint;
      _endpointConfiguration = $v.endpointConfiguration?.toBuilder();
      _id = $v.id;
      _minimumCompressionSize = $v.minimumCompressionSize;
      _name = $v.name;
      _policy = $v.policy;
      _tags = $v.tags?.toBuilder();
      _version = $v.version;
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestApi other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestApi;
  }

  @override
  void update(void Function(RestApiBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestApi build() => _build();

  _$RestApi _build() {
    _$RestApi _$result;
    try {
      _$result = _$v ??
          new _$RestApi._(
              apiKeySource: apiKeySource,
              binaryMediaTypes: _binaryMediaTypes?.build(),
              createdDate: createdDate,
              description: description,
              disableExecuteApiEndpoint: disableExecuteApiEndpoint,
              endpointConfiguration: _endpointConfiguration?.build(),
              id: id,
              minimumCompressionSize: minimumCompressionSize,
              name: name,
              policy: policy,
              tags: _tags?.build(),
              version: version,
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'binaryMediaTypes';
        _binaryMediaTypes?.build();

        _$failedField = 'endpointConfiguration';
        _endpointConfiguration?.build();

        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestApi', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
