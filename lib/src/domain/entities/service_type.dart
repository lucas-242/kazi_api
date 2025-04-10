import 'package:kazi_api/src/domain/entities/service.dart';
import 'package:kazi_api/src/domain/entities/user.dart';

class ServiceType {
  const ServiceType({
    required this.id,
    required this.name,
    required this.defaultValue,
    required this.discountValue,
    required this.performanceTime,
    this.isActive = true,
    // this.companyId,
    // this.company,
    this.userId,
    this.user,
    // this.specialDiscounts = const [],
    // this.serviceTypePromotions = const [],
    this.services = const [],
  });

  final int id;
  final String name;
  final double defaultValue;
  final double discountValue;
  final int performanceTime;
  final bool isActive;
  // final int? companyId;
  // final Company? company;
  final int? userId;
  final User? user;
  // final List<SpecialDiscount> specialDiscounts;
  // final List<ServiceTypePromotion> serviceTypePromotions;
  final List<Service> services;

  double get discountPercent {
    if (defaultValue == 0) return 0;
    return (discountValue / defaultValue) * 100;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceType &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          defaultValue == other.defaultValue &&
          discountValue == other.discountValue &&
          performanceTime == other.performanceTime &&
          isActive == other.isActive &&
          // companyId == other.companyId &&
          // company == other.company &&
          userId == other.userId &&
          user == other.user &&
          // specialDiscounts == other.specialDiscounts &&
          // serviceTypePromotions == other.serviceTypePromotions &&
          services == other.services;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      defaultValue.hashCode ^
      discountValue.hashCode ^
      performanceTime.hashCode ^
      isActive.hashCode ^
      // companyId.hashCode ^
      // company.hashCode ^
      userId.hashCode ^
      user.hashCode ^
      // specialDiscounts.hashCode ^
      // serviceTypePromotions.hashCode ^
      services.hashCode;
}
