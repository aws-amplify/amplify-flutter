// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Initiator extends Initiator {
  @override
  final String? id;
  @override
  final String? displayName;

  factory _$Initiator([void Function(InitiatorBuilder)? updates]) =>
      (new InitiatorBuilder()..update(updates))._build();

  _$Initiator._({this.id, this.displayName}) : super._();

  @override
  Initiator rebuild(void Function(InitiatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitiatorBuilder toBuilder() => new InitiatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Initiator &&
        id == other.id &&
        displayName == other.displayName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InitiatorBuilder implements Builder<Initiator, InitiatorBuilder> {
  _$Initiator? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  InitiatorBuilder();

  InitiatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _displayName = $v.displayName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Initiator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Initiator;
  }

  @override
  void update(void Function(InitiatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Initiator build() => _build();

  _$Initiator _build() {
    final _$result = _$v ?? new _$Initiator._(id: id, displayName: displayName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
