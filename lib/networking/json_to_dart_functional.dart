// Map<String, dynamic> jsonData = /* Your JSON data here */;
//
// Map<String, dynamic> nameData = jsonData['name'];
// Map<String, dynamic> locationData = jsonData['location'];
// Map<String, dynamic> pictureData = jsonData['picture'];
// Map<String, dynamic> streetData = locationData['street'];
// Map<String, dynamic> coordinatesData = locationData['coordinates'];
//
// var user = {
//   'name': {
//     'first': nameData['first'],
//     'last': nameData['last'],
//   },
//   'location': {
//     'street': {
//       'number': streetData['number'],
//       'name': streetData['name'],
//     },
//     'city': locationData['city'],
//     'country': locationData['country'],
//     'coordinates': {
//       'latitude': coordinatesData['latitude'],
//       'longitude': coordinatesData['longitude'],
//     },
//   },
//   'picture': {
//     'medium': pictureData['medium'],
//   },
// };