import 'package:kazi_api/domain/entities/service_type_promotion.dart';

class Promotion {
  const Promotion({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    this.isActive = true,
    this.serviceTypePromotions = const [],
  });

  final int id;
  final String name;
  final DateTime startDate;
  final DateTime endDate;
  final bool isActive;
  final List<ServiceTypePromotion> serviceTypePromotions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Promotion &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          startDate == other.startDate &&
          endDate == other.endDate &&
          isActive == other.isActive &&
          serviceTypePromotions == other.serviceTypePromotions;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      isActive.hashCode ^
      serviceTypePromotions.hashCode;
}
