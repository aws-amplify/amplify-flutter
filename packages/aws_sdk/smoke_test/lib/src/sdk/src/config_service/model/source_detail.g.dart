// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceDetail extends SourceDetail {
  @override
  final EventSource? eventSource;
  @override
  final MessageType? messageType;
  @override
  final MaximumExecutionFrequency? maximumExecutionFrequency;

  factory _$SourceDetail([void Function(SourceDetailBuilder)? updates]) =>
      (new SourceDetailBuilder()..update(updates))._build();

  _$SourceDetail._(
      {this.eventSource, this.messageType, this.maximumExecutionFrequency})
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
        messageType == other.messageType &&
        maximumExecutionFrequency == other.maximumExecutionFrequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventSource.hashCode);
    _$hash = $jc(_$hash, messageType.hashCode);
    _$hash = $jc(_$hash, maximumExecutionFrequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SourceDetailBuilder
    implements Builder<SourceDetail, SourceDetailBuilder> {
  _$SourceDetail? _$v;

  EventSource? _eventSource;
  EventSource? get eventSource => _$this._eventSource;
  set eventSource(EventSource? eventSource) =>
      _$this._eventSource = eventSource;

  MessageType? _messageType;
  MessageType? get messageType => _$this._messageType;
  set messageType(MessageType? messageType) =>
      _$this._messageType = messageType;

  MaximumExecutionFrequency? _maximumExecutionFrequency;
  MaximumExecutionFrequency? get maximumExecutionFrequency =>
      _$this._maximumExecutionFrequency;
  set maximumExecutionFrequency(
          MaximumExecutionFrequency? maximumExecutionFrequency) =>
      _$this._maximumExecutionFrequency = maximumExecutionFrequency;

  SourceDetailBuilder();

  SourceDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventSource = $v.eventSource;
      _messageType = $v.messageType;
      _maximumExecutionFrequency = $v.maximumExecutionFrequency;
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
            messageType: messageType,
            maximumExecutionFrequency: maximumExecutionFrequency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint