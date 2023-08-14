// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternate_path_hint.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlternatePathHint extends AlternatePathHint {
  @override
  final String? componentId;
  @override
  final String? componentArn;

  factory _$AlternatePathHint(
          [void Function(AlternatePathHintBuilder)? updates]) =>
      (new AlternatePathHintBuilder()..update(updates))._build();

  _$AlternatePathHint._({this.componentId, this.componentArn}) : super._();

  @override
  AlternatePathHint rebuild(void Function(AlternatePathHintBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternatePathHintBuilder toBuilder() =>
      new AlternatePathHintBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlternatePathHint &&
        componentId == other.componentId &&
        componentArn == other.componentArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, componentId.hashCode);
    _$hash = $jc(_$hash, componentArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AlternatePathHintBuilder
    implements Builder<AlternatePathHint, AlternatePathHintBuilder> {
  _$AlternatePathHint? _$v;

  String? _componentId;
  String? get componentId => _$this._componentId;
  set componentId(String? componentId) => _$this._componentId = componentId;

  String? _componentArn;
  String? get componentArn => _$this._componentArn;
  set componentArn(String? componentArn) => _$this._componentArn = componentArn;

  AlternatePathHintBuilder();

  AlternatePathHintBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _componentId = $v.componentId;
      _componentArn = $v.componentArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternatePathHint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlternatePathHint;
  }

  @override
  void update(void Function(AlternatePathHintBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlternatePathHint build() => _build();

  _$AlternatePathHint _build() {
    final _$result = _$v ??
        new _$AlternatePathHint._(
            componentId: componentId, componentArn: componentArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
