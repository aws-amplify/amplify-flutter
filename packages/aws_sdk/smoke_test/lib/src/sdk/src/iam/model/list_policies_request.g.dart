// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_policies_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPoliciesRequest extends ListPoliciesRequest {
  @override
  final _i3.PolicyScopeType? scope;
  @override
  final bool onlyAttached;
  @override
  final String? pathPrefix;
  @override
  final _i4.PolicyUsageType? policyUsageFilter;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListPoliciesRequest(
          [void Function(ListPoliciesRequestBuilder)? updates]) =>
      (new ListPoliciesRequestBuilder()..update(updates))._build();

  _$ListPoliciesRequest._(
      {this.scope,
      required this.onlyAttached,
      this.pathPrefix,
      this.policyUsageFilter,
      this.marker,
      this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onlyAttached, r'ListPoliciesRequest', 'onlyAttached');
  }

  @override
  ListPoliciesRequest rebuild(
          void Function(ListPoliciesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPoliciesRequestBuilder toBuilder() =>
      new ListPoliciesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPoliciesRequest &&
        scope == other.scope &&
        onlyAttached == other.onlyAttached &&
        pathPrefix == other.pathPrefix &&
        policyUsageFilter == other.policyUsageFilter &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, onlyAttached.hashCode);
    _$hash = $jc(_$hash, pathPrefix.hashCode);
    _$hash = $jc(_$hash, policyUsageFilter.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPoliciesRequestBuilder
    implements Builder<ListPoliciesRequest, ListPoliciesRequestBuilder> {
  _$ListPoliciesRequest? _$v;

  _i3.PolicyScopeType? _scope;
  _i3.PolicyScopeType? get scope => _$this._scope;
  set scope(_i3.PolicyScopeType? scope) => _$this._scope = scope;

  bool? _onlyAttached;
  bool? get onlyAttached => _$this._onlyAttached;
  set onlyAttached(bool? onlyAttached) => _$this._onlyAttached = onlyAttached;

  String? _pathPrefix;
  String? get pathPrefix => _$this._pathPrefix;
  set pathPrefix(String? pathPrefix) => _$this._pathPrefix = pathPrefix;

  _i4.PolicyUsageType? _policyUsageFilter;
  _i4.PolicyUsageType? get policyUsageFilter => _$this._policyUsageFilter;
  set policyUsageFilter(_i4.PolicyUsageType? policyUsageFilter) =>
      _$this._policyUsageFilter = policyUsageFilter;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListPoliciesRequestBuilder() {
    ListPoliciesRequest._init(this);
  }

  ListPoliciesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scope = $v.scope;
      _onlyAttached = $v.onlyAttached;
      _pathPrefix = $v.pathPrefix;
      _policyUsageFilter = $v.policyUsageFilter;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPoliciesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPoliciesRequest;
  }

  @override
  void update(void Function(ListPoliciesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPoliciesRequest build() => _build();

  _$ListPoliciesRequest _build() {
    final _$result = _$v ??
        new _$ListPoliciesRequest._(
            scope: scope,
            onlyAttached: BuiltValueNullFieldError.checkNotNull(
                onlyAttached, r'ListPoliciesRequest', 'onlyAttached'),
            pathPrefix: pathPrefix,
            policyUsageFilter: policyUsageFilter,
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
