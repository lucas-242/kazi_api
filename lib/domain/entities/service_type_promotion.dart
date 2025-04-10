import 'package:kazi_api/domain/entities/promotion.dart';
import 'package:kazi_api/domain/entities/service_type.dart';

class ServiceTypePromotion {
  const ServiceTypePromotion({
    required this.id,
    required this.value,
    required this.promotionId,
    this.promotion,
    required this.serviceTypeId,
    this.serviceType,
  });

  final int id;
  final double value;
  final int promotionId;
  final Promotion? promotion;
  final int serviceTypeId;
  final ServiceType? serviceType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceTypePromotion &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          value == other.value &&
          promotionId == other.promotionId &&
          promotion == other.promotion &&
          serviceTypeId == other.serviceTypeId &&
          serviceType == other.serviceType;

  @override
  int get hashCode =>
      id.hashCode ^
      value.hashCode ^
      promotionId.hashCode ^
      promotion.hashCode ^
      serviceTypeId.hashCode ^
      serviceType.hashCode;
}
