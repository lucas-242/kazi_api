class Phone {
  const Phone({
    required this.id,
    required this.phoneNumber,
    this.companyId,
    this.userId,
  });

  final int id;
  final String phoneNumber;
  final int? companyId;
  final int? userId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Phone &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          phoneNumber == other.phoneNumber &&
          companyId == other.companyId &&
          userId == other.userId;

  @override
  int get hashCode =>
      id.hashCode ^ phoneNumber.hashCode ^ companyId.hashCode ^ userId.hashCode;
}
