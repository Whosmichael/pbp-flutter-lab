import 'package:counter_7/Model/watchlist_model.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/mywatchlist.dart';
import 'package:counter_7/drawer.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.movie});
  final Mywatchlist movie;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Film'),
      ),

      // drawer
      drawer: AppDrawer(
        myBudgetList: [],
      ),

      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(widget.movie.fields.movieTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text("Release date:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Container(width: 15),
                    Text(widget.movie.fields.movieReleaseDate.toString(),
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text("Rating:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Container(width: 15),
                    Text("${widget.movie.fields.movieRating.toString()}/5",
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text("Status:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Container(width: 15),
                    Text(widget.movie.fields.movieWatched,
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text("Review:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Container(width: 15),
                    Text(widget.movie.fields.movieReview,
                        style: const TextStyle(fontSize: 18)),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(18),
                child: TextButton(
                    child: const Text("Back",
                        style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WatchlistPage()),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
