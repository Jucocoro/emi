import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InsertWidget extends StatefulWidget {
  const InsertWidget({Key? key}) : super(key: key);

  @override
  _InsertWidgetState createState() => _InsertWidgetState();
}

class _InsertWidgetState extends State<InsertWidget> {
  DateTime? datePicked1;
  TextEditingController? countController;
  List<String>? qnA5AnswerYesValues;
  List<String>? qnA5AnswerNoValues;
  List<String>? qnA6AnswerYesValues;
  DateTime? datePicked2;
  TextEditingController? count2Controller;
  List<String>? qnA6AnswerNoValues;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    count2Controller = TextEditingController();
    countController = TextEditingController();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Insert'});
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    count2Controller?.dispose();
    countController?.dispose();
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
          '기본조사 (5-6문항)',
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
                logFirebaseEvent('INSERT_arrow_forward_ios_rounded_ICN_ON_');
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 10),
                        child: Text(
                          '5. 오늘 하루 동안 담배연기(2차 흡연)를 맡은 적이 있습니까?',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 10),
                              child: FlutterFlowCheckboxGroup(
                                options: ['예'],
                                onChanged: (val) async {
                                  setState(() => qnA5AnswerYesValues = val);
                                  logFirebaseEvent(
                                      'INSERT_QnA5_answer_yes_ON_FORM_WIDGET_SE');
                                  logFirebaseEvent(
                                      'QnA5_answer_yes_backend_call');

                                  final usersUpdateData = {
                                    ...createUsersRecordData(
                                      email: '',
                                      qnA5: '예',
                                    ),
                                    'created_time':
                                        FieldValue.serverTimestamp(),
                                  };
                                  await currentUserReference!
                                      .update(usersUpdateData);
                                },
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                checkColor: Colors.white,
                                checkboxBorderColor: Color(0xFF95A1AC),
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                initialized: qnA5AnswerYesValues != null,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 419.1,
                        height: 62.9,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: FutureBuilder<UsersRecord>(
                          future: UsersRecord.getDocumentOnce(
                              currentUserReference!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final stackUsersRecord = snapshot.data!;
                            return InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'INSERT_PAGE_Stack_7g2h7vlx_ON_TAP');
                                logFirebaseEvent('Stack_backend_call');

                                final usersUpdateData = createUsersRecordData(
                                  email: stackUsersRecord.email,
                                  qnA5:
                                      '${valueOrDefault(currentUserDocument?.qnA5, '')}',
                                );
                                await stackUsersRecord.reference
                                    .update(usersUpdateData);
                              },
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, -1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          2, 2, 2, 2),
                                      child: TextFormField(
                                        controller: countController,
                                        onFieldSubmitted: (_) async {
                                          logFirebaseEvent(
                                              'INSERT_PAGE_count_ON_TEXTFIELD_SUBMIT');
                                          logFirebaseEvent(
                                              'count_backend_call');

                                          final usersUpdateData =
                                              createUsersRecordData(
                                            email: stackUsersRecord.email,
                                            qnA5: '${stackUsersRecord.qnA5}',
                                          );
                                          await currentUserReference!
                                              .update(usersUpdateData);
                                          logFirebaseEvent(
                                              'count_date_time_picker');
                                          final _datePicked1Date =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: getCurrentTimestamp,
                                            firstDate: DateTime(1900),
                                            lastDate: DateTime(2050),
                                          );

                                          TimeOfDay? _datePicked1Time;
                                          if (_datePicked1Date != null) {
                                            _datePicked1Time =
                                                await showTimePicker(
                                              context: context,
                                              initialTime:
                                                  TimeOfDay.fromDateTime(
                                                      getCurrentTimestamp),
                                            );
                                          }

                                          if (_datePicked1Date != null &&
                                              _datePicked1Time != null) {
                                            setState(
                                              () => datePicked1 = DateTime(
                                                _datePicked1Date.year,
                                                _datePicked1Date.month,
                                                _datePicked1Date.day,
                                                _datePicked1Time!.hour,
                                                _datePicked1Time.minute,
                                              ),
                                            );
                                          }
                                        },
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText:
                                              '                       회         분',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF888888),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF888888),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 24, 20, 24),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                        maxLines: null,
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: FlutterFlowCheckboxGroup(
                          options: ['아니오'],
                          onChanged: (val) async {
                            setState(() => qnA5AnswerNoValues = val);
                            logFirebaseEvent(
                                'INSERT_QnA5_answer_no_ON_FORM_WIDGET_SEL');
                            logFirebaseEvent('QnA5_answer_no_backend_call');

                            final usersUpdateData = {
                              ...createUsersRecordData(
                                qnA5: '아니오',
                                email: '',
                              ),
                              'created_time': FieldValue.serverTimestamp(),
                            };
                            await currentUserReference!.update(usersUpdateData);
                          },
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor: Colors.white,
                          checkboxBorderColor: Color(0xFF95A1AC),
                          textStyle: FlutterFlowTheme.of(context).bodyText1,
                          initialized: qnA5AnswerNoValues != null,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 10),
                        child: Text(
                          '5-1. (jump in time) 2차 흡연을 맡았다면 어플을 클릭 -report',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 20),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'INSERT_PAGE_QnA5-1_two_Button_ON_TAP');
                            logFirebaseEvent('QnA5-1_two_Button_backend_call');

                            final usersUpdateData = createUsersRecordData(
                              email: '',
                              qnA51: '2차 흡연 맡음',
                            );
                            await currentUserReference!.update(usersUpdateData);
                          },
                          text: '2차 흡연',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Color(0xFF151233),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 10),
                        child: Text(
                          '6.오늘 하루 동안 담배연기가 아닐지라도 담배로 인한 흡연물질에(3차 흡연 등) 노출되었다고 생각하십니까?',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 10),
                        child: FlutterFlowCheckboxGroup(
                          options: ['예'],
                          onChanged: (val) async {
                            setState(() => qnA6AnswerYesValues = val);
                            logFirebaseEvent(
                                'INSERT_QnA6_answer_yes_ON_FORM_WIDGET_SE');
                            logFirebaseEvent('QnA6_answer_yes_backend_call');

                            final usersUpdateData = {
                              ...createUsersRecordData(
                                email: '',
                                qnA6:
                                    '6.오늘 하루 동안 담배연기가 아닐지라도 담배로 인한 흡연물질에(3차 흡연 등) 노출되었다고 생각하십니까? : 예',
                              ),
                              'created_time': FieldValue.serverTimestamp(),
                            };
                            await currentUserReference!.update(usersUpdateData);
                          },
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor: Colors.white,
                          checkboxBorderColor: Color(0xFF95A1AC),
                          textStyle: FlutterFlowTheme.of(context).bodyText1,
                          initialized: qnA6AnswerYesValues != null,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                          child: StreamBuilder<UsersRecord>(
                            stream:
                                UsersRecord.getDocument(currentUserReference!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              final count2UsersRecord = snapshot.data!;
                              return TextFormField(
                                controller: count2Controller,
                                onFieldSubmitted: (_) async {
                                  logFirebaseEvent(
                                      'INSERT_PAGE_count2_ON_TEXTFIELD_SUBMIT');
                                  logFirebaseEvent('count2_backend_call');

                                  final usersUpdateData = createUsersRecordData(
                                    email: count2UsersRecord.email,
                                    qnA6: '${count2UsersRecord.qnA6}',
                                  );
                                  await currentUserReference!
                                      .update(usersUpdateData);
                                  logFirebaseEvent('count2_date_time_picker');
                                  final _datePicked2Date = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2050),
                                  );

                                  if (_datePicked2Date != null) {
                                    setState(
                                      () => datePicked2 = DateTime(
                                        _datePicked2Date.year,
                                        _datePicked2Date.month,
                                        _datePicked2Date.day,
                                      ),
                                    );
                                  }
                                },
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      '                       회         분',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF888888),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF888888),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 24, 20, 24),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                maxLines: null,
                                keyboardType: TextInputType.number,
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: FlutterFlowCheckboxGroup(
                          options: ['아니오'],
                          onChanged: (val) async {
                            setState(() => qnA6AnswerNoValues = val);
                            logFirebaseEvent(
                                'INSERT_QnA6_answer_no_ON_FORM_WIDGET_SEL');
                            logFirebaseEvent('QnA6_answer_no_backend_call');

                            final usersUpdateData = {
                              ...createUsersRecordData(
                                email: '',
                                qnA6:
                                    '6.오늘 하루 동안 담배연기가 아닐지라도 담배로 인한 흡연물질에(3차 흡연 등) 노출되었다고 생각하십니까?: 아니오',
                              ),
                              'created_time': FieldValue.serverTimestamp(),
                            };
                            await currentUserReference!.update(usersUpdateData);
                          },
                          activeColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          checkColor: Colors.white,
                          checkboxBorderColor: Color(0xFF95A1AC),
                          textStyle: FlutterFlowTheme.of(context).bodyText1,
                          initialized: qnA6AnswerNoValues != null,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 10),
                        child: Text(
                          '6-1. (jump in time) 3차 흡연에 노출되었다고 생각되면 \n어플을 클릭 -report',
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, -0.3),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 20, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'INSERT_PAGE_QnA6-1_three_Button_ON_TAP');
                              logFirebaseEvent(
                                  'QnA6-1_three_Button_backend_call');

                              final usersUpdateData = createUsersRecordData(
                                email: '',
                                qnA61: '3차 흡연 맡음',
                              );
                              await currentUserReference!
                                  .update(usersUpdateData);
                            },
                            text: '3차 흡연',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: Color(0xFF151233),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 63.4,
                        decoration: BoxDecoration(),
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
                        logFirebaseEvent(
                            'INSERT_PAGE_basic_survey_complite_ON_TAP');
                        logFirebaseEvent('basic_survey_complite_alert_dialog');
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('EMA 설문조사 완료!'),
                              content: Text(
                                  '수고하셨습니다. 다음으로  하루 중 오후 저녁 사이에 1회씩 실시하는 설문조사를 진행해주세요. (7-11문항)'),
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
                        logFirebaseEvent('basic_survey_complite_navigate_to');
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
