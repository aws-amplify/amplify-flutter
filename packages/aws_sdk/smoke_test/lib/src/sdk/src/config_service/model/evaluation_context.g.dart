// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluationContext extends EvaluationContext {
  @override
  final String? evaluationContextIdentifier;

  factory _$EvaluationContext(
          [void Function(EvaluationContextBuilder)? updates]) =>
      (new EvaluationContextBuilder()..update(updates))._build();

  _$EvaluationContext._({this.evaluationContextIdentifier}) : super._();

  @override
  EvaluationContext rebuild(void Function(EvaluationContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluationContextBuilder toBuilder() =>
      new EvaluationContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvaluationContext &&
        evaluationContextIdentifier == other.evaluationContextIdentifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, evaluationContextIdentifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EvaluationContextBuilder
    implements Builder<EvaluationContext, EvaluationContextBuilder> {
  _$EvaluationContext? _$v;

  String? _evaluationContextIdentifier;
  String? get evaluationContextIdentifier =>
      _$this._evaluationContextIdentifier;
  set evaluationContextIdentifier(String? evaluationContextIdentifier) =>
      _$this._evaluationContextIdentifier = evaluationContextIdentifier;

  EvaluationContextBuilder() {
    EvaluationContext._init(this);
  }

  EvaluationContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _evaluationContextIdentifier = $v.evaluationContextIdentifier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvaluationContext other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EvaluationContext;
  }

  @override
  void update(void Function(EvaluationContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvaluationContext build() => _build();

  _$EvaluationContext _build() {
    final _$result = _$v ??
        new _$EvaluationContext._(
            evaluationContextIdentifier: evaluationContextIdentifier);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
