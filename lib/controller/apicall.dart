import 'package:arminogameapp/model/modelclass.dart';
import 'package:arminogameapp/utils/api.dart';
import 'package:http/http.dart' as http;


Future<List<Welcome>> fetchdata() async 
{
  final response = await http.post(
    Uri.parse(GameURL),
    headers: <String, String>
    {
      'Client-ID': '430aifty3edc6zphnq09g605t51g5r',
      'Authorization': 'Bearer y3eiptr2uc98eq0e5i67cg22mhwvrb'
    },
  );
    if (response.statusCode == 200) 
      {
         return welcomeFromJson(response.body);
      } else {
            throw Exception();
              }
}