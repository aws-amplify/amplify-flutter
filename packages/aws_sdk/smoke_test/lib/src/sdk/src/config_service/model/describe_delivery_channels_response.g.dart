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
    return $jf($jc(0, deliveryChannels.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
