// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_tags_for_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTagsForResourceRequest extends ListTagsForResourceRequest {
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final String resourceArn;

  factory _$ListTagsForResourceRequest(
          [void Function(ListTagsForResourceRequestBuilder)? updates]) =>
      (new ListTagsForResourceRequestBuilder()..update(updates))._build();

  _$ListTagsForResourceRequest._(
      {this.limit, this.nextToken, required this.resourceArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'ListTagsForResourceRequest', 'resourceArn');
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
        limit == other.limit &&
        nextToken == other.nextToken &&
        resourceArn == other.resourceArn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, limit.hashCode), nextToken.hashCode), resourceArn.hashCode));
  }
}

class ListTagsForResourceRequestBuilder
    implements
        Builder<ListTagsForResourceRequest, ListTagsForResourceRequestBuilder> {
  _$ListTagsForResourceRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  ListTagsForResourceRequestBuilder() {
    ListTagsForResourceRequest._init(this);
  }

  ListTagsForResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _resourceArn = $v.resourceArn;
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
            limit: limit,
            nextToken: nextToken,
            resourceArn: BuiltValueNullFieldError.checkNotNull(
                resourceArn, r'ListTagsForResourceRequest', 'resourceArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
