// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_attached_group_policies_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAttachedGroupPoliciesRequest
    extends ListAttachedGroupPoliciesRequest {
  @override
  final String groupName;
  @override
  final String? pathPrefix;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListAttachedGroupPoliciesRequest(
          [void Function(ListAttachedGroupPoliciesRequestBuilder)? updates]) =>
      (new ListAttachedGroupPoliciesRequestBuilder()..update(updates))._build();

  _$ListAttachedGroupPoliciesRequest._(
      {required this.groupName, this.pathPrefix, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'ListAttachedGroupPoliciesRequest', 'groupName');
  }

  @override
  ListAttachedGroupPoliciesRequest rebuild(
          void Function(ListAttachedGroupPoliciesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAttachedGroupPoliciesRequestBuilder toBuilder() =>
      new ListAttachedGroupPoliciesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAttachedGroupPoliciesRequest &&
        groupName == other.groupName &&
        pathPrefix == other.pathPrefix &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, pathPrefix.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListAttachedGroupPoliciesRequestBuilder
    implements
        Builder<ListAttachedGroupPoliciesRequest,
            ListAttachedGroupPoliciesRequestBuilder> {
  _$ListAttachedGroupPoliciesRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _pathPrefix;
  String? get pathPrefix => _$this._pathPrefix;
  set pathPrefix(String? pathPrefix) => _$this._pathPrefix = pathPrefix;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListAttachedGroupPoliciesRequestBuilder() {
    ListAttachedGroupPoliciesRequest._init(this);
  }

  ListAttachedGroupPoliciesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _pathPrefix = $v.pathPrefix;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAttachedGroupPoliciesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAttachedGroupPoliciesRequest;
  }

  @override
  void update(void Function(ListAttachedGroupPoliciesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAttachedGroupPoliciesRequest build() => _build();

  _$ListAttachedGroupPoliciesRequest _build() {
    final _$result = _$v ??
        new _$ListAttachedGroupPoliciesRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'ListAttachedGroupPoliciesRequest', 'groupName'),
            pathPrefix: pathPrefix,
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
