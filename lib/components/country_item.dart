class Country {
  String photo;
  String name;

  Country({required this.photo, required this.name});
}

List <Country> countries = [
  Country(photo: 'assets/koln.jpg', name: 'Germany'),
  Country(photo: 'assets/Den_Haag2.jpg', name: "The Netherlands"),
  Country(photo: 'assets/ukraine.jpg', name: 'Ukraine'),
  //Country(photo: 'assets/noimage.jpg', name: 'OTHER COUNTRY'),
];