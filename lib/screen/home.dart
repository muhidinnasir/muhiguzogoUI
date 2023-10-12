import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:muhiguzogo/screen/locationpicker.dart';
import 'package:muhiguzogo/widgets/customImage.dart';
import 'package:muhiguzogo/widgets/showModal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isReturn = true;
  String fromText = "Addis Ababa";
  String toText = "Select Destination";

  DateTimeRange dateTimeRange =
      DateTimeRange(start: DateTime(2023, 10, 12), end: DateTime(2023, 10, 16));
  DateTime now = DateTime.now();
  DateTime nowreturn = DateTime.now();

  String _currentValues = "Economy";

  void toggleShift() {
    setState(() {
      String temp = fromText;
      fromText = toText;
      toText = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('EEEE').format(now);
    String formattedMonthDate = DateFormat('MMMM').format(now);
    String formattedDatenowreturn = DateFormat('EEEE').format(nowreturn);
    String formattedMonthDatenowreturn = DateFormat('MMMM').format(nowreturn);
    final ButtonStyle buttonstyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      backgroundColor: const Color.fromARGB(255, 241, 221, 41),
    );
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: "assets/background.png",
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: CustomImageView(
                          imagePath: "assets/guzogo.png",
                          height: 80,
                          width: 70,
                          radius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, right: 10),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 90.0, right: 10, left: 10),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isReturn = true;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: isReturn
                                              ? Colors.white
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        width: 150,
                                        height: 37,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 5,
                                              top: 9,
                                              child: SizedBox(
                                                width: 150,
                                                height: 19,
                                                child: Text(
                                                  'Return',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: isReturn
                                                        ? Colors.black
                                                        : Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isReturn = false;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: isReturn
                                              ? Colors.transparent
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        width: 150,
                                        height: 37,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 5,
                                              top: 9,
                                              child: SizedBox(
                                                width: 150,
                                                height: 19,
                                                child: Text(
                                                  'One-Way',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: isReturn
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 18,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 20.0),
                                    child: Text(
                                      'From',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: toggleShift,
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      margin: const EdgeInsets.only(top: 40),
                                      decoration: const ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                        shadows: [
                                          BoxShadow(
                                            color: Color(0x19000000),
                                            blurRadius: 20,
                                            offset: Offset(0, 0),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                "assets/airplanereight.png",
                                            height: 15,
                                            width: 15,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                "assets/airplaneleft.png",
                                            height: 13,
                                            width: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      'To',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 210.0,
                        left: 10,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const LocationPickerScreenState(),
                                ),
                              );
                            },
                            child: Text(
                              fromText,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 210.0,
                        right: 25,
                      ),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const LocationPickerScreenState(),
                                ),
                              );
                            },
                            child: Text(
                              toText,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )),
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  child: Table(
                    border: TableBorder.all(color: Colors.grey),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Departure Date",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: pickedDaterange,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${now.day}",
                                        style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 31, 28, 102),
                                          fontSize: 45,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Text(formattedMonthDate),
                                          Text(formattedDate),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Return Date",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                isReturn == false
                                    ? const SizedBox()
                                    : GestureDetector(
                                        onTap: pickedDateranges,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "${nowreturn.day}",
                                              style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 31, 28, 102),
                                                fontSize: 45,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                    formattedMonthDatenowreturn),
                                                Text(formattedDatenowreturn),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                              ],
                            ),
                          ),
                        ],
                      ),
                      TableRow(children: [
                        GestureDetector(
                          onTap: () {
                            ShowModalBottomSheets(
                              context,
                              'this is body text',
                            ).showModal();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "Cobin Class",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showModal();
                                  },
                                  child: Text(
                                    _currentValues,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 31, 28, 102),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Passengers",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.man),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 31, 28, 102),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.woman),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 31, 28, 102),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.boy),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 31, 28, 102),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      style: buttonstyle,
                      onPressed: () {},
                      child: const Text(
                        'Search Flights',
                        style: TextStyle(
                          color: Color.fromARGB(255, 31, 28, 102),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<String> listOfItems = ["Economy", "Bussiness", "First"];
  int _currentIndex = 0;
  showModal() {
    return showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        useSafeArea: true,
        enableDrag: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        ),
        builder: (BuildContext context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter state) {
            return Stack(children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Cabin Class',
                        style: TextStyle(
                          color: Color.fromARGB(255, 31, 28, 102),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Color.fromARGB(255, 31, 28, 102),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: SizedBox(
                  width: 390,
                  height: 200.21,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return index == 3
                          ? const SizedBox()
                          : GestureDetector(
                              onTap: () {
                                state(() {
                                  _currentIndex = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          state(() {
                                            _currentIndex = index;
                                            _currentValues = listOfItems[index];
                                            setState(() {});
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: Text(
                                          listOfItems[index],
                                          style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 31, 28, 102),
                                            fontSize: 18,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    _currentIndex == index
                                        ? const Icon(Icons.done)
                                        : const SizedBox()
                                  ],
                                ),
                              ),
                            );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 30,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.grey,
                      );
                    },
                    itemCount: 4,
                  ),
                ),
              ),
            ]);
          });
        });
  }

  Future pickedDaterange() async {
    DateTimeRange? dateTimeRanges = await showDateRangePicker(
      initialDateRange: dateTimeRange,
      context: context,
      firstDate: DateTime(2022),
      lastDate: DateTime(2024),
    );
    if (dateTimeRanges == null) return;
    setState(() {
      now = dateTimeRanges.end;
    });
  }

  Future pickedDateranges() async {
    DateTimeRange? dateTimeRanges = await showDateRangePicker(
      initialDateRange: dateTimeRange,
      context: context,
      firstDate: DateTime(2022),
      lastDate: DateTime(2024),
    );
    if (dateTimeRanges == null) return;
    setState(() {
      nowreturn = dateTimeRanges.end;
    });
  }
}
