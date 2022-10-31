// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.deliver_config_snapshot_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliverConfigSnapshotRequest extends DeliverConfigSnapshotRequest {
  @override
  final String deliveryChannelName;

  factory _$DeliverConfigSnapshotRequest(
          [void Function(DeliverConfigSnapshotRequestBuilder)? updates]) =>
      (new DeliverConfigSnapshotRequestBuilder()..update(updates))._build();

  _$DeliverConfigSnapshotRequest._({required this.deliveryChannelName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(deliveryChannelName,
        r'DeliverConfigSnapshotRequest', 'deliveryChannelName');
  }

  @override
  DeliverConfigSnapshotRequest rebuild(
          void Function(DeliverConfigSnapshotRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliverConfigSnapshotRequestBuilder toBuilder() =>
      new DeliverConfigSnapshotRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliverConfigSnapshotRequest &&
        deliveryChannelName == other.deliveryChannelName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, deliveryChannelName.hashCode));
  }
}

class DeliverConfigSnapshotRequestBuilder
    implements
        Builder<DeliverConfigSnapshotRequest,
            DeliverConfigSnapshotRequestBuilder> {
  _$DeliverConfigSnapshotRequest? _$v;

  String? _deliveryChannelName;
  String? get deliveryChannelName => _$this._deliveryChannelName;
  set deliveryChannelName(String? deliveryChannelName) =>
      _$this._deliveryChannelName = deliveryChannelName;

  DeliverConfigSnapshotRequestBuilder() {
    DeliverConfigSnapshotRequest._init(this);
  }

  DeliverConfigSnapshotRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deliveryChannelName = $v.deliveryChannelName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliverConfigSnapshotRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeliverConfigSnapshotRequest;
  }

  @override
  void update(void Function(DeliverConfigSnapshotRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliverConfigSnapshotRequest build() => _build();

  _$DeliverConfigSnapshotRequest _build() {
    final _$result = _$v ??
        new _$DeliverConfigSnapshotRequest._(
            deliveryChannelName: BuiltValueNullFieldError.checkNotNull(
                deliveryChannelName,
                r'DeliverConfigSnapshotRequest',
                'deliveryChannelName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
