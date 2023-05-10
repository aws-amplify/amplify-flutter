// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_roles_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListRolesRequest extends ListRolesRequest {
  @override
  final String? pathPrefix;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListRolesRequest(
          [void Function(ListRolesRequestBuilder)? updates]) =>
      (new ListRolesRequestBuilder()..update(updates))._build();

  _$ListRolesRequest._({this.pathPrefix, this.marker, this.maxItems})
      : super._();

  @override
  ListRolesRequest rebuild(void Function(ListRolesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListRolesRequestBuilder toBuilder() =>
      new ListRolesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListRolesRequest &&
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

class ListRolesRequestBuilder
    implements Builder<ListRolesRequest, ListRolesRequestBuilder> {
  _$ListRolesRequest? _$v;

  String? _pathPrefix;
  String? get pathPrefix => _$this._pathPrefix;
  set pathPrefix(String? pathPrefix) => _$this._pathPrefix = pathPrefix;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListRolesRequestBuilder() {
    ListRolesRequest._init(this);
  }

  ListRolesRequestBuilder get _$this {
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
  void replace(ListRolesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListRolesRequest;
  }

  @override
  void update(void Function(ListRolesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListRolesRequest build() => _build();

  _$ListRolesRequest _build() {
    final _$result = _$v ??
        new _$ListRolesRequest._(
            pathPrefix: pathPrefix, marker: marker, maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
