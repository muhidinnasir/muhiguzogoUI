import 'package:flutter/material.dart';

class ShowModalBottomSheets {
  final BuildContext context;
  final String bodyText;
  ShowModalBottomSheets(
    this.context,
    this.bodyText,
  );

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
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Cabin Class',
                          style: TextStyle(
                            color: Color.fromARGB(255, 31, 28, 102),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
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
                                            Navigator.pop(context, true);
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
}
