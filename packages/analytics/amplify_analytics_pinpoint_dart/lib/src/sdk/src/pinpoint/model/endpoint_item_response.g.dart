// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_item_response;

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
    return $jf($jc($jc(0, message.hashCode), statusCode.hashCode));
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

  EndpointItemResponseBuilder() {
    EndpointItemResponse._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
