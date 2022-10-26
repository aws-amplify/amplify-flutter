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
    return $jf($jc(0, deliveryChannelsStatus.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
