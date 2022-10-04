import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.03, -0.94),
                child: Image.asset(
                  'assets/images/Medov_(3).png',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.62, -0.03),
                child: Text(
                  'MedoV, \nwe care for you',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 25,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.64, 0.66),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('signup');
                  },
                  text: 'Sign up',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0x004B39EF),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.53, 0.66),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('sigin');
                  },
                  text: 'Sign in',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0x00FFFFFF),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.17, 0.51),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    final user = await signInWithGoogle(context);
                    if (user == null) {
                      return;
                    }

                    context.pushNamedAuth('OurServices', mounted);
                  },
                  text: 'Sign in with Google',
                  icon: Icon(
                    Icons.add,
                    color: Colors.transparent,
                    size: 20,
                  ),
                  options: FFButtonOptions(
                    width: 290,
                    height: 44,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    textStyle: GoogleFonts.getFont(
                      'Roboto',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    elevation: 4,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.12, 0.5),
                child: Container(
                  width: 230,
                  height: 44,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.83, 0),
                        child: Container(
                          width: 22,
                          height: 22,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
