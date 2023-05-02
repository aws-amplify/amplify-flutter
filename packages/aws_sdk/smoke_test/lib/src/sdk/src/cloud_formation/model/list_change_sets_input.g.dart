// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_change_sets_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListChangeSetsInput extends ListChangeSetsInput {
  @override
  final String stackName;
  @override
  final String? nextToken;

  factory _$ListChangeSetsInput(
          [void Function(ListChangeSetsInputBuilder)? updates]) =>
      (new ListChangeSetsInputBuilder()..update(updates))._build();

  _$ListChangeSetsInput._({required this.stackName, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'ListChangeSetsInput', 'stackName');
  }

  @override
  ListChangeSetsInput rebuild(
          void Function(ListChangeSetsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListChangeSetsInputBuilder toBuilder() =>
      new ListChangeSetsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListChangeSetsInput &&
        stackName == other.stackName &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListChangeSetsInputBuilder
    implements Builder<ListChangeSetsInput, ListChangeSetsInputBuilder> {
  _$ListChangeSetsInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListChangeSetsInputBuilder() {
    ListChangeSetsInput._init(this);
  }

  ListChangeSetsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListChangeSetsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListChangeSetsInput;
  }

  @override
  void update(void Function(ListChangeSetsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListChangeSetsInput build() => _build();

  _$ListChangeSetsInput _build() {
    final _$result = _$v ??
        new _$ListChangeSetsInput._(
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'ListChangeSetsInput', 'stackName'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
