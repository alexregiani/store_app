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
    final nameData = json['name'];
    return Name(firstName: nameData['first'], lastName: nameData['last']);
  }
}

class Location {
  final Street street;
  final Coordinates coordinates;
  final String city;
  final String country;

  Location({required this.street, required this.coordinates, required this.city, required this.country});

  factory Location.fromJson(Map<String, dynamic> json) {
    final streetData = json['location']['street'];
    final coordinatesData = json['location']['coordinates'];
    return Location(
      street: Street(name: streetData['name'], number: streetData['number']),
      coordinates: Coordinates(latitude: coordinatesData['latitude'], longitude: coordinatesData['longitude']),
      city: json['location']['city'],
      country: json['location']['country'],
    );
  }
}

class Street {
  final int number;
  final String name;

  Street({required this.number, required this.name});
}

class Coordinates {
  final double latitude;
  final double longitude;

  Coordinates({required this.latitude, required this.longitude});
}

class Picture {
  final String large;
  final String medium;
  final String thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  factory Picture.fromJson(Map<String, dynamic> json) {
    final pictureData = json['picture'];
    return Picture(
      large: pictureData['large'],
      medium: pictureData['medium'],
      thumbnail: pictureData['thumbnail'],
    );
  }
}
