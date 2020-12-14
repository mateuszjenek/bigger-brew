import 'package:bigger_brew/domain/configuration/configuration.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration_dto.freezed.dart';
part 'configuration_dto.g.dart';

@freezed
abstract class ConfigurationDto with _$ConfigurationDto {
  const factory ConfigurationDto({
    @required bool isOfflineMode,
  }) = _ConfigurationDto;

  factory ConfigurationDto.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationDtoFromJson(json);
}

extension ConfigurationDtoX on ConfigurationDto {
  Configuration toDomain() {
    return Configuration(
      isOfflineMode: isOfflineMode,
    );
  }
}
