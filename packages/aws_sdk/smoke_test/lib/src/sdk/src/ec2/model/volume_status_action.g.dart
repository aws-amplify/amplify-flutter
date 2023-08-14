// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_status_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VolumeStatusAction extends VolumeStatusAction {
  @override
  final String? code;
  @override
  final String? description;
  @override
  final String? eventId;
  @override
  final String? eventType;

  factory _$VolumeStatusAction(
          [void Function(VolumeStatusActionBuilder)? updates]) =>
      (new VolumeStatusActionBuilder()..update(updates))._build();

  _$VolumeStatusAction._(
      {this.code, this.description, this.eventId, this.eventType})
      : super._();

  @override
  VolumeStatusAction rebuild(
          void Function(VolumeStatusActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeStatusActionBuilder toBuilder() =>
      new VolumeStatusActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeStatusAction &&
        code == other.code &&
        description == other.description &&
        eventId == other.eventId &&
        eventType == other.eventType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VolumeStatusActionBuilder
    implements Builder<VolumeStatusAction, VolumeStatusActionBuilder> {
  _$VolumeStatusAction? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _eventType;
  String? get eventType => _$this._eventType;
  set eventType(String? eventType) => _$this._eventType = eventType;

  VolumeStatusActionBuilder();

  VolumeStatusActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _description = $v.description;
      _eventId = $v.eventId;
      _eventType = $v.eventType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeStatusAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VolumeStatusAction;
  }

  @override
  void update(void Function(VolumeStatusActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VolumeStatusAction build() => _build();

  _$VolumeStatusAction _build() {
    final _$result = _$v ??
        new _$VolumeStatusAction._(
            code: code,
            description: description,
            eventId: eventId,
            eventType: eventType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
