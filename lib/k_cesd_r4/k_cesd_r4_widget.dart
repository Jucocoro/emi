import '../auth/auth_util.dart';
import '../backend/backend.dart';
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

class KCesdR4Widget extends StatefulWidget {
  const KCesdR4Widget({Key? key}) : super(key: key);

  @override
  _KCesdR4WidgetState createState() => _KCesdR4WidgetState();
}

class _KCesdR4WidgetState extends State<KCesdR4Widget> {
  String? radioButtonValue10;
  String? radioButtonValue6;
  String? radioButtonValue7;
  String? radioButtonValue8;
  String? radioButtonValue9;
  String? radioButtonValue1;
  String? radioButtonValue2;
  String? radioButtonValue3;
  String? radioButtonValue4;
  String? radioButtonValue5;
  String? radioButtonValue11;
  String? radioButtonValue12;
  String? radioButtonValue13;
  String? radioButtonValue14;
  String? radioButtonValue15;
  String? radioButtonValue16;
  String? radioButtonValue17;
  String? radioButtonValue18;
  String? radioButtonValue19;
  String? radioButtonValue20;
  String? radioButtonValue21;
  String? radioButtonValue22;
  String? radioButtonValue23;
  String? radioButtonValue24;
  String? radioButtonValue25;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'K-CESD-R4'});
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
      appBar: AppBar(
        backgroundColor: Color(0xFF151233),
        automaticallyImplyLeading: false,
        title: Text(
          '부록 (Basline, 7일, 14일 나머지)',
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
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
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
                            'Question 4/4',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 0),
                        child: LinearPercentIndicator(
                          percent: 1,
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
                        padding: EdgeInsetsDirectional.fromSTEB(16, 20, 0, 10),
                        child: Text(
                          '한국판 역학연구 우울척도 개정판 (K-CESD-R)',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          '아래의 내용은 사람들이 느끼거나 행동할 \n(가능성이 있는) 방식을 열거한 것입니다. \n지난 일주일 동안 얼마나 자주 이런식으로 \n느꼈는지 표시해주십시오.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Text(
                          '(지난 일주일)                        \n1일 미만 : 0   1~2일 미만 : 1   3~4일 미만 : 2   5~7일 : 3 \n2주간 거의 매일 : 4',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0A042A),
                                  ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                        child: Text(
                          '16. 항상 피곤했다.',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowRadioButton(
                              options: ['0'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue1 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_6mrndjlx_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR16: 0,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['1'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue2 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_xw3kzx9h_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR16: 1,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['2'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue3 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_c7qqbplh_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR16: 2,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['3'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue4 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_v1gefwsi_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR16: 3,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['4'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue5 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_mquzut0q_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR16: 4,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                        child: Text(
                          '17. 나 자신이 싫었다.',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowRadioButton(
                              options: ['0'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue6 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_gbt1fq17_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR17: 0,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['1'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue7 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_wn9t7l6k_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR17: 1,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['2'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue8 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_q8zbby8a_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR17: 2,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['3'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue9 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_492jt6xy_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR17: 3,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['4'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue10 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_fv3807as_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR17: 4,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                        child: Text(
                          '18. (살을 빼려고) 노력하지 않았는데, 몸무게가 많이 줄었다.',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowRadioButton(
                              options: ['0'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue11 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_0qfpzrlu_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR18: 0,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['1'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue12 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_d5xkkmqk_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR18: 1,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['2'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue13 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_otzj3s1q_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR18: 2,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['3'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue14 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_q2hmvkzy_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR18: 3,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['4'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue15 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_s4l7ytwo_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR18: 4,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                        child: Text(
                          '19. 잠들기가 많이 힘들었다.',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowRadioButton(
                              options: ['0'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue16 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_fgxk6172_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR19: 0,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['1'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue17 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_62mlns1r_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR19: 1,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['2'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue18 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_9pazd3fp_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR19: 2,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['3'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue19 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_q616r7fr_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR19: 3,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['4'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue20 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_najkrjdt_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR19: 4,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                        child: Text(
                          '20. 중요한 일에 집중할 수가 없었다.',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlutterFlowRadioButton(
                              options: ['0'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue21 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_zewf8nxy_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR20: 0,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['1'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue22 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_wfq69wyw_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR20: 1,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['2'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue23 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_5ofalaen_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR20: 2,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['3'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue24 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_frhjx7e8_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR20: 3,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                              options: ['4'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue25 = val);
                                logFirebaseEvent(
                                    'K_CESD_R4_RadioButton_u5sgvv6h_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR20: 4,
                                  ),
                                  'created_time': FieldValue.serverTimestamp(),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                              },
                              optionHeight: 25,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                        logFirebaseEvent('K_CESD_R4_PAGE_COMPLITE_BTN_ON_TAP');
                        logFirebaseEvent('Button_alert_dialog');
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('한국판 역학연구 우울척도 개정판 (K-CESD-R) 완료!'),
                              content: Text(
                                  '수고하셨습니다. 한국판 역학연구 우울척도 개정판 (K-CESD-R)을 1주차 부터 2주차까지 모두 마치셨다면 해당 설문조사를 종료하시면 됩니다.'),
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
                        logFirebaseEvent('Button_navigate_to');
                        await Navigator.push(
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
