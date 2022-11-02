// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.source_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceDetail extends SourceDetail {
  @override
  final _i2.EventSource? eventSource;
  @override
  final _i3.MaximumExecutionFrequency? maximumExecutionFrequency;
  @override
  final _i4.MessageType? messageType;

  factory _$SourceDetail([void Function(SourceDetailBuilder)? updates]) =>
      (new SourceDetailBuilder()..update(updates))._build();

  _$SourceDetail._(
      {this.eventSource, this.maximumExecutionFrequency, this.messageType})
      : super._();

  @override
  SourceDetail rebuild(void Function(SourceDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceDetailBuilder toBuilder() => new SourceDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceDetail &&
        eventSource == other.eventSource &&
        maximumExecutionFrequency == other.maximumExecutionFrequency &&
        messageType == other.messageType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, eventSource.hashCode), maximumExecutionFrequency.hashCode),
        messageType.hashCode));
  }
}

class SourceDetailBuilder
    implements Builder<SourceDetail, SourceDetailBuilder> {
  _$SourceDetail? _$v;

  _i2.EventSource? _eventSource;
  _i2.EventSource? get eventSource => _$this._eventSource;
  set eventSource(_i2.EventSource? eventSource) =>
      _$this._eventSource = eventSource;

  _i3.MaximumExecutionFrequency? _maximumExecutionFrequency;
  _i3.MaximumExecutionFrequency? get maximumExecutionFrequency =>
      _$this._maximumExecutionFrequency;
  set maximumExecutionFrequency(
          _i3.MaximumExecutionFrequency? maximumExecutionFrequency) =>
      _$this._maximumExecutionFrequency = maximumExecutionFrequency;

  _i4.MessageType? _messageType;
  _i4.MessageType? get messageType => _$this._messageType;
  set messageType(_i4.MessageType? messageType) =>
      _$this._messageType = messageType;

  SourceDetailBuilder() {
    SourceDetail._init(this);
  }

  SourceDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventSource = $v.eventSource;
      _maximumExecutionFrequency = $v.maximumExecutionFrequency;
      _messageType = $v.messageType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SourceDetail;
  }

  @override
  void update(void Function(SourceDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceDetail build() => _build();

  _$SourceDetail _build() {
    final _$result = _$v ??
        new _$SourceDetail._(
            eventSource: eventSource,
            maximumExecutionFrequency: maximumExecutionFrequency,
            messageType: messageType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
