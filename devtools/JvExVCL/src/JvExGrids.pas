{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvExGrids.pas, released on 2004-01-04

The Initial Developer of the Original Code is Andreas Hausladen [Andreas.Hausladen@gmx.de]
Portions created by Andreas Hausladen are Copyright (C) 2004 Andreas Hausladen.
All Rights Reserved.

Contributor(s): -

Last Modified: 2004-01-12

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}
{$I jvcl.inc}

unit JvExGrids;
interface
uses
  {$IFDEF VCL}
  Windows, Messages, Graphics, Controls, Forms, Grids,
  {$ENDIF VCL}
  {$IFDEF VisualCLX}
  Qt, QGraphics, QControls, QForms, QGrids,
  {$ENDIF VisualCLX}
  Classes, SysUtils,
  JvThemes, JvExControls;

type
  JV_WINCONTROL_EVENTS(InplaceEdit)
  JV_CUSTOMCONTROL_EVENTS(CustomGrid)
{$IFDEF COMPILER6_UP}
 {$IFDEF VCL}
  JV_CUSTOMCONTROL_EVENTS(CustomDrawGrid)
  JV_WINCONTROL_EVENTS(InplaceEditList)
 {$ENDIF VCL}
{$ENDIF COMPILER6_UP}
  JV_CUSTOMCONTROL_EVENTS(DrawGrid)
  JV_CUSTOMCONTROL_EVENTS(StringGrid)

implementation

JV_WINCONTROL_EVENTS_IMPL(InplaceEdit)
JV_CUSTOMCONTROL_EVENTS_IMPL(CustomGrid)
{$IFDEF COMPILER6_UP}
 {$IFDEF VCL}
JV_CUSTOMCONTROL_EVENTS_IMPL(CustomDrawGrid)
JV_WINCONTROL_EVENTS_IMPL(InplaceEditList)
 {$ENDIF VCL}
{$ENDIF COMPILER6_UP}
JV_CUSTOMCONTROL_EVENTS_IMPL(DrawGrid)
JV_CUSTOMCONTROL_EVENTS_IMPL(StringGrid)

end.
