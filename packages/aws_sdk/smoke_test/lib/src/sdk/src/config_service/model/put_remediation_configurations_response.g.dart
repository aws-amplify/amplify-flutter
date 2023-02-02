// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_remediation_configurations_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRemediationConfigurationsResponse
    extends PutRemediationConfigurationsResponse {
  @override
  final _i3.BuiltList<_i2.FailedRemediationBatch>? failedBatches;

  factory _$PutRemediationConfigurationsResponse(
          [void Function(PutRemediationConfigurationsResponseBuilder)?
              updates]) =>
      (new PutRemediationConfigurationsResponseBuilder()..update(updates))
          ._build();

  _$PutRemediationConfigurationsResponse._({this.failedBatches}) : super._();

  @override
  PutRemediationConfigurationsResponse rebuild(
          void Function(PutRemediationConfigurationsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRemediationConfigurationsResponseBuilder toBuilder() =>
      new PutRemediationConfigurationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRemediationConfigurationsResponse &&
        failedBatches == other.failedBatches;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failedBatches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRemediationConfigurationsResponseBuilder
    implements
        Builder<PutRemediationConfigurationsResponse,
            PutRemediationConfigurationsResponseBuilder> {
  _$PutRemediationConfigurationsResponse? _$v;

  _i3.ListBuilder<_i2.FailedRemediationBatch>? _failedBatches;
  _i3.ListBuilder<_i2.FailedRemediationBatch> get failedBatches =>
      _$this._failedBatches ??=
          new _i3.ListBuilder<_i2.FailedRemediationBatch>();
  set failedBatches(
          _i3.ListBuilder<_i2.FailedRemediationBatch>? failedBatches) =>
      _$this._failedBatches = failedBatches;

  PutRemediationConfigurationsResponseBuilder() {
    PutRemediationConfigurationsResponse._init(this);
  }

  PutRemediationConfigurationsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedBatches = $v.failedBatches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRemediationConfigurationsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRemediationConfigurationsResponse;
  }

  @override
  void update(
      void Function(PutRemediationConfigurationsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRemediationConfigurationsResponse build() => _build();

  _$PutRemediationConfigurationsResponse _build() {
    _$PutRemediationConfigurationsResponse _$result;
    try {
      _$result = _$v ??
          new _$PutRemediationConfigurationsResponse._(
              failedBatches: _failedBatches?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedBatches';
        _failedBatches?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRemediationConfigurationsResponse',
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
