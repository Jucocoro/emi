import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../k_cesd_r2/k_cesd_r2_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class KCesdR1Widget extends StatefulWidget {
  const KCesdR1Widget({Key? key}) : super(key: key);

  @override
  _KCesdR1WidgetState createState() => _KCesdR1WidgetState();
}

class _KCesdR1WidgetState extends State<KCesdR1Widget> {
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
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'K-CESD-R1'});
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
              onPressed: () async {
                logFirebaseEvent('K_CESD_R1_arrow_forward_ios_rounded_ICN_');
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
                            'Question 1/4',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 0),
                        child: LinearPercentIndicator(
                          percent: 0.25,
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
                          '1. 식욕이 없었다. ',
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
                                    'K_CESD_R1_RadioButton_xttblk8y_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR1: 0,
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
                                    'K_CESD_R1_RadioButton_9g0cz7pv_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR1: 1,
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
                                    'K_CESD_R1_RadioButton_ii286mlv_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR1: 2,
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
                                    'K_CESD_R1_RadioButton_ulktziic_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR1: 3,
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
                                    'K_CESD_R1_RadioButton_dzackcsj_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR1: 4,
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
                          '2. 울적한 기분을 떨쳐 버릴 수  없었다.',
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
                                    'K_CESD_R1_RadioButton_31jeqh0v_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR2: 0,
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
                                    'K_CESD_R1_RadioButton_74ph2ao6_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR2: 1,
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
                                    'K_CESD_R1_RadioButton_fs108guf_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR2: 2,
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
                                    'K_CESD_R1_RadioButton_tmgctcoo_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR2: 3,
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
                                    'K_CESD_R1_RadioButton_dgp803gv_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR2: 4,
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
                          '3. 무슨 일을 하든 정신을 집중하기가 힘들었다. ',
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
                                    'K_CESD_R1_RadioButton_bl1e39xt_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR3: 0,
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
                                    'K_CESD_R1_RadioButton_qdojmp0n_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR3: 1,
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
                                    'K_CESD_R1_RadioButton_4pzgzyu0_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR3: 2,
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
                                    'K_CESD_R1_RadioButton_20t6my2d_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR3: 3,
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
                                    'K_CESD_R1_RadioButton_je89prmk_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR3: 4,
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
                          '4. 상당히 우울했다.',
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
                                    'K_CESD_R1_RadioButton_sixb7dh6_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR4: 0,
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
                                    'K_CESD_R1_RadioButton_oft9b9kz_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR4: 1,
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
                                    'K_CESD_R1_RadioButton_zcznvwqn_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR4: 2,
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
                                    'K_CESD_R1_RadioButton_zk9wf3yu_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR4: 3,
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
                                    'K_CESD_R1_RadioButton_cbf1317r_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR4: 4,
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
                          '5. 잠을 설쳤다. (잠을 잘 이루지 못했다.)',
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
                                    'K_CESD_R1_RadioButton_xhr34h1e_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR5: 0,
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
                                    'K_CESD_R1_RadioButton_hnerc1vq_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR5: 1,
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
                                    'K_CESD_R1_RadioButton_1tryn1yw_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR5: 2,
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
                                    'K_CESD_R1_RadioButton_o01u8tqv_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR5: 3,
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
                                    'K_CESD_R1_RadioButton_pu4dsl2b_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR5: 4,
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
                        logFirebaseEvent('K_CESD_R1_PAGE_NEXT_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');
                        await Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
                            child: KCesdR2Widget(),
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
