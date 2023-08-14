// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instance_status_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceStatusEvent extends InstanceStatusEvent {
  @override
  final String? instanceEventId;
  @override
  final EventCode? code;
  @override
  final String? description;
  @override
  final DateTime? notAfter;
  @override
  final DateTime? notBefore;
  @override
  final DateTime? notBeforeDeadline;

  factory _$InstanceStatusEvent(
          [void Function(InstanceStatusEventBuilder)? updates]) =>
      (new InstanceStatusEventBuilder()..update(updates))._build();

  _$InstanceStatusEvent._(
      {this.instanceEventId,
      this.code,
      this.description,
      this.notAfter,
      this.notBefore,
      this.notBeforeDeadline})
      : super._();

  @override
  InstanceStatusEvent rebuild(
          void Function(InstanceStatusEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceStatusEventBuilder toBuilder() =>
      new InstanceStatusEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceStatusEvent &&
        instanceEventId == other.instanceEventId &&
        code == other.code &&
        description == other.description &&
        notAfter == other.notAfter &&
        notBefore == other.notBefore &&
        notBeforeDeadline == other.notBeforeDeadline;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceEventId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, notAfter.hashCode);
    _$hash = $jc(_$hash, notBefore.hashCode);
    _$hash = $jc(_$hash, notBeforeDeadline.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceStatusEventBuilder
    implements Builder<InstanceStatusEvent, InstanceStatusEventBuilder> {
  _$InstanceStatusEvent? _$v;

  String? _instanceEventId;
  String? get instanceEventId => _$this._instanceEventId;
  set instanceEventId(String? instanceEventId) =>
      _$this._instanceEventId = instanceEventId;

  EventCode? _code;
  EventCode? get code => _$this._code;
  set code(EventCode? code) => _$this._code = code;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _notAfter;
  DateTime? get notAfter => _$this._notAfter;
  set notAfter(DateTime? notAfter) => _$this._notAfter = notAfter;

  DateTime? _notBefore;
  DateTime? get notBefore => _$this._notBefore;
  set notBefore(DateTime? notBefore) => _$this._notBefore = notBefore;

  DateTime? _notBeforeDeadline;
  DateTime? get notBeforeDeadline => _$this._notBeforeDeadline;
  set notBeforeDeadline(DateTime? notBeforeDeadline) =>
      _$this._notBeforeDeadline = notBeforeDeadline;

  InstanceStatusEventBuilder();

  InstanceStatusEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceEventId = $v.instanceEventId;
      _code = $v.code;
      _description = $v.description;
      _notAfter = $v.notAfter;
      _notBefore = $v.notBefore;
      _notBeforeDeadline = $v.notBeforeDeadline;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceStatusEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceStatusEvent;
  }

  @override
  void update(void Function(InstanceStatusEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceStatusEvent build() => _build();

  _$InstanceStatusEvent _build() {
    final _$result = _$v ??
        new _$InstanceStatusEvent._(
            instanceEventId: instanceEventId,
            code: code,
            description: description,
            notAfter: notAfter,
            notBefore: notBefore,
            notBeforeDeadline: notBeforeDeadline);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
