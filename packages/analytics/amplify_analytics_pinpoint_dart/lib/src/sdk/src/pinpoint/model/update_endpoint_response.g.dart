// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.update_endpoint_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateEndpointResponse extends UpdateEndpointResponse {
  @override
  final _i3.MessageBody messageBody;

  factory _$UpdateEndpointResponse(
          [void Function(UpdateEndpointResponseBuilder)? updates]) =>
      (new UpdateEndpointResponseBuilder()..update(updates))._build();

  _$UpdateEndpointResponse._({required this.messageBody}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        messageBody, r'UpdateEndpointResponse', 'messageBody');
  }

  @override
  UpdateEndpointResponse rebuild(
          void Function(UpdateEndpointResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateEndpointResponseBuilder toBuilder() =>
      new UpdateEndpointResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateEndpointResponse && messageBody == other.messageBody;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, messageBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateEndpointResponseBuilder
    implements Builder<UpdateEndpointResponse, UpdateEndpointResponseBuilder> {
  _$UpdateEndpointResponse? _$v;

  _i3.MessageBodyBuilder? _messageBody;
  _i3.MessageBodyBuilder get messageBody =>
      _$this._messageBody ??= new _i3.MessageBodyBuilder();
  set messageBody(_i3.MessageBodyBuilder? messageBody) =>
      _$this._messageBody = messageBody;

  UpdateEndpointResponseBuilder() {
    UpdateEndpointResponse._init(this);
  }

  UpdateEndpointResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageBody = $v.messageBody.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateEndpointResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateEndpointResponse;
  }

  @override
  void update(void Function(UpdateEndpointResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateEndpointResponse build() => _build();

  _$UpdateEndpointResponse _build() {
    _$UpdateEndpointResponse _$result;
    try {
      _$result = _$v ??
          new _$UpdateEndpointResponse._(messageBody: messageBody.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messageBody';
        messageBody.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateEndpointResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
