
import 'package:flutter/cupertino.dart';
import 'package:arminogameapp/controller/apicall.dart';
import 'package:arminogameapp/model/modelclass.dart';

class GamedataProvider extends ChangeNotifier
 {
    late Future<List<Welcome>> data = fetchdata();

 }
