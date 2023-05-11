// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_open_id_connect_provider_thumbprint_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateOpenIdConnectProviderThumbprintRequest
    extends UpdateOpenIdConnectProviderThumbprintRequest {
  @override
  final String openIdConnectProviderArn;
  @override
  final _i3.BuiltList<String> thumbprintList;

  factory _$UpdateOpenIdConnectProviderThumbprintRequest(
          [void Function(UpdateOpenIdConnectProviderThumbprintRequestBuilder)?
              updates]) =>
      (new UpdateOpenIdConnectProviderThumbprintRequestBuilder()
            ..update(updates))
          ._build();

  _$UpdateOpenIdConnectProviderThumbprintRequest._(
      {required this.openIdConnectProviderArn, required this.thumbprintList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        openIdConnectProviderArn,
        r'UpdateOpenIdConnectProviderThumbprintRequest',
        'openIdConnectProviderArn');
    BuiltValueNullFieldError.checkNotNull(thumbprintList,
        r'UpdateOpenIdConnectProviderThumbprintRequest', 'thumbprintList');
  }

  @override
  UpdateOpenIdConnectProviderThumbprintRequest rebuild(
          void Function(UpdateOpenIdConnectProviderThumbprintRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateOpenIdConnectProviderThumbprintRequestBuilder toBuilder() =>
      new UpdateOpenIdConnectProviderThumbprintRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateOpenIdConnectProviderThumbprintRequest &&
        openIdConnectProviderArn == other.openIdConnectProviderArn &&
        thumbprintList == other.thumbprintList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openIdConnectProviderArn.hashCode);
    _$hash = $jc(_$hash, thumbprintList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateOpenIdConnectProviderThumbprintRequestBuilder
    implements
        Builder<UpdateOpenIdConnectProviderThumbprintRequest,
            UpdateOpenIdConnectProviderThumbprintRequestBuilder> {
  _$UpdateOpenIdConnectProviderThumbprintRequest? _$v;

  String? _openIdConnectProviderArn;
  String? get openIdConnectProviderArn => _$this._openIdConnectProviderArn;
  set openIdConnectProviderArn(String? openIdConnectProviderArn) =>
      _$this._openIdConnectProviderArn = openIdConnectProviderArn;

  _i3.ListBuilder<String>? _thumbprintList;
  _i3.ListBuilder<String> get thumbprintList =>
      _$this._thumbprintList ??= new _i3.ListBuilder<String>();
  set thumbprintList(_i3.ListBuilder<String>? thumbprintList) =>
      _$this._thumbprintList = thumbprintList;

  UpdateOpenIdConnectProviderThumbprintRequestBuilder() {
    UpdateOpenIdConnectProviderThumbprintRequest._init(this);
  }

  UpdateOpenIdConnectProviderThumbprintRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderArn = $v.openIdConnectProviderArn;
      _thumbprintList = $v.thumbprintList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateOpenIdConnectProviderThumbprintRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateOpenIdConnectProviderThumbprintRequest;
  }

  @override
  void update(
      void Function(UpdateOpenIdConnectProviderThumbprintRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateOpenIdConnectProviderThumbprintRequest build() => _build();

  _$UpdateOpenIdConnectProviderThumbprintRequest _build() {
    _$UpdateOpenIdConnectProviderThumbprintRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateOpenIdConnectProviderThumbprintRequest._(
              openIdConnectProviderArn: BuiltValueNullFieldError.checkNotNull(
                  openIdConnectProviderArn,
                  r'UpdateOpenIdConnectProviderThumbprintRequest',
                  'openIdConnectProviderArn'),
              thumbprintList: thumbprintList.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'thumbprintList';
        thumbprintList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateOpenIdConnectProviderThumbprintRequest',
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
