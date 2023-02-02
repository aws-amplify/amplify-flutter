// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_aggregation_authorization_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutAggregationAuthorizationRequest
    extends PutAggregationAuthorizationRequest {
  @override
  final String authorizedAccountId;
  @override
  final String authorizedAwsRegion;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$PutAggregationAuthorizationRequest(
          [void Function(PutAggregationAuthorizationRequestBuilder)?
              updates]) =>
      (new PutAggregationAuthorizationRequestBuilder()..update(updates))
          ._build();

  _$PutAggregationAuthorizationRequest._(
      {required this.authorizedAccountId,
      required this.authorizedAwsRegion,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(authorizedAccountId,
        r'PutAggregationAuthorizationRequest', 'authorizedAccountId');
    BuiltValueNullFieldError.checkNotNull(authorizedAwsRegion,
        r'PutAggregationAuthorizationRequest', 'authorizedAwsRegion');
  }

  @override
  PutAggregationAuthorizationRequest rebuild(
          void Function(PutAggregationAuthorizationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutAggregationAuthorizationRequestBuilder toBuilder() =>
      new PutAggregationAuthorizationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutAggregationAuthorizationRequest &&
        authorizedAccountId == other.authorizedAccountId &&
        authorizedAwsRegion == other.authorizedAwsRegion &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizedAccountId.hashCode);
    _$hash = $jc(_$hash, authorizedAwsRegion.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutAggregationAuthorizationRequestBuilder
    implements
        Builder<PutAggregationAuthorizationRequest,
            PutAggregationAuthorizationRequestBuilder> {
  _$PutAggregationAuthorizationRequest? _$v;

  String? _authorizedAccountId;
  String? get authorizedAccountId => _$this._authorizedAccountId;
  set authorizedAccountId(String? authorizedAccountId) =>
      _$this._authorizedAccountId = authorizedAccountId;

  String? _authorizedAwsRegion;
  String? get authorizedAwsRegion => _$this._authorizedAwsRegion;
  set authorizedAwsRegion(String? authorizedAwsRegion) =>
      _$this._authorizedAwsRegion = authorizedAwsRegion;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  PutAggregationAuthorizationRequestBuilder() {
    PutAggregationAuthorizationRequest._init(this);
  }

  PutAggregationAuthorizationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizedAccountId = $v.authorizedAccountId;
      _authorizedAwsRegion = $v.authorizedAwsRegion;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutAggregationAuthorizationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutAggregationAuthorizationRequest;
  }

  @override
  void update(
      void Function(PutAggregationAuthorizationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutAggregationAuthorizationRequest build() => _build();

  _$PutAggregationAuthorizationRequest _build() {
    _$PutAggregationAuthorizationRequest _$result;
    try {
      _$result = _$v ??
          new _$PutAggregationAuthorizationRequest._(
              authorizedAccountId: BuiltValueNullFieldError.checkNotNull(
                  authorizedAccountId,
                  r'PutAggregationAuthorizationRequest',
                  'authorizedAccountId'),
              authorizedAwsRegion: BuiltValueNullFieldError.checkNotNull(
                  authorizedAwsRegion,
                  r'PutAggregationAuthorizationRequest',
                  'authorizedAwsRegion'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutAggregationAuthorizationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
