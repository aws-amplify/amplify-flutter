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
    var _$hash = 0;
    _$hash = $jc(_$hash, eventSource.hashCode);
    _$hash = $jc(_$hash, maximumExecutionFrequency.hashCode);
    _$hash = $jc(_$hash, messageType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
