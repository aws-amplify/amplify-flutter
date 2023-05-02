// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_groups_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListGroupsRequest extends ListGroupsRequest {
  @override
  final String? pathPrefix;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListGroupsRequest(
          [void Function(ListGroupsRequestBuilder)? updates]) =>
      (new ListGroupsRequestBuilder()..update(updates))._build();

  _$ListGroupsRequest._({this.pathPrefix, this.marker, this.maxItems})
      : super._();

  @override
  ListGroupsRequest rebuild(void Function(ListGroupsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListGroupsRequestBuilder toBuilder() =>
      new ListGroupsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListGroupsRequest &&
        pathPrefix == other.pathPrefix &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pathPrefix.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListGroupsRequestBuilder
    implements Builder<ListGroupsRequest, ListGroupsRequestBuilder> {
  _$ListGroupsRequest? _$v;

  String? _pathPrefix;
  String? get pathPrefix => _$this._pathPrefix;
  set pathPrefix(String? pathPrefix) => _$this._pathPrefix = pathPrefix;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListGroupsRequestBuilder() {
    ListGroupsRequest._init(this);
  }

  ListGroupsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pathPrefix = $v.pathPrefix;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListGroupsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListGroupsRequest;
  }

  @override
  void update(void Function(ListGroupsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListGroupsRequest build() => _build();

  _$ListGroupsRequest _build() {
    final _$result = _$v ??
        new _$ListGroupsRequest._(
            pathPrefix: pathPrefix, marker: marker, maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
