// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_policy_versions_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPolicyVersionsRequest extends ListPolicyVersionsRequest {
  @override
  final String policyArn;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListPolicyVersionsRequest(
          [void Function(ListPolicyVersionsRequestBuilder)? updates]) =>
      (new ListPolicyVersionsRequestBuilder()..update(updates))._build();

  _$ListPolicyVersionsRequest._(
      {required this.policyArn, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'ListPolicyVersionsRequest', 'policyArn');
  }

  @override
  ListPolicyVersionsRequest rebuild(
          void Function(ListPolicyVersionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPolicyVersionsRequestBuilder toBuilder() =>
      new ListPolicyVersionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPolicyVersionsRequest &&
        policyArn == other.policyArn &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListPolicyVersionsRequestBuilder
    implements
        Builder<ListPolicyVersionsRequest, ListPolicyVersionsRequestBuilder> {
  _$ListPolicyVersionsRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListPolicyVersionsRequestBuilder() {
    ListPolicyVersionsRequest._init(this);
  }

  ListPolicyVersionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListPolicyVersionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPolicyVersionsRequest;
  }

  @override
  void update(void Function(ListPolicyVersionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPolicyVersionsRequest build() => _build();

  _$ListPolicyVersionsRequest _build() {
    final _$result = _$v ??
        new _$ListPolicyVersionsRequest._(
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'ListPolicyVersionsRequest', 'policyArn'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
