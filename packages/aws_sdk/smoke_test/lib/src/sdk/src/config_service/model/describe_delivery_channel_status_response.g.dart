// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_delivery_channel_status_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeDeliveryChannelStatusResponse
    extends DescribeDeliveryChannelStatusResponse {
  @override
  final _i3.BuiltList<_i2.DeliveryChannelStatus>? deliveryChannelsStatus;

  factory _$DescribeDeliveryChannelStatusResponse(
          [void Function(DescribeDeliveryChannelStatusResponseBuilder)?
              updates]) =>
      (new DescribeDeliveryChannelStatusResponseBuilder()..update(updates))
          ._build();

  _$DescribeDeliveryChannelStatusResponse._({this.deliveryChannelsStatus})
      : super._();

  @override
  DescribeDeliveryChannelStatusResponse rebuild(
          void Function(DescribeDeliveryChannelStatusResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeDeliveryChannelStatusResponseBuilder toBuilder() =>
      new DescribeDeliveryChannelStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeDeliveryChannelStatusResponse &&
        deliveryChannelsStatus == other.deliveryChannelsStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryChannelsStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeDeliveryChannelStatusResponseBuilder
    implements
        Builder<DescribeDeliveryChannelStatusResponse,
            DescribeDeliveryChannelStatusResponseBuilder> {
  _$DescribeDeliveryChannelStatusResponse? _$v;

  _i3.ListBuilder<_i2.DeliveryChannelStatus>? _deliveryChannelsStatus;
  _i3.ListBuilder<_i2.DeliveryChannelStatus> get deliveryChannelsStatus =>
      _$this._deliveryChannelsStatus ??=
          new _i3.ListBuilder<_i2.DeliveryChannelStatus>();
  set deliveryChannelsStatus(
          _i3.ListBuilder<_i2.DeliveryChannelStatus>? deliveryChannelsStatus) =>
      _$this._deliveryChannelsStatus = deliveryChannelsStatus;

  DescribeDeliveryChannelStatusResponseBuilder() {
    DescribeDeliveryChannelStatusResponse._init(this);
  }

  DescribeDeliveryChannelStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryChannelsStatus = $v.deliveryChannelsStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeDeliveryChannelStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeDeliveryChannelStatusResponse;
  }

  @override
  void update(
      void Function(DescribeDeliveryChannelStatusResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeDeliveryChannelStatusResponse build() => _build();

  _$DescribeDeliveryChannelStatusResponse _build() {
    _$DescribeDeliveryChannelStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeDeliveryChannelStatusResponse._(
              deliveryChannelsStatus: _deliveryChannelsStatus?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryChannelsStatus';
        _deliveryChannelsStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeDeliveryChannelStatusResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
