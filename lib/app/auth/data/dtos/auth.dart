import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@JsonSerializable()
class SignInDTO extends Equatable {
  const SignInDTO();

  factory SignInDTO.fromJson(Map<String, dynamic> json) => _$SignInDTOFromJson(json);

  @override
  List<Object?> get props {
    return [];
  }

  Map<String, dynamic> toJson() => _$SignInDTOToJson(this);
}

@JsonSerializable()
class SignUpDTO extends Equatable {
  const SignUpDTO();

  factory SignUpDTO.fromJson(Map<String, dynamic> json) => _$SignUpDTOFromJson(json);

  @override
  List<Object?> get props {
    return [];
  }

  Map<String, dynamic> toJson() => _$SignUpDTOToJson(this);
}

@JsonSerializable()
class SignOutDTO extends Equatable {
  const SignOutDTO();

  factory SignOutDTO.fromJson(Map<String, dynamic> json) => _$SignOutDTOFromJson(json);

  @override
  List<Object?> get props {
    return [];
  }

  Map<String, dynamic> toJson() => _$SignOutDTOToJson(this);
}
