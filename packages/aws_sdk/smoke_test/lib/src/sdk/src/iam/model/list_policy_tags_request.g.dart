// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_policy_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPolicyTagsRequest extends ListPolicyTagsRequest {
  @override
  final String policyArn;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListPolicyTagsRequest(
          [void Function(ListPolicyTagsRequestBuilder)? updates]) =>
      (new ListPolicyTagsRequestBuilder()..update(updates))._build();

  _$ListPolicyTagsRequest._(
      {required this.policyArn, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'ListPolicyTagsRequest', 'policyArn');
  }

  @override
  ListPolicyTagsRequest rebuild(
          void Function(ListPolicyTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPolicyTagsRequestBuilder toBuilder() =>
      new ListPolicyTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPolicyTagsRequest &&
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

class ListPolicyTagsRequestBuilder
    implements Builder<ListPolicyTagsRequest, ListPolicyTagsRequestBuilder> {
  _$ListPolicyTagsRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListPolicyTagsRequestBuilder() {
    ListPolicyTagsRequest._init(this);
  }

  ListPolicyTagsRequestBuilder get _$this {
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
  void replace(ListPolicyTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPolicyTagsRequest;
  }

  @override
  void update(void Function(ListPolicyTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPolicyTagsRequest build() => _build();

  _$ListPolicyTagsRequest _build() {
    final _$result = _$v ??
        new _$ListPolicyTagsRequest._(
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'ListPolicyTagsRequest', 'policyArn'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
