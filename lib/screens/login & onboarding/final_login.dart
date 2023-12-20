import 'package:ecommerce_app/screens/navpages/mainpage.dart';
import 'package:flutter/material.dart';

class FinalLogin extends StatefulWidget {
  const FinalLogin({Key? key}) : super(key: key);

  @override
  State<FinalLogin> createState() => _FinalLoginState();
}

class _FinalLoginState extends State<FinalLogin> {
  bool isMan = true;

  String selectedAge = '18-24';

  List<String> ageRanges = ['18-24', '25-34', '35-44', '45-54', '55-64', '65+'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF201C2C),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Text(
                      "Tell Us About Yourself",
                      style: TextStyle(
                        fontFamily: 'CircularStd-Bold.ttf',
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF342F3F),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Who do you shop for?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Circular Std',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:
                                isMan ? Color(0xFF8e6dee) : Color(0xFF342F3F),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isMan = true;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Man',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:
                                isMan ? Color(0xFF342F3F) : Color(0xFF8e6dee),
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isMan = false;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Woman',
                                style: TextStyle(
                                  color: isMan ? Colors.white : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF342F3F),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'How old are you?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Circular Std',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: DropdownButtonFormField<String>(
                      value: selectedAge,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedAge = newValue!;
                        });
                      },
                      items: ageRanges
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'Select Age Range',
                        hintText: 'Select Age Range',
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(100.0),
                      color: Color(0xFF8e6dee),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                        );
                      },
                      child: Center(
                        child: Text(
                          "Finish",
                          style: TextStyle(
                            fontFamily: 'CircularStd-Bold',
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
