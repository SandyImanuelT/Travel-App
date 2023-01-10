class Place2Info {
  final String location, image, name, desc;
  final int distance, days;

  Place2Info({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
  });
}

List places2 = [
  Place2Info(
      image: 'assets/images/nyale.jpg',
      location: 'East Lombok',
      name: 'Festival Pesona Bau Nyale',
      distance: 50,
      days: 12,
      desc:
          "Bau Nyale, sebuah budaya unik dari masyarakat Lombok yang berasal dari Legenda Putri Mandalika. Bau Nyale berasal dari bahasa Sasak “Bau” yang berarti menangkap dan “Nyale” adalah cacing laut yang berwarna-warni. Tidak sekedar menangkap cacing laut, akan tetapi budaya menangkap “Nyale” ini mempunyai makna yang begitu berharga. Budaya yang Berharga yang diwariskan oleh Putri Mandalika sebagai seorang Putri yang begitu cantik dan berani mengorbankan dirinya untuk kedamaian negaranya. Keberanian inilah yang harus selalu menjadi teladan bagi warga masyarakat Lombok dan menjadikan hal ini sebagai budaya yang sangat berharga. Hingga saat ini, Masyarakat lombok masih sangat meyakini bahwa siapapun yang dapat menangkap Nyale akan beruntung."),
  Place2Info(
      image: 'assets/images/sampi.jpg',
      location: 'Sembalun District',
      name: 'Malean Sampi',
      distance: 150,
      days: 8,
      desc:
          "Male'an Sampi is a traditional cattle race conducted annually in Lombok, West Nusa Tenggara, Indonesia. The race is open to the public. It takes place during the festival held following the harvest. Translated from the Sasak language, Male'an Sampi literally means to run or chase after a cow or cattle."),
  Place2Info(
      image: 'assets/images/tambora.jpg',
      location: 'Central Lombok',
      name: 'Festival Pesona Tambora',
      distance: 38,
      days: 4,
      desc:
          "Festival Pesona Tambora kembali digelar oleh Pemerintah Provinsi Nusa Tenggara Barat (NTB) yang bekerjasama dengan Pemerintah Kabupaten Dompu, Kabupaten dan Kota Bima serta Balai Taman Nasional Gunung Tambora (TNGT). Pada tahun ini, Festival Pesona Tambora kembali digelar di padang Savana Doro Ncanga yang berada tepat di kaki Gunung Tambora."),
  Place2Info(
      image: 'assets/images/peresean.jpg',
      location: 'East Lombok',
      name: 'Peresean ',
      distance: 1700,
      days: 10,
      desc:
          "“Peresean” is a tradition of fighting between two men from the Sasak tribe in Lombok. They use a rattan stick like a sword, and a shield made of buffalo skin called ende. Fighters are only allowed to attack the opponent's back and shoulders."),
];
