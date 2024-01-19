import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account extends Equatable {
  final String id;

  const Account({
    required this.id,
  });

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

  @override
  List<Object?> get props {
    return [id];
  }

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
