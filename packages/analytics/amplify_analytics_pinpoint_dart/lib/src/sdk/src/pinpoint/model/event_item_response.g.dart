// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.event_item_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventItemResponse extends EventItemResponse {
  @override
  final String? message;
  @override
  final int statusCode;

  factory _$EventItemResponse(
          [void Function(EventItemResponseBuilder)? updates]) =>
      (new EventItemResponseBuilder()..update(updates))._build();

  _$EventItemResponse._({this.message, required this.statusCode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        statusCode, r'EventItemResponse', 'statusCode');
  }

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
    return $jf($jc($jc(0, message.hashCode), statusCode.hashCode));
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
        new _$EventItemResponse._(
            message: message,
            statusCode: BuiltValueNullFieldError.checkNotNull(
                statusCode, r'EventItemResponse', 'statusCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
