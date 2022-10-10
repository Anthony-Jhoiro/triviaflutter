class User {
  String firstname;
  String lastname;
  String profilePicture;
  int score;

  User(this.firstname, this.lastname, this.profilePicture, this.score);
}

List<User> fakeUsers = List.of({
  new User(
    "Lily",
    "Aldrin",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Alyson_Hannigan%2C_2013-07-20_%28cropped%29.jpg/142px-Alyson_Hannigan%2C_2013-07-20_%28cropped%29.jpg",
    0,
  ),
  new User(
    "Barney",
    "Stinson",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Neil_Patrick_Harris_%289449178210%29_%28cropped_portrait%29.jpg/142px-Neil_Patrick_Harris_%289449178210%29_%28cropped_portrait%29.jpg",
    0,
  ),
  new User(
    "Ted",
    "Mosby",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Josh_Radnor_%289448570254%29.jpg/131px-Josh_Radnor_%289448570254%29.jpg",
    0,
  ),
  new User(
    "Marshall",
    "Eriksen",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Jason_Segel%2C_2011.jpg/125px-Jason_Segel%2C_2011.jpg",
    0,
  ),
  new User(
    "Robin",
    "Scherbatsky",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Cobie_Smulders_SDCC_2014.jpg/122px-Cobie_Smulders_SDCC_2014.jpg",
    0,
  ),
});

User a = fakeUsers[1];
