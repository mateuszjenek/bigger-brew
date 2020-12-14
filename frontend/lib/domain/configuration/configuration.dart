import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration.freezed.dart';

@freezed
abstract class Configuration with _$Configuration {
  const factory Configuration({
    @required bool isOfflineMode,
  }) = _Configuration;

  factory Configuration.initial() => Configuration(
        isOfflineMode: false,
      );
}
