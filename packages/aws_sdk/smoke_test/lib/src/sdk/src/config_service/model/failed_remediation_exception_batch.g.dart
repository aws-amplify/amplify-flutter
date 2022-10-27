// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.failed_remediation_exception_batch;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FailedRemediationExceptionBatch
    extends FailedRemediationExceptionBatch {
  @override
  final _i3.BuiltList<_i2.RemediationException>? failedItems;
  @override
  final String? failureMessage;

  factory _$FailedRemediationExceptionBatch(
          [void Function(FailedRemediationExceptionBatchBuilder)? updates]) =>
      (new FailedRemediationExceptionBatchBuilder()..update(updates))._build();

  _$FailedRemediationExceptionBatch._({this.failedItems, this.failureMessage})
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
        failedItems == other.failedItems &&
        failureMessage == other.failureMessage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, failedItems.hashCode), failureMessage.hashCode));
  }
}

class FailedRemediationExceptionBatchBuilder
    implements
        Builder<FailedRemediationExceptionBatch,
            FailedRemediationExceptionBatchBuilder> {
  _$FailedRemediationExceptionBatch? _$v;

  _i3.ListBuilder<_i2.RemediationException>? _failedItems;
  _i3.ListBuilder<_i2.RemediationException> get failedItems =>
      _$this._failedItems ??= new _i3.ListBuilder<_i2.RemediationException>();
  set failedItems(_i3.ListBuilder<_i2.RemediationException>? failedItems) =>
      _$this._failedItems = failedItems;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  FailedRemediationExceptionBatchBuilder() {
    FailedRemediationExceptionBatch._init(this);
  }

  FailedRemediationExceptionBatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedItems = $v.failedItems?.toBuilder();
      _failureMessage = $v.failureMessage;
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
              failedItems: _failedItems?.build(),
              failureMessage: failureMessage);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
