import 'package:flutter/cupertino.dart';
import 'package:flutterapp_ui/providerModel.dart';

class DataModel extends ChangeNotifier {
  String? finalname;
  final List<ProviderU> providerU = [
    ProviderU("Josef", 1),
    ProviderU("Sbestian", 2),
    ProviderU("Raul", 3),
    ProviderU("Nantz", 4),
    ProviderU("Leo", 5),
    ProviderU("Breda", 6),
  ].toList();

  final List<Jobs> jobs = [
    Jobs(1),
    Jobs(2),
    Jobs(3),
    Jobs(4),
    Jobs(5),
    Jobs(6),
  ].toList();
  final List<Speciality> speciality = [
    Speciality(1, "developer"),
    Speciality(2, "sysAdmin"),
    Speciality(3, "developer"),
    Speciality(4, "developer"),
    Speciality(5, "designer"),
    Speciality(6, "developer"),
  ].toList();

  addUsers() {
    speciality.toList();
    jobs.toList();
    providerU.toList();
  }
}
