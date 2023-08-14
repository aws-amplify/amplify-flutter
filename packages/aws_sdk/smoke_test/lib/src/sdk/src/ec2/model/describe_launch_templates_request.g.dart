// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_launch_templates_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLaunchTemplatesRequest extends DescribeLaunchTemplatesRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? launchTemplateIds;
  @override
  final _i3.BuiltList<String>? launchTemplateNames;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeLaunchTemplatesRequest(
          [void Function(DescribeLaunchTemplatesRequestBuilder)? updates]) =>
      (new DescribeLaunchTemplatesRequestBuilder()..update(updates))._build();

  _$DescribeLaunchTemplatesRequest._(
      {required this.dryRun,
      this.launchTemplateIds,
      this.launchTemplateNames,
      this.filters,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeLaunchTemplatesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeLaunchTemplatesRequest', 'maxResults');
  }

  @override
  DescribeLaunchTemplatesRequest rebuild(
          void Function(DescribeLaunchTemplatesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLaunchTemplatesRequestBuilder toBuilder() =>
      new DescribeLaunchTemplatesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLaunchTemplatesRequest &&
        dryRun == other.dryRun &&
        launchTemplateIds == other.launchTemplateIds &&
        launchTemplateNames == other.launchTemplateNames &&
        filters == other.filters &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, launchTemplateIds.hashCode);
    _$hash = $jc(_$hash, launchTemplateNames.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLaunchTemplatesRequestBuilder
    implements
        Builder<DescribeLaunchTemplatesRequest,
            DescribeLaunchTemplatesRequestBuilder> {
  _$DescribeLaunchTemplatesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _launchTemplateIds;
  _i3.ListBuilder<String> get launchTemplateIds =>
      _$this._launchTemplateIds ??= new _i3.ListBuilder<String>();
  set launchTemplateIds(_i3.ListBuilder<String>? launchTemplateIds) =>
      _$this._launchTemplateIds = launchTemplateIds;

  _i3.ListBuilder<String>? _launchTemplateNames;
  _i3.ListBuilder<String> get launchTemplateNames =>
      _$this._launchTemplateNames ??= new _i3.ListBuilder<String>();
  set launchTemplateNames(_i3.ListBuilder<String>? launchTemplateNames) =>
      _$this._launchTemplateNames = launchTemplateNames;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeLaunchTemplatesRequestBuilder() {
    DescribeLaunchTemplatesRequest._init(this);
  }

  DescribeLaunchTemplatesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _launchTemplateIds = $v.launchTemplateIds?.toBuilder();
      _launchTemplateNames = $v.launchTemplateNames?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLaunchTemplatesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLaunchTemplatesRequest;
  }

  @override
  void update(void Function(DescribeLaunchTemplatesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLaunchTemplatesRequest build() => _build();

  _$DescribeLaunchTemplatesRequest _build() {
    _$DescribeLaunchTemplatesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeLaunchTemplatesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeLaunchTemplatesRequest', 'dryRun'),
              launchTemplateIds: _launchTemplateIds?.build(),
              launchTemplateNames: _launchTemplateNames?.build(),
              filters: _filters?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeLaunchTemplatesRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateIds';
        _launchTemplateIds?.build();
        _$failedField = 'launchTemplateNames';
        _launchTemplateNames?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLaunchTemplatesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
