// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_account_authorization_details_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccountAuthorizationDetailsRequest
    extends GetAccountAuthorizationDetailsRequest {
  @override
  final _i4.BuiltList<_i3.EntityType>? filter;
  @override
  final int? maxItems;
  @override
  final String? marker;

  factory _$GetAccountAuthorizationDetailsRequest(
          [void Function(GetAccountAuthorizationDetailsRequestBuilder)?
              updates]) =>
      (new GetAccountAuthorizationDetailsRequestBuilder()..update(updates))
          ._build();

  _$GetAccountAuthorizationDetailsRequest._(
      {this.filter, this.maxItems, this.marker})
      : super._();

  @override
  GetAccountAuthorizationDetailsRequest rebuild(
          void Function(GetAccountAuthorizationDetailsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccountAuthorizationDetailsRequestBuilder toBuilder() =>
      new GetAccountAuthorizationDetailsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccountAuthorizationDetailsRequest &&
        filter == other.filter &&
        maxItems == other.maxItems &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAccountAuthorizationDetailsRequestBuilder
    implements
        Builder<GetAccountAuthorizationDetailsRequest,
            GetAccountAuthorizationDetailsRequestBuilder> {
  _$GetAccountAuthorizationDetailsRequest? _$v;

  _i4.ListBuilder<_i3.EntityType>? _filter;
  _i4.ListBuilder<_i3.EntityType> get filter =>
      _$this._filter ??= new _i4.ListBuilder<_i3.EntityType>();
  set filter(_i4.ListBuilder<_i3.EntityType>? filter) =>
      _$this._filter = filter;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  GetAccountAuthorizationDetailsRequestBuilder() {
    GetAccountAuthorizationDetailsRequest._init(this);
  }

  GetAccountAuthorizationDetailsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter?.toBuilder();
      _maxItems = $v.maxItems;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAccountAuthorizationDetailsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAccountAuthorizationDetailsRequest;
  }

  @override
  void update(
      void Function(GetAccountAuthorizationDetailsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccountAuthorizationDetailsRequest build() => _build();

  _$GetAccountAuthorizationDetailsRequest _build() {
    _$GetAccountAuthorizationDetailsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetAccountAuthorizationDetailsRequest._(
              filter: _filter?.build(), maxItems: maxItems, marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAccountAuthorizationDetailsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
