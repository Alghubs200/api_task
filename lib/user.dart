class User {
  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.address});
  final int id;
  final String name;
  final String email;

  final Address address;
  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        address = Address.fromjson(json['address']);
}

class Address {
  Address({required this.street, required this.city});
  final String street;
  final String city;
  Address.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        city = json['street'];
}
