import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/Model/watchlist_model.dart';

// Future<List<MyWatchList>> fetchMywatchlist() async {
//   var url = Uri.parse('http://localhost:8000/mywatchlist/json/');
//   var response = await http.get(
//     url,
//     headers: {
//       "Access-Control-Allow-Origin": "*",
//       "Content-Type": "application/json",
//     },
//   );

//   var data = jsonDecode(utf8.decode(response.bodyBytes));

//   List<MyWatchList> listWatchlist = [];
//   for (var d in data) {
//     if (d != null) {
//       listWatchlist.add(MyWatchList.fromJson(d));
//     }
//   }

//   return listWatchlist;
// }

Future<List<Mywatchlist>> fetchMywatchlist() async {
  var url = Uri.parse('http://localhost:8000/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<Mywatchlist> listWatchlist = [];
  for (var d in data) {
    if (d != null) {
      listWatchlist.add(Mywatchlist.fromJson(d));
    }
  }

  return listWatchlist;
}
