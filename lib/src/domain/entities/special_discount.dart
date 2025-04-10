// import 'package:kazi_api/src/domain/entities/service_type.dart';
// import 'package:kazi_api/src/domain/entities/user.dart';

// class SpecialDiscount {
//   const SpecialDiscount({
//     required this.id,
//     required this.discountValue,
//     required this.serviceTypeId,
//     this.serviceType,
//     required this.userId,
//     this.user,
//   });

//   final int id;
//   final double discountValue;
//   final int serviceTypeId;
//   final ServiceType? serviceType;
//   final int userId;
//   final User? user;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is SpecialDiscount &&
//           runtimeType == other.runtimeType &&
//           id == other.id &&
//           discountValue == other.discountValue &&
//           serviceTypeId == other.serviceTypeId &&
//           serviceType == other.serviceType &&
//           userId == other.userId &&
//           user == other.user;

//   @override
//   int get hashCode =>
//       id.hashCode ^
//       discountValue.hashCode ^
//       serviceTypeId.hashCode ^
//       serviceType.hashCode ^
//       userId.hashCode ^
//       user.hashCode;
// }
