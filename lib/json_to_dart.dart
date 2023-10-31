class User {
  final Name name;
  final Location location;
  final Picture picture;

  User({required this.name, required this.picture, required this.location});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: Name.fromJson(json['name']),
      location: Location.fromJson(json['location']),
      picture: Picture.fromJson(json['picture']),
    );
  }
}

class Name {
  String firstName;
  String lastName;

  Name({required this.firstName, required this.lastName});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(firstName: json['name']['first'], lastName: json['name']['last']);
  }
}

class Location {
  final Street street;
  final String city;
  final String country;

  Location({required this.street, required this.city, required this.country});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      street: json['location']['street']['name'],
      city: json['location']['city'],
      country: json['location']['country']
    );
  }
}

class Street {
  final int number;
  final String name;

  Street({required this.number, required this.name});
}

class Picture {
  final String large;
  final String medium;
  final String thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      large: json['picture']['large'],
      medium: json['picture']['medium'],
      thumbnail: json['picture']['thumbnail'],
    );
  }
}
