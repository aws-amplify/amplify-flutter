// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_endpoints_batch_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateEndpointsBatchResponse extends UpdateEndpointsBatchResponse {
  @override
  final MessageBody messageBody;

  factory _$UpdateEndpointsBatchResponse(
          [void Function(UpdateEndpointsBatchResponseBuilder)? updates]) =>
      (new UpdateEndpointsBatchResponseBuilder()..update(updates))._build();

  _$UpdateEndpointsBatchResponse._({required this.messageBody}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        messageBody, r'UpdateEndpointsBatchResponse', 'messageBody');
  }

  @override
  UpdateEndpointsBatchResponse rebuild(
          void Function(UpdateEndpointsBatchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateEndpointsBatchResponseBuilder toBuilder() =>
      new UpdateEndpointsBatchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateEndpointsBatchResponse &&
        messageBody == other.messageBody;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, messageBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateEndpointsBatchResponseBuilder
    implements
        Builder<UpdateEndpointsBatchResponse,
            UpdateEndpointsBatchResponseBuilder> {
  _$UpdateEndpointsBatchResponse? _$v;

  MessageBodyBuilder? _messageBody;
  MessageBodyBuilder get messageBody =>
      _$this._messageBody ??= new MessageBodyBuilder();
  set messageBody(MessageBodyBuilder? messageBody) =>
      _$this._messageBody = messageBody;

  UpdateEndpointsBatchResponseBuilder();

  UpdateEndpointsBatchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageBody = $v.messageBody.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateEndpointsBatchResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateEndpointsBatchResponse;
  }

  @override
  void update(void Function(UpdateEndpointsBatchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateEndpointsBatchResponse build() => _build();

  _$UpdateEndpointsBatchResponse _build() {
    _$UpdateEndpointsBatchResponse _$result;
    try {
      _$result = _$v ??
          new _$UpdateEndpointsBatchResponse._(
              messageBody: messageBody.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messageBody';
        messageBody.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateEndpointsBatchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
