// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_discovered_resources_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListDiscoveredResourcesResponse
    extends ListDiscoveredResourcesResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.ResourceIdentifier>? resourceIdentifiers;

  factory _$ListDiscoveredResourcesResponse(
          [void Function(ListDiscoveredResourcesResponseBuilder)? updates]) =>
      (new ListDiscoveredResourcesResponseBuilder()..update(updates))._build();

  _$ListDiscoveredResourcesResponse._(
      {this.nextToken, this.resourceIdentifiers})
      : super._();

  @override
  ListDiscoveredResourcesResponse rebuild(
          void Function(ListDiscoveredResourcesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListDiscoveredResourcesResponseBuilder toBuilder() =>
      new ListDiscoveredResourcesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListDiscoveredResourcesResponse &&
        nextToken == other.nextToken &&
        resourceIdentifiers == other.resourceIdentifiers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, resourceIdentifiers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListDiscoveredResourcesResponseBuilder
    implements
        Builder<ListDiscoveredResourcesResponse,
            ListDiscoveredResourcesResponseBuilder> {
  _$ListDiscoveredResourcesResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.ResourceIdentifier>? _resourceIdentifiers;
  _i3.ListBuilder<_i2.ResourceIdentifier> get resourceIdentifiers =>
      _$this._resourceIdentifiers ??=
          new _i3.ListBuilder<_i2.ResourceIdentifier>();
  set resourceIdentifiers(
          _i3.ListBuilder<_i2.ResourceIdentifier>? resourceIdentifiers) =>
      _$this._resourceIdentifiers = resourceIdentifiers;

  ListDiscoveredResourcesResponseBuilder() {
    ListDiscoveredResourcesResponse._init(this);
  }

  ListDiscoveredResourcesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _resourceIdentifiers = $v.resourceIdentifiers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListDiscoveredResourcesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListDiscoveredResourcesResponse;
  }

  @override
  void update(void Function(ListDiscoveredResourcesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListDiscoveredResourcesResponse build() => _build();

  _$ListDiscoveredResourcesResponse _build() {
    _$ListDiscoveredResourcesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListDiscoveredResourcesResponse._(
              nextToken: nextToken,
              resourceIdentifiers: _resourceIdentifiers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceIdentifiers';
        _resourceIdentifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListDiscoveredResourcesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
