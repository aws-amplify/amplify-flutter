// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_launch_template_versions_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLaunchTemplateVersionsRequest
    extends DescribeLaunchTemplateVersionsRequest {
  @override
  final bool dryRun;
  @override
  final String? launchTemplateId;
  @override
  final String? launchTemplateName;
  @override
  final _i3.BuiltList<String>? versions;
  @override
  final String? minVersion;
  @override
  final String? maxVersion;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool resolveAlias;

  factory _$DescribeLaunchTemplateVersionsRequest(
          [void Function(DescribeLaunchTemplateVersionsRequestBuilder)?
              updates]) =>
      (new DescribeLaunchTemplateVersionsRequestBuilder()..update(updates))
          ._build();

  _$DescribeLaunchTemplateVersionsRequest._(
      {required this.dryRun,
      this.launchTemplateId,
      this.launchTemplateName,
      this.versions,
      this.minVersion,
      this.maxVersion,
      this.nextToken,
      required this.maxResults,
      this.filters,
      required this.resolveAlias})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeLaunchTemplateVersionsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeLaunchTemplateVersionsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        resolveAlias, r'DescribeLaunchTemplateVersionsRequest', 'resolveAlias');
  }

  @override
  DescribeLaunchTemplateVersionsRequest rebuild(
          void Function(DescribeLaunchTemplateVersionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLaunchTemplateVersionsRequestBuilder toBuilder() =>
      new DescribeLaunchTemplateVersionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLaunchTemplateVersionsRequest &&
        dryRun == other.dryRun &&
        launchTemplateId == other.launchTemplateId &&
        launchTemplateName == other.launchTemplateName &&
        versions == other.versions &&
        minVersion == other.minVersion &&
        maxVersion == other.maxVersion &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        filters == other.filters &&
        resolveAlias == other.resolveAlias;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, launchTemplateId.hashCode);
    _$hash = $jc(_$hash, launchTemplateName.hashCode);
    _$hash = $jc(_$hash, versions.hashCode);
    _$hash = $jc(_$hash, minVersion.hashCode);
    _$hash = $jc(_$hash, maxVersion.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, resolveAlias.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLaunchTemplateVersionsRequestBuilder
    implements
        Builder<DescribeLaunchTemplateVersionsRequest,
            DescribeLaunchTemplateVersionsRequestBuilder> {
  _$DescribeLaunchTemplateVersionsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _launchTemplateId;
  String? get launchTemplateId => _$this._launchTemplateId;
  set launchTemplateId(String? launchTemplateId) =>
      _$this._launchTemplateId = launchTemplateId;

  String? _launchTemplateName;
  String? get launchTemplateName => _$this._launchTemplateName;
  set launchTemplateName(String? launchTemplateName) =>
      _$this._launchTemplateName = launchTemplateName;

  _i3.ListBuilder<String>? _versions;
  _i3.ListBuilder<String> get versions =>
      _$this._versions ??= new _i3.ListBuilder<String>();
  set versions(_i3.ListBuilder<String>? versions) =>
      _$this._versions = versions;

  String? _minVersion;
  String? get minVersion => _$this._minVersion;
  set minVersion(String? minVersion) => _$this._minVersion = minVersion;

  String? _maxVersion;
  String? get maxVersion => _$this._maxVersion;
  set maxVersion(String? maxVersion) => _$this._maxVersion = maxVersion;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _resolveAlias;
  bool? get resolveAlias => _$this._resolveAlias;
  set resolveAlias(bool? resolveAlias) => _$this._resolveAlias = resolveAlias;

  DescribeLaunchTemplateVersionsRequestBuilder() {
    DescribeLaunchTemplateVersionsRequest._init(this);
  }

  DescribeLaunchTemplateVersionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _launchTemplateId = $v.launchTemplateId;
      _launchTemplateName = $v.launchTemplateName;
      _versions = $v.versions?.toBuilder();
      _minVersion = $v.minVersion;
      _maxVersion = $v.maxVersion;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _filters = $v.filters?.toBuilder();
      _resolveAlias = $v.resolveAlias;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLaunchTemplateVersionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLaunchTemplateVersionsRequest;
  }

  @override
  void update(
      void Function(DescribeLaunchTemplateVersionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLaunchTemplateVersionsRequest build() => _build();

  _$DescribeLaunchTemplateVersionsRequest _build() {
    _$DescribeLaunchTemplateVersionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeLaunchTemplateVersionsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeLaunchTemplateVersionsRequest', 'dryRun'),
              launchTemplateId: launchTemplateId,
              launchTemplateName: launchTemplateName,
              versions: _versions?.build(),
              minVersion: minVersion,
              maxVersion: maxVersion,
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeLaunchTemplateVersionsRequest', 'maxResults'),
              filters: _filters?.build(),
              resolveAlias: BuiltValueNullFieldError.checkNotNull(resolveAlias,
                  r'DescribeLaunchTemplateVersionsRequest', 'resolveAlias'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'versions';
        _versions?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLaunchTemplateVersionsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
