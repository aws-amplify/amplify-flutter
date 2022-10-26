// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.cancellation_reason;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancellationReason extends CancellationReason {
  @override
  final String? code;
  @override
  final _i3.BuiltMap<String, _i2.AttributeValue>? item;
  @override
  final String? message;

  factory _$CancellationReason(
          [void Function(CancellationReasonBuilder)? updates]) =>
      (new CancellationReasonBuilder()..update(updates))._build();

  _$CancellationReason._({this.code, this.item, this.message}) : super._();

  @override
  CancellationReason rebuild(
          void Function(CancellationReasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancellationReasonBuilder toBuilder() =>
      new CancellationReasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancellationReason &&
        code == other.code &&
        item == other.item &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, code.hashCode), item.hashCode), message.hashCode));
  }
}

class CancellationReasonBuilder
    implements Builder<CancellationReason, CancellationReasonBuilder> {
  _$CancellationReason? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  _i3.MapBuilder<String, _i2.AttributeValue>? _item;
  _i3.MapBuilder<String, _i2.AttributeValue> get item =>
      _$this._item ??= new _i3.MapBuilder<String, _i2.AttributeValue>();
  set item(_i3.MapBuilder<String, _i2.AttributeValue>? item) =>
      _$this._item = item;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CancellationReasonBuilder() {
    CancellationReason._init(this);
  }

  CancellationReasonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _item = $v.item?.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancellationReason other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancellationReason;
  }

  @override
  void update(void Function(CancellationReasonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancellationReason build() => _build();

  _$CancellationReason _build() {
    _$CancellationReason _$result;
    try {
      _$result = _$v ??
          new _$CancellationReason._(
              code: code, item: _item?.build(), message: message);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        _item?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancellationReason', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
