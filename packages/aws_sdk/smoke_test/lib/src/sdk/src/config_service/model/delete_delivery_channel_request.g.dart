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
    return $jf($jc(0, deliveryChannelName.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
