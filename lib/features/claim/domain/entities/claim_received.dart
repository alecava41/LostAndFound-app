class ClaimReceived {
  final int id;
  final Item item;
  final User user;
  bool opened;

  ClaimReceived({
    required this.id,
    required this.item,
    required this.user,
    required this.opened,
  });
}

class Item {
  final int id;
  final String title;

  Item({required this.id, required this.title});
}

class User {
  final int id;
  final String username;

  User({required this.id, required this.username});
}
