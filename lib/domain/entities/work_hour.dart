import 'package:kazi_api/domain/entities/company.dart';
import 'package:kazi_api/domain/entities/user.dart';

class WorkHour {
  const WorkHour({
    required this.id,
    required this.day,
    required this.startTime,
    required this.endTime,
    this.companyId,
    this.company,
    this.userId,
    this.user,
  });

  final int id;
  final int day;
  final DateTime startTime;
  final DateTime endTime;
  final int? companyId;
  final Company? company;
  final int? userId;
  final User? user;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkHour &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          day == other.day &&
          startTime == other.startTime &&
          endTime == other.endTime &&
          companyId == other.companyId &&
          company == other.company &&
          userId == other.userId &&
          user == other.user;

  @override
  int get hashCode =>
      id.hashCode ^
      day.hashCode ^
      startTime.hashCode ^
      endTime.hashCode ^
      companyId.hashCode ^
      company.hashCode ^
      userId.hashCode ^
      user.hashCode;
}
