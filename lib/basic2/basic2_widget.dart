import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Basic2Widget extends StatefulWidget {
  const Basic2Widget({Key? key}) : super(key: key);

  @override
  _Basic2WidgetState createState() => _Basic2WidgetState();
}

class _Basic2WidgetState extends State<Basic2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Basic2'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF151233),
        automaticallyImplyLeading: false,
        title: Text(
          '기본조사 (1-4문항)',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 50,
              fillColor: Color(0xFF151233),
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('BASIC2_PAGE_back_Button_ON_TAP');
                logFirebaseEvent('back_Button_navigate_to');
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageWidget(),
                  ),
                );
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '간접 흡연에 관한 푸시 알림을 받으시겠습니까?',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.8, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 32),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'BASIC2_PAGE_basic_survey_yes_ON_TAP');
                          logFirebaseEvent('basic_survey_yes_alert_dialog');
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('간접흡연 EMI 푸시알람'),
                                content: Text(
                                    '푸시 알람이 설정되었습니다. 이제부터, 매일 푸시 알람을 받으실 수 있습니다. '),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('확인'),
                                  ),
                                ],
                              );
                            },
                          );
                          logFirebaseEvent('basic_survey_yes_backend_call');

                          final usersUpdateData = createUsersRecordData(
                            displayName: '푸시 알람 받음',
                          );
                          await currentUserReference!.update(usersUpdateData);
                        },
                        text: '예',
                        options: FFButtonOptions(
                          width: 150,
                          height: 50,
                          color: FlutterFlowTheme.of(context).alternate,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.05, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 32),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('basic_survey_no pressed ...');
                          },
                          text: '아니요',
                          options: FFButtonOptions(
                            width: 150,
                            height: 50,
                            color: Color(0xFF151233),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 32),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('BASIC2_PAGE_basic_survey_done_ON_TAP');
                  logFirebaseEvent('basic_survey_done_alert_dialog');
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('기본 조사 완료!'),
                        content: Text('수고하셨습니다. 다음 조사를 위해 EMA 설문조사로 이동해주세요!'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('확인'),
                          ),
                        ],
                      );
                    },
                  );
                  logFirebaseEvent('basic_survey_done_navigate_to');
                  await Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageWidget(),
                    ),
                  );
                },
                text: 'COMPLITE',
                options: FFButtonOptions(
                  width: 300,
                  height: 50,
                  color: Color(0xFF151233),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
