// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tags_for_resource_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTagsForResourceRequest extends ListTagsForResourceRequest {
  @override
  final String resourceArn;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$ListTagsForResourceRequest(
          [void Function(ListTagsForResourceRequestBuilder)? updates]) =>
      (new ListTagsForResourceRequestBuilder()..update(updates))._build();

  _$ListTagsForResourceRequest._(
      {required this.resourceArn, required this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'ListTagsForResourceRequest', 'resourceArn');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'ListTagsForResourceRequest', 'limit');
  }

  @override
  ListTagsForResourceRequest rebuild(
          void Function(ListTagsForResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTagsForResourceRequestBuilder toBuilder() =>
      new ListTagsForResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTagsForResourceRequest &&
        resourceArn == other.resourceArn &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceArn.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTagsForResourceRequestBuilder
    implements
        Builder<ListTagsForResourceRequest, ListTagsForResourceRequestBuilder> {
  _$ListTagsForResourceRequest? _$v;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListTagsForResourceRequestBuilder() {
    ListTagsForResourceRequest._init(this);
  }

  ListTagsForResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceArn = $v.resourceArn;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTagsForResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTagsForResourceRequest;
  }

  @override
  void update(void Function(ListTagsForResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTagsForResourceRequest build() => _build();

  _$ListTagsForResourceRequest _build() {
    final _$result = _$v ??
        new _$ListTagsForResourceRequest._(
            resourceArn: BuiltValueNullFieldError.checkNotNull(
                resourceArn, r'ListTagsForResourceRequest', 'resourceArn'),
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, r'ListTagsForResourceRequest', 'limit'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
