class Expert {
  final int id;
  final String name;
  final String image;
  final String specialist;
  final String rating;
  final String reviews;
  final String time;

  const Expert(
      {required this.id,
      required this.name,
      required this.image,
      required this.specialist,
      required this.rating,
      required this.reviews,
      required this.time});
}

class ExpertList {
  static List<Expert> list() {
    const data = <Expert>[
      Expert(
          id: 1,
          name: 'Robert Jonson',
          image: 'assets/images/barber/1.png',
          specialist: 'Spa & Skin Specialist',
          rating: '4.0',
          reviews: '120',
          time: '1'),
      Expert(
          id: 2,
          name: 'Markal Hums',
          image: 'assets/images/barber/2.png',
          specialist: 'Body & Skin Specialist',
          rating: '5.0',
          reviews: '120',
          time: '3'),
      Expert(
          id: 3,
          name: 'Lifsa Zuli',
          image: 'assets/images/barber/3.png',
          specialist: 'Hair Specialist',
          rating: '4.0',
          reviews: '120',
          time: '5'),
      Expert(
          id: 4,
          name: 'Washin Tomas',
          image: 'assets/images/barber/4.png',
          specialist: 'Message Specialist',
          rating: '5.0',
          reviews: '52',
          time: '7'),
    ];
    return data;
  }
}
