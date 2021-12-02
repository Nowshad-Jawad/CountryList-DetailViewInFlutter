import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import 'countrypicker.dart';
import 'flags.dart';
import 'details.dart';
import 'visit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List flags=[];
    flags.add(Flag(name:"Spain", flagImage:"https://flagsweb.com/images/PNG/Flag_of_Spain.png", capital:"Madrid", hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    flags.add(Flag(name:"France", flagImage:"https://thumbs.dreamstime.com/b/france-flag-france-flag-print-wallpaper-purposes-size-pixels-dpi-jpg-format-153806530.jpg", capital:"Paris", hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    flags.add(Flag(name:"Norway", flagImage:"https://image.shutterstock.com/image-vector/original-simple-norway-flag-isolated-260nw-160945133.jpg", capital:"Oslo",hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    flags.add(Flag(name:"Australia", flagImage:"https://image.shutterstock.com/image-vector/flag-australia-vector-illustration-260nw-310772522.jpg", capital:"Canberra", hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    flags.add(Flag(name:"Netherlands", flagImage:"https://image.shutterstock.com/image-vector/netherlands-flag-national-emblem-graphic-260nw-1907538502.jpg", capital:"Amsterdam", hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    flags.add(Flag(name:"Russia", flagImage:"https://image.shutterstock.com/image-vector/russian-flag-russia-vector-illustration-260nw-1102475063.jpg", capital:"Moscow", hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    flags.add(Flag(name:"USA", flagImage:"https://image.shutterstock.com/image-vector/vector-image-american-flag-260nw-157626554.jpg", capital:"Washington, D. C.", hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    flags.add(Flag(name:"United Kingdom", flagImage:"https://image.shutterstock.com/image-vector/united-kingdom-flag-260nw-424744765.jpg", capital:"London",hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    flags.add(Flag(name:"Belgium", flagImage:"https://image.shutterstock.com/image-vector/belgium-flag-vector-260nw-602905724.jpg", capital:"Brussels",hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    flags.add(Flag(name:"Canada", flagImage:"https://image.shutterstock.com/image-vector/flag-canada-vector-design-template-260nw-1672837960.jpg", capital:"Otawa", hog: 'Pedro Sánchez', currency: 'EURO', population: '47.35 million (2020)', places: [Visit(name: 'Madrid', img: 'https://st.depositphotos.com/1007593/4529/i/600/depositphotos_45296159-stock-photo-plaza-de-la-cibeles-madrid.jpg'), Visit(name: 'Barcelona', img: 'https://cdn.vox-cdn.com/thumbor/9zHVj4OnM5pYeO8rCX-W4aL-lw0=/0x0:4428x1993/1200x800/filters:focal(1872x1198:2580x1906)/cdn.vox-cdn.com/uploads/chorus_image/image/63371518/shutterstock_785442694.0.jpg'),Visit(name: 'Valencia', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg/2560px-Hemispheric_-_Valencia%2C_Spain_-_Jan_2007.jpg'), Visit(name: 'Sevilla', img: 'https://d2bgjx2gb489de.cloudfront.net/gbb-blogs/wp-content/uploads/2020/05/22135736/Seville.jpg'), Visit(name: 'Pamplona', img: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Pamplona%2C_Colombia_SG.jpg/1200px-Pamplona%2C_Colombia_SG.jpg')]));
    return MaterialApp(
      home:Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              snap: false,
              floating: true,
              expandedHeight: 300.0,
              backgroundColor: Colors.amber[700],
              flexibleSpace: Center(
                child: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("TRAVEL GUIDE", style: TextStyle(color: Colors.white,),),
                  background: Container(decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://study.com/cimages/course-image/prentice-hall-history-of-our-world-online-textbook-help_141532_large.jpg")
                    )
                  ),
                  ),

                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      height:70,
                      width:350,
                      decoration: BoxDecoration(
                          color:Colors.grey,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:Colors.white,
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CountryPicker(),
                        )
                      ),

                    ),

                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),


            SliverList(delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height:80,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.horizontal(left: Radius.circular(30), right: Radius.circular(30)),
                          borderRadius: BorderRadius.circular(50),
                          image:DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(flags[index].flagImage),
                          colorFilter:
                          ColorFilter.mode(Colors.black.withOpacity(0.4),
                              BlendMode.dstATop),
                        )
                      ),
                      child: Center(
                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(name:flags[index].name, flagImage:flags[index].flagImage, capital:flags[index].capital, hog: flags[index].hog, currency: flags[index].currency, population: flags[index].population, places: flags[index].places,)));

                          },
                          leading: CircleAvatar(radius: 45, backgroundColor: Colors.white, child: CircleAvatar(
                            radius: 25,
                            child: Container(
                              decoration: BoxDecoration(
                                //borderRadius: BorderRadius.horizontal(left: Radius.circular(30), right: Radius.circular(30)),
                                  shape: BoxShape.circle,
                                  image:DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(flags[index].flagImage),
                                  )
                              ),
                            ),
                          )),
                          title: Text(flags[index].name, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          subtitle: Text("Capital: "+flags[index].capital, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color:Colors.black)),
                          trailing: Icon(Icons.arrow_right, size:40,),
                        ),
                      ),
                    ),
                  );
                },

              childCount: 10,
            )
            )
          ],
        )
      )
    );
  }
}

