import 'package:http/http.dart' as http;
void getData(String idno)async{
  var abc = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$idno/'));
  print(abc.body);
}