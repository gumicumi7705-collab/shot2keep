import '/components/popup_s2_k_copy2_widget.dart';
import '/components/popup_s2_k_shot_missed_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'grid_view_camera_copy_model.dart';
export 'grid_view_camera_copy_model.dart';

class GridViewCameraCopyWidget extends StatefulWidget {
  const GridViewCameraCopyWidget({
    super.key,
    this.photoParamList,
  });

  final List<FFUploadedFile>? photoParamList;

  static String routeName = 'GridViewCameraCopy';
  static String routePath = '/gridViewCameraCopy';

  @override
  State<GridViewCameraCopyWidget> createState() =>
      _GridViewCameraCopyWidgetState();
}

class _GridViewCameraCopyWidgetState extends State<GridViewCameraCopyWidget>
    with TickerProviderStateMixin {
  late GridViewCameraCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GridViewCameraCopyModel());

    animationsMap.addAll({
      'buttonOnPageLoadAnimation1': AnimationInfo(
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
      'buttonOnPageLoadAnimation2': AnimationInfo(
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
      'buttonOnPageLoadAnimation3': AnimationInfo(
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final itemPhotos2 =
                          widget.photoParamList?.toList() ?? [];

                      return Container(
                        width: 230.0,
                        height: 238.0,
                        child: CarouselSlider.builder(
                          itemCount: itemPhotos2.length,
                          itemBuilder: (context, itemPhotos2Index, _) {
                            final itemPhotos2Item =
                                itemPhotos2[itemPhotos2Index];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.memory(
                                        itemPhotos2Item.bytes ??
                                            Uint8List.fromList([]),
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: 'imageTag1',
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'imageTag1',
                                transitionOnUserGestures: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.memory(
                                    itemPhotos2Item.bytes ??
                                        Uint8List.fromList([]),
                                    width: 200.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                          carouselController: _model.carouselController ??=
                              CarouselSliderController(),
                          options: CarouselOptions(
                            initialPage: max(0, min(0, itemPhotos2.length - 1)),
                            viewportFraction: 0.5,
                            disableCenter: true,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            enableInfiniteScroll: true,
                            scrollDirection: Axis.horizontal,
                            autoPlay: false,
                            onPageChanged: (index, _) =>
                                _model.carouselCurrentIndex = index,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Select categories',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.transparent,
                        textStyle: GoogleFonts.inter(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontWeight: FontWeight.w600,
                          fontSize: 22.0,
                          shadows: [
                            Shadow(
                              color: FlutterFlowTheme.of(context).warning,
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
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation1']!),
                  ),
                ),
                Wrap(
                  spacing: 0.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          if (FFAppState().personalEnabled ? true : false)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryPersonal =
                                      !(FFAppState().selectedCategoryPersonal ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: (FFAppState()
                                                .selectedCategoryPersonal
                                            ? true
                                            : false)
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryPersonal
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryPersonal
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity: FFAppState()
                                                .selectedCategoryPersonal
                                            ? 1.0
                                            : 0.5,
                                        child: Icon(
                                          Icons.person_outline,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity: FFAppState()
                                                .selectedCategoryPersonal
                                            ? 1.0
                                            : 0.6,
                                        child: Text(
                                          'Personal',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().homeEnabled ? true : false)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryHome =
                                      !(FFAppState().selectedCategoryHome ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: (FFAppState().selectedCategoryHome
                                            ? true
                                            : false)
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState().selectedCategoryHome
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width: FFAppState().selectedCategoryHome
                                          ? 3.0
                                          : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryHome
                                                ? 1.0
                                                : 0.5,
                                        child: Icon(
                                          Icons.home_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryHome
                                                ? 1.0
                                                : 0.6,
                                        child: Text(
                                          'Home',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().workEnabled ? true : false)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryWork =
                                      !(FFAppState().selectedCategoryWork ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().selectedCategoryWork
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState().selectedCategoryWork
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width: FFAppState().selectedCategoryWork
                                          ? 3.0
                                          : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryWork
                                                ? 1.0
                                                : 0.5,
                                        child: Icon(
                                          Icons.work_outline,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryWork
                                                ? 1.0
                                                : 0.6,
                                        child: Text(
                                          'Work',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().vehicleEnabled ? true : false)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryVehicle =
                                      !(FFAppState().selectedCategoryVehicle ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().selectedCategoryVehicle
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryVehicle
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryVehicle
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryVehicle
                                                ? 1.0
                                                : 0.5,
                                        child: Icon(
                                          Icons.directions_car_filled_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryVehicle
                                                ? 1.0
                                                : 0.6,
                                        child: Text(
                                          'Vehicle',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().purchasesEnabled ? true : false)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryPurchases =
                                      !(FFAppState()
                                              .selectedCategoryPurchases ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState()
                                            .selectedCategoryPurchases
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryPurchases
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryPurchases
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity: FFAppState()
                                                .selectedCategoryPurchases
                                            ? 1.0
                                            : 0.5,
                                        child: Icon(
                                          Icons.receipt_long_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity: FFAppState()
                                                .selectedCategoryPurchases
                                            ? 1.0
                                            : 0.6,
                                        child: Text(
                                          'Purchases',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().temporaryEnabled ? true : false)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryTemporary =
                                      !(FFAppState()
                                              .selectedCategoryTemporary ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState()
                                            .selectedCategoryTemporary
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryTemporary
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryTemporary
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity: FFAppState()
                                                .selectedCategoryTemporary
                                            ? 1.0
                                            : 0.5,
                                        child: Icon(
                                          Icons.hourglass_empty_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity: FFAppState()
                                                .selectedCategoryTemporary
                                            ? 1.0
                                            : 0.6,
                                        child: Text(
                                          'Temp.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().custom1Enabled)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryCustom1 =
                                      !(FFAppState().selectedCategoryCustom1 ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().selectedCategoryCustom1
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryCustom1
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryCustom1
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom1
                                                ? 1.0
                                                : 0.5,
                                        child: Icon(
                                          Icons.dashboard_customize_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom1
                                                ? 1.0
                                                : 0.6,
                                        child: Text(
                                          FFAppState().custom1Label,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().custom2Enabled)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryCustom2 =
                                      !(FFAppState().selectedCategoryCustom2 ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().selectedCategoryCustom2
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryCustom2
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryCustom2
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom2
                                                ? 1.0
                                                : 0.5,
                                        child: Icon(
                                          Icons.dashboard_customize_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom2
                                                ? 1.0
                                                : 0.6,
                                        child: Text(
                                          FFAppState().custom2Label,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().custom3Enabled)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryCustom3 =
                                      !(FFAppState().selectedCategoryCustom3 ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().selectedCategoryCustom3
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryCustom3
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryCustom3
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom3
                                                ? 1.0
                                                : 0.5,
                                        child: Icon(
                                          Icons.dashboard_customize_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom3
                                                ? 1.0
                                                : 0.6,
                                        child: Text(
                                          FFAppState().custom3Label,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().custom4Enabled)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryCustom4 =
                                      !(FFAppState().selectedCategoryCustom4 ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().selectedCategoryCustom4
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryCustom4
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryCustom4
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom4
                                                ? 1.0
                                                : 0.5,
                                        child: Icon(
                                          Icons.dashboard_customize_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom4
                                                ? 1.0
                                                : 0.6,
                                        child: Text(
                                          FFAppState().custom4Label,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().custom5Enabled)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryCustom5 =
                                      !(FFAppState().selectedCategoryCustom5 ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().selectedCategoryCustom5
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryCustom5
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryCustom5
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom5
                                                ? 1.0
                                                : 0.5,
                                        child: Icon(
                                          Icons.dashboard_customize_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom5
                                                ? 1.0
                                                : 0.6,
                                        child: Text(
                                          FFAppState().custom5Label,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState().custom6Enabled)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().selectedCategoryCustom6 =
                                      !(FFAppState().selectedCategoryCustom6 ??
                                          true);
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().selectedCategoryCustom6
                                        ? Color(0x33E2B74A)
                                        : FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                      color: FFAppState()
                                              .selectedCategoryCustom6
                                          ? FlutterFlowTheme.of(context).warning
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width:
                                          FFAppState().selectedCategoryCustom6
                                              ? 3.0
                                              : 2.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom6
                                                ? 1.0
                                                : 0.5,
                                        child: Icon(
                                          Icons.dashboard_customize_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          size: 30.0,
                                        ),
                                      ),
                                      Opacity(
                                        opacity:
                                            FFAppState().selectedCategoryCustom6
                                                ? 1.0
                                                : 0.6,
                                        child: Text(
                                          FFAppState().custom6Label,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 50.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      // kiválasztott kategóriák listához adása
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryPersonal
                                              ? FFAppState().personalLabel
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryHome
                                              ? FFAppState().homeLabel
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryWork
                                              ? FFAppState().workLabel
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryVehicle
                                              ? FFAppState().vehicleLabel
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryPurchases
                                              ? FFAppState().purchasesLabel
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryTemporary
                                              ? FFAppState().temporaryLabel
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryCustom1
                                              ? FFAppState().custom1Label
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryCustom2
                                              ? FFAppState().custom2Label
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryCustom3
                                              ? FFAppState().custom3Label
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryCustom4
                                              ? FFAppState().custom4Label
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryCustom5
                                              ? FFAppState().custom5Label
                                              : '');
                                      FFAppState().addToAllSelectedCategories(
                                          FFAppState().selectedCategoryCustom6
                                              ? FFAppState().custom6Label
                                              : '');
                                      if (!FFAppState()
                                              .selectedCategoryPersonal &&
                                          !FFAppState().selectedCategoryHome &&
                                          !FFAppState().selectedCategoryWork &&
                                          !FFAppState()
                                              .selectedCategoryVehicle &&
                                          !FFAppState()
                                              .selectedCategoryPurchases &&
                                          !FFAppState()
                                              .selectedCategoryTemporary &&
                                          !FFAppState()
                                              .selectedCategoryCustom1 &&
                                          !FFAppState()
                                              .selectedCategoryCustom2 &&
                                          !FFAppState()
                                              .selectedCategoryCustom3 &&
                                          !FFAppState()
                                              .selectedCategoryCustom4 &&
                                          !FFAppState()
                                              .selectedCategoryCustom5 &&
                                          !FFAppState()
                                              .selectedCategoryCustom6) {
                                        await showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: PopupS2KCopy2Widget(),
                                              ),
                                            );
                                          },
                                        );
                                      } else {
                                        // Labellista tisztitása szóköz és ürestől
                                        FFAppState().cleanLabelLIst = functions
                                            .removeEmptyStrings(FFAppState()
                                                .allSelectedCategories
                                                .toList())
                                            .toList()
                                            .cast<String>();
                                        _model.loopOutput = await actions
                                            .saveImagesToLabelsLoop(
                                          FFAppState().baseDir,
                                          FFAppState().cleanLabelLIst.toList(),
                                          widget.photoParamList!.toList(),
                                          100,
                                          '.jpg',
                                        );
                                        // Visszaállitja a kiválasztott kategóriákat
                                        FFAppState().selectedCategoryPersonal =
                                            false;
                                        FFAppState().selectedCategoryHome =
                                            false;
                                        FFAppState().selectedCategoryWork =
                                            false;
                                        FFAppState().selectedCategoryVehicle =
                                            false;
                                        FFAppState().selectedCategoryPurchases =
                                            false;
                                        FFAppState().selectedCategoryTemporary =
                                            false;
                                        FFAppState().selectedCategoryCustom1 =
                                            false;
                                        FFAppState().selectedCategoryCustom2 =
                                            false;
                                        FFAppState().selectedCategoryCustom3 =
                                            false;
                                        FFAppState().selectedCategoryCustom4 =
                                            false;
                                        FFAppState().selectedCategoryCustom5 =
                                            false;
                                        FFAppState().selectedCategoryCustom6 =
                                            false;
                                        FFAppState().allSelectedCategories = [];
                                        FFAppState().cleanLabelLIst = [];
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Saved & sorted',
                                              style: GoogleFonts.inter(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                fontSize: 14.0,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            duration:
                                                Duration(milliseconds: 2000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .warning,
                                          ),
                                        );

                                        context.pushNamed(
                                            HomepageWidget.routeName);
                                      }

                                      safeSetState(() {});
                                    },
                                    text: 'Save',
                                    options: FFButtonOptions(
                                      height: 80.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.transparent,
                                      textStyle: GoogleFonts.inter(
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
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
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'buttonOnPageLoadAnimation2']!),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 200.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(dialogContext)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: PopupS2KShotMissedWidget(),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    text: 'Shot missed! Try again!',
                                    options: FFButtonOptions(
                                      width: 300.0,
                                      height: 80.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.transparent,
                                      textStyle: GoogleFonts.inter(
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
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
                                        color: FlutterFlowTheme.of(context)
                                            .warning,
                                      ),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'buttonOnPageLoadAnimation3']!),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
