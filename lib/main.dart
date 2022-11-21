import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/services.dart';

import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color(0xff29272B),
      )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool pressed = false;
  bool slotPressed = false;
  int? slotindex;
  int? index1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff29272B),
      appBar: AppBar(title: const Text('MY APP')),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 500,
                width: double.infinity,
                child: FutureBuilder<Result>(
                  future: Services.getData(context),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final data = snapshot.data;
                      Map<String, List<String>> availableSlots =
                          _dataManipulation(context, data!);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Select appointment date',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const ClampingScrollPhysics(),
                                itemCount: availableSlots.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    index == index1
                                                        ? Colors.white
                                                        : const Color.fromARGB(
                                                            255, 76, 75, 77)),
                                            foregroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    index == index1
                                                        ? const Color(
                                                            0xff29272B)
                                                        : Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ))),
                                        onPressed: (() {
                                          setState(() {
                                            index1 = index;
                                            pressed = true;
                                          });
                                        }),
                                        child: Text(availableSlots.keys.elementAt(index).toString())),
                                  );
                                }),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Select appointment time',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          pressed
                              ? SizedBox(
                                  height: 60,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: availableSlots.values
                                          .elementAt(index1!)
                                          .length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all<Color>(
                                                      const Color(0xff29272B)),
                                                  foregroundColor:
                                                      MaterialStateProperty.all<Color>(
                                                          slotindex == index
                                                              ? Colors.white
                                                              : Colors.grey),
                                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(
                                                              10.0),
                                                          side: BorderSide(
                                                              width: 2,
                                                              color: slotindex == index
                                                                  ? Colors.white
                                                                  : Colors.grey)))),
                                              onPressed: () {
                                                setState(() {
                                                  slotPressed = true;
                                                  slotindex = index;
                                                });
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                    '${availableSlots.values.elementAt(index1!)[index].toString()} PM'),
                                              )),
                                        );
                                      }))
                              : const SizedBox()
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  _dataManipulation(context, Result timeSlot) {
    List<String> dates = List.empty(growable: true);
    Map<String, List<String>> map = {};
    for (dynamic list in timeSlot.data!) {
      for (dynamic date in list.timeslots) {
        dates.add(date.date.toString().substring(0, 10));
      }
    }
    dates = dates.toSet().toList();
    for (var element in dates) {
      for (dynamic list in timeSlot.data!) {
        for (dynamic date in list.timeslots) {
          if (element == date.date.toString().substring(0, 10)) {
            map.update(
              element,
              (list) => list..add(date.timeFrom.toString().substring(0, 5)),
              ifAbsent: () => [date.timeFrom.toString().substring(0, 5)],
            );
          }
        }
      }
    }

    map.forEach((key, value) {
      log(name: 'available slots', "$key:$value");
    });
    return map;
  }
}
