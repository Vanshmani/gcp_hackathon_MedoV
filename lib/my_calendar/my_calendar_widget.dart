import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCalendarWidget extends StatefulWidget {
  const MyCalendarWidget({Key? key}) : super(key: key);

  @override
  _MyCalendarWidgetState createState() => _MyCalendarWidgetState();
}

class _MyCalendarWidgetState extends State<MyCalendarWidget> {
  DateTimeRange? calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(67),
        child: AppBar(
          backgroundColor: Color(0x23FFFFFF),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_outlined,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 30,
            ),
            onPressed: () async {
              if (Navigator.of(context).canPop()) {
                context.pop();
              }
              context.pushNamed('OurServices');
            },
          ),
          flexibleSpace: Align(
            alignment: AlignmentDirectional(0.05, 0),
            child: Text(
              'My Calendar',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.account_circle_rounded,
                color: Color(0xFF57636C),
                size: 30,
              ),
              onPressed: () async {
                context.pushNamed('MyProfile');
              },
            ),
          ],
          elevation: 2,
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.7),
                child: FlutterFlowCalendar(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  iconColor: FlutterFlowTheme.of(context).lineColor,
                  weekFormat: false,
                  weekStartsMonday: false,
                  initialDate: getCurrentTimestamp,
                  onChange: (DateTimeRange? newSelectedDate) {
                    setState(() => calendarSelectedDay = newSelectedDate);
                  },
                  titleStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).secondaryColor,
                  ),
                  dayOfWeekStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).secondaryColor,
                  ),
                  dateStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).secondaryColor,
                  ),
                  selectedDateStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  inactiveDateStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.89, 0.47),
                child: Text(
                  'Today',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 16,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.07, 0.9),
                child: Container(
                  width: 350,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0x18FFFFFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.05),
                    child: Container(
                      height: 500,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.28, -0.8),
                            child: Text(
                              'Paracetamol 500mg',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.88, -0.08),
                            child: FaIcon(
                              FontAwesomeIcons.appleAlt,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.41, -0.12),
                            child: Text(
                              'After Breakfast',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.87, 0.72),
                            child: FaIcon(
                              FontAwesomeIcons.solidClock,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.5, 0.66),
                            child: Text(
                              '9:00 AM',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 16,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.87, 0.68),
                child: FaIcon(
                  FontAwesomeIcons.capsules,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 24,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.48, 0.49),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.notifications_active,
                    color: Colors.white,
                    size: 22,
                  ),
                  onPressed: () async {
                    await requestPermission(notificationsPermission);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
