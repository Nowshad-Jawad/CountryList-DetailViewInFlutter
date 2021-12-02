import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:untitled11/visit.dart';

import 'details.dart';
import 'flags.dart';

class CountryPicker extends StatelessWidget {

  final _formkey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List flags=[];
    List flag_names=[];
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

    for(int i=0; i<flags.length; i++){
      flag_names.add(flags[i].name);
    };

    final dw = MediaQuery.of(context).size.width /100;
    final dh = MediaQuery.of(context).size.height /100;
    return Form(
      key: _formkey,
      child: Container(
          height: dh * 7,
          margin: EdgeInsets.symmetric(vertical: dh * 1),
          child: TypeAheadFormField(
            suggestionsCallback: (pattern) => flag_names.where((element) => element.toLowerCase().contains(pattern.toLowerCase())),
            itemBuilder: (context, element) {
              return ListTile(title: Text('${element}'),);
            },
            onSuggestionSelected: (val){
              this._textEditingController.text = '${val}';
              for(int i=0; i<flags.length; i++){
                if(val == flags[i].name){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(name:flags[i].name, flagImage:flags[i].flagImage, capital:flags[i].capital, hog: flags[i].hog, currency: flags[i].currency, population: flags[i].population, places: flags[i].places,)));

                }
              };
            },
            getImmediateSuggestions: true,
            hideSuggestionsOnKeyboardHide: false,
            hideOnEmpty: true,
            textFieldConfiguration:TextFieldConfiguration(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.flag),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
              ),
            ),
          )


      ),
    );
  }
}
