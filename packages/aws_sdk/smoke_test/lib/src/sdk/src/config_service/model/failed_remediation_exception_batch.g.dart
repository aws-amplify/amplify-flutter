// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failed_remediation_exception_batch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FailedRemediationExceptionBatch
    extends FailedRemediationExceptionBatch {
  @override
  final String? failureMessage;
  @override
  final _i3.BuiltList<_i2.RemediationException>? failedItems;

  factory _$FailedRemediationExceptionBatch(
          [void Function(FailedRemediationExceptionBatchBuilder)? updates]) =>
      (new FailedRemediationExceptionBatchBuilder()..update(updates))._build();

  _$FailedRemediationExceptionBatch._({this.failureMessage, this.failedItems})
      : super._();

  @override
  FailedRemediationExceptionBatch rebuild(
          void Function(FailedRemediationExceptionBatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FailedRemediationExceptionBatchBuilder toBuilder() =>
      new FailedRemediationExceptionBatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FailedRemediationExceptionBatch &&
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

class FailedRemediationExceptionBatchBuilder
    implements
        Builder<FailedRemediationExceptionBatch,
            FailedRemediationExceptionBatchBuilder> {
  _$FailedRemediationExceptionBatch? _$v;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  _i3.ListBuilder<_i2.RemediationException>? _failedItems;
  _i3.ListBuilder<_i2.RemediationException> get failedItems =>
      _$this._failedItems ??= new _i3.ListBuilder<_i2.RemediationException>();
  set failedItems(_i3.ListBuilder<_i2.RemediationException>? failedItems) =>
      _$this._failedItems = failedItems;

  FailedRemediationExceptionBatchBuilder();

  FailedRemediationExceptionBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failureMessage = $v.failureMessage;
      _failedItems = $v.failedItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FailedRemediationExceptionBatch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FailedRemediationExceptionBatch;
  }

  @override
  void update(void Function(FailedRemediationExceptionBatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FailedRemediationExceptionBatch build() => _build();

  _$FailedRemediationExceptionBatch _build() {
    _$FailedRemediationExceptionBatch _$result;
    try {
      _$result = _$v ??
          new _$FailedRemediationExceptionBatch._(
              failureMessage: failureMessage,
              failedItems: _failedItems?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedItems';
        _failedItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FailedRemediationExceptionBatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
