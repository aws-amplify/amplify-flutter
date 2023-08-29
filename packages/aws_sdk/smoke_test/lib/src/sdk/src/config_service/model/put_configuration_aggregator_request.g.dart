// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_configuration_aggregator_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutConfigurationAggregatorRequest
    extends PutConfigurationAggregatorRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.BuiltList<AccountAggregationSource>? accountAggregationSources;
  @override
  final OrganizationAggregationSource? organizationAggregationSource;
  @override
  final _i3.BuiltList<Tag>? tags;

  factory _$PutConfigurationAggregatorRequest(
          [void Function(PutConfigurationAggregatorRequestBuilder)? updates]) =>
      (new PutConfigurationAggregatorRequestBuilder()..update(updates))
          ._build();

  _$PutConfigurationAggregatorRequest._(
      {required this.configurationAggregatorName,
      this.accountAggregationSources,
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
        configurationAggregatorName == other.configurationAggregatorName &&
        accountAggregationSources == other.accountAggregationSources &&
        organizationAggregationSource == other.organizationAggregationSource &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, accountAggregationSources.hashCode);
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

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i3.ListBuilder<AccountAggregationSource>? _accountAggregationSources;
  _i3.ListBuilder<AccountAggregationSource> get accountAggregationSources =>
      _$this._accountAggregationSources ??=
          new _i3.ListBuilder<AccountAggregationSource>();
  set accountAggregationSources(
          _i3.ListBuilder<AccountAggregationSource>?
              accountAggregationSources) =>
      _$this._accountAggregationSources = accountAggregationSources;

  OrganizationAggregationSourceBuilder? _organizationAggregationSource;
  OrganizationAggregationSourceBuilder get organizationAggregationSource =>
      _$this._organizationAggregationSource ??=
          new OrganizationAggregationSourceBuilder();
  set organizationAggregationSource(
          OrganizationAggregationSourceBuilder?
              organizationAggregationSource) =>
      _$this._organizationAggregationSource = organizationAggregationSource;

  _i3.ListBuilder<Tag>? _tags;
  _i3.ListBuilder<Tag> get tags => _$this._tags ??= new _i3.ListBuilder<Tag>();
  set tags(_i3.ListBuilder<Tag>? tags) => _$this._tags = tags;

  PutConfigurationAggregatorRequestBuilder();

  PutConfigurationAggregatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _accountAggregationSources = $v.accountAggregationSources?.toBuilder();
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
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'PutConfigurationAggregatorRequest',
                      'configurationAggregatorName'),
              accountAggregationSources: _accountAggregationSources?.build(),
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
