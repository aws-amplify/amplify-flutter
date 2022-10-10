// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.deliver_config_snapshot_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliverConfigSnapshotResponse extends DeliverConfigSnapshotResponse {
  @override
  final String? configSnapshotId;

  factory _$DeliverConfigSnapshotResponse(
          [void Function(DeliverConfigSnapshotResponseBuilder)? updates]) =>
      (new DeliverConfigSnapshotResponseBuilder()..update(updates))._build();

  _$DeliverConfigSnapshotResponse._({this.configSnapshotId}) : super._();

  @override
  DeliverConfigSnapshotResponse rebuild(
          void Function(DeliverConfigSnapshotResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliverConfigSnapshotResponseBuilder toBuilder() =>
      new DeliverConfigSnapshotResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliverConfigSnapshotResponse &&
        configSnapshotId == other.configSnapshotId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, configSnapshotId.hashCode));
  }
}

class DeliverConfigSnapshotResponseBuilder
    implements
        Builder<DeliverConfigSnapshotResponse,
            DeliverConfigSnapshotResponseBuilder> {
  _$DeliverConfigSnapshotResponse? _$v;

  String? _configSnapshotId;
  String? get configSnapshotId => _$this._configSnapshotId;
  set configSnapshotId(String? configSnapshotId) =>
      _$this._configSnapshotId = configSnapshotId;

  DeliverConfigSnapshotResponseBuilder() {
    DeliverConfigSnapshotResponse._init(this);
  }

  DeliverConfigSnapshotResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configSnapshotId = $v.configSnapshotId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliverConfigSnapshotResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeliverConfigSnapshotResponse;
  }

  @override
  void update(void Function(DeliverConfigSnapshotResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliverConfigSnapshotResponse build() => _build();

  _$DeliverConfigSnapshotResponse _build() {
    final _$result = _$v ??
        new _$DeliverConfigSnapshotResponse._(
            configSnapshotId: configSnapshotId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
