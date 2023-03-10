// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.intelligent_tiering_and_operator;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntelligentTieringAndOperator extends IntelligentTieringAndOperator {
  @override
  final String? prefix;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;

  factory _$IntelligentTieringAndOperator(
          [void Function(IntelligentTieringAndOperatorBuilder)? updates]) =>
      (new IntelligentTieringAndOperatorBuilder()..update(updates))._build();

  _$IntelligentTieringAndOperator._({this.prefix, this.tags}) : super._();

  @override
  IntelligentTieringAndOperator rebuild(
          void Function(IntelligentTieringAndOperatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntelligentTieringAndOperatorBuilder toBuilder() =>
      new IntelligentTieringAndOperatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntelligentTieringAndOperator &&
        prefix == other.prefix &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefix.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IntelligentTieringAndOperatorBuilder
    implements
        Builder<IntelligentTieringAndOperator,
            IntelligentTieringAndOperatorBuilder> {
  _$IntelligentTieringAndOperator? _$v;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  IntelligentTieringAndOperatorBuilder() {
    IntelligentTieringAndOperator._init(this);
  }

  IntelligentTieringAndOperatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefix = $v.prefix;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntelligentTieringAndOperator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IntelligentTieringAndOperator;
  }

  @override
  void update(void Function(IntelligentTieringAndOperatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntelligentTieringAndOperator build() => _build();

  _$IntelligentTieringAndOperator _build() {
    _$IntelligentTieringAndOperator _$result;
    try {
      _$result = _$v ??
          new _$IntelligentTieringAndOperator._(
              prefix: prefix, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IntelligentTieringAndOperator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
