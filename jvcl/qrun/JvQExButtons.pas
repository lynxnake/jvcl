{**************************************************************************************************}
{  WARNING:  JEDI preprocessor generated unit.  Do not edit.                                       }
{**************************************************************************************************}

{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvExButtons.pas, released on 2004-01-04

The Initial Developer of the Original Code is Andreas Hausladen [Andreas dott Hausladen att gmx dott de]
Portions created by Andreas Hausladen are Copyright (C) 2004 Andreas Hausladen.
All Rights Reserved.

Contributor(s): -

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}
// $Id$

{$I jvcl.inc}
{MACROINCLUDE JvExControls.macros}

{*****************************************************************************
 * WARNING: Do not edit this file.
 * This file is autogenerated from the source in devtools/JvExVCL/src.
 * If you do it despite this warning your changes will be discarded by the next
 * update of this file. Do your changes in the template files.
 ****************************************************************************}

unit JvQExButtons;

interface

uses
  
  
  Qt, QGraphics, QControls, QForms, QButtons, QStdCtrls, QWindows,
  
  Classes, SysUtils,
  JvQTypes, JvQThemes, JVQCLVer, JvQExControls;



 {$IF not declared(PatchedVCLX)}
  
 {$IFEND}


type
  TJvExSpeedButton = class(TSpeedButton, IJvControlEvents, IPerformControl)
  
  
  public
    function Perform(Msg: Cardinal; WParam, LParam: Longint): Longint;
    function IsRightToLeft: Boolean;
  protected
    WindowProc: TClxWindowProc;
    procedure WndProc(var Msg: TMessage); virtual;
    procedure MouseEnter(Control: TControl); override;
    procedure MouseLeave(Control: TControl); override;
    procedure ParentColorChanged; override;
  
  private
    FHintColor: TColor;
    FSavedHintColor: TColor;
    FMouseOver: Boolean;
    FOnParentColorChanged: TNotifyEvent;
  
    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
  protected
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
  
  protected
    procedure CMFocusChanged(var Msg: TCMFocusChanged); message CM_FOCUSCHANGED;
    procedure DoFocusChanged(Control: TWinControl); dynamic;
    property MouseOver: Boolean read FMouseOver write FMouseOver;
    property HintColor: TColor read FHintColor write FHintColor default clInfoBk;
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
  private
  
  
    FAboutJVCLX: TJVCLAboutInfo;
  published
    property AboutJVCLX: TJVCLAboutInfo read FAboutJVCLX write FAboutJVCLX stored False;
  
  
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;
  TJvExPubSpeedButton = class(TJvExSpeedButton)
  
  end;
  
  TJvExBitBtn = class(TBitBtn, IJvWinControlEvents, IJvControlEvents, IPerformControl)
  
  
  public
    function Perform(Msg: Cardinal; WParam, LParam: Longint): Longint;
    function IsRightToLeft: Boolean;
  protected
    WindowProc: TClxWindowProc;
    procedure WndProc(var Msg: TMessage); virtual;
    procedure MouseEnter(Control: TControl); override;
    procedure MouseLeave(Control: TControl); override;
    procedure ParentColorChanged; override;
  private
    FDoubleBuffered: Boolean;
    function GetColor: TColor;
    procedure SetColor(Value: TColor);
    function GetDoubleBuffered: Boolean;
    procedure SetDoubleBuffered(Value: Boolean);
  protected
    procedure BoundsChanged; override;
    function NeedKey(Key: Integer; Shift: TShiftState;
      const KeyText: WideString): Boolean; override;
    procedure Painting(Sender: QObjectH; EventRegion: QRegionH); override;
    procedure ColorChanged; override;
    property Color: TColor read GetColor write SetColor;
  published // asn: change to public in final
    property DoubleBuffered: Boolean read GetDoubleBuffered write SetDoubleBuffered;
  
  private
    FHintColor: TColor;
    FSavedHintColor: TColor;
    FMouseOver: Boolean;
    FOnParentColorChanged: TNotifyEvent;
  
    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
  protected
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
  
  protected
    procedure CMFocusChanged(var Msg: TCMFocusChanged); message CM_FOCUSCHANGED;
    procedure DoFocusChanged(Control: TWinControl); dynamic;
    property MouseOver: Boolean read FMouseOver write FMouseOver;
    property HintColor: TColor read FHintColor write FHintColor default clInfoBk;
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
  private
  
  
    FAboutJVCLX: TJVCLAboutInfo;
  published
    property AboutJVCLX: TJVCLAboutInfo read FAboutJVCLX write FAboutJVCLX stored False;
  
  protected
    procedure DoGetDlgCode(var Code: TDlgCodes); virtual;
    procedure DoSetFocus(FocusedWnd: HWND); dynamic;
    procedure DoKillFocus(FocusedWnd: HWND); dynamic;
    procedure DoBoundsChanged; dynamic;
    function DoPaintBackground(Canvas: TCanvas; Param: Integer): Boolean; virtual;
  
  private
    FCanvas: TCanvas;
  protected
    procedure Paint; virtual;
    property Canvas: TCanvas read FCanvas;
  
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;
  TJvExPubBitBtn = class(TJvExBitBtn)
  
  end;
  

implementation



procedure TJvExSpeedButton.MouseEnter(Control: TControl);
begin
  Control_MouseEnter(Self, FMouseOver, FSavedHintColor, FHintColor);
  inherited MouseEnter(Control);
  {$IF not declared(PatchedVCLX)}
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
  {$IFEND}
end;

procedure TJvExSpeedButton.MouseLeave(Control: TControl);
begin
  Control_MouseLeave(FMouseOver, FSavedHintColor);
  inherited MouseLeave(Control);
  {$IF not declared(PatchedVCLX)}
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
  {$IFEND}
end;

procedure TJvExSpeedButton.ParentColorChanged;
begin
  inherited ParentColorChanged;
  if Assigned(FOnParentColorChanged) then
    FOnParentColorChanged(Self);
end;

function TJvExSpeedButton.Perform(Msg: Cardinal; WParam, LParam: Longint): Longint;
var
  Mesg: TMessage;
begin
  Mesg.Result := 0;
  if Self <> nil then
  begin
    Mesg.Msg := Msg;
    Mesg.WParam := WParam;
    Mesg.LParam := LParam;
    WindowProc(Mesg);
  end;
  Result := Mesg.Result;
end;

procedure TJvExSpeedButton.WndProc(var Msg: TMessage);
begin
  Dispatch(Msg);
end;

function TJvExSpeedButton.IsRightToLeft: Boolean;
begin
  Result := False;
end;

procedure TJvExSpeedButton.CMFocusChanged(var Msg: TCMFocusChanged);
begin
  inherited;
  DoFocusChanged(Msg.Sender);
end;

procedure TJvExSpeedButton.DoFocusChanged(Control: TWinControl);
begin
end;

constructor TJvExSpeedButton.Create(AOwner: TComponent);
begin
  
  WindowProc := WndProc;
  {$IF declared(PatchedVCLX) and (PatchedVCLX > 3.3)}
  SetCopyRectMode(Self, cmVCL);
  {$IFEND}
  
  inherited Create(AOwner);
  FHintColor := clInfoBk;
  
end;

destructor TJvExSpeedButton.Destroy;
begin
  
  inherited Destroy;
end;


procedure TJvExBitBtn.MouseEnter(Control: TControl);
begin
  Control_MouseEnter(Self, FMouseOver, FSavedHintColor, FHintColor);
  inherited MouseEnter(Control);
  {$IF not declared(PatchedVCLX)}
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
  {$IFEND}
end;

procedure TJvExBitBtn.MouseLeave(Control: TControl);
begin
  Control_MouseLeave(FMouseOver, FSavedHintColor);
  inherited MouseLeave(Control);
  {$IF not declared(PatchedVCLX)}
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
  {$IFEND}
end;

procedure TJvExBitBtn.ParentColorChanged;
begin
  inherited ParentColorChanged;
  if Assigned(FOnParentColorChanged) then
    FOnParentColorChanged(Self);
end;

function TJvExBitBtn.Perform(Msg: Cardinal; WParam, LParam: Longint): Longint;
var
  Mesg: TMessage;
begin
  Mesg.Result := 0;
  if Self <> nil then
  begin
    Mesg.Msg := Msg;
    Mesg.WParam := WParam;
    Mesg.LParam := LParam;
    WindowProc(Mesg);
  end;
  Result := Mesg.Result;
end;

procedure TJvExBitBtn.WndProc(var Msg: TMessage);
begin
  Dispatch(Msg);
end;

function TJvExBitBtn.IsRightToLeft: Boolean;
begin
  Result := False;
end;
procedure TJvExBitBtn.Painting(Sender: QObjectH; EventRegion: QRegionH);
begin
  WidgetControl_Painting(Self, Canvas, EventRegion);
end;

function TJvExBitBtn.NeedKey(Key: Integer; Shift: TShiftState;
  const KeyText: WideString): Boolean;
begin
  Result := TWidgetControl_NeedKey(Self, Key, Shift, KeyText,
    inherited NeedKey(Key, Shift, KeyText));
end;

procedure TJvExBitBtn.BoundsChanged;
begin
  inherited BoundsChanged;
  DoBoundsChanged;
end;

procedure TJvExBitBtn.ColorChanged;
begin
  TWidgetControl_ColorChanged(Self);
end;

function TJvExBitBtn.GetColor: TColor;
begin
  Result := Brush.Color;
end;

procedure TJvExBitBtn.SetColor(Value: TColor);
begin
  if Brush.Color <> Value then
  begin
    inherited Color := Value;
    Brush.Color := Value;
  end;
end;

function TJvExBitBtn.GetDoubleBuffered: Boolean;
begin
  Result := FDoubleBuffered;
end;

procedure TJvExBitBtn.SetDoubleBuffered(Value: Boolean);
begin
  if Value <> FDoubleBuffered then
  begin
    if Value then
      QWidget_setBackgroundMode(Handle, QWidgetBackgroundMode_NoBackground)
    else
      QWidget_setBackgroundMode(Handle, QWidgetBackgroundMode_PaletteBackground);
    FDoubleBuffered := Value;
    if not (csCreating in ControlState) then
      Invalidate;
  end;
end;

procedure TJvExBitBtn.CMFocusChanged(var Msg: TCMFocusChanged);
begin
  inherited;
  DoFocusChanged(Msg.Sender);
end;

procedure TJvExBitBtn.DoFocusChanged(Control: TWinControl);
begin
end;
procedure TJvExBitBtn.DoBoundsChanged;
begin
end;

procedure TJvExBitBtn.DoGetDlgCode(var Code: TDlgCodes);
begin
end;

procedure TJvExBitBtn.DoSetFocus(FocusedWnd: HWND);
begin
end;

procedure TJvExBitBtn.DoKillFocus(FocusedWnd: HWND);
begin
end;

function TJvExBitBtn.DoPaintBackground(Canvas: TCanvas; Param: Integer): Boolean;
asm
  JMP   DefaultDoPaintBackground
end;


constructor TJvExBitBtn.Create(AOwner: TComponent);
begin
  WindowProc := WndProc;
  {$IF declared(PatchedVCLX) and (PatchedVCLX > 3.3)}
  SetCopyRectMode(Self, cmVCL);
  {$IFEND}
  inherited Create(AOwner);
  FCanvas := TControlCanvas.Create;
  TControlCanvas(FCanvas).Control := Self;
  
end;

destructor TJvExBitBtn.Destroy;
begin
  
  FCanvas.Free;
  inherited Destroy;
end;

procedure TJvExBitBtn.Paint;
begin
  WidgetControl_DefaultPaint(Self, Canvas);
end;


end.
