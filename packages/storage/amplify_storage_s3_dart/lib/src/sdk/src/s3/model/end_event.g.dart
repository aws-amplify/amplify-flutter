// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.end_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndEvent extends EndEvent {
  factory _$EndEvent([void Function(EndEventBuilder)? updates]) =>
      (new EndEventBuilder()..update(updates))._build();

  _$EndEvent._() : super._();

  @override
  EndEvent rebuild(void Function(EndEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndEventBuilder toBuilder() => new EndEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndEvent;
  }

  @override
  int get hashCode {
    return 663471014;
  }
}

class EndEventBuilder implements Builder<EndEvent, EndEventBuilder> {
  _$EndEvent? _$v;

  EndEventBuilder() {
    EndEvent._init(this);
  }

  @override
  void replace(EndEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndEvent;
  }

  @override
  void update(void Function(EndEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndEvent build() => _build();

  _$EndEvent _build() {
    final _$result = _$v ?? new _$EndEvent._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
