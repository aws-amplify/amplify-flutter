// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_event_notification_attributes_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceEventNotificationAttributesRequest
    extends DescribeInstanceEventNotificationAttributesRequest {
  @override
  final bool dryRun;

  factory _$DescribeInstanceEventNotificationAttributesRequest(
          [void Function(
                  DescribeInstanceEventNotificationAttributesRequestBuilder)?
              updates]) =>
      (new DescribeInstanceEventNotificationAttributesRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeInstanceEventNotificationAttributesRequest._({required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'DescribeInstanceEventNotificationAttributesRequest', 'dryRun');
  }

  @override
  DescribeInstanceEventNotificationAttributesRequest rebuild(
          void Function(
                  DescribeInstanceEventNotificationAttributesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceEventNotificationAttributesRequestBuilder toBuilder() =>
      new DescribeInstanceEventNotificationAttributesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceEventNotificationAttributesRequest &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceEventNotificationAttributesRequestBuilder
    implements
        Builder<DescribeInstanceEventNotificationAttributesRequest,
            DescribeInstanceEventNotificationAttributesRequestBuilder> {
  _$DescribeInstanceEventNotificationAttributesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeInstanceEventNotificationAttributesRequestBuilder() {
    DescribeInstanceEventNotificationAttributesRequest._init(this);
  }

  DescribeInstanceEventNotificationAttributesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceEventNotificationAttributesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceEventNotificationAttributesRequest;
  }

  @override
  void update(
      void Function(DescribeInstanceEventNotificationAttributesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceEventNotificationAttributesRequest build() => _build();

  _$DescribeInstanceEventNotificationAttributesRequest _build() {
    final _$result = _$v ??
        new _$DescribeInstanceEventNotificationAttributesRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'DescribeInstanceEventNotificationAttributesRequest',
                'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
