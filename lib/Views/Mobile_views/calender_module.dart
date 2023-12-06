import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:table_calendar/table_calendar.dart';
class CalenderModule extends StatefulWidget {
  const CalenderModule({super.key});

  @override
  State<CalenderModule> createState() => _CalenderModuleState();
}

class _CalenderModuleState extends State<CalenderModule> {
  @override
  Widget build(BuildContext context) {
    var selectedDay=DateTime.now();
    int stepIndex=0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: const Text('Your Calender',style: TextStyle(
          color: secondary,
          fontSize: headingSize
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.close,color: secondary,))
        ],
      ),
      backgroundColor: primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth*1,

                  child: TableCalendar(
                    calendarStyle: const CalendarStyle(
                      defaultTextStyle: TextStyle(color: secondary)
                    ),
                    headerVisible: true,
                    headerStyle: const HeaderStyle(
                      leftChevronIcon: Icon(
                        Icons.chevron_left,color: secondary,
                      ),
                      rightChevronIcon: Icon(
                        Icons.chevron_right,color: secondary,
                      ),
                      formatButtonVisible: false,
                      titleTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: headingSize
                      )
                    ),
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    selectedDayPredicate: (day) {
                      return isSameDay(selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        selectedDay = selectedDay;
                        debugPrint(selectedDay.toString());
                        focusedDay = focusedDay;

                      });
                    },
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight*0.03,
                ),
                Container(
                  width: SizeConfig.screenWidth*1,
                  decoration: const BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                  ),
                  child: Stepper(

                    currentStep: stepIndex,
                    onStepCancel: () {
                      if (stepIndex > 0) {
                        setState(() {
                          stepIndex --;
                        });
                      }
                    },
                    onStepContinue: () {

                        setState(() {
                          stepIndex++;
                        });

                    },
                    onStepTapped: (int index) {
                      setState(() {
                        stepIndex = index;
                      });
                    },

                    steps: <Step>[
                      Step(
                        title: const Text('Task1'),
                        subtitle: const Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Task2'),
                        subtitle: const Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Task3'),
                        subtitle: const Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Task4'),
                        subtitle: const Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Task5'),
                        subtitle: const Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Step 1 title'),
                        subtitle: const Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
