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

class Daily2Widget extends StatefulWidget {
  const Daily2Widget({
    Key? key,
    bool? vas1,
  })  : this.vas1 = vas1 ?? true,
        super(key: key);

  final bool vas1;

  @override
  _Daily2WidgetState createState() => _Daily2WidgetState();
}

class _Daily2WidgetState extends State<Daily2Widget> {
  String? radioButtonValue1;
  String? radioButtonValue2;
  String? radioButtonValue3;
  String? radioButtonValue4;
  String? radioButtonValue5;
  double? sliderValue;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'daily2'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
                                  'DAILY2_arrow_back_rounded_ICN_ON_TAP');
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
                            'Question 2/2',
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
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                        child: Text(
                          '(건강 관련 신념)\n하루 한번, 오후 저녁 중으로 건강 관련 신념의 \n변화를 알아보는 설문조사입니다.',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 20),
                        child: Text(
                          '10. 현재 당신의 건강상태는 어떻습니까?',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(-1, -0.1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: FlutterFlowRadioButton(
                                  options: ['매우 건강하지 않다'].toList(),
                                  onChanged: (val) async {
                                    setState(() => radioButtonValue1 = val);
                                    logFirebaseEvent(
                                        'DAILY2_RadioButton_a3w47mln_ON_FORM_WIDG');
                                    logFirebaseEvent(
                                        'RadioButton_backend_call');

                                    final usersUpdateData = {
                                      ...createUsersRecordData(
                                        email: currentUserEmail,
                                        qnA10: '매우 건강하지 않다',
                                      ),
                                      'created_time':
                                          FieldValue.serverTimestamp(),
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: FlutterFlowRadioButton(
                              options: ['건강하지 않다'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue2 = val);
                                logFirebaseEvent(
                                    'DAILY2_RadioButton_xa98bxxy_ON_FORM_WIDG');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    qnA10: '건강하지 않다',
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
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowRadioButton(
                              options: ['보통이다'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue3 = val);
                                logFirebaseEvent(
                                    'DAILY2_RadioButton_xmhsav1y_ON_FORM_WIDG');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    qnA10: '보통이다',
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
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: FlutterFlowRadioButton(
                              options: ['건강하다'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue4 = val);
                                logFirebaseEvent(
                                    'DAILY2_RadioButton_d94iuyjf_ON_FORM_WIDG');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    qnA10: '건강하다',
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
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: FlutterFlowRadioButton(
                              options: ['매우 건강하다'].toList(),
                              onChanged: (val) async {
                                setState(() => radioButtonValue5 = val);
                                logFirebaseEvent(
                                    'DAILY2_RadioButton_xfzco53k_ON_FORM_WIDG');
                                logFirebaseEvent('RadioButton_backend_call');

                                final usersUpdateData = {
                                  ...createUsersRecordData(
                                    email: currentUserEmail,
                                    qnA10: '매우 건강하다',
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
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 40, 0, 20),
                          child: Text(
                            '11. 간접흡연(3차 흡연 포함)을 피함으로써 건강 상의 변화가 \n     생겼다고 생각하십니까?',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                      Container(
                        width: 500,
                        child: Slider(
                          activeColor: Color(0xFF3C3890),
                          inactiveColor: FlutterFlowTheme.of(context).lineColor,
                          min: 0,
                          max: 100,
                          value: sliderValue ??= 0,
                          label: sliderValue.toString(),
                          divisions: 2,
                          onChanged: (newValue) async {
                            newValue =
                                double.parse(newValue.toStringAsFixed(2));
                            setState(() => sliderValue = newValue);
                            logFirebaseEvent(
                                'DAILY2_Slider_53xzgusm_ON_FORM_WIDGET_SE');
                            logFirebaseEvent('Slider_backend_call');

                            final usersUpdateData = {
                              ...createUsersRecordData(
                                email: currentUserEmail,
                                qnA11: () {
                                  if (widget.vas1) {
                                    return valueOrDefault<String>(
                                      widget.vas1.toString(),
                                      '부정적',
                                    );
                                  } else if (widget.vas1) {
                                    return valueOrDefault<String>(
                                      widget.vas1.toString(),
                                      '변화없음',
                                    );
                                  } else {
                                    return valueOrDefault<String>(
                                      widget.vas1.toString(),
                                      '긍정적',
                                    );
                                  }
                                }(),
                              ),
                              'created_time': FieldValue.serverTimestamp(),
                            };
                            await currentUserReference!.update(usersUpdateData);
                          },
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: Text(
                              '부정적',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(114, 0, 0, 0),
                            child: Text(
                              '변화없음',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.05, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(114, 0, 0, 0),
                              child: Text(
                                '긍정적',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
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
                        logFirebaseEvent('DAILY2_PAGE_COMPLITE_BTN_ON_TAP');
                        logFirebaseEvent('Button_alert_dialog');
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('5-11문항 완료!'),
                              content: Text(
                                  '수고하셨습니다. 다음으로 아침 저녁 하루 2번 진행하는 설문조사 12번 문항을 완료해주세요.'),
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
