// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.initiator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Initiator extends Initiator {
  @override
  final String? displayName;
  @override
  final String? id;

  factory _$Initiator([void Function(InitiatorBuilder)? updates]) =>
      (new InitiatorBuilder()..update(updates))._build();

  _$Initiator._({this.displayName, this.id}) : super._();

  @override
  Initiator rebuild(void Function(InitiatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitiatorBuilder toBuilder() => new InitiatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Initiator &&
        displayName == other.displayName &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, displayName.hashCode), id.hashCode));
  }
}

class InitiatorBuilder implements Builder<Initiator, InitiatorBuilder> {
  _$Initiator? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  InitiatorBuilder() {
    Initiator._init(this);
  }

  InitiatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _id = $v.id;
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
    final _$result = _$v ?? new _$Initiator._(displayName: displayName, id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
