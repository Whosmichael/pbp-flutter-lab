import 'package:counter_7/watchlistDetail.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/query/fetchWatchlist.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/Model/watchlist_model.dart';

class WatchlistPage extends StatefulWidget {
  const WatchlistPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WatchlistPageState createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  Future dataWatchlist = fetchMywatchlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watchlist'),
        ),

        // Menambahkan drawer menup
        drawer: AppDrawer(
          myBudgetList: [],
        ),
        body: FutureBuilder(
            future: dataWatchlist,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watchlist :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => GestureDetector(
                          onTap: () {
                            // Route menu ke halaman form
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(movie: snapshot.data![index])),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color:
                                    snapshot.data![index].fields.movieWatched ==
                                            "Sudah"
                                        ? Color.fromARGB(255, 0, 191, 255)
                                        : Color.fromARGB(255, 255, 255, 255),
                                // color:Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, blurRadius: 2.0)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text(
                                    "${snapshot.data![index].fields.movieTitle}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Checkbox(
                                    value: snapshot.data![index].fields
                                                .movieWatched ==
                                            "Sudah"
                                        ? true
                                        : false,
                                    onChanged: (value) {
                                      setState(() {
                                        snapshot.data![index].fields
                                                .movieWatched =
                                            value! ? "Sudah" : "Belum";
                                      });
                                    },
                                  ),
                                ]),
                              ],
                            ),
                          )));
                }
              }
            }));
  }
}
