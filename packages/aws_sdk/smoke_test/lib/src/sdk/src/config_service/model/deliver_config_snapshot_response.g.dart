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
    var _$hash = 0;
    _$hash = $jc(_$hash, configSnapshotId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
