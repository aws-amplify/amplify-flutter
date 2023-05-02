// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.start_remediation_execution_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartRemediationExecutionResponse
    extends StartRemediationExecutionResponse {
  @override
  final String? failureMessage;
  @override
  final _i3.BuiltList<_i2.ResourceKey>? failedItems;

  factory _$StartRemediationExecutionResponse(
          [void Function(StartRemediationExecutionResponseBuilder)? updates]) =>
      (new StartRemediationExecutionResponseBuilder()..update(updates))
          ._build();

  _$StartRemediationExecutionResponse._({this.failureMessage, this.failedItems})
      : super._();

  @override
  StartRemediationExecutionResponse rebuild(
          void Function(StartRemediationExecutionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartRemediationExecutionResponseBuilder toBuilder() =>
      new StartRemediationExecutionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartRemediationExecutionResponse &&
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

class StartRemediationExecutionResponseBuilder
    implements
        Builder<StartRemediationExecutionResponse,
            StartRemediationExecutionResponseBuilder> {
  _$StartRemediationExecutionResponse? _$v;

  String? _failureMessage;
  String? get failureMessage => _$this._failureMessage;
  set failureMessage(String? failureMessage) =>
      _$this._failureMessage = failureMessage;

  _i3.ListBuilder<_i2.ResourceKey>? _failedItems;
  _i3.ListBuilder<_i2.ResourceKey> get failedItems =>
      _$this._failedItems ??= new _i3.ListBuilder<_i2.ResourceKey>();
  set failedItems(_i3.ListBuilder<_i2.ResourceKey>? failedItems) =>
      _$this._failedItems = failedItems;

  StartRemediationExecutionResponseBuilder() {
    StartRemediationExecutionResponse._init(this);
  }

  StartRemediationExecutionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failureMessage = $v.failureMessage;
      _failedItems = $v.failedItems?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartRemediationExecutionResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartRemediationExecutionResponse;
  }

  @override
  void update(
      void Function(StartRemediationExecutionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartRemediationExecutionResponse build() => _build();

  _$StartRemediationExecutionResponse _build() {
    _$StartRemediationExecutionResponse _$result;
    try {
      _$result = _$v ??
          new _$StartRemediationExecutionResponse._(
              failureMessage: failureMessage,
              failedItems: _failedItems?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedItems';
        _failedItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartRemediationExecutionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
