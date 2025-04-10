import 'package:kazi_api/domain/entities/company.dart';
import 'package:kazi_api/domain/entities/user.dart';

class SpecialWorkHour {
  const SpecialWorkHour({
    required this.id,
    required this.date,
    required this.startTime,
    required this.endTime,
    this.companyId,
    this.company,
    this.userId,
    this.user,
  });

  final int id;
  final DateTime date;
  final DateTime startTime;
  final DateTime endTime;
  final int? companyId;
  final Company? company;
  final int? userId;
  final User? user;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpecialWorkHour &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          date == other.date &&
          startTime == other.startTime &&
          endTime == other.endTime &&
          companyId == other.companyId &&
          company == other.company &&
          userId == other.userId &&
          user == other.user;

  @override
  int get hashCode =>
      id.hashCode ^
      date.hashCode ^
      startTime.hashCode ^
      endTime.hashCode ^
      companyId.hashCode ^
      company.hashCode ^
      userId.hashCode ^
      user.hashCode;
}
