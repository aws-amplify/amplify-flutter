// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_delivery_channel_status_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeDeliveryChannelStatusRequest
    extends DescribeDeliveryChannelStatusRequest {
  @override
  final _i3.BuiltList<String>? deliveryChannelNames;

  factory _$DescribeDeliveryChannelStatusRequest(
          [void Function(DescribeDeliveryChannelStatusRequestBuilder)?
              updates]) =>
      (new DescribeDeliveryChannelStatusRequestBuilder()..update(updates))
          ._build();

  _$DescribeDeliveryChannelStatusRequest._({this.deliveryChannelNames})
      : super._();

  @override
  DescribeDeliveryChannelStatusRequest rebuild(
          void Function(DescribeDeliveryChannelStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeDeliveryChannelStatusRequestBuilder toBuilder() =>
      new DescribeDeliveryChannelStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeDeliveryChannelStatusRequest &&
        deliveryChannelNames == other.deliveryChannelNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deliveryChannelNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeDeliveryChannelStatusRequestBuilder
    implements
        Builder<DescribeDeliveryChannelStatusRequest,
            DescribeDeliveryChannelStatusRequestBuilder> {
  _$DescribeDeliveryChannelStatusRequest? _$v;

  _i3.ListBuilder<String>? _deliveryChannelNames;
  _i3.ListBuilder<String> get deliveryChannelNames =>
      _$this._deliveryChannelNames ??= new _i3.ListBuilder<String>();
  set deliveryChannelNames(_i3.ListBuilder<String>? deliveryChannelNames) =>
      _$this._deliveryChannelNames = deliveryChannelNames;

  DescribeDeliveryChannelStatusRequestBuilder() {
    DescribeDeliveryChannelStatusRequest._init(this);
  }

  DescribeDeliveryChannelStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryChannelNames = $v.deliveryChannelNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeDeliveryChannelStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeDeliveryChannelStatusRequest;
  }

  @override
  void update(
      void Function(DescribeDeliveryChannelStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeDeliveryChannelStatusRequest build() => _build();

  _$DescribeDeliveryChannelStatusRequest _build() {
    _$DescribeDeliveryChannelStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeDeliveryChannelStatusRequest._(
              deliveryChannelNames: _deliveryChannelNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryChannelNames';
        _deliveryChannelNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeDeliveryChannelStatusRequest',
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
