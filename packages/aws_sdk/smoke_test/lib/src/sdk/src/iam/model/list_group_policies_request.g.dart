// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_group_policies_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListGroupPoliciesRequest extends ListGroupPoliciesRequest {
  @override
  final String groupName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListGroupPoliciesRequest(
          [void Function(ListGroupPoliciesRequestBuilder)? updates]) =>
      (new ListGroupPoliciesRequestBuilder()..update(updates))._build();

  _$ListGroupPoliciesRequest._(
      {required this.groupName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupName, r'ListGroupPoliciesRequest', 'groupName');
  }

  @override
  ListGroupPoliciesRequest rebuild(
          void Function(ListGroupPoliciesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListGroupPoliciesRequestBuilder toBuilder() =>
      new ListGroupPoliciesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListGroupPoliciesRequest &&
        groupName == other.groupName &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListGroupPoliciesRequestBuilder
    implements
        Builder<ListGroupPoliciesRequest, ListGroupPoliciesRequestBuilder> {
  _$ListGroupPoliciesRequest? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListGroupPoliciesRequestBuilder() {
    ListGroupPoliciesRequest._init(this);
  }

  ListGroupPoliciesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListGroupPoliciesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListGroupPoliciesRequest;
  }

  @override
  void update(void Function(ListGroupPoliciesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListGroupPoliciesRequest build() => _build();

  _$ListGroupPoliciesRequest _build() {
    final _$result = _$v ??
        new _$ListGroupPoliciesRequest._(
            groupName: BuiltValueNullFieldError.checkNotNull(
                groupName, r'ListGroupPoliciesRequest', 'groupName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
