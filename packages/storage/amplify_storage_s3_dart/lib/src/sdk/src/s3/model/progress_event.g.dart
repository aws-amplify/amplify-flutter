// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.progress_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProgressEvent extends ProgressEvent {
  @override
  final _i2.Progress? details;

  factory _$ProgressEvent([void Function(ProgressEventBuilder)? updates]) =>
      (new ProgressEventBuilder()..update(updates))._build();

  _$ProgressEvent._({this.details}) : super._();

  @override
  ProgressEvent rebuild(void Function(ProgressEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressEventBuilder toBuilder() => new ProgressEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProgressEvent && details == other.details;
  }

  @override
  int get hashCode {
    return $jf($jc(0, details.hashCode));
  }
}

class ProgressEventBuilder
    implements Builder<ProgressEvent, ProgressEventBuilder> {
  _$ProgressEvent? _$v;

  _i2.ProgressBuilder? _details;
  _i2.ProgressBuilder get details =>
      _$this._details ??= new _i2.ProgressBuilder();
  set details(_i2.ProgressBuilder? details) => _$this._details = details;

  ProgressEventBuilder() {
    ProgressEvent._init(this);
  }

  ProgressEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgressEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProgressEvent;
  }

  @override
  void update(void Function(ProgressEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProgressEvent build() => _build();

  _$ProgressEvent _build() {
    _$ProgressEvent _$result;
    try {
      _$result = _$v ?? new _$ProgressEvent._(details: _details?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProgressEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
