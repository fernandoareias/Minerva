import 'package:flutter/material.dart';
import 'package:minerva/android/widgets/login_page/button_widget.dart';

import 'home_page.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  var _nameCountry = 'Country';

  var _countrys = ['Brazil', 'Argentina', 'Bolivia'];
  var _currentCountryItemSelected;

  var _state = ['Rio de Janeiro', 'São Paulo', 'Paraná'];
  var _currentStateItemSelected;

  var _city = ['Rio de Janeiro', 'Niterói', 'São Gonçalo'];
  var _currentCityItemSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA2E7B6),
      resizeToAvoidBottomInset: false,
      body: Stack(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage("assets/location_page/background.png"),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: 60,
              ),
              child: Container(
                width: 90,
                height: 90,
                child: Image(image: AssetImage("assets/login_page/logo.png")),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 170,
                ),
              ),
              // Country Dropdown Button
              Align(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        //color: Colors.blue,
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: Icon(
                          Icons.public,
                          size: 32,
                        ),
                      ),
                      Container(
                        //color: Colors.red,
                        width: 250 - 20,
                        //height: 20,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          value: _currentCountryItemSelected,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          items: _countrys.map((String dropDownItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownItem,
                              child: Text(dropDownItem),
                            );
                          }).toList(),
                          onChanged: (String? newValueSelected) {
                            setState(() {
                              this._currentCountryItemSelected =
                                  newValueSelected!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // State
              Container(
                alignment: Alignment.centerLeft,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Row(
                  children: [
                    Container(
                      //color: Colors.blue,
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Icon(
                        Icons.map,
                        size: 32,
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      width: 250 - 20,
                      //height: 20,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: _currentStateItemSelected,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        items: _state.map((String dropDownItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownItem,
                            child: Text(dropDownItem),
                          );
                        }).toList(),
                        onChanged: (String? newValueSelected) {
                          setState(() {
                            this._currentStateItemSelected = newValueSelected!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Row(
                  children: [
                    Container(
                      //color: Colors.blue,
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Icon(
                        Icons.apartment,
                        size: 32,
                      ),
                    ),
                    Container(
                      //color: Colors.red,
                      width: 250 - 20,
                      //height: 20,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: _currentCityItemSelected,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        items: _city.map((String dropDownItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownItem,
                            child: Text(dropDownItem),
                          );
                        }).toList(),
                        onChanged: (String? newValueSelected) {
                          setState(() {
                            this._currentCityItemSelected = newValueSelected!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),

              Container(
                width: 350,
                height: 60,
                child: button(
                    context: context,
                    page: HomePage(),
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                    ),
                    label: "CONTINUE"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// map_black
// apartament
