import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  static String routeName = 'Settings';
  static String routePath = '/settings';

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget>
    with TickerProviderStateMixin {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().settings1moreopened = true;
      FFAppState().firstRun = false;
    });

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    _model.textController1 ??=
        TextEditingController(text: FFAppState().custom1Label);
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textFieldFocusNode1!.addListener(
      () async {},
    );
    _model.textController2 ??=
        TextEditingController(text: FFAppState().custom2Label);
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(
      () async {},
    );
    _model.textController3 ??=
        TextEditingController(text: FFAppState().custom3Label);
    _model.textFieldFocusNode3 ??= FocusNode();
    _model.textFieldFocusNode3!.addListener(
      () async {},
    );
    _model.textController4 ??=
        TextEditingController(text: FFAppState().custom4Label);
    _model.textFieldFocusNode4 ??= FocusNode();
    _model.textFieldFocusNode4!.addListener(
      () async {},
    );
    _model.textController5 ??=
        TextEditingController(text: FFAppState().custom5Label);
    _model.textFieldFocusNode5 ??= FocusNode();
    _model.textFieldFocusNode5!.addListener(
      () async {},
    );
    _model.textController6 ??=
        TextEditingController(text: FFAppState().custom6Label);
    _model.textFieldFocusNode6 ??= FocusNode();
    _model.textFieldFocusNode6!.addListener(
      () async {},
    );
    animationsMap.addAll({
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryText,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 10.0),
                  child: Text(
                    'Settings',
                    style: GoogleFonts.inter(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 48.0,
                      shadows: [
                        Shadow(
                          color: Color(0xFFE9D4A0),
                          offset: Offset(2.0, 2.0),
                          blurRadius: 1.0,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 16.0),
                    child: Container(
                      width: double.infinity,
                      color: Color(0xFF1C1C1C),
                      child: ExpandableNotifier(
                        controller: _model.expandableExpandableController,
                        child: ExpandablePanel(
                          header: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Select where to save',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          collapsed: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 0.0),
                                  child: AutoSizeText(
                                    '   Shot2Keep stores your documents in-app and creates an extra copy in your: ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Shot2Keep stores your documents in-app and creates an extra copy in your: \n\nGallery › Shot2Keep folder.\n\nYou can export or share any document anytime — even if the Gallery copy is gone\n',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: true,
                            tapBodyToCollapse: false,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                            expandIcon: FontAwesomeIcons.angleDown,
                            collapseIcon: FontAwesomeIcons.angleUp,
                            iconColor: FlutterFlowTheme.of(context).warning,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          child: SwitchListTile(
                            value: _model.switchListTileValue1 ??=
                                FFAppState().personalEnabled,
                            onChanged: (newValue) async {
                              safeSetState(() =>
                                  _model.switchListTileValue1 = newValue);
                              if (newValue) {
                                FFAppState().personalEnabled = true;
                                safeSetState(() {});
                              } else {
                                FFAppState().personalEnabled = false;
                                safeSetState(() {});
                              }
                            },
                            title: Text(
                              'Personal',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).warning,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            subtitle: Text(
                              'Store private stuff',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context).accent1,
                            activeColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).warning,
                            dense: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          child: SwitchListTile(
                            value: _model.switchListTileValue2 ??=
                                FFAppState().homeEnabled,
                            onChanged: (newValue) async {
                              safeSetState(() =>
                                  _model.switchListTileValue2 = newValue);
                              if (newValue) {
                                FFAppState().homeEnabled = true;
                              } else {
                                FFAppState().homeEnabled = false;
                              }
                            },
                            title: Text(
                              'Home',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).warning,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            subtitle: Text(
                              'Everything about home',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context).accent1,
                            activeColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).warning,
                            dense: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          child: SwitchListTile(
                            value: _model.switchListTileValue3 ??=
                                FFAppState().workEnabled,
                            onChanged: (newValue) async {
                              safeSetState(() =>
                                  _model.switchListTileValue3 = newValue);
                              if (newValue) {
                                FFAppState().workEnabled = true;
                              } else {
                                FFAppState().workEnabled = false;
                              }
                            },
                            title: Text(
                              'Work',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).warning,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            subtitle: Text(
                              'Job documents here',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context).accent1,
                            activeColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).warning,
                            dense: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          child: SwitchListTile(
                            value: _model.switchListTileValue4 ??=
                                FFAppState().vehicleEnabled,
                            onChanged: (newValue) async {
                              safeSetState(() =>
                                  _model.switchListTileValue4 = newValue);
                              if (newValue) {
                                FFAppState().vehicleEnabled = true;
                              } else {
                                FFAppState().vehicleEnabled = false;
                              }
                            },
                            title: Text(
                              'Vehicle',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).warning,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            subtitle: Text(
                              'Everything about your ride',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context).accent1,
                            activeColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).warning,
                            dense: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          child: SwitchListTile(
                            value: _model.switchListTileValue5 ??=
                                FFAppState().purchasesEnabled,
                            onChanged: (newValue) async {
                              safeSetState(() =>
                                  _model.switchListTileValue5 = newValue);
                              if (newValue) {
                                FFAppState().purchasesEnabled = true;
                              } else {
                                FFAppState().purchasesEnabled = false;
                              }
                            },
                            title: Text(
                              'Purchases',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).warning,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            subtitle: Text(
                              'Receipts & warranties',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context).accent1,
                            activeColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).warning,
                            dense: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 16.0, 20.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          child: SwitchListTile(
                            value: _model.switchListTileValue6 ??=
                                FFAppState().temporaryEnabled,
                            onChanged: (newValue) async {
                              safeSetState(() =>
                                  _model.switchListTileValue6 = newValue);
                              if (newValue) {
                                FFAppState().temporaryEnabled = true;
                              } else {
                                FFAppState().temporaryEnabled = false;
                              }
                            },
                            title: Text(
                              'Temporary',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).warning,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            subtitle: Text(
                              'Short-term storage zone',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context).accent1,
                            activeColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            activeTrackColor:
                                FlutterFlowTheme.of(context).warning,
                            dense: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: Text(
                    'Custom Categories',
                    style: GoogleFonts.inter(
                      color: FlutterFlowTheme.of(context).warning,
                      fontWeight: FontWeight.w600,
                      fontSize: 28.0,
                      shadows: [
                        Shadow(
                          color: FlutterFlowTheme.of(context).primaryText,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 10.0,
                        ),
                        Shadow(
                          color: FlutterFlowTheme.of(context).primaryText,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 1.0,
                        )
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Opacity(
                            opacity: FFAppState().isPro ? 1.0 : 0.3,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Container(
                                width: 250.0,
                                child: TextFormField(
                                  controller: _model.textController1,
                                  focusNode: _model.textFieldFocusNode1,
                                  autofocus: false,
                                  enabled: FFAppState().isPro,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    hintText: 'Add your own category 1',
                                    hintStyle: GoogleFonts.inter(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                  ),
                                  style: GoogleFonts.inter(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: FFAppState().isPro ? 1.0 : 0.3,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Container(
                                width: 250.0,
                                child: TextFormField(
                                  controller: _model.textController2,
                                  focusNode: _model.textFieldFocusNode2,
                                  autofocus: false,
                                  enabled: FFAppState().isPro,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    hintText: 'Add your own category 2',
                                    hintStyle: GoogleFonts.inter(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                  ),
                                  style: GoogleFonts.inter(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.textController2Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: FFAppState().isPro ? 1.0 : 0.3,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Container(
                                width: 250.0,
                                child: TextFormField(
                                  controller: _model.textController3,
                                  focusNode: _model.textFieldFocusNode3,
                                  autofocus: false,
                                  enabled: FFAppState().isPro,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    hintText: 'Add your own category 3',
                                    hintStyle: GoogleFonts.inter(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                  ),
                                  style: GoogleFonts.inter(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.textController3Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: FFAppState().isPro ? 1.0 : 0.3,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Container(
                                width: 250.0,
                                child: TextFormField(
                                  controller: _model.textController4,
                                  focusNode: _model.textFieldFocusNode4,
                                  autofocus: false,
                                  enabled: FFAppState().isPro,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    hintText: 'Add your own category 4',
                                    hintStyle: GoogleFonts.inter(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                  ),
                                  style: GoogleFonts.inter(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.textController4Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: FFAppState().isPro ? 1.0 : 0.3,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Container(
                                width: 250.0,
                                child: TextFormField(
                                  controller: _model.textController5,
                                  focusNode: _model.textFieldFocusNode5,
                                  autofocus: false,
                                  enabled: FFAppState().isPro,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    hintText: 'Add your own category 5',
                                    hintStyle: GoogleFonts.inter(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                  ),
                                  style: GoogleFonts.inter(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.textController5Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: FFAppState().isPro ? 1.0 : 0.3,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Container(
                                width: 250.0,
                                child: TextFormField(
                                  controller: _model.textController6,
                                  focusNode: _model.textFieldFocusNode6,
                                  autofocus: false,
                                  enabled: FFAppState().isPro,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    hintText: 'Add your own category 6',
                                    hintStyle: GoogleFonts.inter(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 14.0,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                  ),
                                  style: GoogleFonts.inter(
                                    color: FlutterFlowTheme.of(context).warning,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.textController6Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 100.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Future.wait([
                                    Future(() async {
                                      _model.normLabelCustom11 =
                                          await actions.normalizeFileName(
                                        _model.textController1.text,
                                      );
                                      FFAppState().custom1Label =
                                          _model.normLabelCustom11!;
                                      if (FFAppState().custom1Label != ''
                                          ? true
                                          : false) {
                                        FFAppState().custom1Enabled = true;
                                      } else {
                                        FFAppState().custom1Label = '';
                                        FFAppState().custom1Enabled = false;
                                      }
                                    }),
                                    Future(() async {
                                      _model.normLabelCustom22 =
                                          await actions.normalizeFileName(
                                        _model.textController2.text,
                                      );
                                      FFAppState().custom2Label =
                                          _model.normLabelCustom22!;
                                      if (FFAppState().custom2Label != '') {
                                        FFAppState().custom2Enabled = true;
                                      } else {
                                        FFAppState().custom2Label = '';
                                        FFAppState().custom2Enabled = false;
                                      }
                                    }),
                                    Future(() async {
                                      _model.normLabelCustom32 =
                                          await actions.normalizeFileName(
                                        _model.textController3.text,
                                      );
                                      FFAppState().custom3Label =
                                          _model.normLabelCustom32!;
                                      if (FFAppState().custom3Label != '') {
                                        FFAppState().custom3Enabled = true;
                                      } else {
                                        FFAppState().custom3Label = '';
                                        FFAppState().custom3Enabled = false;
                                      }
                                    }),
                                    Future(() async {
                                      _model.normLabelCustom42 =
                                          await actions.normalizeFileName(
                                        _model.textController4.text,
                                      );
                                      FFAppState().custom4Label =
                                          _model.normLabelCustom42!;
                                      if (FFAppState().custom4Label != '') {
                                        FFAppState().custom4Enabled = true;
                                      } else {
                                        FFAppState().custom4Label = '';
                                        FFAppState().custom4Enabled = false;
                                      }
                                    }),
                                    Future(() async {
                                      _model.normLabelCustom52 =
                                          await actions.normalizeFileName(
                                        _model.textController5.text,
                                      );
                                      FFAppState().custom5Label =
                                          _model.normLabelCustom52!;
                                      if (FFAppState().custom5Label != '') {
                                        FFAppState().custom5Enabled = true;
                                      } else {
                                        FFAppState().custom5Label = '';
                                        FFAppState().custom5Enabled = false;
                                      }
                                    }),
                                    Future(() async {
                                      _model.normLabelCustom62 =
                                          await actions.normalizeFileName(
                                        _model.textController6.text,
                                      );
                                      FFAppState().custom6Label =
                                          _model.normLabelCustom62!;
                                      if (FFAppState().custom6Label != '') {
                                        FFAppState().custom6Enabled = true;
                                      } else {
                                        FFAppState().custom6Label = '';
                                        FFAppState().custom6Enabled = false;
                                      }
                                    }),
                                  ]);
                                  FFAppState().addToAllCustomCategories(
                                      _model.textController1.text);
                                  FFAppState().addToAllCustomCategories(
                                      _model.textController2.text);
                                  FFAppState().addToAllCustomCategories(
                                      _model.textController3.text);
                                  FFAppState().addToAllCustomCategories(
                                      _model.textController4.text);
                                  FFAppState().addToAllCustomCategories(
                                      _model.textController5.text);
                                  FFAppState().addToAllCustomCategories(
                                      _model.textController6.text);
                                  // AllcustomCat teljes list ABC sorrendben
                                  _model.customalabeldded = await actions
                                      .mergeAndReturnSortedCategories(
                                    FFAppState().newCustomCategories.toList(),
                                    FFAppState().allCustomCategories.toList(),
                                  );
                                  FFAppState().newCustomCategories = _model
                                      .customalabeldded!
                                      .toList()
                                      .cast<String>();
                                  safeSetState(() {});
                                  FFAppState().allCustomCategories = [];
                                  FFAppState().enabledCatLIst = [];
                                  if (FFAppState().personalEnabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().personalLabel);
                                  }
                                  if (FFAppState().homeEnabled ? true : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().homeLabel);
                                  }
                                  if (FFAppState().workEnabled ? true : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().workLabel);
                                  }
                                  if (FFAppState().vehicleEnabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().vehicleLabel);
                                  }
                                  if (FFAppState().purchasesEnabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().purchasesLabel);
                                  }
                                  if (FFAppState().temporaryEnabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().temporaryLabel);
                                  }
                                  if (FFAppState().custom1Enabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().custom1Label);
                                  }
                                  if (FFAppState().custom2Enabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().custom2Label);
                                  }
                                  if (FFAppState().custom3Enabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().custom3Label);
                                  }
                                  if (FFAppState().custom4Enabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().custom4Label);
                                  }
                                  if (FFAppState().custom5Enabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().custom5Label);
                                  }
                                  if (FFAppState().custom6Enabled
                                      ? true
                                      : false) {
                                    FFAppState().addToEnabledCatLIst(
                                        FFAppState().custom6Label);
                                  }

                                  context.pushNamed(
                                    HomepageWidget.routeName,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 150),
                                      ),
                                    },
                                  );

                                  safeSetState(() {});
                                },
                                text: 'Save and back',
                                options: FFButtonOptions(
                                  height: 80.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Colors.transparent,
                                  textStyle: GoogleFonts.inter(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 40.0,
                                    shadows: [
                                      Shadow(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        offset: Offset(4.0, 4.0),
                                        blurRadius: 10.0,
                                      ),
                                      Shadow(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        offset: Offset(3.0, 3.0),
                                        blurRadius: 1.0,
                                      )
                                    ],
                                  ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).warning,
                                    width: 3.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation']!),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (!FFAppState().isPro)
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(UpgradeWidget.routeName);
                          },
                          child: Container(
                            width: 184.6,
                            height: 326.4,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: Visibility(
                              visible: !(FFAppState().isPro ? true : false),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        UpgradeWidget.routeName,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.bottomToTop,
                                            duration:
                                                Duration(milliseconds: 100),
                                          ),
                                        },
                                      );
                                    },
                                    child: Text(
                                      'U\nP\nG\nR\nA\nD\nE',
                                      style: GoogleFonts.inter(
                                        color: Color(0xFF9A0610),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
                                            offset: Offset(2.0, 2.0),
                                            blurRadius: 1.0,
                                          ),
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            offset: Offset(5.0, 5.0),
                                            blurRadius: 4.0,
                                          ),
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            offset: Offset(7.0, 7.0),
                                            blurRadius: 1.0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
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
      ),
    );
  }
}
