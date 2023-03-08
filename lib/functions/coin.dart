class Coin {
  final Set<dynamic> something;

  Coin(this.something);

  factory Coin.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> obj = json['results'];
    List<Map<String, dynamic>> liste = json['results'];
    var yarrak = liste.map((item) => item['image']);

    return Coin(liste.map((item) => (item['image'])).toSet());
  }
}
