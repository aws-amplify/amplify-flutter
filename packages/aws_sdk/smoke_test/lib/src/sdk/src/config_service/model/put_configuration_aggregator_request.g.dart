// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_configuration_aggregator_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutConfigurationAggregatorRequest
    extends PutConfigurationAggregatorRequest {
  @override
  final _i6.BuiltList<_i3.AccountAggregationSource>? accountAggregationSources;
  @override
  final String configurationAggregatorName;
  @override
  final _i4.OrganizationAggregationSource? organizationAggregationSource;
  @override
  final _i6.BuiltList<_i5.Tag>? tags;

  factory _$PutConfigurationAggregatorRequest(
          [void Function(PutConfigurationAggregatorRequestBuilder)? updates]) =>
      (new PutConfigurationAggregatorRequestBuilder()..update(updates))
          ._build();

  _$PutConfigurationAggregatorRequest._(
      {this.accountAggregationSources,
      required this.configurationAggregatorName,
      this.organizationAggregationSource,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configurationAggregatorName,
        r'PutConfigurationAggregatorRequest', 'configurationAggregatorName');
  }

  @override
  PutConfigurationAggregatorRequest rebuild(
          void Function(PutConfigurationAggregatorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutConfigurationAggregatorRequestBuilder toBuilder() =>
      new PutConfigurationAggregatorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutConfigurationAggregatorRequest &&
        accountAggregationSources == other.accountAggregationSources &&
        configurationAggregatorName == other.configurationAggregatorName &&
        organizationAggregationSource == other.organizationAggregationSource &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountAggregationSources.hashCode);
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, organizationAggregationSource.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutConfigurationAggregatorRequestBuilder
    implements
        Builder<PutConfigurationAggregatorRequest,
            PutConfigurationAggregatorRequestBuilder> {
  _$PutConfigurationAggregatorRequest? _$v;

  _i6.ListBuilder<_i3.AccountAggregationSource>? _accountAggregationSources;
  _i6.ListBuilder<_i3.AccountAggregationSource> get accountAggregationSources =>
      _$this._accountAggregationSources ??=
          new _i6.ListBuilder<_i3.AccountAggregationSource>();
  set accountAggregationSources(
          _i6.ListBuilder<_i3.AccountAggregationSource>?
              accountAggregationSources) =>
      _$this._accountAggregationSources = accountAggregationSources;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i4.OrganizationAggregationSourceBuilder? _organizationAggregationSource;
  _i4.OrganizationAggregationSourceBuilder get organizationAggregationSource =>
      _$this._organizationAggregationSource ??=
          new _i4.OrganizationAggregationSourceBuilder();
  set organizationAggregationSource(
          _i4.OrganizationAggregationSourceBuilder?
              organizationAggregationSource) =>
      _$this._organizationAggregationSource = organizationAggregationSource;

  _i6.ListBuilder<_i5.Tag>? _tags;
  _i6.ListBuilder<_i5.Tag> get tags =>
      _$this._tags ??= new _i6.ListBuilder<_i5.Tag>();
  set tags(_i6.ListBuilder<_i5.Tag>? tags) => _$this._tags = tags;

  PutConfigurationAggregatorRequestBuilder() {
    PutConfigurationAggregatorRequest._init(this);
  }

  PutConfigurationAggregatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountAggregationSources = $v.accountAggregationSources?.toBuilder();
      _configurationAggregatorName = $v.configurationAggregatorName;
      _organizationAggregationSource =
          $v.organizationAggregationSource?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutConfigurationAggregatorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutConfigurationAggregatorRequest;
  }

  @override
  void update(
      void Function(PutConfigurationAggregatorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutConfigurationAggregatorRequest build() => _build();

  _$PutConfigurationAggregatorRequest _build() {
    _$PutConfigurationAggregatorRequest _$result;
    try {
      _$result = _$v ??
          new _$PutConfigurationAggregatorRequest._(
              accountAggregationSources: _accountAggregationSources?.build(),
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'PutConfigurationAggregatorRequest',
                      'configurationAggregatorName'),
              organizationAggregationSource:
                  _organizationAggregationSource?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountAggregationSources';
        _accountAggregationSources?.build();

        _$failedField = 'organizationAggregationSource';
        _organizationAggregationSource?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutConfigurationAggregatorRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
