// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.failed_remediation_batch;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FailedRemediationBatch extends FailedRemediationBatch {
  @override
  final String? failureMessage;
  @override
  final _i3.BuiltList<_i2.RemediationConfiguration>? failedItems;

  factory _$FailedRemediationBatch(
          [void Function(FailedRemediationBatchBuilder)? updates]) =>
      (new FailedRemediationBatchBuilder()..update(updates))._build();

  _$FailedRemediationBatch._({this.failureMessage, this.failedItems})
      : super._();

  @override
  FailedRemediationBatch rebuild(
          void Function(FailedRemediationBatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FailedRemediationBatchBuilder toBuilder() =>
      new FailedRemediationBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FailedRemediationBatch &&
        failureMessage == other.failureMessage &&
        failedItems == other.failedItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failureMessage.hashCode);
    _$hash = $jc(_$hash, failedItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FailedRemediationBatchBuilder
    implements Builder<FailedRemediationBatch, FailedRemediationBatchBuilder> {
  _$FailedRemediationBatch? _$v;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  _i3.ListBuilder<_i2.RemediationConfiguration>? _failedItems;
  _i3.ListBuilder<_i2.RemediationConfiguration> get failedItems =>
      _$this._failedItems ??=
          new _i3.ListBuilder<_i2.RemediationConfiguration>();
  set failedItems(_i3.ListBuilder<_i2.RemediationConfiguration>? failedItems) =>
      _$this._failedItems = failedItems;

  FailedRemediationBatchBuilder() {
    FailedRemediationBatch._init(this);
  }

  FailedRemediationBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failureMessage = $v.failureMessage;
      _failedItems = $v.failedItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FailedRemediationBatch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FailedRemediationBatch;
  }

  @override
  void update(void Function(FailedRemediationBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FailedRemediationBatch build() => _build();

  _$FailedRemediationBatch _build() {
    _$FailedRemediationBatch _$result;
    try {
      _$result = _$v ??
          new _$FailedRemediationBatch._(
              failureMessage: failureMessage,
              failedItems: _failedItems?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedItems';
        _failedItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FailedRemediationBatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
