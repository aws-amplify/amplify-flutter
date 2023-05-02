// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_stacks_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStacksInput extends ListStacksInput {
  @override
  final String? nextToken;
  @override
  final _i4.BuiltList<_i3.StackStatus>? stackStatusFilter;

  factory _$ListStacksInput([void Function(ListStacksInputBuilder)? updates]) =>
      (new ListStacksInputBuilder()..update(updates))._build();

  _$ListStacksInput._({this.nextToken, this.stackStatusFilter}) : super._();

  @override
  ListStacksInput rebuild(void Function(ListStacksInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStacksInputBuilder toBuilder() =>
      new ListStacksInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStacksInput &&
        nextToken == other.nextToken &&
        stackStatusFilter == other.stackStatusFilter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, stackStatusFilter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStacksInputBuilder
    implements Builder<ListStacksInput, ListStacksInputBuilder> {
  _$ListStacksInput? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ListBuilder<_i3.StackStatus>? _stackStatusFilter;
  _i4.ListBuilder<_i3.StackStatus> get stackStatusFilter =>
      _$this._stackStatusFilter ??= new _i4.ListBuilder<_i3.StackStatus>();
  set stackStatusFilter(_i4.ListBuilder<_i3.StackStatus>? stackStatusFilter) =>
      _$this._stackStatusFilter = stackStatusFilter;

  ListStacksInputBuilder() {
    ListStacksInput._init(this);
  }

  ListStacksInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _stackStatusFilter = $v.stackStatusFilter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStacksInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStacksInput;
  }

  @override
  void update(void Function(ListStacksInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStacksInput build() => _build();

  _$ListStacksInput _build() {
    _$ListStacksInput _$result;
    try {
      _$result = _$v ??
          new _$ListStacksInput._(
              nextToken: nextToken,
              stackStatusFilter: _stackStatusFilter?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stackStatusFilter';
        _stackStatusFilter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListStacksInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
