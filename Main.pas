unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls;

type
  TForm1 = class(TForm)
    BtnGenerate: TButton;
    EdPassword: TEdit;
    SpnPassLen: TSpinEdit;
    LblPassword: TLabel;
    chkNum: TCheckBox;
    chkUpper: TCheckBox;
    chkSpecial: TCheckBox;
    chkLower: TCheckBox;
    Label1: TLabel;
    procedure BtnGenerateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}
Function RandomString(bNumbers, bSpecialChars, bUpCase, bLowCase: Boolean; iStringLength: Integer):AnsiString;
var
iLen, i   : Integer;
//sRanStr: AnsiString;
sTable : AnsiString;
begin

 if bNumbers then
  Begin
   i:= 48;
   While i <= 57 do
    Begin
     sTable:= ConCat(sTable, Chr(i));
     inc(i);
    end;
  end;

 if bSpecialChars then
  Begin
   i:= 33;
   While i <= 47 do
    Begin
     sTable:= ConCat(sTable, Chr(i));
     inc(i);
    end;
   i:= 58;
   While i <= 64 do
    Begin
     sTable:= ConCat(sTable, Chr(i));
     inc(i);
    end;
   i:= 91;
   While i <= 96 do
    Begin
     sTable:= ConCat(sTable, Chr(i));
     inc(i);
    end;
   i:= 123;
   While i <= 126 do
    Begin
     sTable:= ConCat(sTable, Chr(i));
     inc(i);
    end;
  end;


  if bUpCase then
  Begin
   i:= 65;
   While i <= 90 do
    Begin
     sTable:= ConCat(sTable, Chr(i));
     inc(i);
    end;
  end;

  if bLowCase then
  Begin
   i:= 97;
   While i <= 122 do
    Begin
     sTable:= ConCat(sTable, Chr(i));
     inc(i);
    end;
  end;

Randomize;
 iLen:= 0;
  While iLen < iStringLength do
   Begin
    Result:= ConCat(Result, sTable[Random(Length(sTable)) + 1]);
    inc(iLen);
   End;
end;

procedure TForm1.BtnGenerateClick(Sender: TObject);
begin
EdPassword.Text:= RandomString(chkNum.Checked, chkSpecial.Checked, chkUpper.Checked, chkLower.Checked, SpnPassLen.Value);
end;

end.
 