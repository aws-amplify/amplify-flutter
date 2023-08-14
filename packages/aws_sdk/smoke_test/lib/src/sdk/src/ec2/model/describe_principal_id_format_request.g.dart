// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_principal_id_format_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePrincipalIdFormatRequest
    extends DescribePrincipalIdFormatRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? resources;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribePrincipalIdFormatRequest(
          [void Function(DescribePrincipalIdFormatRequestBuilder)? updates]) =>
      (new DescribePrincipalIdFormatRequestBuilder()..update(updates))._build();

  _$DescribePrincipalIdFormatRequest._(
      {required this.dryRun,
      this.resources,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribePrincipalIdFormatRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribePrincipalIdFormatRequest', 'maxResults');
  }

  @override
  DescribePrincipalIdFormatRequest rebuild(
          void Function(DescribePrincipalIdFormatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePrincipalIdFormatRequestBuilder toBuilder() =>
      new DescribePrincipalIdFormatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePrincipalIdFormatRequest &&
        dryRun == other.dryRun &&
        resources == other.resources &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePrincipalIdFormatRequestBuilder
    implements
        Builder<DescribePrincipalIdFormatRequest,
            DescribePrincipalIdFormatRequestBuilder> {
  _$DescribePrincipalIdFormatRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _resources;
  _i3.ListBuilder<String> get resources =>
      _$this._resources ??= new _i3.ListBuilder<String>();
  set resources(_i3.ListBuilder<String>? resources) =>
      _$this._resources = resources;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribePrincipalIdFormatRequestBuilder() {
    DescribePrincipalIdFormatRequest._init(this);
  }

  DescribePrincipalIdFormatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _resources = $v.resources?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePrincipalIdFormatRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePrincipalIdFormatRequest;
  }

  @override
  void update(void Function(DescribePrincipalIdFormatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePrincipalIdFormatRequest build() => _build();

  _$DescribePrincipalIdFormatRequest _build() {
    _$DescribePrincipalIdFormatRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribePrincipalIdFormatRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribePrincipalIdFormatRequest', 'dryRun'),
              resources: _resources?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribePrincipalIdFormatRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resources';
        _resources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribePrincipalIdFormatRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
