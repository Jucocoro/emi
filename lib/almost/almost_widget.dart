import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../daily2/daily2_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AlmostWidget extends StatefulWidget {
  const AlmostWidget({Key? key}) : super(key: key);

  @override
  _AlmostWidgetState createState() => _AlmostWidgetState();
}

class _AlmostWidgetState extends State<AlmostWidget> {
  String? absolutelyValue1;
  String? almostValue1;
  String? sometimesValue1;
  String? frequentlyValue1;
  String? alwaysValue1;
  String? absolutelyValue2;
  String? almostValue2;
  String? sometimesValue2;
  String? frequentlyValue2;
  String? alwaysValue2;
  String? absolutelyValue3;
  String? almostsValue;
  String? sometimesValue3;
  String? frequentlyValue3;
  String? alwaysValue3;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'almost'});
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFF151233),
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 50,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ALMOST_arrow_back_rounded_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_navigate_to');
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePageWidget(),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: Text(
                            'Back',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                    child: Text(
                      '(daily 하루 한번-오후 / 저녁중)',
                      style: FlutterFlowTheme.of(context).title2.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 22,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                          child: Text(
                            'Question 1/2',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 0),
                        child: LinearPercentIndicator(
                          percent: 0.5,
                          width: MediaQuery.of(context).size.width * 0.96,
                          lineHeight: 12,
                          animation: true,
                          progressColor: Color(0xFF151233),
                          backgroundColor:
                              FlutterFlowTheme.of(context).lineColor,
                          barRadius: Radius.circular(24),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                        child: Text(
                          '(3차 흡연 감수성)\n하루 한번, 오후 저녁 중으로 3차 흡연 감수성의 \n변화를 알아보는 설문조사입니다.',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                        child: InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'ALMOST_PAGE_Text_xz6bqfed_ON_TAP');
                            logFirebaseEvent('Text_backend_call');

                            final usersUpdateData = createUsersRecordData();
                            await currentUserReference!.update(usersUpdateData);
                          },
                          child: Text(
                            '7. 당신은 지난 설문 이후 가장 3차 흡연에 대해       \n    얼마나 주의를 기울였습니까?',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowRadioButton(
                            options: ['전혀'].toList(),
                            onChanged: (val) async {
                              setState(() => absolutelyValue1 = val);
                              logFirebaseEvent(
                                  'ALMOST_absolutely_ON_FORM_WIDGET_SELECTE');
                              logFirebaseEvent('absolutely_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA7: '전혀',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['거의'].toList(),
                            onChanged: (val) async {
                              setState(() => almostValue1 = val);
                              logFirebaseEvent(
                                  'ALMOST_almost_ON_FORM_WIDGET_SELECTED');
                              logFirebaseEvent('almost_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA7: '거의',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['가끔'].toList(),
                            onChanged: (val) async {
                              setState(() => sometimesValue1 = val);
                              logFirebaseEvent(
                                  'ALMOST_Sometimes_ON_FORM_WIDGET_SELECTED');
                              logFirebaseEvent('Sometimes_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA7: '가끔',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['자주'].toList(),
                            onChanged: (val) async {
                              setState(() => frequentlyValue1 = val);
                              logFirebaseEvent(
                                  'ALMOST_frequently_ON_FORM_WIDGET_SELECTE');
                              logFirebaseEvent('frequently_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA7: '자주',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['항상'].toList(),
                            onChanged: (val) async {
                              setState(() => alwaysValue1 = val);
                              logFirebaseEvent(
                                  'ALMOST_always_ON_FORM_WIDGET_SELECTED');
                              logFirebaseEvent('always_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA7: '항상',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 40, 0, 20),
                          child: Text(
                            '8. 지난 설문 이후 3차 흡연이 당신을 얼마나 방해했습니까?',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowRadioButton(
                            options: ['전혀'].toList(),
                            onChanged: (val) async {
                              setState(() => absolutelyValue2 = val);
                              logFirebaseEvent(
                                  'ALMOST_absolutely_ON_FORM_WIDGET_SELECTE');
                              logFirebaseEvent('absolutely_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA8: '전혀',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['거의'].toList(),
                            onChanged: (val) async {
                              setState(() => almostValue2 = val);
                              logFirebaseEvent(
                                  'ALMOST_almost_ON_FORM_WIDGET_SELECTED');
                              logFirebaseEvent('almost_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  qnA8: '거의',
                                  email: currentUserEmail,
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['가끔'].toList(),
                            onChanged: (val) async {
                              setState(() => sometimesValue2 = val);
                              logFirebaseEvent(
                                  'ALMOST_Sometimes_ON_FORM_WIDGET_SELECTED');
                              logFirebaseEvent('Sometimes_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA8: '가끔',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['자주'].toList(),
                            onChanged: (val) async {
                              setState(() => frequentlyValue2 = val);
                              logFirebaseEvent(
                                  'ALMOST_frequently_ON_FORM_WIDGET_SELECTE');
                              logFirebaseEvent('frequently_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA8: '자주',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['항상'].toList(),
                            onChanged: (val) async {
                              setState(() => alwaysValue2 = val);
                              logFirebaseEvent(
                                  'ALMOST_always_ON_FORM_WIDGET_SELECTED');
                              logFirebaseEvent('always_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA8: '항상',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 40, 0, 20),
                          child: Text(
                            '9. 당신은 지난 설문 이후 3차 흡연을 회피하기 위해  얼마나 \n    노력했습니까?',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowRadioButton(
                            options: ['전혀'].toList(),
                            onChanged: (val) async {
                              setState(() => absolutelyValue3 = val);
                              logFirebaseEvent(
                                  'ALMOST_absolutely_ON_FORM_WIDGET_SELECTE');
                              logFirebaseEvent('absolutely_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA9: '전혀',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['거의'].toList(),
                            onChanged: (val) async {
                              setState(() => almostsValue = val);
                              logFirebaseEvent(
                                  'ALMOST_almosts_ON_FORM_WIDGET_SELECTED');
                              logFirebaseEvent('almosts_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA9: '거의',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['가끔'].toList(),
                            onChanged: (val) async {
                              setState(() => sometimesValue3 = val);
                              logFirebaseEvent(
                                  'ALMOST_Sometimes_ON_FORM_WIDGET_SELECTED');
                              logFirebaseEvent('Sometimes_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA9: '가끔',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['자주'].toList(),
                            onChanged: (val) async {
                              setState(() => frequentlyValue3 = val);
                              logFirebaseEvent(
                                  'ALMOST_frequently_ON_FORM_WIDGET_SELECTE');
                              logFirebaseEvent('frequently_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA9: '자주',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                          FlutterFlowRadioButton(
                            options: ['항상'].toList(),
                            onChanged: (val) async {
                              setState(() => alwaysValue3 = val);
                              logFirebaseEvent(
                                  'ALMOST_always_ON_FORM_WIDGET_SELECTED');
                              logFirebaseEvent('always_backend_call');

                              final usersUpdateData = {
                                ...createUsersRecordData(
                                  email: currentUserEmail,
                                  qnA9: '항상',
                                ),
                                'created_time': FieldValue.serverTimestamp(),
                              };
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            optionHeight: 25,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.vertical,
                            radioButtonColor: Colors.blue,
                            inactiveRadioButtonColor: Color(0x8A000000),
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.start,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 32),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('ALMOST_PAGE_NEXT_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
                            child: Daily2Widget(),
                          ),
                        );
                      },
                      text: 'NEXT',
                      options: FFButtonOptions(
                        width: 300,
                        height: 50,
                        color: Color(0xFF151233),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
            ],
          ),
        ),
      ),
    );
  }
}
