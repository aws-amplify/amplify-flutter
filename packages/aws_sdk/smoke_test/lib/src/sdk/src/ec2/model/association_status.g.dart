// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'association_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociationStatus extends AssociationStatus {
  @override
  final AssociationStatusCode? code;
  @override
  final String? message;

  factory _$AssociationStatus(
          [void Function(AssociationStatusBuilder)? updates]) =>
      (new AssociationStatusBuilder()..update(updates))._build();

  _$AssociationStatus._({this.code, this.message}) : super._();

  @override
  AssociationStatus rebuild(void Function(AssociationStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociationStatusBuilder toBuilder() =>
      new AssociationStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociationStatus &&
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

class AssociationStatusBuilder
    implements Builder<AssociationStatus, AssociationStatusBuilder> {
  _$AssociationStatus? _$v;

  AssociationStatusCode? _code;
  AssociationStatusCode? get code => _$this._code;
  set code(AssociationStatusCode? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AssociationStatusBuilder();

  AssociationStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociationStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociationStatus;
  }

  @override
  void update(void Function(AssociationStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociationStatus build() => _build();

  _$AssociationStatus _build() {
    final _$result =
        _$v ?? new _$AssociationStatus._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
