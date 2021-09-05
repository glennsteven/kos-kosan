class Space{
  int? id;
  String name;
  String imageUrl;
  int ? price;
  String ? city;
  String ? country;
  int ? rating;
  String ? address;
  String ? phone;
  String mapUrl;
  List ? photos;
  int ? numberOfKitchens;
  int ? numberOfBedrooms;
  int ? numberOfCupboards;

  Space({
      this.id,
      required this.name,
      required this.imageUrl,
     this.price,
     this.city,
     this.country,
     this.rating,
     this.address,
     this.phone,
     required this.mapUrl,
     this.photos,
     this.numberOfKitchens,
     this.numberOfBedrooms,
     this.numberOfCupboards,
  });

  factory Space.fromJson(json){
    return Space(
      id: json['id'],
      name: json['name'],
      city: json['city'],
      country: json['country'],
      price: json['price'],
      imageUrl: json['image_url'],
      rating: json['rating'],
      address: json['address'],
      phone: json['phone'],
      mapUrl: json['map_url'],
      photos: json['photos'],
      numberOfKitchens: json['number_of_kitchens'],
      numberOfBedrooms: json['number_of_bedrooms'],
      numberOfCupboards: json['number_of_cupboards'],
    );
  }
}