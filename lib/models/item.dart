class Item {
  String _title;
  bool _done;

  Item({String title, bool done}) {
    this._title = title;
    this._done = done;
  }

  String get title => _title;
  set title(String title) => _title = title;

  bool get done => _done;
  set done(bool done) => _done = done;

  Item.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _done = json['done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = this._title;
    data['done'] = this._done;

    return data;
  }
}
