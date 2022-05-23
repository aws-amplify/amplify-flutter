// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.list_devices_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListDevicesRequest extends ListDevicesRequest {
  @override
  final String accessToken;
  @override
  final int? limit;
  @override
  final String? paginationToken;

  factory _$ListDevicesRequest(
          [void Function(ListDevicesRequestBuilder)? updates]) =>
      (new ListDevicesRequestBuilder()..update(updates))._build();

  _$ListDevicesRequest._(
      {required this.accessToken, this.limit, this.paginationToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'ListDevicesRequest', 'accessToken');
  }

  @override
  ListDevicesRequest rebuild(
          void Function(ListDevicesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListDevicesRequestBuilder toBuilder() =>
      new ListDevicesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListDevicesRequest &&
        accessToken == other.accessToken &&
        limit == other.limit &&
        paginationToken == other.paginationToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, accessToken.hashCode), limit.hashCode),
        paginationToken.hashCode));
  }
}

class ListDevicesRequestBuilder
    implements Builder<ListDevicesRequest, ListDevicesRequestBuilder> {
  _$ListDevicesRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _paginationToken;
  String? get paginationToken => _$this._paginationToken;
  set paginationToken(String? paginationToken) =>
      _$this._paginationToken = paginationToken;

  ListDevicesRequestBuilder() {
    ListDevicesRequest._init(this);
  }

  ListDevicesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _limit = $v.limit;
      _paginationToken = $v.paginationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListDevicesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListDevicesRequest;
  }

  @override
  void update(void Function(ListDevicesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListDevicesRequest build() => _build();

  _$ListDevicesRequest _build() {
    final _$result = _$v ??
        new _$ListDevicesRequest._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'ListDevicesRequest', 'accessToken'),
            limit: limit,
            paginationToken: paginationToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
