import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

const double size = 30;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Year year;

  @override
  void initState() {
    year = Year(2019).build();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(year.year.toString()),
      ),
      body: CalendarWidget(year: year),
    );
  }
}

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({
    Key key,
    @required this.year,
  }) : super(key: key);

  final Year year;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: size),
            DayOfWeekWidget(
              dayOfWeek: 'Lundi',
            ),
            DayOfWeekWidget(
              dayOfWeek: 'Mardi',
            ),
            DayOfWeekWidget(
              dayOfWeek: 'Mercredi',
            ),
            DayOfWeekWidget(
              dayOfWeek: 'Jeudi',
            ),
            DayOfWeekWidget(
              dayOfWeek: 'Vendredi',
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: year.weeks.length,
            itemBuilder: (BuildContext context, int index) {
              var dayList = year.weeks[index + 1];
              DayWidget lundi;
              DayWidget mardi;
              DayWidget mercredi;
              DayWidget jeudi;
              DayWidget vendredi;

              dayList.forEach((day) {
                switch (day.dateTime.weekday) {
                  case DateTime.monday:
                    lundi = DayWidget(day: day);
                    break;
                  case DateTime.tuesday:
                    mardi = DayWidget(day: day);
                    break;
                  case DateTime.wednesday:
                    mercredi = DayWidget(day: day);
                    break;
                  case DateTime.thursday:
                    jeudi = DayWidget(day: day);
                    break;
                  case DateTime.friday:
                    vendredi = DayWidget(day: day);
                    break;
                }
              });

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text(
                        dayList.first.dateTime.month.toString(),
                      ),
                    ),
                    width: size,
                    margin: EdgeInsets.all(1.5),
                  ),
                  lundi ??
                      Container(
                        width: size,
                        margin: EdgeInsets.all(1.5),
                      ),
                  mardi ??
                      Container(
                        width: size,
                        margin: EdgeInsets.all(1.5),
                      ),
                  mercredi ??
                      Container(
                        width: size,
                        margin: EdgeInsets.all(1.5),
                      ),
                  jeudi ??
                      Container(
                        width: size,
                        margin: EdgeInsets.all(1.5),
                      ),
                  vendredi ??
                      Container(
                        width: size,
                        margin: EdgeInsets.all(1.5),
                      ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class DayOfWeekWidget extends StatelessWidget {
  const DayOfWeekWidget({
    Key key,
    @required this.dayOfWeek,
  }) : super(key: key);

  final String dayOfWeek;

  @override
  Widget build(BuildContext context) {
    var firstLetterOfDayOfWeek = dayOfWeek[0];
    return Container(
      child: Center(
        child: Text(firstLetterOfDayOfWeek),
      ),
      margin: const EdgeInsets.all(1.5),
      width: size,
      height: size,
    );
  }
}

class DayWidget extends StatefulWidget {
  DayWidget({
    Key key,
    this.day,
  }) : super(key: key);

  final Day day;

  @override
  _DayWidgetState createState() => _DayWidgetState();
}

class _DayWidgetState extends State<DayWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Material(
        color: widget.day.isSelected ? Colors.blue : Color(0xffebedf0),
        child: InkWell(
          onTap: () {
            setState(() {
              widget.day.isSelected = !widget.day.isSelected;
            });
          },
          child: Container(
            height: size,
            width: size,
          ),
        ),
      ),
    );
  }
}

class Year {
  int year;
  Map<int, List<Day>> weeks;

  Year(this.year) {
    weeks = Map<int, List<Day>>();
  }

  Year build() {
    List<DateTime> dateTimeList = new List<DateTime>();
    dateTimeList.add(DateTime(year, 1, 1, 12, 0, 0));
    while (isLastDayOfYear(dateTimeList.last)) {
      var dateTime = dateTimeList.last.add(Duration(days: 1));
      dateTimeList.add(dateTime);
    }

    separateOnWeek(dateTimeList);
    return this;
  }

  void separateOnWeek(List<DateTime> dateTimeList) {
    dateTimeList.forEach((dateTime) {
      Jiffy.locale("fr");
      var weekOfYear = Jiffy(dateTime).week;
      if (weeks.containsKey(weekOfYear)) {
        weeks[weekOfYear].add(Day(dateTime));
      } else {
        var dayList = List<Day>();
        dayList.add(Day(dateTime));
        weeks.putIfAbsent(weekOfYear, () => dayList);
      }
    });
  }

  bool isLastDayOfYear(DateTime dateTime) {
    return dateTime.compareTo(DateTime(2020, 12, 31, 12, 0, 0)) != 0;
  }
}

class Day {
  DateTime dateTime;
  bool isSelected = false;

  Day(this.dateTime);
}
