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
    return $jf($jc(0, deliveryChannelNames.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
