import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  final Name name;
  final Location location;
  final Picture picture;

  User({required this.name, required this.location, required this.picture});

  factory User.fromJson(Map<String, dynamic> json) {
    // print('this is $json');
    return User(
      name: Name.fromJson(json['name']),
      location: Location.fromJson(json['location']),
      picture: Picture.fromJson(
        json['picture'],
      ),
    );
  }
}

class Name {
  final String first;
  final String last;

  Name({required this.first, required this.last});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(first: json['first'], last: json['last']);
  }
}

class Location {
  final Street street;
  final String city;
  final String country;
  final Coordinates coordinates;

  Location({required this.street, required this.city, required this.country, required this.coordinates});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
        street: Street(number: json['street']['number'], name: json['street']['name']),
        city: json['city'],
        country: json['country'],
        coordinates: Coordinates(
          latitude: json['coordinates']['latitude'],
          longitude: json['coordinates']['longitude'],
        ));
  }
}

class Street {
  final int number;
  final String name;

  Street({required this.number, required this.name});
}

class Coordinates {
  final String latitude;
  final String longitude;

  Coordinates({required this.latitude, required this.longitude});
}

class Picture {
  final String medium;

  Picture({required this.medium});
  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(medium: json['medium']);
  }
}

class UserService {
  Future<List<User>> getUsers() async {
    final response = await http.get(
      Uri.parse('https://randomuser.me/api/?results=10'),
    );
    if (response.statusCode == 200) {
      // print('response body: ${response.body}');
      final json = jsonDecode(response.body);
      // print('json decode $json');
      List<User> users = [];
      for (var i = 0; i < json['results'].length; i++) {
        final entry = json['results'][i];
        print('entry: $i');
        users.add(User.fromJson(entry));
        //this is some changes, now more changes
      }
      return users;
    } else {
      throw Exception('error');
    }

    // if (response.statusCode == 200) {
    //   final data = jsonDecode(response.body);
    //   final List<User> users = [];
    //
    //   for (var i = 0; i < data['results']; i++) {
    //     final entry = data['results'][i];
    //     users.add(User.fromJson(entry));
    //   }
    //   return users;
    // } else {
    //   throw Exception('http failed');
    // }
  }
}
