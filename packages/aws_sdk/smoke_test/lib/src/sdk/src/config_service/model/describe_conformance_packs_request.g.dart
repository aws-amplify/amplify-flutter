// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_conformance_packs_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConformancePacksRequest
    extends DescribeConformancePacksRequest {
  @override
  final _i3.BuiltList<String>? conformancePackNames;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$DescribeConformancePacksRequest(
          [void Function(DescribeConformancePacksRequestBuilder)? updates]) =>
      (new DescribeConformancePacksRequestBuilder()..update(updates))._build();

  _$DescribeConformancePacksRequest._(
      {this.conformancePackNames, this.limit, this.nextToken})
      : super._();

  @override
  DescribeConformancePacksRequest rebuild(
          void Function(DescribeConformancePacksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConformancePacksRequestBuilder toBuilder() =>
      new DescribeConformancePacksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConformancePacksRequest &&
        conformancePackNames == other.conformancePackNames &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackNames.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConformancePacksRequestBuilder
    implements
        Builder<DescribeConformancePacksRequest,
            DescribeConformancePacksRequestBuilder> {
  _$DescribeConformancePacksRequest? _$v;

  _i3.ListBuilder<String>? _conformancePackNames;
  _i3.ListBuilder<String> get conformancePackNames =>
      _$this._conformancePackNames ??= new _i3.ListBuilder<String>();
  set conformancePackNames(_i3.ListBuilder<String>? conformancePackNames) =>
      _$this._conformancePackNames = conformancePackNames;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConformancePacksRequestBuilder() {
    DescribeConformancePacksRequest._init(this);
  }

  DescribeConformancePacksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackNames = $v.conformancePackNames?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConformancePacksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConformancePacksRequest;
  }

  @override
  void update(void Function(DescribeConformancePacksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConformancePacksRequest build() => _build();

  _$DescribeConformancePacksRequest _build() {
    _$DescribeConformancePacksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConformancePacksRequest._(
              conformancePackNames: _conformancePackNames?.build(),
              limit: limit,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackNames';
        _conformancePackNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConformancePacksRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
