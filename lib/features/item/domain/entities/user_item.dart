class UserItem {
  final int id;
  final String title;
  final int claims;
  final int approvedClaims;
  final bool hasImage;

  const UserItem({
    required this.id,
    required this.title,
    required this.claims,
    required this.hasImage,
    required this.approvedClaims,
  });
}

enum ItemType { found, lost }
