// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.sdk_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SdkResponse extends SdkResponse {
  @override
  final _i3.Uint8List? body;
  @override
  final String? contentDisposition;
  @override
  final String? contentType;

  factory _$SdkResponse([void Function(SdkResponseBuilder)? updates]) =>
      (new SdkResponseBuilder()..update(updates))._build();

  _$SdkResponse._({this.body, this.contentDisposition, this.contentType})
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
        body == other.body &&
        contentDisposition == other.contentDisposition &&
        contentType == other.contentType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, contentDisposition.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SdkResponseBuilder implements Builder<SdkResponse, SdkResponseBuilder> {
  _$SdkResponse? _$v;

  _i3.Uint8List? _body;
  _i3.Uint8List? get body => _$this._body;
  set body(_i3.Uint8List? body) => _$this._body = body;

  String? _contentDisposition;
  String? get contentDisposition => _$this._contentDisposition;
  set contentDisposition(String? contentDisposition) =>
      _$this._contentDisposition = contentDisposition;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  SdkResponseBuilder() {
    SdkResponse._init(this);
  }

  SdkResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _body = $v.body;
      _contentDisposition = $v.contentDisposition;
      _contentType = $v.contentType;
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
            body: body,
            contentDisposition: contentDisposition,
            contentType: contentType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
