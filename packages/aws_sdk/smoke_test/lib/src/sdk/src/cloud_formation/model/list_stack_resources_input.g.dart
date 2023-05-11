// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stack_resources_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStackResourcesInput extends ListStackResourcesInput {
  @override
  final String stackName;
  @override
  final String? nextToken;

  factory _$ListStackResourcesInput(
          [void Function(ListStackResourcesInputBuilder)? updates]) =>
      (new ListStackResourcesInputBuilder()..update(updates))._build();

  _$ListStackResourcesInput._({required this.stackName, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        stackName, r'ListStackResourcesInput', 'stackName');
  }

  @override
  ListStackResourcesInput rebuild(
          void Function(ListStackResourcesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStackResourcesInputBuilder toBuilder() =>
      new ListStackResourcesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStackResourcesInput &&
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

class ListStackResourcesInputBuilder
    implements
        Builder<ListStackResourcesInput, ListStackResourcesInputBuilder> {
  _$ListStackResourcesInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListStackResourcesInputBuilder() {
    ListStackResourcesInput._init(this);
  }

  ListStackResourcesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStackResourcesInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStackResourcesInput;
  }

  @override
  void update(void Function(ListStackResourcesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStackResourcesInput build() => _build();

  _$ListStackResourcesInput _build() {
    final _$result = _$v ??
        new _$ListStackResourcesInput._(
            stackName: BuiltValueNullFieldError.checkNotNull(
                stackName, r'ListStackResourcesInput', 'stackName'),
            nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
