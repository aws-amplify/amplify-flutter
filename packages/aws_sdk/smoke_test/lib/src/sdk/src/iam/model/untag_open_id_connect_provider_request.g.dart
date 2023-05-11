// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.untag_open_id_connect_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagOpenIdConnectProviderRequest
    extends UntagOpenIdConnectProviderRequest {
  @override
  final String openIdConnectProviderArn;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagOpenIdConnectProviderRequest(
          [void Function(UntagOpenIdConnectProviderRequestBuilder)? updates]) =>
      (new UntagOpenIdConnectProviderRequestBuilder()..update(updates))
          ._build();

  _$UntagOpenIdConnectProviderRequest._(
      {required this.openIdConnectProviderArn, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(openIdConnectProviderArn,
        r'UntagOpenIdConnectProviderRequest', 'openIdConnectProviderArn');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagOpenIdConnectProviderRequest', 'tagKeys');
  }

  @override
  UntagOpenIdConnectProviderRequest rebuild(
          void Function(UntagOpenIdConnectProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagOpenIdConnectProviderRequestBuilder toBuilder() =>
      new UntagOpenIdConnectProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagOpenIdConnectProviderRequest &&
        openIdConnectProviderArn == other.openIdConnectProviderArn &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openIdConnectProviderArn.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagOpenIdConnectProviderRequestBuilder
    implements
        Builder<UntagOpenIdConnectProviderRequest,
            UntagOpenIdConnectProviderRequestBuilder> {
  _$UntagOpenIdConnectProviderRequest? _$v;

  String? _openIdConnectProviderArn;
  String? get openIdConnectProviderArn => _$this._openIdConnectProviderArn;
  set openIdConnectProviderArn(String? openIdConnectProviderArn) =>
      _$this._openIdConnectProviderArn = openIdConnectProviderArn;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagOpenIdConnectProviderRequestBuilder() {
    UntagOpenIdConnectProviderRequest._init(this);
  }

  UntagOpenIdConnectProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderArn = $v.openIdConnectProviderArn;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagOpenIdConnectProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagOpenIdConnectProviderRequest;
  }

  @override
  void update(
      void Function(UntagOpenIdConnectProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagOpenIdConnectProviderRequest build() => _build();

  _$UntagOpenIdConnectProviderRequest _build() {
    _$UntagOpenIdConnectProviderRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagOpenIdConnectProviderRequest._(
              openIdConnectProviderArn: BuiltValueNullFieldError.checkNotNull(
                  openIdConnectProviderArn,
                  r'UntagOpenIdConnectProviderRequest',
                  'openIdConnectProviderArn'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagOpenIdConnectProviderRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
