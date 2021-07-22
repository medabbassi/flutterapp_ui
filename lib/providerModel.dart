class ProviderU {
  String? name;
  int? id;
  final Jobs? jobs;

  ProviderU(this.name, this.id, {this.jobs});

  String? get getName => name;

  int? get getId => id;
}

class Jobs {
  final int? id;
  Speciality? speciality;

  Jobs(this.id, {this.speciality});
}

class Speciality {
  int? id;
  String? name;
  final String? section;
  Speciality(this.id, this.name, {this.section});
  int? get getId => id;

  String? get getName => name;
}
