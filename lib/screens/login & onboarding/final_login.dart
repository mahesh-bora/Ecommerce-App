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
        backgroundColor: const Color(0xFF201C2C),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Tell Us About Yourself",
                    style: TextStyle(
                      fontFamily: 'CircularStd-Bold.ttf',
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Who do you shop for?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Circular Std',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 85,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: isMan
                              ? const Color(0xFF8e6dee)
                              : const Color(0xFF342F3F),
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMan = true;
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Man',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        height: 45,
                        width: 85,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: isMan
                              ? const Color(0xFF342F3F)
                              : const Color(0xFF8e6dee),
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
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'How old are you?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Circular Std',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: DropdownButtonFormField<String>(
                      dropdownColor: const Color(0xFF342F3F),
                      style: const TextStyle(color: Colors.white),
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
                      decoration: const InputDecoration(
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
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xFF342F3F),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
              );
            },
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: const Color(0xFF8e6dee),
              ),
              child: const Center(
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
        ),
      ),
    );
  }
}
