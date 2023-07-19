// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_item_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointItemResponse extends EndpointItemResponse {
  @override
  final String? message;
  @override
  final int? statusCode;

  factory _$EndpointItemResponse(
          [void Function(EndpointItemResponseBuilder)? updates]) =>
      (new EndpointItemResponseBuilder()..update(updates))._build();

  _$EndpointItemResponse._({this.message, this.statusCode}) : super._();

  @override
  EndpointItemResponse rebuild(
          void Function(EndpointItemResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointItemResponseBuilder toBuilder() =>
      new EndpointItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointItemResponse &&
        message == other.message &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EndpointItemResponseBuilder
    implements Builder<EndpointItemResponse, EndpointItemResponseBuilder> {
  _$EndpointItemResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  EndpointItemResponseBuilder();

  EndpointItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointItemResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointItemResponse;
  }

  @override
  void update(void Function(EndpointItemResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointItemResponse build() => _build();

  _$EndpointItemResponse _build() {
    final _$result = _$v ??
        new _$EndpointItemResponse._(message: message, statusCode: statusCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
