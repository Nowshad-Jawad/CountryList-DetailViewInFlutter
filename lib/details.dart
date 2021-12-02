import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'visit.dart';
import 'flags.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.name, required this.flagImage, required this.capital, required this.hog, required this.currency, required this.population, required this.places, }) : super(key: key);

  final String name;
  final String flagImage;
  final String capital;
  final String hog;
  final String currency;
  final String population;
  final List places;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              snap: false,
              floating: true,
              expandedHeight: 300,
              flexibleSpace: Center(
                child: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text('${name}'.toUpperCase(), style: TextStyle(color: Colors.black,),),
                  background: Container(decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(flagImage)
                      )
                  ),
                  ),

                ),
              ),
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                height:20,
              ),
            ),

            SliverList(delegate: SliverChildListDelegate([
              Container(
                padding:EdgeInsets.all(10),
                decoration:BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                              title: Text("Capital"),
                              children: [
                                Text(capital),
                              ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text("Head Of Government"),
                            children: [
                              Text(hog),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text("Currency"),
                            children: [
                              Text(currency),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text("Population"),
                            children: [
                              Text(population),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
            )
            ),

            SliverToBoxAdapter(
              child: SizedBox(
                height:10,
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                color:Colors.blueAccent,
                height: 300.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: places.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200.0,
                      child: Card(
                        child: Column(
                          children: [
                            Container(
                              height:200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(places[index].img),

                                )
                              ),
                            ),

                            Container(
                              child: Text(places[index].name),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
