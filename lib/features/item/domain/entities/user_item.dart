class UserItem {
  final int id;
  final String title;
  final int claims;
  final bool hasImage;

  const UserItem({required this.id, required this.title, required this.claims, required this.hasImage});
}

enum ItemType { found, lost }
