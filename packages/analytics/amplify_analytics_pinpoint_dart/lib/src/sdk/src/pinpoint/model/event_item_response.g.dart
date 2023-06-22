// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_item_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventItemResponse extends EventItemResponse {
  @override
  final String? message;
  @override
  final int? statusCode;

  factory _$EventItemResponse(
          [void Function(EventItemResponseBuilder)? updates]) =>
      (new EventItemResponseBuilder()..update(updates))._build();

  _$EventItemResponse._({this.message, this.statusCode}) : super._();

  @override
  EventItemResponse rebuild(void Function(EventItemResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventItemResponseBuilder toBuilder() =>
      new EventItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventItemResponse &&
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

class EventItemResponseBuilder
    implements Builder<EventItemResponse, EventItemResponseBuilder> {
  _$EventItemResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  EventItemResponseBuilder() {
    EventItemResponse._init(this);
  }

  EventItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventItemResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventItemResponse;
  }

  @override
  void update(void Function(EventItemResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventItemResponse build() => _build();

  _$EventItemResponse _build() {
    final _$result = _$v ??
        new _$EventItemResponse._(message: message, statusCode: statusCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
