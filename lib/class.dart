class Film {
  String image;
  List <String> images;
  String title;
  String genre;
  String runtime;
  String desc;
  double rating;
  String link;
  String watchLink;

  Film({required this.image, required this.images, required this.title, required this.genre, required this.runtime, required this.desc, required this.rating, required this.link, required this.watchLink});
}

final films = [
  Film(image: 'joker', images: ['joker_im1', 'joker_im2', 'joker_im3',], title: 'Joker', genre: 'Crime, Drama',
      runtime: '2h 10min',
      desc: "A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding "
          "a sign for advertising. He takes care of his mother, Penny Fleck, and as he learns more about his mental illness, he learns more about his past. "
          "Dealing with all the negativity and bullying from society, he heads downwards on a spiral, in turn showing how his alter ego, 'Joker,' came to be.", rating: 4.4,
  watchLink: 'https://www.youtube.com/watch?v=HHBz58Du9lM',
  link: 'https://www.imdb.com/title/tt7286456/plotsummary/#'),
  Film(image: 'adam', images: ['adam_im1', 'adam_im2', 'adam_im3',], title: 'Black Adam', genre: 'Fantastic, Action', runtime: '1h 48min',
      desc: "Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods--and imprisoned just as quickly--Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world."
      "Reawakening after 5000 years, Black Adam becomes the world's ruthless protector: an anti-villain to take on the likes of Superman and Wonder Woman.", rating: 3.5,
  watchLink: 'https://play.google.com/store/movies/details?id=pyoTU3jUexg.P',
  link: 'https://www.imdb.com/title/tt6443346/plotsummary/'),
  Film(image: 'avengers', images: ['avengers_im1', 'avengers_im2', 'avengers_im3',], title: 'Avengers', genre: 'Fantastic, Action',  runtime: '2h 13min',
      desc: "Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity."
"Loki, the adopted brother of Thor, teams-up with the Chitauri Army and uses the Tesseract's power to travel from Asgard to Midgard to plot the invasion of Earth and become a king.", rating: 4.2,
  watchLink: "https://www.youtube.com/watch?v=DIyHPo-MYPg",
  link: "https://www.imdb.com/title/tt0848228/plotsummary/#"),
];

final otherFilms = [
  'panther',
  'hulk',
  'wonka',
  'thor',
];