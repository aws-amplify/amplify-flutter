// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_entities_for_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListEntitiesForPolicyRequest extends ListEntitiesForPolicyRequest {
  @override
  final String policyArn;
  @override
  final _i3.EntityType? entityFilter;
  @override
  final String? pathPrefix;
  @override
  final _i4.PolicyUsageType? policyUsageFilter;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListEntitiesForPolicyRequest(
          [void Function(ListEntitiesForPolicyRequestBuilder)? updates]) =>
      (new ListEntitiesForPolicyRequestBuilder()..update(updates))._build();

  _$ListEntitiesForPolicyRequest._(
      {required this.policyArn,
      this.entityFilter,
      this.pathPrefix,
      this.policyUsageFilter,
      this.marker,
      this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'ListEntitiesForPolicyRequest', 'policyArn');
  }

  @override
  ListEntitiesForPolicyRequest rebuild(
          void Function(ListEntitiesForPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListEntitiesForPolicyRequestBuilder toBuilder() =>
      new ListEntitiesForPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListEntitiesForPolicyRequest &&
        policyArn == other.policyArn &&
        entityFilter == other.entityFilter &&
        pathPrefix == other.pathPrefix &&
        policyUsageFilter == other.policyUsageFilter &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jc(_$hash, entityFilter.hashCode);
    _$hash = $jc(_$hash, pathPrefix.hashCode);
    _$hash = $jc(_$hash, policyUsageFilter.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListEntitiesForPolicyRequestBuilder
    implements
        Builder<ListEntitiesForPolicyRequest,
            ListEntitiesForPolicyRequestBuilder> {
  _$ListEntitiesForPolicyRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  _i3.EntityType? _entityFilter;
  _i3.EntityType? get entityFilter => _$this._entityFilter;
  set entityFilter(_i3.EntityType? entityFilter) =>
      _$this._entityFilter = entityFilter;

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

  ListEntitiesForPolicyRequestBuilder() {
    ListEntitiesForPolicyRequest._init(this);
  }

  ListEntitiesForPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _entityFilter = $v.entityFilter;
      _pathPrefix = $v.pathPrefix;
      _policyUsageFilter = $v.policyUsageFilter;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListEntitiesForPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListEntitiesForPolicyRequest;
  }

  @override
  void update(void Function(ListEntitiesForPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListEntitiesForPolicyRequest build() => _build();

  _$ListEntitiesForPolicyRequest _build() {
    final _$result = _$v ??
        new _$ListEntitiesForPolicyRequest._(
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'ListEntitiesForPolicyRequest', 'policyArn'),
            entityFilter: entityFilter,
            pathPrefix: pathPrefix,
            policyUsageFilter: policyUsageFilter,
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
