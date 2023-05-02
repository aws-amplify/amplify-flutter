// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.list_type_registrations_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTypeRegistrationsOutput extends ListTypeRegistrationsOutput {
  @override
  final _i2.BuiltList<String>? registrationTokenList;
  @override
  final String? nextToken;

  factory _$ListTypeRegistrationsOutput(
          [void Function(ListTypeRegistrationsOutputBuilder)? updates]) =>
      (new ListTypeRegistrationsOutputBuilder()..update(updates))._build();

  _$ListTypeRegistrationsOutput._({this.registrationTokenList, this.nextToken})
      : super._();

  @override
  ListTypeRegistrationsOutput rebuild(
          void Function(ListTypeRegistrationsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTypeRegistrationsOutputBuilder toBuilder() =>
      new ListTypeRegistrationsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTypeRegistrationsOutput &&
        registrationTokenList == other.registrationTokenList &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, registrationTokenList.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTypeRegistrationsOutputBuilder
    implements
        Builder<ListTypeRegistrationsOutput,
            ListTypeRegistrationsOutputBuilder> {
  _$ListTypeRegistrationsOutput? _$v;

  _i2.ListBuilder<String>? _registrationTokenList;
  _i2.ListBuilder<String> get registrationTokenList =>
      _$this._registrationTokenList ??= new _i2.ListBuilder<String>();
  set registrationTokenList(_i2.ListBuilder<String>? registrationTokenList) =>
      _$this._registrationTokenList = registrationTokenList;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListTypeRegistrationsOutputBuilder() {
    ListTypeRegistrationsOutput._init(this);
  }

  ListTypeRegistrationsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _registrationTokenList = $v.registrationTokenList?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTypeRegistrationsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTypeRegistrationsOutput;
  }

  @override
  void update(void Function(ListTypeRegistrationsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTypeRegistrationsOutput build() => _build();

  _$ListTypeRegistrationsOutput _build() {
    _$ListTypeRegistrationsOutput _$result;
    try {
      _$result = _$v ??
          new _$ListTypeRegistrationsOutput._(
              registrationTokenList: _registrationTokenList?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'registrationTokenList';
        _registrationTokenList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListTypeRegistrationsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
