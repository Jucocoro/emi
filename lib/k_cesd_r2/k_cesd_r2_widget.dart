import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../k_cesd_r3/k_cesd_r3_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class KCesdR2Widget extends StatefulWidget {
  const KCesdR2Widget({Key? key}) : super(key: key);

  @override
  _KCesdR2WidgetState createState() => _KCesdR2WidgetState();
}

class _KCesdR2WidgetState extends State<KCesdR2Widget> {
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
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'K-CESD-R2'});
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
                logFirebaseEvent('K_CESD_R2_arrow_forward_ios_rounded_ICN_');
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
                            'Question 2/4',
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
                          '6. 마음이 슬펐다.',
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
                                    'K_CESD_R2_RadioButton_4507o5og_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR6: 0,
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
                                    'K_CESD_R2_RadioButton_vyfu7ogb_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = createUsersRecordData(
                                  email: '',
                                  kCesdR6: 1,
                                );
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
                                    'K_CESD_R2_RadioButton_k93bvfkj_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR6: 2,
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
                                    'K_CESD_R2_RadioButton_fs5sbpfj_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR6: 3,
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
                                    'K_CESD_R2_RadioButton_m5e7hcon_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR6: 4,
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
                          '7. 도무지 뭘 해 나갈 염두가 나지 않았다.',
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
                                    'K_CESD_R2_RadioButton_tushydnv_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR7: 0,
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
                                    'K_CESD_R2_RadioButton_baznym43_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR7: 1,
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
                                    'K_CESD_R2_RadioButton_v65qes9a_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR7: 2,
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
                                    'K_CESD_R2_RadioButton_w1kbdbk9_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR7: 3,
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
                                    'K_CESD_R2_RadioButton_yeinc3bk_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = createUsersRecordData(
                                  email: currentUserEmail,
                                );
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
                          '8. 나를 행복하게 하는 것은 아무것도 없었다.',
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
                                    'K_CESD_R2_RadioButton_5x67b2ei_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR8: 0,
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
                                    'K_CESD_R2_RadioButton_p4b6yoat_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR8: 1,
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
                                    'K_CESD_R2_RadioButton_w6zhzcha_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR7: 2,
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
                                    'K_CESD_R2_RadioButton_8c4ahp0o_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR8: 3,
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
                                    'K_CESD_R2_RadioButton_pzmzt97q_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR8: 4,
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
                          '9. 내가 나쁜 사람처럼 느껴졌다.',
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
                                    'K_CESD_R2_RadioButton_qw9hxcrr_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR9: 0,
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
                                    'K_CESD_R2_RadioButton_t0z11ccd_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR9: 1,
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
                                    'K_CESD_R2_RadioButton_s2190qwq_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = createUsersRecordData(
                                  email: currentUserEmail,
                                  kCesdR9: 2,
                                );
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
                                    'K_CESD_R2_RadioButton_j3gq4rdo_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR9: 3,
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
                                    'K_CESD_R2_RadioButton_tsynhsil_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR8: 4,
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
                          '10. 일상 활동에 대한 흥미를 잃었다.',
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
                                    'K_CESD_R2_RadioButton_yzsdihyj_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR10: 0,
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
                                    'K_CESD_R2_RadioButton_r6ap0l5i_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR10: 1,
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
                                    'K_CESD_R2_RadioButton_lm837mwh_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR10: 2,
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
                                    'K_CESD_R2_RadioButton_qfq66o7b_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR10: 3,
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
                                    'K_CESD_R2_RadioButton_3t0qyffl_ON_FORM_W');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    kCesdR10: 4,
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
                        logFirebaseEvent('K_CESD_R2_PAGE_NEXT_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');
                        await Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                            reverseDuration: Duration(milliseconds: 0),
                            child: KCesdR3Widget(),
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
