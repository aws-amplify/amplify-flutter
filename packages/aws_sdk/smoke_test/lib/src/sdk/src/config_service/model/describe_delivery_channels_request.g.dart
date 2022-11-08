// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_delivery_channels_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeDeliveryChannelsRequest
    extends DescribeDeliveryChannelsRequest {
  @override
  final _i3.BuiltList<String>? deliveryChannelNames;

  factory _$DescribeDeliveryChannelsRequest(
          [void Function(DescribeDeliveryChannelsRequestBuilder)? updates]) =>
      (new DescribeDeliveryChannelsRequestBuilder()..update(updates))._build();

  _$DescribeDeliveryChannelsRequest._({this.deliveryChannelNames}) : super._();

  @override
  DescribeDeliveryChannelsRequest rebuild(
          void Function(DescribeDeliveryChannelsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeDeliveryChannelsRequestBuilder toBuilder() =>
      new DescribeDeliveryChannelsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeDeliveryChannelsRequest &&
        deliveryChannelNames == other.deliveryChannelNames;
  }

  @override
  int get hashCode {
    return $jf($jc(0, deliveryChannelNames.hashCode));
  }
}

class DescribeDeliveryChannelsRequestBuilder
    implements
        Builder<DescribeDeliveryChannelsRequest,
            DescribeDeliveryChannelsRequestBuilder> {
  _$DescribeDeliveryChannelsRequest? _$v;

  _i3.ListBuilder<String>? _deliveryChannelNames;
  _i3.ListBuilder<String> get deliveryChannelNames =>
      _$this._deliveryChannelNames ??= new _i3.ListBuilder<String>();
  set deliveryChannelNames(_i3.ListBuilder<String>? deliveryChannelNames) =>
      _$this._deliveryChannelNames = deliveryChannelNames;

  DescribeDeliveryChannelsRequestBuilder() {
    DescribeDeliveryChannelsRequest._init(this);
  }

  DescribeDeliveryChannelsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryChannelNames = $v.deliveryChannelNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeDeliveryChannelsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeDeliveryChannelsRequest;
  }

  @override
  void update(void Function(DescribeDeliveryChannelsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeDeliveryChannelsRequest build() => _build();

  _$DescribeDeliveryChannelsRequest _build() {
    _$DescribeDeliveryChannelsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeDeliveryChannelsRequest._(
              deliveryChannelNames: _deliveryChannelNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryChannelNames';
        _deliveryChannelNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeDeliveryChannelsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
