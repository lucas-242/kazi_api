// import 'package:kazi_api/src/domain/entities/user.dart';

// class Permission {
//   const Permission({
//     required this.id,
//     required this.addManagers,
//     required this.addEmployees,
//     required this.readServicesForEmployees,
//     required this.addServicesForEmployees,
//     required this.updateServicesForEmployees,
//     required this.cancelServicesForEmployees,
//     required this.addServiceTypesForEmployees,
//     required this.readEmployeeReports,
//     required this.addServices,
//     required this.updateServices,
//     required this.cancelServices,
//     required this.addServiceTypes,
//     required this.readTotals,
//     required this.readReports,
//     required this.exportServices,
//   });

//   factory Permission.fromUserType(UserType userType) {
//     switch (userType) {
//       case UserType.admin:
//         return Permission.getAdministratorPermission();
//       case UserType.manager:
//         return Permission.getManagerPermission();
//       case UserType.selfEmployed:
//         return Permission.getSelfEmployedPermission();
//       case UserType.employee:
//         return Permission.getEmployeePermission();
//     }
//   }
//   final int id;
//   final bool addManagers;
//   final bool addEmployees;
//   final bool readServicesForEmployees;
//   final bool addServicesForEmployees;
//   final bool updateServicesForEmployees;
//   final bool cancelServicesForEmployees;
//   final bool addServiceTypesForEmployees;
//   final bool readEmployeeReports;
//   final bool addServices;
//   final bool updateServices;
//   final bool cancelServices;
//   final bool addServiceTypes;
//   final bool readTotals;
//   final bool readReports;
//   final bool exportServices;

//   static Permission getAdministratorPermission() {
//     return Permission(
//       id: 0,
//       addManagers: true,
//       addEmployees: true,
//       readServicesForEmployees: true,
//       addServicesForEmployees: true,
//       updateServicesForEmployees: true,
//       cancelServicesForEmployees: true,
//       addServiceTypesForEmployees: true,
//       readEmployeeReports: true,
//       addServices: true,
//       updateServices: true,
//       cancelServices: true,
//       addServiceTypes: true,
//       readTotals: true,
//       readReports: true,
//       exportServices: true,
//     );
//   }

//   static Permission getManagerPermission() {
//     return Permission(
//       id: 0,
//       addManagers: false,
//       addEmployees: true,
//       readServicesForEmployees: true,
//       addServicesForEmployees: true,
//       updateServicesForEmployees: true,
//       cancelServicesForEmployees: true,
//       addServiceTypesForEmployees: true,
//       readEmployeeReports: true,
//       addServices: true,
//       updateServices: true,
//       cancelServices: true,
//       addServiceTypes: true,
//       readTotals: true,
//       readReports: false,
//       exportServices: false,
//     );
//   }

//   static Permission getSelfEmployedPermission() {
//     return Permission(
//       id: 0,
//       addManagers: false,
//       addEmployees: false,
//       readServicesForEmployees: false,
//       addServicesForEmployees: false,
//       updateServicesForEmployees: false,
//       cancelServicesForEmployees: false,
//       addServiceTypesForEmployees: false,
//       readEmployeeReports: false,
//       addServices: true,
//       updateServices: true,
//       cancelServices: true,
//       addServiceTypes: true,
//       readTotals: true,
//       readReports: true,
//       exportServices: true,
//     );
//   }

//   static Permission getEmployeePermission() {
//     return Permission(
//       id: 0,
//       addManagers: false,
//       addEmployees: false,
//       readServicesForEmployees: false,
//       addServicesForEmployees: false,
//       updateServicesForEmployees: false,
//       cancelServicesForEmployees: false,
//       addServiceTypesForEmployees: false,
//       readEmployeeReports: false,
//       addServices: true,
//       updateServices: true,
//       cancelServices: true,
//       addServiceTypes: false,
//       readTotals: true,
//       readReports: true,
//       exportServices: false,
//     );
//   }

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Permission &&
//           runtimeType == other.runtimeType &&
//           id == other.id &&
//           addManagers == other.addManagers &&
//           addEmployees == other.addEmployees &&
//           readServicesForEmployees == other.readServicesForEmployees &&
//           addServicesForEmployees == other.addServicesForEmployees &&
//           updateServicesForEmployees == other.updateServicesForEmployees &&
//           cancelServicesForEmployees == other.cancelServicesForEmployees &&
//           addServiceTypesForEmployees == other.addServiceTypesForEmployees &&
//           readEmployeeReports == other.readEmployeeReports &&
//           addServices == other.addServices &&
//           updateServices == other.updateServices &&
//           cancelServices == other.cancelServices &&
//           addServiceTypes == other.addServiceTypes &&
//           readTotals == other.readTotals &&
//           readReports == other.readReports &&
//           exportServices == other.exportServices;

//   @override
//   int get hashCode =>
//       id.hashCode ^
//       addManagers.hashCode ^
//       addEmployees.hashCode ^
//       readServicesForEmployees.hashCode ^
//       addServicesForEmployees.hashCode ^
//       updateServicesForEmployees.hashCode ^
//       cancelServicesForEmployees.hashCode ^
//       addServiceTypesForEmployees.hashCode ^
//       readEmployeeReports.hashCode ^
//       addServices.hashCode ^
//       updateServices.hashCode ^
//       cancelServices.hashCode ^
//       addServiceTypes.hashCode ^
//       readTotals.hashCode ^
//       readReports.hashCode ^
//       exportServices.hashCode;
// }
