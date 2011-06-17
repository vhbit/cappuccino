/*
 * ThemeDescriptors.j
 * Aristo2
 *
 * Created by Francisco Tolmasky.
 * Copyright 2009, 280 North, Inc. All rights reserved.
 */

@import <Foundation/CPObject.j>
@import <AppKit/AppKit.j>
@import <AppKit/CPTableHeaderView.j>

var themedButtonValues = nil,
    themedTextFieldValues = nil,
    themedVerticalScrollerValues = nil,
    themedHorizontalScrollerValues = nil,
    themedSegmentedControlValues = nil,
    themedHorizontalSliderValues = nil,
    themedVerticalSliderValues = nil,
    themedCircularSliderValues = nil,
    themedButtonBarValues = nil,
    themedAlertValues = nil;

@implementation Aristo2ThemeDescriptor : BKThemeDescriptor
{
}

+ (CPString)themeName
{
    return @"Aristo2";
}

+ (CPArray)themeShowcaseExcludes
{
    return ["alert", "cornerview", "columnHeader", "tableView", "tableHeaderRow", "tableDataView", @"ruleeditor"];
}

+ (CPButton)makeButton
{
    return [[CPButton alloc] initWithFrame:CGRectMake(0.0, 0.0, 60.0, CPButtonDefaultHeight)];
}

// + (CPButton)button
// {
//     var button = [self makeButton],
// 
//         // RoundRect
//         bezelColor = PatternColor(
//             [
//                 ["button-bezel-left.png", 4.0, 25.0],
//                 ["button-bezel-center.png", 1.0, 25.0],
//                 ["button-bezel-right.png", 4.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         highlightedBezelColor = PatternColor(
//             [
//                 ["button-bezel-highlighted-left.png", 4.0, 25.0],
//                 ["button-bezel-highlighted-center.png", 1.0, 25.0],
//                 ["button-bezel-highlighted-right.png", 4.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         disabledBezelColor = PatternColor(
//             [
//                 ["button-bezel-disabled-left.png", 4.0, 25.0],
//                 ["button-bezel-disabled-center.png", 1.0, 25.0],
//                 ["button-bezel-disabled-right.png", 4.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         defaultBezelColor = PatternColor(
//             [
//                 ["default-button-bezel-left.png", 4.0, 25.0],
//                 ["default-button-bezel-center.png", 1.0, 25.0],
//                 ["default-button-bezel-right.png", 4.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         defaultHighlightedBezelColor = PatternColor(
//             [
//                 ["default-button-bezel-highlighted-left.png", 4.0, 25.0],
//                 ["default-button-bezel-highlighted-center.png", 1.0, 25.0],
//                 ["default-button-bezel-highlighted-right.png", 4.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         defaultDisabledBezelColor = PatternColor(
//             [
//                 ["default-button-bezel-disabled-left.png", 4.0, 25.0],
//                 ["default-button-bezel-disabled-center.png", 1.0, 25.0],
//                 ["default-button-bezel-disabled-right.png", 4.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         defaultTextColor = [CPColor colorWithCalibratedRed:38.0 / 255.0 green:38.0 / 255.0 blue:38.0 / 255.0 alpha:1.0],
//         defaultDisabledTextColor = [CPColor colorWithCalibratedRed:38.0 / 255.0 green:38.0 / 255.0 blue:38.0 / 255.0 alpha:0.2];
// 
//     themedButtonValues =
//         [
//             [@"font",               [CPFont boldSystemFontOfSize:12.0], CPThemeStateBordered],
//             [@"text-color",         [CPColor colorWithCalibratedWhite:79.0 / 255.0 alpha:1.0]],
//             [@"text-shadow-color",  [CPColor colorWithCalibratedWhite:1.0 alpha:0.3], CPThemeStateBordered],
//             [@"text-color",         [CPColor whiteColor], CPThemeStateBordered | CPThemeStateDefault],
//             [@"text-shadow-color",  [CPColor colorWithCalibratedWhite:0.0 alpha:0.2], CPThemeStateBordered | CPThemeStateDefault],
//             [@"text-shadow-offset", CGSizeMake(0.0, 1.0), CPThemeStateBordered],
//             [@"line-break-mode",    CPLineBreakByTruncatingTail],
//             [@"bezel-color",        bezelColor,                     CPThemeStateBordered],
//             [@"bezel-color",        highlightedBezelColor,          CPThemeStateBordered | CPThemeStateHighlighted],
//             [@"bezel-color",        disabledBezelColor,             CPThemeStateBordered | CPThemeStateDisabled],
//             [@"bezel-color",        defaultBezelColor,              CPThemeStateBordered | CPThemeStateDefault],
//             [@"bezel-color",        defaultHighlightedBezelColor,   CPThemeStateBordered | CPThemeStateHighlighted | CPThemeStateDefault],
//             [@"bezel-color",        defaultDisabledBezelColor,      CPThemeStateBordered | CPThemeStateDefault | CPThemeStateDisabled],
//             [@"content-inset",      CGInsetMake(0.0, 7.0, 0.0, 7.0), CPThemeStateBordered],
// 
//             [@"text-color",         [CPColor colorWithCalibratedWhite:0.6 alpha:1.0],   CPThemeStateDisabled],
// 
// 
//             [@"text-color",         defaultTextColor,               CPThemeStateDefault],
//             [@"text-color",         defaultDisabledTextColor,       CPThemeStateDefault | CPThemeStateDisabled],
// 
//             [@"min-size",           CGSizeMake(0.0, CPButtonDefaultHeight)],
//             [@"max-size",           CGSizeMake(-1.0, CPButtonDefaultHeight)],
// 
//             [@"image-offset",       CPButtonImageOffset]
//         ];
// 
//     [self registerThemeValues:themedButtonValues forView:button];
// 
//     return button;
// }
// 
// + (CPButton)themedStandardButton
// {
//     var button = [self button];
// 
//     [button setTitle:@"Cancel"];
// 
//     return button;
// }
// 
// + (CPButton)themedDefaultButton
// {
//     var button = [self button];
// 
//     [button setTitle:@"OK"];
//     [button setThemeState:CPThemeStateDefault];
// 
//     return button;
// }
// 
// + (CPPopUpButton)themedPopUpButton
// {
//     var button = [[CPPopUpButton alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 25.0) pullsDown:NO],
//         color = PatternColor(
//             [
//                 ["popup-bezel-left.png", 3.0, 25.0],
//                 ["popup-bezel-center.png", 1.0, 25.0],
//                 ["popup-bezel-right.png", 24.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         disabledColor = PatternColor(
//             [
//                 ["popup-bezel-disabled-left.png", 3.0, 25.0],
//                 ["popup-bezel-disabled-center.png", 1.0, 25.0],
//                 ["popup-bezel-disabled-right.png", 24.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         themeValues =
//         [
//             [@"bezel-color",        color,          CPThemeStateBordered],
//             [@"bezel-color",        disabledColor,  CPThemeStateBordered | CPThemeStateDisabled],
// 
//             [@"content-inset",      CGInsetMake(0, 21.0 + 5.0, 0, 5.0), CPThemeStateBordered],
//             [@"font",               [CPFont boldSystemFontOfSize:12.0]],
//             [@"text-color",         [CPColor colorWithCalibratedWhite:79.0 / 255.0 alpha:1.0]],
//             [@"text-shadow-color",  [CPColor colorWithCalibratedWhite:240.0 / 255.0 alpha:1.0]],
// 
//             [@"text-color",         [CPColor colorWithCalibratedWhite:0.6 alpha:1.0],           CPThemeStateBordered | CPThemeStateDisabled],
//             [@"text-shadow-color",  [CPColor colorWithCalibratedWhite:240.0 / 255.0 alpha:0.6], CPThemeStateBordered | CPThemeStateDisabled],
// 
//             [@"min-size",           CGSizeMake(32.0, 25.0)],
//             [@"max-size",           CGSizeMake(-1.0, 25.0)]
//         ];
// 
//     [self registerThemeValues:themeValues forView:button];
// 
//     [button setTitle:@"Pop Up"];
//     [button addItemWithTitle:@"item"];
// 
//     return button;
// }
// 
// + (CPPopUpButton)themedPullDownMenu
// {
//     var button = [[CPPopUpButton alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 25.0) pullsDown:YES],
//         color = PatternColor(
//             [
//                 ["popup-bezel-left.png", 3.0, 25.0],
//                 ["popup-bezel-center.png", 1.0, 25.0],
//                 ["popup-bezel-right-pullsdown.png", 24.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         disabledColor = PatternColor(
//             [
//                 ["popup-bezel-disabled-left.png", 3.0, 25.0],
//                 ["popup-bezel-disabled-center.png", 1.0, 25.0],
//                 ["popup-bezel-disabled-right-pullsdown.png", 24.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         themeValues =
//         [
//             [@"bezel-color",        color,          CPPopUpButtonStatePullsDown | CPThemeStateBordered],
//             [@"bezel-color",        disabledColor,  CPPopUpButtonStatePullsDown | CPThemeStateBordered | CPThemeStateDisabled],
// 
//             [@"content-inset",      CGInsetMake(0, 27.0 + 5.0, 0, 5.0), CPThemeStateBordered],
//             [@"font",               [CPFont boldSystemFontOfSize:12.0]],
//             [@"text-color",         [CPColor colorWithCalibratedWhite:79.0 / 255.0 alpha:1.0]],
//             [@"text-shadow-color",  [CPColor colorWithCalibratedWhite:240.0 / 255.0 alpha:1.0]],
// 
//             [@"text-color",         [CPColor colorWithCalibratedWhite:0.6 alpha:1.0],           CPThemeStateBordered | CPThemeStateDisabled],
//             [@"text-shadow-color",  [CPColor colorWithCalibratedWhite:240.0 / 255.0 alpha:0.6], CPThemeStateBordered | CPThemeStateDisabled],
// 
//             [@"min-size",           CGSizeMake(32.0, 25.0)],
//             [@"max-size",           CGSizeMake(-1.0, 25.0)]
//         ];
// 
//     [self registerThemeValues:themeValues forView:button];
// 
//     [button setTitle:@"Pull Down"];
//     [button addItemWithTitle:@"item"];
// 
//     return button;
// }

// + (CPScrollView)themedScrollView
// {
//     var scrollView = [[CPScrollView alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, 200.0)];
// 
//     var borderColor = [CPColor colorWithWhite:0.0 alpha:0.2],
//         bottomCornerColor = PatternColor(@"scrollview-bottom-corner-color.png", 15.0, 15.0);
// 
//     var themedScrollViewValues =
//         [
//             [@"border-color", borderColor],
//             [@"bottom-corner-color", bottomCornerColor]
//         ];
// 
//     [self registerThemeValues:themedScrollViewValues forView:scrollView];
// 
//     [scrollView setAutohidesScrollers:YES];
//     [scrollView setBorderType:CPLineBorder];
// 
//     return scrollView;
// }
// 
// + (CPScroller)makeVerticalScroller
// {
//     var scroller = [[CPScroller alloc] initWithFrame:CGRectMake(0.0, 0.0, 15.0, 170.0)];
// 
//     [scroller setFloatValue:0.1];
//     [scroller setKnobProportion:0.5];
// 
//     return scroller;
// }
// 
// + (CPScroller)themedVerticalScroller
// {
//     var scroller = [self makeVerticalScroller],
//         trackColor = PatternColor("scroller-vertical-track.png", 15.0, 1.0),
//         disabledTrackColor = PatternColor("scroller-vertical-track-disabled.png", 15.0, 1.0),
// 
//         upArrowColor = PatternColor("scroller-up-arrow.png", 15.0, 24.0),
//         highlightedUpArrowColor = PatternColor("scroller-up-arrow-highlighted.png", 15.0, 24.0),
//         disabledUpArrowColor = PatternColor("scroller-up-arrow-disabled.png", 15.0, 24.0),
// 
//         downArrowColor = PatternColor("scroller-down-arrow.png", 15.0, 24.0),
//         highlightedDownArrowColor = PatternColor("scroller-down-arrow-highlighted.png", 15.0, 24.0),
//         disabledDownArrowColor = PatternColor("scroller-down-arrow-disabled.png", 15.0, 24.0),
// 
//         knobColor = PatternColor(
//             [
//                 ["scroller-vertical-knob-top.png", 15.0, 10.0],
//                 ["scroller-vertical-knob-center.png", 15.0, 1.0],
//                 ["scroller-vertical-knob-bottom.png", 15.0, 10.0]
//             ],
//             PatternIsVertical),
// 
//         disabledKnobColor = PatternColor(
//             [
//                 ["scroller-vertical-knob-disabled-top.png", 15.0, 10.0],
//                 ["scroller-vertical-knob-disabled-center.png", 15.0, 1.0],
//                 ["scroller-vertical-knob-disabled-bottom.png", 15.0, 10.0]
//             ],
//             PatternIsVertical);
// 
//     themedVerticalScrollerValues =
//         [
//             [@"minimum-knob-length",    21.0,                                   CPThemeStateVertical],
//             [@"knob-inset",             CGInsetMake(0.0, 0.0, 0.0, 0.0),        CPThemeStateVertical],
//             [@"track-inset",            CGInsetMake(-10.0, 0.0, -10.0, 0.0),    CPThemeStateVertical],
// 
//             [@"knob-color",             knobColor,                  CPThemeStateVertical],
//             [@"knob-color",             disabledKnobColor,          CPThemeStateVertical | CPThemeStateDisabled],
// 
//             [@"knob-slot-color",        trackColor,                 CPThemeStateVertical],
//             [@"knob-slot-color",        disabledTrackColor,         CPThemeStateVertical | CPThemeStateDisabled],
// 
//             [@"decrement-line-size",    CGSizeMake(15.0, 24.0),     CPThemeStateVertical],
//             [@"decrement-line-color",   upArrowColor,               CPThemeStateVertical],
//             [@"decrement-line-color",   highlightedUpArrowColor,    CPThemeStateVertical | CPThemeStateHighlighted],
//             [@"decrement-line-color",   disabledUpArrowColor,       CPThemeStateVertical | CPThemeStateDisabled],
// 
//             [@"increment-line-size",    CGSizeMake(15.0, 24.0),     CPThemeStateVertical],
//             [@"increment-line-color",   downArrowColor,             CPThemeStateVertical],
//             [@"increment-line-color",   highlightedDownArrowColor,  CPThemeStateVertical | CPThemeStateHighlighted],
//             [@"increment-line-color",   disabledDownArrowColor,     CPThemeStateVertical | CPThemeStateDisabled]
//         ];
// 
//     [self registerThemeValues:themedVerticalScrollerValues forView:scroller];
// 
//     return scroller;
// }
// 
// + (CPScroller)makeHorizontalScroller
// {
//     var scroller = [[CPScroller alloc] initWithFrame:CGRectMake(0.0, 0.0, 170.0, 15.0)];
// 
//     [scroller setFloatValue:0.1];
//     [scroller setKnobProportion:0.5];
// 
//     return scroller;
// }
// 
// + (CPScroller)themedHorizontalScroller
// {
//     var scroller = [self makeHorizontalScroller],
//         trackColor = PatternColor("scroller-horizontal-track.png", 1.0, 15.0),
//         disabledTrackColor = PatternColor("scroller-horizontal-track-disabled.png", 1.0, 15.0),
// 
//         leftArrowColor = PatternColor("scroller-left-arrow.png", 24.0, 15.0),
//         highlightedLeftArrowColor = PatternColor("scroller-left-arrow-highlighted.png", 24.0, 15.0),
//         disabledLeftArrowColor = PatternColor("scroller-left-arrow-disabled.png", 24.0, 15.0),
// 
//         rightArrowColor = PatternColor("scroller-right-arrow.png", 24.0, 15.0),
//         highlightedRightArrowColor = PatternColor("scroller-right-arrow-highlighted.png", 24.0, 15.0),
//         disabledRightArrowColor = PatternColor("scroller-right-arrow-disabled.png", 24.0, 15.0),
// 
//         knobColor = PatternColor(
//             [
//                 ["scroller-horizontal-knob-left.png", 10.0, 15.0],
//                 ["scroller-horizontal-knob-center.png", 1.0, 15.0],
//                 ["scroller-horizontal-knob-right.png", 10.0, 15.0]
//             ],
//             PatternIsHorizontal),
// 
//         disabledKnobColor = PatternColor(
//             [
//                 ["scroller-horizontal-knob-disabled-left.png", 10.0, 15.0],
//                 ["scroller-horizontal-knob-disabled-center.png", 1.0, 15.0],
//                 ["scroller-horizontal-knob-disabled-right.png", 10.0, 15.0]
//             ],
//             PatternIsHorizontal);
// 
//     themedHorizontalScrollerValues =
//         [
//             [@"minimum-knob-length",    21.0],
//             [@"knob-inset",             CGInsetMake(0.0, 0.0, 0.0, 0.0)],
//             [@"track-inset",            CGInsetMake(0.0, -10.0, 0.0, -11.0)],
// 
//             [@"knob-color",             knobColor],
//             [@"knob-color",             disabledKnobColor,          CPThemeStateDisabled],
// 
//             [@"knob-slot-color",        trackColor],
//             [@"knob-slot-color",        disabledTrackColor,         CPThemeStateDisabled],
// 
//             [@"decrement-line-size",    CGSizeMake(24.0, 15.0)],
//             [@"decrement-line-color",   leftArrowColor],
//             [@"decrement-line-color",   highlightedLeftArrowColor,  CPThemeStateHighlighted],
//             [@"decrement-line-color",   disabledLeftArrowColor,     CPThemeStateDisabled],
// 
//             [@"increment-line-size",    CGSizeMake(24.0, 15.0)],
//             [@"increment-line-color",   rightArrowColor],
//             [@"increment-line-color",   highlightedRightArrowColor, CPThemeStateHighlighted],
//             [@"increment-line-color",   disabledRightArrowColor,    CPThemeStateDisabled]
//         ];
// 
//     [self registerThemeValues:themedHorizontalScrollerValues forView:scroller];
// 
//     return scroller;
// }
// 
// + (CPTextField)themedStandardTextField
// {
//     var textfield = [[CPTextField alloc] initWithFrame:CGRectMake(0.0, 0.0, 60.0, 29.0)],
// 
//         bezelColor = PatternColor(
//             [
//                 ["textfield-bezel-square-0.png", 3.0, 4.0],
//                 ["textfield-bezel-square-1.png", 1.0, 4.0],
//                 ["textfield-bezel-square-2.png", 3.0, 4.0],
//                 ["textfield-bezel-square-3.png", 3.0, 1.0],
//                 ["textfield-bezel-square-4.png", 1.0, 1.0],
//                 ["textfield-bezel-square-5.png", 3.0, 1.0],
//                 ["textfield-bezel-square-6.png", 3.0, 4.0],
//                 ["textfield-bezel-square-7.png", 1.0, 4.0],
//                 ["textfield-bezel-square-8.png", 3.0, 4.0]
//             ]),
// 
//         bezelFocusedColor = PatternColor(
//             [
//                 ["textfield-bezel-square-focused-0.png", 7.0, 7.0],
//                 ["textfield-bezel-square-focused-1.png", 1.0, 7.0],
//                 ["textfield-bezel-square-focused-2.png", 7.0, 7.0],
//                 ["textfield-bezel-square-focused-3.png", 7.0, 1.0],
//                 ["textfield-bezel-square-focused-4.png", 1.0, 1.0],
//                 ["textfield-bezel-square-focused-5.png", 7.0, 1.0],
//                 ["textfield-bezel-square-focused-6.png", 7.0, 7.0],
//                 ["textfield-bezel-square-focused-7.png", 1.0, 7.0],
//                 ["textfield-bezel-square-focused-8.png", 7.0, 7.0]
//             ]),
// 
//         bezelDisabledColor = PatternColor(
//             [
//                 ["textfield-bezel-square-disabled-0.png", 3.0, 4.0],
//                 ["textfield-bezel-square-disabled-1.png", 1.0, 4.0],
//                 ["textfield-bezel-square-disabled-2.png", 3.0, 4.0],
//                 ["textfield-bezel-square-disabled-3.png", 3.0, 1.0],
//                 ["textfield-bezel-square-disabled-4.png", 1.0, 1.0],
//                 ["textfield-bezel-square-disabled-5.png", 3.0, 1.0],
//                 ["textfield-bezel-square-disabled-6.png", 3.0, 4.0],
//                 ["textfield-bezel-square-disabled-7.png", 1.0, 4.0],
//                 ["textfield-bezel-square-disabled-8.png", 3.0, 4.0]
//             ]),
// 
//         placeholderColor = [CPColor colorWithCalibratedRed:189.0 / 255.0 green:199.0 / 255.0 blue:211.0 / 255.0 alpha:1.0];
// 
//     // Global for reuse by CPTokenField.
//     themedTextFieldValues =
//     [
//         [@"vertical-alignment", CPTopVerticalTextAlignment,         CPThemeStateBezeled],
//         [@"bezel-color",        bezelColor,                         CPThemeStateBezeled],
//         [@"bezel-color",        bezelFocusedColor,                  CPThemeStateBezeled | CPThemeStateEditing],
//         [@"bezel-color",        bezelDisabledColor,                 CPThemeStateBezeled | CPThemeStateDisabled],
//         [@"font",               [CPFont systemFontOfSize:12.0],     CPThemeStateBezeled],
// 
//         [@"content-inset",      CGInsetMake(8.0, 7.0, 5.0, 8.0),    CPThemeStateBezeled],
//         [@"content-inset",      CGInsetMake(7.0, 7.0, 5.0, 8.0),    CPThemeStateBezeled | CPThemeStateEditing],
//         [@"bezel-inset",        CGInsetMake(3.0, 4.0, 3.0, 4.0),    CPThemeStateBezeled],
//         [@"bezel-inset",        CGInsetMake(0.0, 0.0, 0.0, 0.0),    CPThemeStateBezeled | CPThemeStateEditing],
// 
//         [@"text-color",         placeholderColor,                   CPTextFieldStatePlaceholder],
// 
//         [@"line-break-mode",    CPLineBreakByTruncatingTail,        CPThemeStateTableDataView],
//         [@"vertical-alignment", CPCenterVerticalTextAlignment,      CPThemeStateTableDataView],
//         [@"content-inset",      CGInsetMake(0.0, 0.0, 0.0, 5.0),    CPThemeStateTableDataView],
// 
//         [@"text-color",         [CPColor colorWithCalibratedWhite:51.0 / 255.0 alpha:1.0], CPThemeStateTableDataView],
//         [@"text-color",         [CPColor whiteColor],                CPThemeStateTableDataView | CPThemeStateSelectedTableDataView],
//         [@"font",               [CPFont boldSystemFontOfSize:12.0],  CPThemeStateTableDataView | CPThemeStateSelectedTableDataView],
//         [@"text-color",         [CPColor blackColor],                CPThemeStateTableDataView | CPThemeStateEditing],
//         [@"content-inset",      CGInsetMake(7.0, 7.0, 5.0, 8.0),     CPThemeStateTableDataView | CPThemeStateEditing],
//         [@"font",               [CPFont systemFontOfSize:12.0],      CPThemeStateTableDataView | CPThemeStateEditing],
//         [@"bezel-inset",        CGInsetMake(-2.0, -2.0, -2.0, -2.0), CPThemeStateTableDataView | CPThemeStateEditing],
// 
//         [@"text-color",         [CPColor colorWithCalibratedWhite:125.0 / 255.0 alpha:1.0], CPThemeStateTableDataView | CPThemeStateGroupRow],
//         [@"text-color",         [CPColor colorWithCalibratedWhite:1.0 alpha:1.0], CPThemeStateTableDataView | CPThemeStateGroupRow | CPThemeStateSelectedTableDataView],
//         [@"text-shadow-color",  [CPColor whiteColor],                CPThemeStateTableDataView | CPThemeStateGroupRow],
//         [@"text-shadow-offset",  CGSizeMake(0,1),                    CPThemeStateTableDataView | CPThemeStateGroupRow],
//         [@"text-shadow-color",  [CPColor colorWithCalibratedWhite:0.0 alpha:0.6],                CPThemeStateTableDataView | CPThemeStateGroupRow | CPThemeStateSelectedTableDataView],
//         [@"font",               [CPFont boldSystemFontOfSize:12.0],  CPThemeStateTableDataView | CPThemeStateGroupRow]
//     ];
// 
//     [self registerThemeValues:themedTextFieldValues forView:textfield];
// 
//     [textfield setBezeled:YES];
// 
//     [textfield setPlaceholderString:"placeholder"];
//     [textfield setStringValue:""];
//     [textfield setEditable:YES];
// 
//     return textfield;
// }
// 
// + (CPTextField)themedRoundedTextField
// {
//     var textfield = [[CPTextField alloc] initWithFrame:CGRectMake(0.0, 0.0, 60.0, 30.0)],
//         bezelColor = PatternColor(
//             [
//                 ["textfield-bezel-rounded-left.png", 13.0, 22.0],
//                 ["textfield-bezel-rounded-center.png", 1.0, 22.0],
//                 ["textfield-bezel-rounded-right.png", 13.0, 22.0]
//             ],
//             PatternIsHorizontal),
// 
//         bezelFocusedColor = PatternColor(
//             [
//                 ["textfield-bezel-rounded-focused-left.png", 17.0, 30.0],
//                 ["textfield-bezel-rounded-focused-center.png", 1.0, 30.0],
//                 ["textfield-bezel-rounded-focused-right.png", 17.0, 30.0]
//             ],
//             PatternIsHorizontal),
// 
//         placeholderColor = [CPColor colorWithCalibratedRed:189.0 / 255.0 green:199.0 / 255.0 blue:211.0 / 255.0 alpha:1.0];
// 
//     // Global for reuse by CPSearchField
//     themedRoundedTextFieldValues =
//         [
//             [@"bezel-color",    bezelColor,                         CPTextFieldStateRounded | CPThemeStateBezeled],
//             [@"bezel-color",    bezelFocusedColor,                  CPTextFieldStateRounded | CPThemeStateBezeled | CPThemeStateEditing],
//             [@"font",           [CPFont systemFontOfSize:12.0]],
// 
//             [@"content-inset",  CGInsetMake(8.0, 14.0, 6.0, 14.0),  CPTextFieldStateRounded | CPThemeStateBezeled],
//             [@"content-inset",  CGInsetMake(7.0, 14.0, 6.0, 14.0),  CPTextFieldStateRounded | CPThemeStateBezeled | CPThemeStateEditing],
// 
//             [@"bezel-inset",    CGInsetMake(4.0, 4.0, 4.0, 4.0),    CPTextFieldStateRounded | CPThemeStateBezeled],
//             [@"bezel-inset",    CGInsetMake(0.0, 0.0, 0.0, 0.0),    CPTextFieldStateRounded | CPThemeStateBezeled | CPThemeStateEditing],
// 
//             [@"text-color",     placeholderColor,       CPTextFieldStateRounded | CPTextFieldStatePlaceholder],
// 
//             [@"min-size",       CGSizeMake(0.0, 30.0),  CPTextFieldStateRounded | CPThemeStateBezeled],
//             [@"max-size",       CGSizeMake(-1.0, 30.0), CPTextFieldStateRounded | CPThemeStateBezeled]
//         ];
// 
//     [self registerThemeValues:themedRoundedTextFieldValues forView:textfield];
// 
//     [textfield setBezeled:YES];
//     [textfield setBezelStyle:CPTextFieldRoundedBezel];
// 
//     [textfield setPlaceholderString:"placeholder"];
//     [textfield setStringValue:""];
//     [textfield setEditable:YES];
// 
//     return textfield;
// }
// 
// + (CPSearchField)themedSearchField
// {
//     var searchField = [[CPSearchField alloc] initWithFrame:CGRectMake(0.0, 0.0, 60.0, 30.0)];
// 
//     [self registerThemeValues:nil forView:searchField inherit:themedRoundedTextFieldValues];
//     return searchField;
// }
// 
// + (CPTokenField)themedTokenField
// {
//     var tokenfield = [[CPTokenField alloc] initWithFrame:CGRectMake(0.0, 0.0, 60.0, 29.0)],
// 
//         overrides =
//         [
//             [@"content-inset", CGInsetMake(8.0, 0.0, 4.0, 0.0)],
//             // Placeholder is displayed as regular text, not tokens; requires a different inset.
//             [@"content-inset", CGInsetMake(9.0, 0.0, 5.0, 2.0), CPTextFieldStatePlaceholder],
//             [@"content-inset", CGInsetMake(6.0, 5.0, 5.0, 6.0), CPThemeStateBezeled],
//             [@"content-inset", CGInsetMake(9.0, 7.0, 6.0, 8.0), CPThemeStateBezeled | CPTextFieldStatePlaceholder],
//         ];
// 
//     [self registerThemeValues:overrides forView:tokenfield inherit:themedTextFieldValues];
// 
//     return tokenfield;
// }
// 
// + (_CPTokenFieldToken)themedTokenFieldToken
// {
//     var token = [[_CPTokenFieldToken alloc] initWithFrame:CGRectMake(0.0, 0.0, 60.0, 19.0)],
// 
//         bezelColor = PatternColor(
//             [
//                 ["token-left.png", 11.0, 19.0],
//                 ["token-center.png", 1.0, 19.0],
//                 ["token-right.png", 11.0, 19.0]
//             ],
//             PatternIsHorizontal),
// 
//         bezelHighlightedColor = PatternColor(
//             [
//                 ["token-highlighted-left.png", 11.0, 19.0],
//                 ["token-highlighted-center.png", 1.0, 19.0],
//                 ["token-highlighted-right.png", 11.0, 19.0]
//             ],
//             PatternIsHorizontal),
// 
//         textColor = [CPColor colorWithRed:41.0 / 255.0 green:51.0 / 255.0 blue:64.0 / 255.0 alpha:1.0],
//         textHighlightedColor = [CPColor whiteColor],
// 
//         themeValues =
//         [
//             [@"bezel-color",    bezelColor,                         CPThemeStateBezeled],
//             [@"bezel-color",    bezelHighlightedColor,              CPThemeStateBezeled | CPThemeStateHighlighted],
// 
//             [@"text-color",     textColor],
//             [@"text-color",     textHighlightedColor,               CPThemeStateHighlighted],
// 
//             [@"bezel-inset",    CGInsetMake(0.0, 0.0, 0.0, 0.0),    CPThemeStateBezeled],
//             [@"content-inset",  CGInsetMake(1.0, 24.0, 2.0, 16.0),  CPThemeStateBezeled],
// 
//             // Minimum height == maximum height since tokens are fixed height.
//             [@"min-size",       CGSizeMake(0.0, 19.0)],
//             [@"max-size",       CGSizeMake(-1.0, 19.0)],
// 
//             [@"vertical-alignment", CPCenterTextAlignment],
//         ];
// 
//     [self registerThemeValues:themeValues forView:token];
// 
//     return token;
// }
// 
// + (_CPTokenFieldTokenCloseButton)themedTokenFieldTokenCloseButton
// {
//     var button = [[_CPTokenFieldTokenCloseButton alloc] initWithFrame:CGRectMake(0, 0, 9, 9)],
// 
//         bezelColor = PatternColor("token-close.png", 8.0, 8.0),
//         bezelHighlightedColor = PatternColor("token-close-highlighted.png", 8.0, 8.0),
// 
//         themeValues =
//         [
//             [@"bezel-color",    bezelColor,                         CPThemeStateBordered],
//             [@"bezel-color",    bezelHighlightedColor,              CPThemeStateBordered | CPThemeStateHighlighted],
// 
//             [@"min-size",       CGSizeMake(8.0, 8.0)],
//             [@"max-size",       CGSizeMake(8.0, 8.0)],
// 
//             [@"bezel-inset",    CGInsetMake(0.0, 0.0, 0.0, 0.0),    CPThemeStateBordered],
//             [@"bezel-inset",    CGInsetMake(0.0, 0.0, 0.0, 0.0),    CPThemeStateBordered | CPThemeStateHighlighted],
// 
//             [@"offset",         CGPointMake(18, 6),                 CPThemeStateBordered]
//         ];
// 
//     [self registerThemeValues:themeValues forView:button];
// 
//     return button;
// }

// + (CPRadioButton)themedRadioButton
// {
//     var button = [CPRadio radioWithTitle:@"Radio button"],
// 
//         imageNormal = PatternImage("radio-image.png", 17.0, 17.0),
//         imageSelected = PatternImage("radio-image-selected.png", 17.0, 17.0),
//         imageSelectedHighlighted = PatternImage("radio-image-selected-highlighted.png", 17.0, 17.0),
//         imageSelectedDisabled = PatternImage("radio-image-selected-disabled.png", 17.0, 17.0),
//         imageDisabled = PatternImage("radio-image-disabled.png", 17.0, 17.0),
//         imageHighlighted = PatternImage("radio-image-highlighted.png", 17.0, 17.0),
// 
//         themeValues =
//         [
//             [@"alignment",      CPLeftTextAlignment,                CPThemeStateNormal],
//             [@"font",           [CPFont systemFontOfSize:12.0],     CPThemeStateNormal],
//             [@"content-inset",  CGInsetMake(0.0, 0.0, 0.0, 0.0),    CPThemeStateNormal],
// 
//             [@"image",          imageNormal,                        CPThemeStateNormal],
//             [@"image",          imageSelected,                      CPThemeStateSelected],
//             [@"image",          imageSelectedHighlighted,           CPThemeStateSelected | CPThemeStateHighlighted],
//             [@"image",          imageHighlighted,                   CPThemeStateHighlighted],
//             [@"image",          imageDisabled,                      CPThemeStateDisabled],
//             [@"image",          imageSelectedDisabled,              CPThemeStateSelected | CPThemeStateDisabled],
//             [@"image-offset",   CPRadioImageOffset],
// 
//             [@"text-color",     [CPColor colorWithCalibratedWhite:79.0 / 255.0 alpha:1.0],  CPThemeStateDisabled],
// 
//             [@"min-size",       CGSizeMake(17.0, 17.0)],
//             [@"max-size",       CGSizeMake(-1.0, -1.0)]
//         ];
// 
//     [self registerThemeValues:themeValues forView:button];
// 
//     return button;
// }
// 
+ (CPCheckBox)themedCheckBoxButton
{
    var button = [CPCheckBox checkBoxWithTitle:@"Checkbox"],

        imageNormal = PatternImage("check-box-image.png", 18.0, 19.0),
        imageSelected = PatternImage("check-box-image-selected.png", 18.0, 19.0),
        imageSelectedHighlighted = PatternImage("check-box-image-selected-highlighted.png", 18.0, 19.0),
        imageSelectedDisabled = PatternImage("check-box-image-selected-disabled.png", 18.0, 19.0),
        imageDisabled = PatternImage("check-box-image-disabled.png", 18.0, 19.0),
        imageHighlighted = PatternImage("check-box-image-highlighted.png", 18.0, 19.0),

        themeValues =
        [
            [@"alignment",      CPLeftTextAlignment,                CPThemeStateNormal],
            [@"font",           [CPFont systemFontOfSize:12.0],     CPThemeStateNormal],
            [@"content-inset",  CGInsetMake(1.0, 0.0, 0.0, 0.0),    CPThemeStateNormal],

            [@"image",          imageNormal,                        CPThemeStateNormal],
            [@"image",          imageSelected,                      CPThemeStateSelected],
            [@"image",          imageSelectedHighlighted,           CPThemeStateSelected | CPThemeStateHighlighted],
            [@"image",          imageHighlighted,                   CPThemeStateHighlighted],
            [@"image",          imageDisabled,                      CPThemeStateDisabled],
            [@"image",          imageSelectedDisabled,              CPThemeStateSelected | CPThemeStateDisabled],
            [@"image-offset",   CPCheckBoxImageOffset],

            [@"text-color",     [CPColor colorWithCalibratedWhite:79.0 / 255.0 alpha:1.0],  CPThemeStateDisabled],

            [@"min-size",       CGSizeMake(18.0, 19.0)],
            [@"max-size",       CGSizeMake(-1.0, -1.0)]
        ];

    [button setThemeState:CPThemeStateSelected];

    [self registerThemeValues:themeValues forView:button];

    return button;
}
// 
// + (CPCheckBox)themedMixedCheckBoxButton
// {
//     var button = [self themedCheckBoxButton];
// 
//     [button setAllowsMixedState:YES];
//     [button setState:CPMixedState];
// 
//     var mixedHighlightedImage = PatternImage("check-box-image-mixed-highlighted.png", 18.0, 19.0),
//         mixedDisabledImage = PatternImage("check-box-image-mixed-disabled.png", 18.0, 19.0),
//         mixedImage = PatternImage("check-box-image-mixed.png", 18.0, 19.0),
// 
//         themeValues =
//         [
//             [@"image",          mixedImage,             CPButtonStateMixed],
//             [@"image",          mixedHighlightedImage,  CPButtonStateMixed | CPThemeStateHighlighted],
//             [@"image",          mixedDisabledImage,     CPButtonStateMixed | CPThemeStateDisabled],
//             [@"image-offset",   CPCheckBoxImageOffset,  CPButtonStateMixed],
//             [@"max-size",       CGSizeMake(-1.0, -1.0)]
//         ];
// 
//     [self registerThemeValues:themeValues forView:button];
// 
//     return button;
// }
// 
// + (CPSegmentedControl)makeSegmentedControl
// {
//     var segmentedControl = [[CPSegmentedControl alloc] initWithFrame:CGRectMake(0.0, 0.0, 0.0, 25.0)];
// 
//     [segmentedControl setTrackingMode:CPSegmentSwitchTrackingSelectAny];
//     [segmentedControl setSegmentCount:3];
// 
//     [segmentedControl setWidth:40.0 forSegment:0];
//     [segmentedControl setLabel:@"foo" forSegment:0];
//     [segmentedControl setTag:1 forSegment:0];
// 
//     [segmentedControl setWidth:60.0 forSegment:1];
//     [segmentedControl setLabel:@"bar" forSegment:1];
//     [segmentedControl setTag:2 forSegment:1];
// 
//     [segmentedControl setWidth:35.0 forSegment:2];
//     [segmentedControl setLabel:@"1" forSegment:2];
//     [segmentedControl setTag:3 forSegment:2];
// 
//     return segmentedControl;
// };
// 
// + (CPSegmentedControl)themedSegmentedControl
// {
//     var segmentedControl = [self makeSegmentedControl],
// 
//         centerBezelColor = PatternColor("segmented-control-bezel-center.png", 1.0, 25.0),
//         dividerBezelColor = PatternColor("segmented-control-bezel-divider.png", 1.0, 25.0),
//         centerHighlightedBezelColor = PatternColor("segmented-control-bezel-highlighted-center.png", 1.0, 25.0),
//         dividerHighlightedBezelColor = PatternColor("segmented-control-bezel-highlighted-divider.png", 1.0, 25.0),
//         leftHighlightedBezelColor = PatternColor("segmented-control-bezel-highlighted-left.png", 4.0, 25.0),
//         rightHighlightedBezelColor = PatternColor("segmented-control-bezel-highlighted-right.png", 4.0, 25.0),
//         inactiveCenterBezelColor = PatternColor("segmented-control-bezel-disabled-center.png", 1.0, 25.0),
//         inactiveDividerBezelColor = PatternColor("segmented-control-bezel-disabled-divider.png", 1.0, 25.0),
//         inactiveLeftBezelColor = PatternColor("segmented-control-bezel-disabled-left.png", 4.0, 25.0),
//         inactiveRightBezelColor = PatternColor("segmented-control-bezel-disabled-right.png", 4.0, 25.0),
//         inactiveHighlightedCenterBezelColor = PatternColor("segmented-control-bezel-highlighted-disabled-center.png", 1.0, 25.0),
//         inactiveHighlightedDividerBezelColor = PatternColor("segmented-control-bezel-highlighted-disabled-divider.png", 1.0, 25.0),
//         inactiveHighlightedLeftBezelColor = PatternColor("segmented-control-bezel-highlighted-disabled-left.png", 4.0, 25.0),
//         inactiveHighlightedRightBezelColor = PatternColor("segmented-control-bezel-highlighted-disabled-right.png", 4.0, 25.0),
//         leftBezelColor = PatternColor("segmented-control-bezel-left.png", 4.0, 25.0),
//         rightBezelColor = PatternColor("segmented-control-bezel-right.png", 4.0, 25.0),
//         pushedCenterBezelColor = PatternColor("segmented-control-bezel-pushed-center.png", 1.0, 25.0),
//         pushedLeftBezelColor = PatternColor("segmented-control-bezel-pushed-left.png", 4.0, 25.0),
//         pushedRightBezelColor = PatternColor("segmented-control-bezel-pushed-right.png", 4.0, 25.0),
//         pushedHighlightedCenterBezelColor = PatternColor("segmented-control-bezel-pushed-highlighted-center.png", 1.0, 25.0),
//         pushedHighlightedLeftBezelColor = PatternColor("segmented-control-bezel-pushed-highlighted-left.png", 4.0, 25.0),
//         pushedHighlightedRightBezelColor = PatternColor("segmented-control-bezel-pushed-highlighted-right.png", 4.0, 25.0);
// 
//     themedSegmentedControlValues =
//         [
//             [@"center-segment-bezel-color",     centerBezelColor,                       CPThemeStateNormal],
//             [@"center-segment-bezel-color",     inactiveCenterBezelColor,               CPThemeStateDisabled],
//             [@"center-segment-bezel-color",     inactiveHighlightedCenterBezelColor,    CPThemeStateSelected | CPThemeStateDisabled],
//             [@"center-segment-bezel-color",     centerHighlightedBezelColor,            CPThemeStateSelected],
//             [@"center-segment-bezel-color",     pushedCenterBezelColor,                 CPThemeStateHighlighted],
//             [@"center-segment-bezel-color",     pushedHighlightedCenterBezelColor,      CPThemeStateHighlighted | CPThemeStateSelected],
// 
//             [@"divider-bezel-color",            dividerBezelColor,                      CPThemeStateNormal],
//             [@"divider-bezel-color",            inactiveDividerBezelColor,              CPThemeStateDisabled],
//             [@"divider-bezel-color",            inactiveHighlightedDividerBezelColor,   CPThemeStateSelected | CPThemeStateDisabled],
//             [@"divider-bezel-color",            dividerHighlightedBezelColor,           CPThemeStateSelected],
// 
//             [@"left-segment-bezel-color",       leftBezelColor,                         CPThemeStateNormal],
//             [@"left-segment-bezel-color",       inactiveLeftBezelColor,                 CPThemeStateDisabled],
//             [@"left-segment-bezel-color",       inactiveHighlightedLeftBezelColor,      CPThemeStateSelected | CPThemeStateDisabled],
//             [@"left-segment-bezel-color",       leftHighlightedBezelColor,              CPThemeStateSelected],
//             [@"left-segment-bezel-color",       pushedLeftBezelColor,                   CPThemeStateHighlighted],
//             [@"left-segment-bezel-color",       pushedHighlightedLeftBezelColor,        CPThemeStateHighlighted | CPThemeStateSelected],
// 
//             [@"right-segment-bezel-color",      rightBezelColor,                        CPThemeStateNormal],
//             [@"right-segment-bezel-color",      inactiveRightBezelColor,                CPThemeStateDisabled],
//             [@"right-segment-bezel-color",      inactiveHighlightedRightBezelColor,     CPThemeStateSelected | CPThemeStateDisabled],
//             [@"right-segment-bezel-color",      rightHighlightedBezelColor,             CPThemeStateSelected],
//             [@"right-segment-bezel-color",      pushedRightBezelColor,                  CPThemeStateHighlighted],
//             [@"right-segment-bezel-color",      pushedHighlightedRightBezelColor,       CPThemeStateHighlighted | CPThemeStateSelected],
// 
//             [@"content-inset",  CGInsetMake(0.0, 4.0, 0.0, 4.0), CPThemeStateNormal],
//             [@"bezel-inset",    CGInsetMake(0.0, 0.0, 0.0, 0.0), CPThemeStateNormal],
// 
//             [@"font",               [CPFont boldSystemFontOfSize:12.0]],
//             [@"text-color",         [CPColor colorWithCalibratedWhite:79.0 / 255.0 alpha:1.0]],
//             [@"text-color",         [CPColor colorWithCalibratedWhite:0.6 alpha:1.0], CPThemeStateDisabled],
//             [@"text-shadow-color",  [CPColor colorWithCalibratedWhite:240.0 / 255.0 alpha:1.0]],
//             [@"text-shadow-color",  [CPColor colorWithCalibratedWhite:240.0 / 255.0 alpha:1.0], CPThemeStateDisabled],
//             [@"text-shadow-offset", CGSizeMake(0.0, 1.0)],
//             [@"line-break-mode",    CPLineBreakByTruncatingTail],
// 
//             [@"divider-thickness",  1.0],
//             [@"default-height",     25.0]
//         ];
// 
//     [self registerThemeValues:themedSegmentedControlValues forView:segmentedControl];
// 
//     return segmentedControl;
// }
// 
// + (CPSlider)makeHorizontalSlider
// {
//     return [[CPSlider alloc] initWithFrame:CGRectMake(0.0, 0.0, 50.0, 24.0)];
// }
// 
// + (CPSlider)themedHorizontalSlider
// {
//     var slider = [self makeHorizontalSlider],
// 
//         trackColor = PatternColor(
//         [
//             ["horizontal-track-left.png", 2.0, 5.0],
//             ["horizontal-track-center.png", 1.0, 5.0],
//             ["horizontal-track-right.png", 2.0, 5.0]
//         ],
//         PatternIsHorizontal),
// 
//         trackDisabledColor = PatternColor(
//         [
//             ["horizontal-track-disabled-left.png", 2.0, 5.0],
//             ["horizontal-track-disabled-center.png", 1.0, 5.0],
//             ["horizontal-track-disabled-right.png", 2.0, 5.0]
//         ],
//         PatternIsHorizontal),
// 
//         knobColor =             PatternColor("knob.png", 21.0, 21.0),
//         knobHighlightedColor =  PatternColor("knob-highlighted.png", 21.0, 21.0),
//         knobDisabledColor =     PatternColor("knob-disabled.png", 21.0, 21.0);
// 
//     themedHorizontalSliderValues =
//     [
//         [@"track-width", 5.0],
//         [@"track-color", trackColor],
//         [@"track-color", trackDisabledColor, CPThemeStateDisabled],
// 
//         [@"knob-size",  CGSizeMake(21.0, 21.0)],
//         [@"knob-color", knobColor],
//         [@"knob-color", knobHighlightedColor,   CPThemeStateHighlighted],
//         [@"knob-color", knobDisabledColor,      CPThemeStateDisabled]
//     ];
// 
//     [self registerThemeValues:themedHorizontalSliderValues forView:slider];
// 
//     return slider;
// }
// 
// + (CPSlider)makeVerticalSlider
// {
//     return [[CPSlider alloc] initWithFrame:CGRectMake(0.0, 0.0, 24.0, 50.0)];
// }
// 
// + (CPSlider)themedVerticalSlider
// {
//     var slider = [self makeVerticalSlider],
// 
//         trackColor = PatternColor(
//         [
//             ["vertical-track-top.png", 5.0, 2.0],
//             ["vertical-track-center.png", 5.0, 1.0],
//             ["vertical-track-bottom.png", 5.0, 2.0]
//         ],
//         PatternIsVertical),
// 
//         trackDisabledColor = PatternColor(
//         [
//             ["vertical-track-disabled-top.png", 5.0, 2.0],
//             ["vertical-track-disabled-center.png", 5.0, 1.0],
//             ["vertical-track-disabled-bottom.png", 5.0, 2.0]
//         ],
//         PatternIsVertical),
// 
//         knobColor =             PatternColor("knob.png", 21.0, 21.0),
//         knobHighlightedColor =  PatternColor("knob-highlighted.png", 21.0, 21.0),
//         knobDisabledColor =     PatternColor("knob-disabled.png", 21.0, 21.0);
// 
//     themedVerticalSliderValues =
//     [
//         [@"track-width", 5.0],
//         [@"track-color", trackColor,            CPThemeStateVertical],
//         [@"track-color", trackDisabledColor,    CPThemeStateVertical | CPThemeStateDisabled],
// 
//         [@"knob-size",  CGSizeMake(21.0, 21.0)],
//         [@"knob-color", knobColor],
//         [@"knob-color", knobHighlightedColor,   CPThemeStateHighlighted],
//         [@"knob-color", knobDisabledColor,      CPThemeStateDisabled]
//     ];
// 
//     [self registerThemeValues:themedVerticalSliderValues forView:slider];
// 
//     return slider;
// }
// 
// + (CPSlider)makeCircularSlider
// {
//     var slider = [[CPSlider alloc] initWithFrame:CGRectMake(0.0, 0.0, 34.0, 34.0)];
// 
//     [slider setSliderType:CPCircularSlider];
// 
//     return slider;
// }
// 
// + (CPSlider)themedCircularSlider
// {
//     var slider = [self makeCircularSlider],
// 
//         trackColor = PatternColor("slider-circular-bezel.png", 34.0, 34.0),
//         trackDisabledColor = PatternColor("slider-circular-disabled-bezel.png", 34.0, 34.0),
//         knobColor = PatternColor("slider-circular-knob.png", 5.0, 5.0),
//         knobDisabledColor = PatternColor("slider-circular-disabled-knob.png", 5.0, 5.0),
//         knobHighlightedColor = knobColor;
// 
//     themedCircularSliderValues =
//     [
//         [@"track-color", trackColor,            CPThemeStateCircular],
//         [@"track-color", trackDisabledColor,    CPThemeStateCircular | CPThemeStateDisabled],
// 
//         [@"knob-size",  CGSizeMake(5.0, 5.0),   CPThemeStateCircular],
//         [@"knob-color", knobColor,              CPThemeStateCircular],
//         [@"knob-color", knobHighlightedColor,   CPThemeStateCircular | CPThemeStateHighlighted],
//         [@"knob-color", knobDisabledColor,      CPThemeStateCircular | CPThemeStateDisabled]
//     ];
// 
//     [self registerThemeValues:themedCircularSliderValues forView:slider];
// 
//     return slider;
// }
// 
// + (CPButtonBar)makeButtonBar
// {
//     var buttonBar = [[CPButtonBar alloc] initWithFrame:CGRectMake(0.0, 0.0, 147.0, 26.0)];
// 
//     [buttonBar setHasResizeControl:YES];
// 
//     var popup = [CPButtonBar actionPopupButton];
//     [popup addItemWithTitle:"Item 1"];
//     [popup addItemWithTitle:"Item 2"];
// 
//     [buttonBar setButtons:[[CPButtonBar plusButton], [CPButtonBar minusButton], popup]];
// 
//     return buttonBar;
// }
// 
// + (CPButtonBar)themedButtonBar
// {
//     var buttonBar = [self makeButtonBar],
// 
//         color = PatternColor("buttonbar-bezel.png", 1.0, 26.0),
//         resizeColor = PatternColor("buttonbar-resize-control.png", 5.0, 10.0),
//         buttonBezelColor = PatternColor(
//             [
//                 ["buttonbar-button-bezel-left.png", 2.0, 25.0],
//                 ["buttonbar-button-bezel-center.png", 1.0, 25.0],
//                 ["buttonbar-button-bezel-right.png", 2.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         buttonBezelHighlightedColor = PatternColor(
//             [
//                 ["buttonbar-button-bezel-highlighted-left.png", 2.0, 25.0],
//                 ["buttonbar-button-bezel-highlighted-center.png", 1.0, 25.0],
//                 ["buttonbar-button-bezel-highlighted-right.png", 2.0, 25.0]
//             ],
//             PatternIsHorizontal),
// 
//         buttonBezelDisabledColor = PatternColor(
//             [
//                 ["buttonbar-button-bezel-disabled-left.png", 2.0, 25.0],
//                 ["buttonbar-button-bezel-disabled-center.png", 1.0, 25.0],
//                 ["buttonbar-button-bezel-disabled-right.png", 2.0, 25.0]
//             ],
//             PatternIsHorizontal);
// 
//     themedButtonBarValues =
//     [
//         [@"bezel-color", color],
// 
//         [@"resize-control-size",    CGSizeMake(5.0, 10.0)],
//         [@"resize-control-inset",   CGInsetMake(9.0, 4.0, 7.0, 4.0)],
//         [@"resize-control-color",   resizeColor],
// 
//         [@"button-bezel-color",     buttonBezelColor],
//         [@"button-bezel-color",     buttonBezelHighlightedColor,    CPThemeStateHighlighted],
//         [@"button-bezel-color",     buttonBezelDisabledColor,       CPThemeStateDisabled],
//         [@"button-text-color",      [CPColor blackColor]]
//     ];
// 
//     [self registerThemeValues:themedButtonBarValues forView:buttonBar];
// 
//     return buttonBar;
// }
// 
// + (_CPTableColumnHeaderView)makeColumnHeader
// {
//     var header = [[_CPTableColumnHeaderView alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 24.0)];
// 
//     [header setStringValue:@"Table Header"];
// 
//     return header;
// }
// 
// + (_CPTableColumnHeaderView)themedColumnHeader
// {
//     var header = [self makeColumnHeader],
//         highlightedPressed = PatternColor("tableview-headerview-highlighted-pressed.png", 1.0, 23.0),
//         highlighted        = PatternColor("tableview-headerview-highlighted.png", 1.0, 23.0),
//         pressed            = PatternColor("tableview-headerview-pressed.png", 1.0, 23.0),
//         normal             = PatternColor("tableview-headerview.png", 1.0, 23.0),
// 
//         themedColumnHeaderValues =
//         [
//             [@"background-color",   normal],
// 
//             [@"text-inset",         CGInsetMake(0, 5, 0, 5)],
//             [@"text-color",         [CPColor colorWithCalibratedWhite:51.0 / 255.0 alpha:1.0]],
//             [@"text-font",          [CPFont boldSystemFontOfSize:12.0]],
//             [@"text-shadow-color",  [CPColor whiteColor]],
//             [@"text-shadow-offset", CGSizeMake(0.0, 1.0)],
//             [@"text-alignment",     CPLeftTextAlignment],
// 
//             [@"background-color",   pressed,            CPThemeStateHighlighted],
//             [@"background-color",   highlighted,        CPThemeStateSelected],
//             [@"background-color",   highlightedPressed, CPThemeStateHighlighted | CPThemeStateSelected]
//         ];
// 
//     [self registerThemeValues:themedColumnHeaderValues forView:header];
// 
//     return header;
// }
// 
// + (CPTableHeaderView)themedTableHeaderRow
// {
//     var header = [[CPTableHeaderView alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 23.0)],
//         normal = PatternColor("tableview-headerview.png", 1.0, 23.0),
//         gridColor = [CPColor colorWithHexString:@"dce0e2"];
// 
//     [header setValue:normal forThemeAttribute:@"background-color"];
//     [header setValue:gridColor forThemeAttribute:@"divider-color"];
// 
//     return header;
// }
// 
// + (_CPCornerView)themedCornerview
// {
//     var scrollerWidth = [CPScroller scrollerWidth],
//         corner = [[_CPCornerView alloc] initWithFrame:CGRectMake(0.0, 0.0, scrollerWidth, 23.0)],
//         normal = PatternColor("tableview-headerview.png", 1.0, 23.0),
//         dividerColor = [CPColor colorWithHexString:@"dce0e2"];
// 
//     [corner setValue:normal forThemeAttribute:"background-color"];
//     [corner setValue:dividerColor forThemeAttribute:"divider-color"];
// 
//     return corner;
// }
// 
// + (CPTableView)themedTableView
// {
//     // This is a bit more complicated than the rest because we actually set theme values for several different (table related) controls in this method
// 
//     var tableview = [[CPTableView alloc] initWithFrame:CGRectMake(0.0, 0.0, 150.0, 150.0)],
// 
//         sortImage = PatternImage("tableview-headerview-ascending.png", 9.0, 8.0),
//         sortImageReversed = PatternImage("tableview-headerview-descending.png", 9.0, 8.0),
//         alternatingRowColors = [[CPColor whiteColor], [CPColor colorWithRed:245.0 / 255.0 green:249.0 / 255.0 blue:252.0 / 255.0 alpha:1.0]],
//         gridColor = [CPColor colorWithHexString:@"dce0e2"],
//         selectionColor = [CPColor colorWithHexString:@"5f83b9"],
//         sourceListSelectionColor = [CPDictionary dictionaryWithObjects: [CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(), [98.0 / 255.0, 143.0 / 210.0, 209.0 / 255.0, 1.0, 46.0 / 255.0, 88.0 / 176.0, 208.0 / 255.0,1.0], [0,1], 2),
//                                                                           [CPColor colorWithCalibratedRed:81.0 / 255.0 green:127.0 / 255.0 blue:200.0 / 255.0 alpha:1.0],
//                                                                           [CPColor colorWithCalibratedRed:34.0 / 255.0 green:63.0 / 255.0 blue:123.0 / 255.0 alpha:1.0]
//                                                                         ]
//                                                                forKeys: [CPSourceListGradient, CPSourceListTopLineColor, CPSourceListBottomLineColor]],
// 
//         themedTableViewValues =
//         [
//             [@"alternating-row-colors",     alternatingRowColors],
//             [@"grid-color",                 gridColor],
//             [@"highlighted-grid-color",     [CPColor whiteColor]],
//             [@"selection-color",            selectionColor],
//             [@"sourcelist-selection-color", sourceListSelectionColor],
//             [@"sort-image",                 sortImage],
//             [@"sort-image-reversed",        sortImageReversed]
//         ];
// 
//     [self registerThemeValues:themedTableViewValues forView:tableview];
// 
//     return tableview;
// }
// 
// // + (CPTextField)themedTableDataView
// // {
// //     var view = [self themedStandardTextField];
// // 
// //     [view setBezeled:NO];
// //     [view setEditable:NO];
// //     [view setThemeState:CPThemeStateTableDataView];
// // 
// //     return view;
// // }
// 
// + (CPSplitView)themedSplitView
// {
//     var splitView = [[CPSplitView alloc] initWithFrame:CGRectMake(0.0, 0.0, 200.0, 200.0)],
//         leftView = [[CPView alloc] initWithFrame:CGRectMake(0.0, 0.0, 75.0, 150.0)],
//         rightView = [[CPView alloc] initWithFrame:CGRectMake(75.0, 0.0, 75.0, 150.0)];
// 
//     [splitView addSubview:leftView];
//     [splitView addSubview:rightView];
// 
// 
//     [splitView setIsPaneSplitter:YES];
// 
//     var themedSplitViewValues =
//         [
//             [@"divider-thickness", 1.0],
//             [@"pane-divider-thickness", 10.0],
//             [@"pane-divider-color", [CPColor colorWithRed:165.0 / 255.0 green:165.0 / 255.0 blue:165.0 / 255.0 alpha:1.0]]
//         ];
// 
//     [self registerThemeValues:themedSplitViewValues forView:splitView];
// 
//     return splitView;
// }
// 
// + (CPAlert)themedAlert
// {
//     var alert = [CPAlert new],
// 
//         buttonOffset = 10.0,
//         defaultElementsMargin = 3.0,
//         errorIcon = PatternImage("alert-error.png", 53.0, 46.0),
//         helpIcon = PatternImage("alert-help.png", 24.0, 24.0),
//         helpIconPressed = PatternImage("alert-help-pressed.png", 24.0, 24.0),
//         helpLeftOffset = 15,
//         imageOffset = CGPointMake(15, 18),
//         informationIcon = PatternImage("alert-info.png", 53.0, 46.0),
//         informativeFont = [CPFont systemFontOfSize:12.0],
//         inset = CGInsetMake(15, 15, 15, 80),
//         messageFont = [CPFont boldSystemFontOfSize:13.0],
//         size = CGSizeMake(400.0, 110.0),
//         suppressionButtonXOffset = 2.0,
//         suppressionButtonYOffset = 10.0,
//         suppressionButtonFont = [CPFont systemFontOfSize:12.0],
//         warningIcon = PatternImage("alert-warning.png", 53.0, 46.0);
// 
//     themedAlertValues =
//     [
//         [@"button-offset",                      buttonOffset],
//         [@"content-inset",                      inset],
//         [@"default-elements-margin",            defaultElementsMargin],
//         [@"error-image",                        errorIcon],
//         [@"help-image",                         helpIcon],
//         [@"help-image-left-offset",             helpLeftOffset],
//         [@"help-image-pressed",                 helpIconPressed],
//         [@"image-offset",                       imageOffset],
//         [@"information-image",                  informationIcon],
//         [@"informative-text-alignment",         CPJustifiedTextAlignment],
//         [@"informative-text-color",             [CPColor blackColor]],
//         [@"informative-text-font",              informativeFont],
//         [@"message-text-alignment",             CPJustifiedTextAlignment],
//         [@"message-text-color",                 [CPColor blackColor]],
//         [@"message-text-font",                  messageFont],
//         [@"suppression-button-text-color",      [CPColor blackColor]],
//         [@"suppression-button-text-font",       suppressionButtonFont],
//         [@"size",                               size],
//         [@"suppression-button-x-offset",        suppressionButtonXOffset],
//         [@"suppression-button-y-offset",        suppressionButtonYOffset],
//         [@"warning-image",                      warningIcon]
//     ];
// 
//     [self registerThemeValues:themedAlertValues forView:alert];
// 
//     return alert;
// }
// 
// + (CPStepper)themedStepper
// {
//     var stepper = [CPStepper stepper],
// 
//         bezelUp = PatternColor(
//             [
//                 ["stepper-bezel-big-up-left.png", 3.0, 13.0],
//                 ["stepper-bezel-big-up-center.png", 13.0, 13.0],
//                 ["stepper-bezel-big-up-right.png", 3.0, 13.0]
//             ],
//             PatternIsHorizontal),
// 
//         bezelDown = PatternColor(
//             [
//                 ["stepper-bezel-big-down-left.png", 3.0, 12.0],
//                 ["stepper-bezel-big-down-center.png", 13.0, 12.0],
//                 ["stepper-bezel-big-down-right.png", 3.0, 12.0]
//             ],
//             PatternIsHorizontal),
// 
//         bezelUpDisabled = PatternColor(
//             [
//                 ["stepper-bezel-big-disabled-up-left.png", 3.0, 13.0],
//                 ["stepper-bezel-big-disabled-up-center.png", 13.0, 13.0],
//                 ["stepper-bezel-big-disabled-up-right.png", 3.0, 13.0]
//             ],
//             PatternIsHorizontal),
// 
//         bezelDownDisabled = PatternColor(
//             [
//                 ["stepper-bezel-big-disabled-down-left.png", 3.0, 12.0],
//                 ["stepper-bezel-big-disabled-down-center.png", 13.0, 12.0],
//                 ["stepper-bezel-big-disabled-down-right.png", 3.0, 12.0]
//             ],
//             PatternIsHorizontal),
// 
//         bezelUpHighlighted = PatternColor(
//             [
//                 [@"stepper-bezel-big-highlighted-up-left.png", 3.0, 13.0],
//                 [@"stepper-bezel-big-highlighted-up-center.png", 13.0, 13.0],
//                 [@"stepper-bezel-big-highlighted-up-right.png", 3.0, 13.0]
//             ],
//             PatternIsHorizontal),
// 
//         bezelDownHighlighted = PatternColor(
//             [
//                 [@"stepper-bezel-big-highlighted-down-left.png", 3.0, 12.0],
//                 [@"stepper-bezel-big-highlighted-down-center.png", 13.0, 12.0],
//                 [@"stepper-bezel-big-highlighted-down-right.png", 3.0, 12.0]
//             ],
//             PatternIsHorizontal),
// 
//         themeValues =
//         [
//             [@"bezel-color-up-button",      bezelUp,                        CPThemeStateBordered],
//             [@"bezel-color-down-button",    bezelDown,                      CPThemeStateBordered],
//             [@"bezel-color-up-button",      bezelUpDisabled,                CPThemeStateBordered | CPThemeStateDisabled],
//             [@"bezel-color-down-button",    bezelDownDisabled,              CPThemeStateBordered | CPThemeStateDisabled],
//             [@"bezel-color-up-button",      bezelUpHighlighted,             CPThemeStateBordered | CPThemeStateHighlighted],
//             [@"bezel-color-down-button",    bezelDownHighlighted,           CPThemeStateBordered | CPThemeStateHighlighted],
//             [@"min-size",                   CGSizeMake(19.0, 25.0)]
//         ];
// 
//     [self registerThemeValues:themeValues forView:stepper];
// 
//     return stepper;
// }
// 
// + (CPRuleEditor)themedRuleEditor
// {
//     var ruleEditor = [[CPRuleEditor alloc] initWithFrame:CGRectMake(0, 0, 400, 300)];
// 
//     var backgroundColors = [[CPColor whiteColor], [CPColor colorWithRed:235/255 green:239/255 blue:252/255 alpha:1]],
//         selectedActiveRowColor = [CPColor colorWithHexString:@"5f83b9"],
//         selectedInactiveRowColor = [CPColor colorWithWhite:0.83 alpha:1],
//         sliceTopBorderColor = [CPColor colorWithWhite:0.9 alpha:1],
//         sliceBottomBorderColor = [CPColor colorWithWhite:0.729412 alpha:1],
//         sliceLastBottomBorderColor = [CPColor colorWithWhite:0.6 alpha:1],
//         addImage = PatternImage(@"rule-editor-add.png", 8.0, 8.0),
//         removeImage = PatternImage(@"rule-editor-remove.png", 8.0, 8.0);
// 
//     var ruleEditorThemedValues =
//     [
//         [@"alternating-row-colors",         backgroundColors],
//         [@"selected-color",                 selectedActiveRowColor, CPThemeStateNormal],
//         [@"selected-color",                 selectedInactiveRowColor, CPThemeStateDisabled],
//         [@"slice-top-border-color",         sliceTopBorderColor],
//         [@"slice-bottom-border-color",      sliceBottomBorderColor],
//         [@"slice-last-bottom-border-color", sliceLastBottomBorderColor],
//         [@"font",                           [CPFont systemFontOfSize:10.0]],
//         [@"add-image",                      addImage],
//         [@"remove-image",                   removeImage]
//     ];
// 
//     [self registerThemeValues:ruleEditorThemedValues forView:ruleEditor];
// 
//     return ruleEditor;
// }

@end

// @implementation Aristo2HUDThemeDescriptor : BKThemeDescriptor
// {
// }
// 
// + (CPString)themeName
// {
//     return @"Aristo2-HUD";
// }
// 
// + (CPArray)themeShowcaseExcludes
// {
//     return ["alert"];
// }
// 
// + (CPColor)defaultShowcaseBackgroundColor
// {
//     return [CPColor blackColor];
// }
// 
// + (CPArray)defaultThemeOverridesAddedTo:(CPArray)themeValues
// {
//     var overrides = [CPArray arrayWithObjects:
//             [@"text-color",         [CPColor whiteColor]],
//             [@"text-color",         [CPColor colorWithCalibratedWhite:1.0 alpha:0.6], CPThemeStateDisabled],
//             [@"text-shadow-color",  [CPColor blackColor]],
//             [@"text-shadow-color",  [CPColor blackColor], CPThemeStateDisabled],
//             [@"text-shadow-offset", CGSizeMake(-1.0, -1.0)]
//         ];
// 
//     if (themeValues)
//         [overrides addObjectsFromArray:themeValues];
// 
//     return overrides;
// }
// 
// + (CPPopUpButton)themedSegmentedControl
// {
//     var segmentedControl = [Aristo2ThemeDescriptor makeSegmentedControl];
// 
//     [self registerThemeValues:[self defaultThemeOverridesAddedTo:nil] forView:segmentedControl inherit:themedSegmentedControlValues];
// 
//     return segmentedControl;
// }
// 
// + (CPButton)button
// {
//     var button = [Aristo2ThemeDescriptor makeButton];
// 
//     [self registerThemeValues:[self defaultThemeOverridesAddedTo:nil] forView:button inherit:themedButtonValues];
// 
//     return button;
// }
// 
// + (CPButton)themedStandardButton
// {
//     var button = [self button];
// 
//     [button setTitle:@"Cancel"];
// 
//     return button;
// }
// 
// + (CPButton)themedDefaultButton
// {
//     var button = [self button];
// 
//     [button setTitle:@"OK"];
//     [button setThemeState:CPThemeStateDefault];
// 
//     return button;
// }
// 
// // + (CPScroller)themedVerticalScroller
// // {
// //     var scroller = [Aristo2ThemeDescriptor makeVerticalScroller],
// //         overrides =
// //         [
// //             [@"knob-color", nil, CPThemeStateVertical | CPThemeStateDisabled]
// //         ];
// // 
// //     [self registerThemeValues:[self defaultThemeOverridesAddedTo:overrides] forView:scroller inherit:themedVerticalScrollerValues];
// // 
// //     return scroller;
// // }
// // 
// // + (CPScroller)themedHorizontalScroller
// // {
// //     var scroller = [Aristo2ThemeDescriptor makeHorizontalScroller],
// //         overrides =
// //         [
// //             [@"knob-color", nil, CPThemeStateDisabled]
// //         ];
// // 
// //     [self registerThemeValues:[self defaultThemeOverridesAddedTo:overrides] forView:scroller inherit:themedHorizontalScrollerValues];
// // 
// //     return scroller;
// // }
// 
// + (CPSlider)themedHorizontalSlider
// {
//     var slider = [Aristo2ThemeDescriptor makeHorizontalSlider];
// 
//     [self registerThemeValues:[self defaultThemeOverridesAddedTo:nil] forView:slider inherit:themedHorizontalSliderValues];
// 
//     return slider;
// }
// 
// + (CPSlider)themedVerticalSlider
// {
//     var slider = [Aristo2ThemeDescriptor makeVerticalSlider];
// 
//     [self registerThemeValues:[self defaultThemeOverridesAddedTo:nil] forView:slider inherit:themedVerticalSliderValues];
// 
//     return slider;
// }
// 
// + (CPSlider)themedCircularSlider
// {
//     var slider = [Aristo2ThemeDescriptor makeCircularSlider];
// 
//     [self registerThemeValues:[self defaultThemeOverridesAddedTo:nil] forView:slider inherit:themedCircularSliderValues];
// 
//     return slider;
// }
// 
// + (CPAlert)themedAlert
// {
//     var alert = [CPAlert new],
// 
//         hudSpecificValues =
//         [
//             [@"message-text-color",             [CPColor whiteColor]],
//             [@"informative-text-color",         [CPColor whiteColor]],
//             [@"suppression-button-text-color",  [CPColor whiteColor]],
//         ];
// 
//     [self registerThemeValues:hudSpecificValues forView:alert inherit:themedAlertValues];
// 
//     return alert;
// }
// 
// @end
