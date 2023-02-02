// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_delivery_channels_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeDeliveryChannelsResponse
    extends DescribeDeliveryChannelsResponse {
  @override
  final _i3.BuiltList<_i2.DeliveryChannel>? deliveryChannels;

  factory _$DescribeDeliveryChannelsResponse(
          [void Function(DescribeDeliveryChannelsResponseBuilder)? updates]) =>
      (new DescribeDeliveryChannelsResponseBuilder()..update(updates))._build();

  _$DescribeDeliveryChannelsResponse._({this.deliveryChannels}) : super._();

  @override
  DescribeDeliveryChannelsResponse rebuild(
          void Function(DescribeDeliveryChannelsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeDeliveryChannelsResponseBuilder toBuilder() =>
      new DescribeDeliveryChannelsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeDeliveryChannelsResponse &&
        deliveryChannels == other.deliveryChannels;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryChannels.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeDeliveryChannelsResponseBuilder
    implements
        Builder<DescribeDeliveryChannelsResponse,
            DescribeDeliveryChannelsResponseBuilder> {
  _$DescribeDeliveryChannelsResponse? _$v;

  _i3.ListBuilder<_i2.DeliveryChannel>? _deliveryChannels;
  _i3.ListBuilder<_i2.DeliveryChannel> get deliveryChannels =>
      _$this._deliveryChannels ??= new _i3.ListBuilder<_i2.DeliveryChannel>();
  set deliveryChannels(
          _i3.ListBuilder<_i2.DeliveryChannel>? deliveryChannels) =>
      _$this._deliveryChannels = deliveryChannels;

  DescribeDeliveryChannelsResponseBuilder() {
    DescribeDeliveryChannelsResponse._init(this);
  }

  DescribeDeliveryChannelsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryChannels = $v.deliveryChannels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeDeliveryChannelsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeDeliveryChannelsResponse;
  }

  @override
  void update(void Function(DescribeDeliveryChannelsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeDeliveryChannelsResponse build() => _build();

  _$DescribeDeliveryChannelsResponse _build() {
    _$DescribeDeliveryChannelsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeDeliveryChannelsResponse._(
              deliveryChannels: _deliveryChannels?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryChannels';
        _deliveryChannels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeDeliveryChannelsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
