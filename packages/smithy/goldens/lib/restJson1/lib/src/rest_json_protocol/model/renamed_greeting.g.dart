// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.renamed_greeting;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RenamedGreeting extends RenamedGreeting {
  @override
  final String? salutation;

  factory _$RenamedGreeting([void Function(RenamedGreetingBuilder)? updates]) =>
      (new RenamedGreetingBuilder()..update(updates))._build();

  _$RenamedGreeting._({this.salutation}) : super._();

  @override
  RenamedGreeting rebuild(void Function(RenamedGreetingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RenamedGreetingBuilder toBuilder() =>
      new RenamedGreetingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RenamedGreeting && salutation == other.salutation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, salutation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RenamedGreetingBuilder
    implements Builder<RenamedGreeting, RenamedGreetingBuilder> {
  _$RenamedGreeting? _$v;

  String? _salutation;
  String? get salutation => _$this._salutation;
  set salutation(String? salutation) => _$this._salutation = salutation;

  RenamedGreetingBuilder() {
    RenamedGreeting._init(this);
  }

  RenamedGreetingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _salutation = $v.salutation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RenamedGreeting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RenamedGreeting;
  }

  @override
  void update(void Function(RenamedGreetingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RenamedGreeting build() => _build();

  _$RenamedGreeting _build() {
    final _$result = _$v ?? new _$RenamedGreeting._(salutation: salutation);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
