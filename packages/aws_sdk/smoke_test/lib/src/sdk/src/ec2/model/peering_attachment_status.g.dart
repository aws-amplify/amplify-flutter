// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peering_attachment_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PeeringAttachmentStatus extends PeeringAttachmentStatus {
  @override
  final String? code;
  @override
  final String? message;

  factory _$PeeringAttachmentStatus(
          [void Function(PeeringAttachmentStatusBuilder)? updates]) =>
      (new PeeringAttachmentStatusBuilder()..update(updates))._build();

  _$PeeringAttachmentStatus._({this.code, this.message}) : super._();

  @override
  PeeringAttachmentStatus rebuild(
          void Function(PeeringAttachmentStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeeringAttachmentStatusBuilder toBuilder() =>
      new PeeringAttachmentStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeeringAttachmentStatus &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PeeringAttachmentStatusBuilder
    implements
        Builder<PeeringAttachmentStatus, PeeringAttachmentStatusBuilder> {
  _$PeeringAttachmentStatus? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  PeeringAttachmentStatusBuilder();

  PeeringAttachmentStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeeringAttachmentStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PeeringAttachmentStatus;
  }

  @override
  void update(void Function(PeeringAttachmentStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PeeringAttachmentStatus build() => _build();

  _$PeeringAttachmentStatus _build() {
    final _$result =
        _$v ?? new _$PeeringAttachmentStatus._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
