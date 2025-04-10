class Email {
  const Email({
    required this.id,
    required this.emailAddress,
    this.userId,
    this.companyId,
  });

  final int id;
  final String emailAddress;
  final int? userId;
  final int? companyId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Email &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          emailAddress == other.emailAddress &&
          userId == other.userId &&
          companyId == other.companyId;

  @override
  int get hashCode =>
      id.hashCode ^
      emailAddress.hashCode ^
      userId.hashCode ^
      companyId.hashCode;
}
