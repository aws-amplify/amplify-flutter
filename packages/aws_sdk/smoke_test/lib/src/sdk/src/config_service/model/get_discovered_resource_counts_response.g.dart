// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_discovered_resource_counts_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDiscoveredResourceCountsResponse
    extends GetDiscoveredResourceCountsResponse {
  @override
  final String? nextToken;
  @override
  final _i4.BuiltList<_i2.ResourceCount>? resourceCounts;
  @override
  final _i3.Int64? totalDiscoveredResources;

  factory _$GetDiscoveredResourceCountsResponse(
          [void Function(GetDiscoveredResourceCountsResponseBuilder)?
              updates]) =>
      (new GetDiscoveredResourceCountsResponseBuilder()..update(updates))
          ._build();

  _$GetDiscoveredResourceCountsResponse._(
      {this.nextToken, this.resourceCounts, this.totalDiscoveredResources})
      : super._();

  @override
  GetDiscoveredResourceCountsResponse rebuild(
          void Function(GetDiscoveredResourceCountsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDiscoveredResourceCountsResponseBuilder toBuilder() =>
      new GetDiscoveredResourceCountsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDiscoveredResourceCountsResponse &&
        nextToken == other.nextToken &&
        resourceCounts == other.resourceCounts &&
        totalDiscoveredResources == other.totalDiscoveredResources;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, nextToken.hashCode), resourceCounts.hashCode),
        totalDiscoveredResources.hashCode));
  }
}

class GetDiscoveredResourceCountsResponseBuilder
    implements
        Builder<GetDiscoveredResourceCountsResponse,
            GetDiscoveredResourceCountsResponseBuilder> {
  _$GetDiscoveredResourceCountsResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ListBuilder<_i2.ResourceCount>? _resourceCounts;
  _i4.ListBuilder<_i2.ResourceCount> get resourceCounts =>
      _$this._resourceCounts ??= new _i4.ListBuilder<_i2.ResourceCount>();
  set resourceCounts(_i4.ListBuilder<_i2.ResourceCount>? resourceCounts) =>
      _$this._resourceCounts = resourceCounts;

  _i3.Int64? _totalDiscoveredResources;
  _i3.Int64? get totalDiscoveredResources => _$this._totalDiscoveredResources;
  set totalDiscoveredResources(_i3.Int64? totalDiscoveredResources) =>
      _$this._totalDiscoveredResources = totalDiscoveredResources;

  GetDiscoveredResourceCountsResponseBuilder() {
    GetDiscoveredResourceCountsResponse._init(this);
  }

  GetDiscoveredResourceCountsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _resourceCounts = $v.resourceCounts?.toBuilder();
      _totalDiscoveredResources = $v.totalDiscoveredResources;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDiscoveredResourceCountsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDiscoveredResourceCountsResponse;
  }

  @override
  void update(
      void Function(GetDiscoveredResourceCountsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDiscoveredResourceCountsResponse build() => _build();

  _$GetDiscoveredResourceCountsResponse _build() {
    _$GetDiscoveredResourceCountsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetDiscoveredResourceCountsResponse._(
              nextToken: nextToken,
              resourceCounts: _resourceCounts?.build(),
              totalDiscoveredResources: totalDiscoveredResources);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceCounts';
        _resourceCounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetDiscoveredResourceCountsResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
