// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_delivery_channel_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteDeliveryChannelRequest extends DeleteDeliveryChannelRequest {
  @override
  final String deliveryChannelName;

  factory _$DeleteDeliveryChannelRequest(
          [void Function(DeleteDeliveryChannelRequestBuilder)? updates]) =>
      (new DeleteDeliveryChannelRequestBuilder()..update(updates))._build();

  _$DeleteDeliveryChannelRequest._({required this.deliveryChannelName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deliveryChannelName,
        r'DeleteDeliveryChannelRequest', 'deliveryChannelName');
  }

  @override
  DeleteDeliveryChannelRequest rebuild(
          void Function(DeleteDeliveryChannelRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDeliveryChannelRequestBuilder toBuilder() =>
      new DeleteDeliveryChannelRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDeliveryChannelRequest &&
        deliveryChannelName == other.deliveryChannelName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryChannelName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteDeliveryChannelRequestBuilder
    implements
        Builder<DeleteDeliveryChannelRequest,
            DeleteDeliveryChannelRequestBuilder> {
  _$DeleteDeliveryChannelRequest? _$v;

  String? _deliveryChannelName;
  String? get deliveryChannelName => _$this._deliveryChannelName;
  set deliveryChannelName(String? deliveryChannelName) =>
      _$this._deliveryChannelName = deliveryChannelName;

  DeleteDeliveryChannelRequestBuilder() {
    DeleteDeliveryChannelRequest._init(this);
  }

  DeleteDeliveryChannelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryChannelName = $v.deliveryChannelName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteDeliveryChannelRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDeliveryChannelRequest;
  }

  @override
  void update(void Function(DeleteDeliveryChannelRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDeliveryChannelRequest build() => _build();

  _$DeleteDeliveryChannelRequest _build() {
    final _$result = _$v ??
        new _$DeleteDeliveryChannelRequest._(
            deliveryChannelName: BuiltValueNullFieldError.checkNotNull(
                deliveryChannelName,
                r'DeleteDeliveryChannelRequest',
                'deliveryChannelName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
