// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_instance_profile_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListInstanceProfileTagsRequest extends ListInstanceProfileTagsRequest {
  @override
  final String instanceProfileName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListInstanceProfileTagsRequest(
          [void Function(ListInstanceProfileTagsRequestBuilder)? updates]) =>
      (new ListInstanceProfileTagsRequestBuilder()..update(updates))._build();

  _$ListInstanceProfileTagsRequest._(
      {required this.instanceProfileName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instanceProfileName,
        r'ListInstanceProfileTagsRequest', 'instanceProfileName');
  }

  @override
  ListInstanceProfileTagsRequest rebuild(
          void Function(ListInstanceProfileTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListInstanceProfileTagsRequestBuilder toBuilder() =>
      new ListInstanceProfileTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListInstanceProfileTagsRequest &&
        instanceProfileName == other.instanceProfileName &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceProfileName.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListInstanceProfileTagsRequestBuilder
    implements
        Builder<ListInstanceProfileTagsRequest,
            ListInstanceProfileTagsRequestBuilder> {
  _$ListInstanceProfileTagsRequest? _$v;

  String? _instanceProfileName;
  String? get instanceProfileName => _$this._instanceProfileName;
  set instanceProfileName(String? instanceProfileName) =>
      _$this._instanceProfileName = instanceProfileName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListInstanceProfileTagsRequestBuilder() {
    ListInstanceProfileTagsRequest._init(this);
  }

  ListInstanceProfileTagsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceProfileName = $v.instanceProfileName;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListInstanceProfileTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListInstanceProfileTagsRequest;
  }

  @override
  void update(void Function(ListInstanceProfileTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListInstanceProfileTagsRequest build() => _build();

  _$ListInstanceProfileTagsRequest _build() {
    final _$result = _$v ??
        new _$ListInstanceProfileTagsRequest._(
            instanceProfileName: BuiltValueNullFieldError.checkNotNull(
                instanceProfileName,
                r'ListInstanceProfileTagsRequest',
                'instanceProfileName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
