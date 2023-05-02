// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_aggregate_discovered_resources_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAggregateDiscoveredResourcesResponse
    extends ListAggregateDiscoveredResourcesResponse {
  @override
  final _i3.BuiltList<_i2.AggregateResourceIdentifier>? resourceIdentifiers;
  @override
  final String? nextToken;

  factory _$ListAggregateDiscoveredResourcesResponse(
          [void Function(ListAggregateDiscoveredResourcesResponseBuilder)?
              updates]) =>
      (new ListAggregateDiscoveredResourcesResponseBuilder()..update(updates))
          ._build();

  _$ListAggregateDiscoveredResourcesResponse._(
      {this.resourceIdentifiers, this.nextToken})
      : super._();

  @override
  ListAggregateDiscoveredResourcesResponse rebuild(
          void Function(ListAggregateDiscoveredResourcesResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAggregateDiscoveredResourcesResponseBuilder toBuilder() =>
      new ListAggregateDiscoveredResourcesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAggregateDiscoveredResourcesResponse &&
        resourceIdentifiers == other.resourceIdentifiers &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceIdentifiers.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListAggregateDiscoveredResourcesResponseBuilder
    implements
        Builder<ListAggregateDiscoveredResourcesResponse,
            ListAggregateDiscoveredResourcesResponseBuilder> {
  _$ListAggregateDiscoveredResourcesResponse? _$v;

  _i3.ListBuilder<_i2.AggregateResourceIdentifier>? _resourceIdentifiers;
  _i3.ListBuilder<_i2.AggregateResourceIdentifier> get resourceIdentifiers =>
      _$this._resourceIdentifiers ??=
          new _i3.ListBuilder<_i2.AggregateResourceIdentifier>();
  set resourceIdentifiers(
          _i3.ListBuilder<_i2.AggregateResourceIdentifier>?
              resourceIdentifiers) =>
      _$this._resourceIdentifiers = resourceIdentifiers;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListAggregateDiscoveredResourcesResponseBuilder() {
    ListAggregateDiscoveredResourcesResponse._init(this);
  }

  ListAggregateDiscoveredResourcesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceIdentifiers = $v.resourceIdentifiers?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAggregateDiscoveredResourcesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAggregateDiscoveredResourcesResponse;
  }

  @override
  void update(
      void Function(ListAggregateDiscoveredResourcesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAggregateDiscoveredResourcesResponse build() => _build();

  _$ListAggregateDiscoveredResourcesResponse _build() {
    _$ListAggregateDiscoveredResourcesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListAggregateDiscoveredResourcesResponse._(
              resourceIdentifiers: _resourceIdentifiers?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceIdentifiers';
        _resourceIdentifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListAggregateDiscoveredResourcesResponse',
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
