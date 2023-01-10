class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
  });
}

List places = [
  PlaceInfo(
      image: 'assets/images/pink.jpg',
      location: 'East Lombok',
      name: 'Pink Beach',
      distance: 50,
      days: 12,
      desc:
          "Tangsi Beach, better known as Pink Beach is on the island's far south-eastern shore, and it's one of only 10 pink sand beaches in the world. Indonesia boasts two beautiful pink beaches – the other is on Lombok's neighbour island, Flores."),
  PlaceInfo(
      image: 'assets/images/rinjani.jpg',
      location: 'Sembalun District',
      name: 'Mount Rinjani',
      distance: 150,
      days: 8,
      desc:
          "The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia."),
  PlaceInfo(
      image: 'assets/images/dapursasak.jpg',
      location: 'Central Lombok',
      name: 'Dapur Sasak',
      distance: 38,
      days: 4,
      desc:
          "You must try this typical Lombok food. At first glance, it looks like a soup containing meat and ribs, but with more complex spices, it makes the taste richer and more delicious."),
  PlaceInfo(
      image: 'assets/images/monkey.jpg',
      location: 'East Lombok',
      name: 'Monkey Forest',
      distance: 1700,
      days: 10,
      desc:
          "The Lombok Monkey Forest is a newly created tourist attraction located on a winding mountain road near Senggigi. Here, you’ll find plenty of wild macaque monkeys roaming the road and hanging out in the trees at the nearby viewpoint."),
];
