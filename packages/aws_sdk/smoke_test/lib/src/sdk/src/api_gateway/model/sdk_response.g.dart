// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.sdk_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SdkResponse extends SdkResponse {
  @override
  final String? contentType;
  @override
  final String? contentDisposition;
  @override
  final _i3.Uint8List? body;

  factory _$SdkResponse([void Function(SdkResponseBuilder)? updates]) =>
      (new SdkResponseBuilder()..update(updates))._build();

  _$SdkResponse._({this.contentType, this.contentDisposition, this.body})
      : super._();

  @override
  SdkResponse rebuild(void Function(SdkResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SdkResponseBuilder toBuilder() => new SdkResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SdkResponse &&
        contentType == other.contentType &&
        contentDisposition == other.contentDisposition &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, contentDisposition.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SdkResponseBuilder implements Builder<SdkResponse, SdkResponseBuilder> {
  _$SdkResponse? _$v;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  String? _contentDisposition;
  String? get contentDisposition => _$this._contentDisposition;
  set contentDisposition(String? contentDisposition) =>
      _$this._contentDisposition = contentDisposition;

  _i3.Uint8List? _body;
  _i3.Uint8List? get body => _$this._body;
  set body(_i3.Uint8List? body) => _$this._body = body;

  SdkResponseBuilder() {
    SdkResponse._init(this);
  }

  SdkResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contentType = $v.contentType;
      _contentDisposition = $v.contentDisposition;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SdkResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SdkResponse;
  }

  @override
  void update(void Function(SdkResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SdkResponse build() => _build();

  _$SdkResponse _build() {
    final _$result = _$v ??
        new _$SdkResponse._(
            contentType: contentType,
            contentDisposition: contentDisposition,
            body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
