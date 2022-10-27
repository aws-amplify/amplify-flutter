// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_delivery_channel_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutDeliveryChannelRequest extends PutDeliveryChannelRequest {
  @override
  final _i3.DeliveryChannel deliveryChannel;

  factory _$PutDeliveryChannelRequest(
          [void Function(PutDeliveryChannelRequestBuilder)? updates]) =>
      (new PutDeliveryChannelRequestBuilder()..update(updates))._build();

  _$PutDeliveryChannelRequest._({required this.deliveryChannel}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deliveryChannel, r'PutDeliveryChannelRequest', 'deliveryChannel');
  }

  @override
  PutDeliveryChannelRequest rebuild(
          void Function(PutDeliveryChannelRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutDeliveryChannelRequestBuilder toBuilder() =>
      new PutDeliveryChannelRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutDeliveryChannelRequest &&
        deliveryChannel == other.deliveryChannel;
  }

  @override
  int get hashCode {
    return $jf($jc(0, deliveryChannel.hashCode));
  }
}

class PutDeliveryChannelRequestBuilder
    implements
        Builder<PutDeliveryChannelRequest, PutDeliveryChannelRequestBuilder> {
  _$PutDeliveryChannelRequest? _$v;

  _i3.DeliveryChannelBuilder? _deliveryChannel;
  _i3.DeliveryChannelBuilder get deliveryChannel =>
      _$this._deliveryChannel ??= new _i3.DeliveryChannelBuilder();
  set deliveryChannel(_i3.DeliveryChannelBuilder? deliveryChannel) =>
      _$this._deliveryChannel = deliveryChannel;

  PutDeliveryChannelRequestBuilder() {
    PutDeliveryChannelRequest._init(this);
  }

  PutDeliveryChannelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryChannel = $v.deliveryChannel.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutDeliveryChannelRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutDeliveryChannelRequest;
  }

  @override
  void update(void Function(PutDeliveryChannelRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutDeliveryChannelRequest build() => _build();

  _$PutDeliveryChannelRequest _build() {
    _$PutDeliveryChannelRequest _$result;
    try {
      _$result = _$v ??
          new _$PutDeliveryChannelRequest._(
              deliveryChannel: deliveryChannel.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryChannel';
        deliveryChannel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutDeliveryChannelRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
