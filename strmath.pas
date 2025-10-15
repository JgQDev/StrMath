unit StrMath;

{
**********************************************************************
    Unit Created by JgQDev
**********************************************************************
    See the file LICENSE, included in this distribution.
**********************************************************************
}

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SyncObjs;

function isNaN(const NumV:String):Boolean;
function GetDeciCount:Integer;
function CutDeciCount(const NumV:String;const DeciCountBaseOne:Integer):String;
procedure SetDeciCountDefault;
procedure SetDeciCount(const CountBaseOne:Integer);
function CleanNum(const NumV:String):String;
function ToRound(const NumV:String):String;
function ToRound(const NumV:String;out AAnswer:String):Boolean;
function ToInt(const NumV:String):String;
function ToInt(const NumV:String;out AAnswer:String):Boolean;
function ToDeci(const NumV:String):String;
function ToDeci(const NumV:String;out AAnswer:String):Boolean;
function isPositiveAdvance(const NumV:String):Byte; // 0 = False, 1 = True, 2 = Zero, 3 = Error
function isPositive(const NumV:String):Boolean;
function Num1Bigger(const Num1,Num2:String):Byte; // 0 = False, 1 = True, 2 = Same-Numbers, 3 = Error
function SumSub(const Num1,Num2:String):String;
function MulDiv(const Num1,Num2:String;const doMul:Boolean = True):String;
function SumSub(const Num1,Num2:String;out AAnswer:String):Boolean;
function MulDiv(const Num1,Num2:String;out AAnswer:String;
  const doMul:Boolean = True):Boolean;
function ln(const x:String):String;
function ln(const x:String;out AAnswer:String):Boolean;
function log(const num:String):String;
function log(const num:String;out AAnswer:String):Boolean;
function log(const num,Base:String):String;
function log(const num,Base:String;out AAnswer:String):Boolean;
function SqrRoot(const x:String):String;
function SqrRoot(const x:String;out AAnswer:String):Boolean;
function Sine(const Degrees:String):String;
function Sine(const Degrees:String;out AAnswer:String):Boolean;
function Cosine(const Degrees:String):String;
function Cosine(const Degrees:String;out AAnswer:String):Boolean;
function Tangent(const Degrees:String):String;
function Tangent(const Degrees:String;out AAnswer:String):Boolean;
function InSine(const SineX:String):String;
function InSine(const SineX:String;out AAnswer:String):Boolean;
function InCosine(const CosineX:String):String;
function InCosine(const CosineX:String;out AAnswer:String):Boolean;
function InTangent(const TangentX:String):String;
function InTangent(const TangentX:String;out AAnswer:String):Boolean;
function ePower(const Power:String):String;
function ePower(const Power:String;out AAnswer:String):Boolean;
function xPower(const Base,Power:String):String;
function xPower(const Base,Power:String;out AAnswer:String):Boolean;

implementation

type

  TNumArr = Array of Integer;

  { StringMath }

  StringMath = class(TObject)
  public
    TDeciDigitCountBaseOne:Integer;
    TDisableDeci:Boolean;
    constructor Create;
    destructor Destroy; override;
    function RR(const x:Real):Integer;
    function unNum(const x:Integer):Integer;
    procedure MoveDeciDiv(var Num1,Num2:String);
    procedure getWholeDeci(const NumV:String;out AWhole,ADeci:String);
    function isPositiveAd(const NumV:String):Byte;
    function isPositive(const NumV:String):Boolean;
    function CleanNum(const NumV:String):String;
    procedure GetAlign(var num1,num2:String;const StrPlace:String;
      const isRight:Boolean);
    function isNum1Bigger(const num1,num2:String):Byte;
    procedure Carrying(const num1,num2:String;var TArr1,TArr2:TNumArr);
    function Reverse(const Num1:String):String;
    function CutCountDeci(const WholeNum,DeciNum:String):String;
    function RR(x:String):String;
    function RD(x:String):String;
    function RX(x:String):String;
    function Sum(const num1,num2:String):String;
    function Sub(const num1,num2:String):String;
    function SumSub(const num1,num2:String):String;
    function Mul(const num1,num2:String):String;
    function DivA(const num1,num2:String;const DeciDigitCountBaseOne:Integer):String;
    function MulDiv(const num1,num2:String;const doMul:Boolean = True):String;
    function xPowerInt(Abase,Apower:String):String;
    function lyn(x:String):String;
    function lnx(x:String):String;
    function lnx2(x:String):String;
    function log(num,base:String):String;
    function SqrRoot(x:String):String;
    function Sine(Degrees:String):String;
    function Cosine(Degrees:String):String;
    function Tangent(Degrees:String):String;
    function InSine(SineX:String):String;
    function InCosine(CosineX:String):String;
    function InTangent(TangentX:String):String;
    function FactorialInt(x:String):String;
    function ePower(x:String):String;
    function ePowerX(x:String):String;
    function xPower(Abase,Apower:String):String;
  end;

var AStrMath:StringMath;
var ACtSec:TCriticalSection;

function isNaN(const NumV: String): Boolean;
var
  NV:String;
begin
  NV:=AStrMath.CleanNum(NumV);
  if(NV='nan')then Result:=True
  else Result:=False;
end;

function GetDeciCount: Integer;
begin
  if(ACtSec.TryEnter=False)then Exit;
  Result:=AStrMath.TDeciDigitCountBaseOne;
  ACtSec.Leave;
end;

function CutDeciCount(const NumV: String; const DeciCountBaseOne: Integer
  ): String;
var
  N1:String;
  AWhole,ADeci:String;
begin
  N1:=AStrMath.CleanNum(NumV);
  if(N1='nan')then begin
    Result:='nan';
    Exit;
  end;
  AStrMath.getWholeDeci(N1,AWhole,ADeci);
  if(Length(ADeci)>DeciCountBaseOne)then begin
    Result:=AWhole+'.'+Copy(ADeci,1,DeciCountBaseOne);
  end else begin
    Result:=AWhole+'.'+ADeci;
  end;
  Result:=AStrMath.CleanNum(Result);
end;

procedure SetDeciCountDefault;
begin
  if(ACtSec.TryEnter=False)then Exit;
  AStrMath.TDeciDigitCountBaseOne:=5;
  ACtSec.Leave;
end;

procedure SetDeciCount(const CountBaseOne: Integer);
begin
  if(ACtSec.TryEnter=False)then Exit;
  AStrMath.TDeciDigitCountBaseOne:=CountBaseOne;
  ACtSec.Leave;
end;

function CleanNum(const NumV: String): String;
begin
  Result:=AStrMath.CleanNum(NumV);
end;

function ToRound(const NumV: String): String;
begin
  Result:=AStrMath.RX(NumV);
end;

function ToRound(const NumV: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.RX(NumV);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ToInt(const NumV: String): String;
begin
  Result:=AStrMath.RR(NumV);
end;

function ToInt(const NumV: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.RR(NumV);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ToDeci(const NumV: String): String;
begin
  Result:=AStrMath.RD(NumV);
end;

function ToDeci(const NumV: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.RD(NumV);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function isPositiveAdvance(const NumV: String): Byte;
var
  NV:String;
begin
  Result:=3;
  NV:=AStrMath.CleanNum(NumV);
  if(NV='nan')then Exit;
  Result:=AStrMath.isPositiveAd(NV);
end;

function isPositive(const NumV: String): Boolean;
var
  NV:String;
begin
  Result:=False;
  NV:=AStrMath.CleanNum(NumV);
  if(NV='nan')then Exit;
  Result:=AStrMath.isPositive(NV);
end;

function Num1Bigger(const Num1, Num2: String): Byte;
var
  N1,N2:String;
  Cal:String;
begin
  Result:=3;
  N1:=AStrMath.CleanNum(Num1);
  N2:=AStrMath.CleanNum(Num2);
  if(N1='nan')then Exit;
  if(N2='nan')then Exit;
  Cal:=AStrMath.SumSub(N1,AStrMath.MulDiv('-1',N2));
  if(AStrMath.isPositiveAd(Cal)=1)then Result:=1 else
  if(AStrMath.isPositiveAd(Cal)=0)then Result:=0 else
  if(AStrMath.isPositiveAd(Cal)=2)then Result:=2;
end;

function SumSub(const Num1, Num2: String): String;
begin
  Result:=AStrMath.SumSub(Num1,Num2);
end;

function MulDiv(const Num1, Num2: String; const doMul: Boolean): String;
begin
  Result:=AStrMath.MulDiv(Num1,Num2,doMul);
end;

function SumSub(const Num1, Num2: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.SumSub(Num1,Num2);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function MulDiv(const Num1, Num2: String; out AAnswer: String;
  const doMul: Boolean): Boolean;
begin
  AAnswer:=AStrMath.MulDiv(Num1,Num2,doMul);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ln(const x: String): String;
begin
  Result:=AStrMath.lnx(x);
end;

function ln(const x: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.lnx(x);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num: String): String;
begin
  Result:=AStrMath.log(num,'10');
end;

function log(const num: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.log(num,'10');
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num, Base: String): String;
begin
  Result:=AStrMath.log(num,base);
end;

function log(const num, Base: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.log(num,Base);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function SqrRoot(const x: String): String;
begin
  Result:=AStrMath.SqrRoot(x);
end;

function SqrRoot(const x: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.SqrRoot(x);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Sine(const Degrees: String): String;
begin
  Result:=AStrMath.Sine(Degrees);
end;

function Sine(const Degrees: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.Sine(Degrees);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Cosine(const Degrees: String): String;
begin
  Result:=AStrMath.Cosine(Degrees);
end;

function Cosine(const Degrees: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.Cosine(Degrees);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Tangent(const Degrees: String): String;
begin
  Result:=AStrMath.Tangent(Degrees);
end;

function Tangent(const Degrees: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.Tangent(Degrees);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InSine(const SineX: String): String;
begin
  Result:=AStrMath.InSine(SineX);
end;

function InSine(const SineX: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.InSine(SineX);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InCosine(const CosineX: String): String;
begin
  Result:=AStrMath.InCosine(CosineX);
end;

function InCosine(const CosineX: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.InCosine(CosineX);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InTangent(const TangentX: String): String;
begin
  Result:=AStrMath.InTangent(TangentX);
end;

function InTangent(const TangentX: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.InTangent(TangentX);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ePower(const Power: String): String;
begin
  Result:=AStrMath.ePowerX(Power);
end;

function ePower(const Power: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.ePowerX(Power);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function xPower(const Base, Power: String): String;
begin
  Result:=AStrMath.xPower(Base,Power);
end;

function xPower(const Base, Power: String; out AAnswer: String): Boolean;
begin
  AAnswer:=AStrMath.xPower(Base,Power);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

{ StringMath }

constructor StringMath.Create;
begin
  //nothing...
  self.TDeciDigitCountBaseOne:=11;
  self.TDisableDeci:=False;
end;

destructor StringMath.Destroy;
begin
  inherited Destroy;
end;

function StringMath.RR(const x: Real): Integer;
begin
  Result:=Round(x);
  if(Round(x)>x)then Result:=Round(x)-1;
end;

function StringMath.unNum(const x: Integer): Integer;
begin
  if(x<0)then Result:=x*(-1) else Result:=x;
end;

procedure StringMath.MoveDeciDiv(var Num1, Num2: String);
var
  AWhole1,ADeci1,AWhole2,ADeci2:String;
  i:Integer;
begin
  GetWholeDeci(Num1,AWhole1,ADeci1);
  GetWholeDeci(Num2,AWhole2,ADeci2);
  if(Length(ADeci1)=Length(ADeci2))then begin
    Num1:=AWhole1+ADeci1;
    Num2:=AWhole2+ADeci2;
  end else
  if(Length(ADeci1)>Length(ADeci2))then begin
    Num2:=AWhole2+ADeci2;
    Num1:=AWhole1+Copy(ADeci1,1,Length(ADeci2))+'.'+
    Copy(ADeci1,Length(ADeci2)+1,Length(ADeci1));
  end else
  if(Length(ADeci1)<Length(ADeci2))then begin
    Num2:=AWhole2+ADeci2;
    Num1:=AWhole1+ADeci1;
    for i:=1 to (Length(ADeci2)-Length(ADeci1))do Num1:=Num1+'0';
  end;
end;

procedure StringMath.getWholeDeci(const NumV: String; out AWhole, ADeci: String
  );
var
  i:Integer;
  bool1:Boolean;
begin
  AWhole:='0';
  ADeci:='0';
  if(Length(NumV)=0)then Exit;
  bool1:=False;
  for i:=1 to Length(NumV)do begin
    if(NumV[i]='.')then begin
      bool1:=True;
      AWhole:=Copy(NumV,1,i-1);
      ADeci:=Copy(NumV,i+1,Length(NumV));
      Break;
    end;
  end;
  if(bool1=False)then AWhole:=NumV;
end;

function StringMath.isPositiveAd(const NumV: String): Byte;
begin
  Result:=2;
  if(NumV='0')or(NumV='0.0')then Exit;
  if(Copy(NumV,1,1)='-')then Result:=0
  else Result:=1;
end;

function StringMath.isPositive(const NumV: String): Boolean;
begin
  if(Copy(NumV,1,1)='-')then Result:=False
  else Result:=True;
end;

function StringMath.CleanNum(const NumV: String): String;
var
  i:Integer;
  AWhole,ADeci:String;
  bool1:Boolean;
  ASign:Byte;
begin
  Result:='nan';
  if(NumV='nan')then Exit;
  if(Length(NumV)=0)then Exit;
  getWholeDeci(NumV,AWhole,ADeci);
  if(AWhole[1]='+')then begin
    ASign:=1;
    AWhole:=Copy(AWhole,2,Length(AWhole));
  end else
  if(AWhole[1]='-')then begin
    ASign:=0;
    AWhole:=Copy(AWhole,2,Length(AWhole));
  end else begin
    ASign:=1;
  end;

  bool1:=False;
  for i:=Length(ADeci) downto 1 do begin
    if(ADeci[i]<>'0')then begin
      ADeci:=Copy(ADeci,1,i);
      bool1:=True;
      break;
    end;
  end;
  if(bool1=False)then ADeci:='0';

  bool1:=False;
  for i:=1 to Length(AWhole)do begin
    if(AWhole[i]<>'0')then begin
      AWhole:=Copy(AWhole,i,Length(AWhole));
      bool1:=True;
      break;
    end;
  end;
  if(bool1=False)then begin
    AWhole:='0';
    if(ADeci='0')then ASign:=1;
  end;

  for i:=1 to Length(AWhole)do begin
    if(Ord(AWhole[i])-48<0)or(Ord(AWhole[i])-48>9)then begin
      Result:='nan';
      Exit;
    end;
  end;

  for i:=1 to Length(ADeci)do begin
    if(Ord(ADeci[i])-48<0)or(Ord(ADeci[i])-48>9)then begin
      Result:='nan';
      Exit;
    end;
  end;

  if(ASign=1)then Result:=AWhole+'.'+ADeci else Result:='-'+AWhole+'.'+ADeci;
end;

procedure StringMath.GetAlign(var num1, num2: String; const StrPlace: String;
  const isRight: Boolean);
var
  i:Integer;
begin
  if(Length(num1)=Length(num2))then Exit;
  if(isRight=True)then begin
    if(Length(Num1)>Length(Num2))then
      for i:=1 to (Length(Num1)-Length(Num2))do Num2:=Num2+StrPlace
    else
      for i:=1 to (Length(Num2)-Length(Num1))do Num1:=Num1+StrPlace;
  end else
  if(isRight=False)then begin
    if(Length(Num1)>Length(Num2))then
      for i:=1 to (Length(Num1)-Length(Num2))do Num2:=StrPlace+Num2
    else
      for i:=1 to (Length(Num2)-Length(Num1))do Num1:=StrPlace+Num1;
  end;
end;

function StringMath.isNum1Bigger(const num1, num2: String): Byte;
var
  AWhole1,ADeci1,AWhole2,ADeci2:String;
  n1,n2:String;
  i:Integer;
begin
  getWholeDeci(num1,AWhole1,ADeci1);
  getWholeDeci(num2,AWhole2,ADeci2);
  GetAlign(ADeci1,ADeci2,'0',True);
  n1:=AWhole1+ADeci1;
  n2:=AWhole2+ADeci2;
  if(Length(n1)>Length(n2))then Result:=1 else
  if(Length(n1)<Length(n2))then Result:=0 else
  if(Length(n1)=Length(n2))then begin
    for i:=1 to Length(n1)do begin
      if(StrToInt(n1[i])>StrToInt(n2[i]))then begin
        Result:=1;
        Exit;
      end else
      if(StrToInt(n1[i])<StrToInt(n2[i]))then begin
        Result:=0;
        Exit;
      end;
    end;
    Result:=2;
  end;
end;

procedure StringMath.Carrying(const num1, num2: String; var TArr1,
  TArr2: TNumArr);
var
  i:Integer;
  Cr:Byte;
begin
  if(Length(num1)<>Length(num2))then Exit;
  SetLength(TArr1,Length(num1));
  SetLength(TArr2,Length(num2));
  for i:=1 to Length(num1)do TArr1[i-1]:=StrToInt(num1[i]);
  for i:=1 to Length(num2)do TArr2[i-1]:=StrToInt(num2[i]);
  Cr:=0;
  for i:=(Length(TArr1)-1)downto 0 do begin
    if(TArr1[i]>TArr2[i])then begin
      TArr1[i]:=(TArr1[i]-Cr);
      Cr:=0;
    end else
    if(TArr1[i]<TArr2[i])then begin
      TArr1[i]:=((10+TArr1[i])-Cr);
      Cr:=1;
    end else
    if(TArr1[i]=TArr2[i])then begin
      TArr1[i]:=(TArr1[i]-Cr);
      if(TArr1[i]<TArr2[i])then begin
        TArr1[i]:=(TArr1[i]+10);
        Cr:=1;
      end else Cr:=0;
    end;
  end;
end;

function StringMath.Reverse(const Num1: String): String;
var
  i:Integer;
begin
  Result:='';
  for i:=1 to Length(Num1)do Result:=Num1[i]+Result;
end;

function StringMath.CutCountDeci(const WholeNum, DeciNum: String): String;
begin
  if(self.TDisableDeci=True)then Exit;
  if(Length(DeciNum)>self.TDeciDigitCountBaseOne)then begin
    Result:=WholeNum+'.'+Copy(DeciNum,1,self.TDeciDigitCountBaseOne);
  end else begin
    Result:=WholeNum+'.'+DeciNum;
  end;
end;

function StringMath.RR(x: String): String;
var
  AWhole,ADeci:String;
  ASign:Boolean;
begin
  x:=self.CleanNum(x);
  if(x='nan')then begin
    Result:='nan';
    Exit;
  end;
  if(self.isPositive(x)=False)then begin
    x:=Copy(x,2,Length(x));
    ASign:=False;
  end else ASign:=True;
  GetWholeDeci(x,AWhole,ADeci);
  Result:=AWhole+'.0';
  if(ASign=False)then Result:='-'+Result;
end;

function StringMath.RD(x: String): String;
var
  AWhole,ADeci:String;
  ASign:Boolean;
begin
  x:=self.CleanNum(x);
  if(x='nan')then begin
    Result:='nan';
    Exit;
  end;
  if(self.isPositive(x)=False)then begin
    x:=Copy(x,2,Length(x));
    ASign:=False;
  end else ASign:=True;
  GetWholeDeci(x,AWhole,ADeci);
  Result:=ADeci+'.0';
  if(ASign=False)then Result:='-'+Result;
end;

function StringMath.RX(x: String): String;
var
  AWhole,ADeci:String;
  ASign:Boolean;
begin
  x:=self.CleanNum(x);
  if(x='nan')then begin
    Result:='nan';
    Exit;
  end;
  if(self.isPositive(x)=False)then begin
    x:=Copy(x,2,Length(x));
    ASign:=False;
  end else ASign:=True;
  GetWholeDeci(x,AWhole,ADeci);
  if(StrToInt(ADeci[1])<=5)then Result:=AWhole+'.0' else
  if(StrToInt(ADeci[1])>5)then Result:=self.SumSub(AWhole,'1');
  if(ASign=False)then Result:='-'+Result;
end;

function StringMath.Sum(const num1, num2: String): String;
var
  AWhole1,ADeci1,AWhole2,ADeci2:String;
  n1,n2:String;
  i:Integer;
  Cr,nf1,nf2:Byte;
begin
  getWholeDeci(num1,AWhole1,ADeci1);
  getWholeDeci(num2,AWhole2,ADeci2);
  GetAlign(AWhole1,AWhole2,'0',False);
  GetAlign(ADeci1,ADeci2,'0',True);
  n1:=AWhole1+ADeci1;
  n2:=AWhole2+ADeci2;
  Cr:=0;
  nf1:=0;
  nf2:=0;
  Result:='';
  for i:=Length(n1) downto 1 do begin
    nf1:=StrToInt(n1[i])+StrToInt(n2[i])+Cr;
    nf2:=(nf1-(RR(nf1/10)*10));
    Result:=Result+IntToStr(nf2);
    Cr:=RR(nf1/10);
  end;
  if(Cr<>0)then Result:=Result+IntToStr(Cr);
  Result:=Copy(Result,1,Length(ADeci1))+'.'+
  Copy(Result,Length(ADeci1)+1,Length(Result));
  Result:=Reverse(Result);
end;

function StringMath.Sub(const num1, num2: String): String;
var
  AWhole1,ADeci1,AWhole2,ADeci2:String;
  n1,n2,BB,SS:String;
  i:Integer;
  iNB:Byte;
  TArr1,TArr2:TNumArr;
begin
  getWholeDeci(num1,AWhole1,ADeci1);
  getWholeDeci(num2,AWhole2,ADeci2);
  GetAlign(AWhole1,AWhole2,'0',False);
  GetAlign(ADeci1,ADeci2,'0',True);
  n1:=AWhole1+ADeci1;
  n2:=AWhole2+ADeci2;
  iNB:=isNum1Bigger(n1,n2);
  if(iNB=0)then begin
    BB:=n2;
    SS:=n1;
  end else
  if(iNB=1)then begin
    BB:=n1;
    SS:=n2;
  end else begin
    BB:=n1;
    SS:=n2;
  end;
  TArr1:=nil;
  TArr2:=nil;
  Carrying(BB,SS,TArr1,TArr2);
  Result:='';
  for i:=(Length(TArr1)-1)downto 0 do Result:=Result+IntToStr(TArr1[i]-TArr2[i]);
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  Result:=Copy(Result,1,Length(ADeci1))+'.'+
  Copy(Result,Length(ADeci1)+1,Length(Result));
  Result:=Reverse(Result);
end;

function StringMath.SumSub(const num1, num2: String): String;
var
  n1,n2:String;
  iNB:Byte;
begin
  Result:='nan';
  n1:=CleanNum(num1);
  n2:=CleanNum(num2);
  if(n1='nan')then Exit;
  if(n2='nan')then Exit;
  if(isPositive(n1)=True)and(isPositive(n2)=True)then begin
    Result:=Sum(n1,n2);
  end else
  if(isPositive(n1)=False)and(isPositive(n2)=True)then begin
    n1:=Copy(n1,2,Length(n1));
    iNB:=isNum1Bigger(n1,n2);
    if(iNB=0)then Result:=Sub(n1,n2) else
    if(iNB=1)then Result:='-'+Sub(n1,n2) else
    if(iNB=2)then Result:='0';
  end else
  if(isPositive(n1)=True)and(isPositive(n2)=False)then begin
    n2:=Copy(n2,2,Length(n2));
    iNB:=isNum1Bigger(n1,n2);
    if(iNB=0)then Result:='-'+Sub(n1,n2) else
    if(iNB=1)then Result:=Sub(n1,n2) else
    if(iNB=2)then Result:='0';
  end else
  if(isPositive(n1)=False)and(isPositive(n2)=False)then begin
    n1:=Copy(n1,2,Length(n1));
    n2:=Copy(n2,2,Length(n2));
    Result:='-'+Sum(n1,n2);
  end;
  Result:=CleanNum(Result);
  getWholeDeci(Result,n1,n2);
  Result:=CutCountDeci(n1,n2);
end;

function StringMath.Mul(const num1, num2: String): String;
var
  AWhole1,ADeci1,AWhole2,ADeci2:String;
  n1,n2:String;
  i:Integer;
  Cr,nf1,nf2:Byte;
  BIx,BIy:Integer;
  NData,CountZ:String;
function AddSum(numA1,numA2:String):String;
var
  Cr,nA1,nA2:Byte;
  i:Integer;
begin
  GetAlign(numA1,numA2,'0',False);
  Cr:=0;
  nA1:=0;
  nA2:=0;
  Result:='';
  for i:=Length(numA1) downto 1 do begin
    nA1:=StrToInt(numA1[i])+StrToInt(numA2[i])+Cr;
    nA2:=(nA1-(RR(nA1/10)*10));
    Result:=IntToStr(nA2)+Result;
    Cr:=RR(nA1/10);
  end;
  if(Cr<>0)then Result:=IntToStr(Cr)+Result;
end;
begin
  getWholeDeci(num1,AWhole1,ADeci1);
  getWholeDeci(num2,AWhole2,ADeci2);
  n1:=AWhole1+ADeci1;
  n2:=AWhole2+ADeci2;
  Cr:=0;
  nf1:=0;
  nf2:=0;
  Result:='0';
  BIx:=Length(n1);
  BIy:=Length(n2);
  NData:='';
  CountZ:='';
  for i:=1 to (Length(n1)*Length(n2))do begin
    if(BIy=0)then break;
    nf1:=(StrToInt(n1[BIx])*StrToInt(n2[BIy]))+Cr;
    nf2:=(nf1-(RR(nf1/10)*10));
    NData:=IntToStr(nf2)+NData;
    Cr:=RR(nf1/10);
    BIx:=BIx-1;
    if(BIx=0)then begin
      BIx:=Length(n1);
      BIy:=BIy-1;
      if(Cr<>0)then NData:=IntToStr(Cr)+NData;
      NData:=NData+CountZ;
      CountZ:=CountZ+'0';
      Result:=AddSum(Result,NData);
      NData:='';
      Cr:=0;
      nf1:=0;
      nf2:=0;
    end;
  end;
  if(Cr<>0)then NData:=IntToStr(Cr)+NData;
  Result:=Reverse(Result);
  Result:=Copy(Result,1,Length(ADeci1+ADeci2))+'.'+
  Copy(Result,Length(ADeci1+ADeci2)+1,Length(Result));
  Result:=Reverse(Result);
end;

function StringMath.DivA(const num1, num2: String;
  const DeciDigitCountBaseOne: Integer): String;
var
  numv1,numv2:String;
  AWhole1,ADeci1,AWhole2,ADeci2:String;
  n1,n2:String;
  i:Integer;
  Ct,nf1,nf2:String;
  Ctl,nl2:String;
  BigN:Byte;
function Num1Bigger(numB1,numB2:String):Byte;
var
  i:Integer;
begin
  GetAlign(numB1,numB2,'0',False);
  for i:=1 to Length(numB1)do begin
    if(StrToInt(numB1[i])>StrToInt(numB2[i]))then begin
      Result:=1;
      Exit;
    end else
    if(StrToInt(numB1[i])<StrToInt(numB2[i]))then begin
      Result:=0;
      Exit;
    end;
  end;
  Result:=2;
end;
function AddSum(numA1,numA2:String):String;
var
  Cr,nA1,nA2:Byte;
  i:Integer;
begin
  GetAlign(numA1,numA2,'0',False);
  Cr:=0;
  nA1:=0;
  nA2:=0;
  Result:='';
  for i:=Length(numA1) downto 1 do begin
    nA1:=StrToInt(numA1[i])+StrToInt(numA2[i])+Cr;
    nA2:=(nA1-(RR(nA1/10)*10));
    Result:=IntToStr(nA2)+Result;
    Cr:=RR(nA1/10);
  end;
  if(Cr<>0)then Result:=IntToStr(Cr)+Result;
end;
function SubSub(numS1,numS2:String):String;
var
  BB,SS:String;
  iNB:Byte;
  TArr1,TArr2:TNumArr;
  i:Integer;
begin
  GetAlign(numS1,numS2,'0',False);
  iNB:=Num1Bigger(numS1,numS2);
  if(iNB=0)then begin
    BB:=numS2;
    SS:=numS1;
  end else
  if(iNB=1)then begin
    BB:=numS1;
    SS:=numS2;
  end else begin
    BB:=numS1;
    SS:=numS2;
  end;
  TArr1:=nil;
  TArr2:=nil;
  Carrying(BB,SS,TArr1,TArr2);
  Result:='';
  for i:=(Length(TArr1)-1)downto 0 do Result:=IntToStr(TArr1[i]-TArr2[i])+Result;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
end;
procedure AddUp(var Ct,Ctl,nl2,nf2:String;const n2:String;var BigN:Byte);
begin
  nl2:=nf2;
  Ctl:=Ct;
  nf2:=AddSum(nf2,n2);
  Ct:=AddSum(Ct,'1');
  BigN:=Num1Bigger(nf1,nf2);
end;
//BeginAndEnd...
begin
  numv1:=num1;
  numv2:=num2;
  MoveDeciDiv(numv1,numv2);
  getWholeDeci(numv1,AWhole1,ADeci1);
  getWholeDeci(numv2,AWhole2,ADeci2);
  if(DeciDigitCountBaseOne>Length(ADeci1))then begin
    n1:=AWhole1+ADeci1;
    for i:=1 to (DeciDigitCountBaseOne-Length(ADeci1))do n1:=n1+'0';
  end else begin
    ADeci1:=Copy(ADeci1,1,DeciDigitCountBaseOne);
    n1:=AWhole1+ADeci1;
  end;
  n2:=AWhole2;
  if(CleanNum(n2)='0.0')then begin
    Result:='nan';
    Exit;
  end;
  Ct:='0';
  Ctl:='0';
  nf1:='';
  nf2:='0';
  nl2:='0';
  Result:='';
  for i:=1 to Length(n1) do begin
    nf1:=nf1+n1[i];
    BigN:=Num1Bigger(nf1,n2);
    if(BigN=1)or(BigN=2)then begin
      while((BigN=1)or(BigN=2))do AddUp(Ct,Ctl,nl2,nf2,n2,BigN);
      Result:=Result+Ctl;
      nf1:=SubSub(nf1,nl2);
      Ct:='0';
      Ctl:='0';
      nf2:='0';
      nl2:='0';
    end else begin
      Result:=Result+'0';
    end;
  end;
  if(Length(Result)>Length(AWhole1))then Result:=Copy(Result,1,Length(AWhole1))+'.'+
  Copy(Result,Length(AWhole1)+1,Length(Result));
end;

function StringMath.MulDiv(const num1, num2: String; const doMul: Boolean
  ): String;
var
  n1,n2:String;
begin
  Result:='nan';
  n1:=CleanNum(num1);
  n2:=CleanNum(num2);
  if(n1='nan')then Exit;
  if(n2='nan')then Exit;
  if(doMul=True)then begin
    if(isPositive(n1)=True)and(isPositive(n2)=True)then begin
      Result:=Mul(n1,n2);
    end else
    if(isPositive(n1)=False)and(isPositive(n2)=True)then begin
      n1:=Copy(n1,2,Length(n1));
      Result:='-'+Mul(n1,n2);
    end else
    if(isPositive(n1)=True)and(isPositive(n2)=False)then begin
      n2:=Copy(n2,2,Length(n2));
      Result:='-'+Mul(n1,n2);
    end else
    if(isPositive(n1)=False)and(isPositive(n2)=False)then begin
      n1:=Copy(n1,2,Length(n1));
      n2:=Copy(n2,2,Length(n2));
      Result:=Mul(n1,n2);
    end;
  end else begin
    if(isPositive(n1)=True)and(isPositive(n2)=True)then begin
      Result:=DivA(n1,n2,TDeciDigitCountBaseOne);
    end else
    if(isPositive(n1)=False)and(isPositive(n2)=True)then begin
      n1:=Copy(n1,2,Length(n1));
      Result:='-'+DivA(n1,n2,TDeciDigitCountBaseOne);
    end else
    if(isPositive(n1)=True)and(isPositive(n2)=False)then begin
      n2:=Copy(n2,2,Length(n2));
      Result:='-'+DivA(n1,n2,TDeciDigitCountBaseOne);
    end else
    if(isPositive(n1)=False)and(isPositive(n2)=False)then begin
      n1:=Copy(n1,2,Length(n1));
      n2:=Copy(n2,2,Length(n2));
      Result:=DivA(n1,n2,TDeciDigitCountBaseOne);
    end;
  end;
  Result:=CleanNum(Result);
  if(doMul=True)then begin
    getWholeDeci(Result,n1,n2);
    Result:=CutCountDeci(n1,n2);
  end;
end;

function StringMath.xPowerInt(Abase, Apower: String): String;
var
  BigN:Byte;
  Count1:String;
  AWhole1,ADeci1:String;
  ASign:Boolean;
function Num1Bigger(numB1,numB2:String):Byte;
var
  i:Integer;
begin
  GetAlign(numB1,numB2,'0',False);
  for i:=1 to Length(numB1)do begin
    if(StrToInt(numB1[i])>StrToInt(numB2[i]))then begin
      Result:=1;
      Exit;
    end else
    if(StrToInt(numB1[i])<StrToInt(numB2[i]))then begin
      Result:=0;
      Exit;
    end;
  end;
  Result:=2;
end;
function AddSum(numA1,numA2:String):String;
var
  Cr,nA1,nA2:Byte;
  i:Integer;
begin
  GetAlign(numA1,numA2,'0',False);
  Cr:=0;
  nA1:=0;
  nA2:=0;
  Result:='';
  for i:=Length(numA1) downto 1 do begin
    nA1:=StrToInt(numA1[i])+StrToInt(numA2[i])+Cr;
    nA2:=(nA1-(RR(nA1/10)*10));
    Result:=IntToStr(nA2)+Result;
    Cr:=RR(nA1/10);
  end;
  if(Cr<>0)then Result:=IntToStr(Cr)+Result;
end;
//BeginAndEnd...
begin
  //ABase:=CleanNum(ABase);
  //APower:=CleanNum(APower);
  if(ABase='nan')or(APower='nan')then begin
    Result:='nan';
    Exit;
  end;
  if(self.isPositive(ABase)=False)then begin
    ABase:=Copy(ABase,2,Length(ABase));
    ASign:=False;
  end else ASign:=True;
  if(self.isPositive(APower)=False)then APower:=Copy(APower,2,Length(APower));
  getWholeDeci(APower,AWhole1,ADeci1);
  Result:='1';
  Count1:='0';
  BigN:=Num1Bigger(Count1,AWhole1);
  While(BigN=0)do begin
    Count1:=AddSum(Count1,'1');
    Result:=self.MulDiv(Result,ABase);
    BigN:=Num1Bigger(Count1,AWhole1);
  end;
  if(ASign=False)then Result:='-'+Result;
end;

function StringMath.lyn(x: String): String;
var
  Og,Og2:String;
  Ct:String;
  Term:String;
  n1,n2:String;
begin
  Og:=self.MulDiv(self.SumSub(x,'-1'),self.SumSub(x,'1'),False);
  Term:=Og;
  Result:=Og;
  Ct:='3';
  Og2:=self.MulDiv(Og,Og);
  While(Term<>'0.0')do begin
    Term:=self.MulDiv(Term,Og2);
    Result:=self.SumSub(Result,self.MulDiv(Term,Ct,False));
    Ct:=self.SumSub(Ct,'2');
  end;
  Result:=self.MulDiv(Result,'2');

  getWholeDeci(Result,n1,n2);
  Result:=CutCountDeci(n1,n2);
end;

function StringMath.lnx(x: String): String;
var
  DeciInt:Integer;
  n1,n2:String;
begin
  x:=CleanNum(x);
  if(x='nan')then begin
    Result:='nan';
    Exit;
  end else
  if(x='0.0')then begin
    Result:='nan';
    Exit;
  end;
  DeciInt:=self.TDeciDigitCountBaseOne;
  self.TDeciDigitCountBaseOne:=DeciInt+10;

  Result:=self.SumSub(self.MulDiv('2',lyn('2')),
  lyn(self.MulDiv(x,self.xPowerInt('2','2'),False)));

  self.TDeciDigitCountBaseOne:=DeciInt;
  getWholeDeci(Result,n1,n2);
  Result:=CutCountDeci(n1,n2);
end;

function StringMath.lnx2(x: String): String;
begin
  Result:=self.SumSub(self.MulDiv('2',lyn('2')),
  lyn(self.MulDiv(x,self.xPowerInt('2','2'),False)));
end;

function StringMath.log(num, base: String): String;
var
  numV1,numV2:String;
  DeciInt:Integer;
  n1,n2:String;
begin
  num:=CleanNum(num);
  base:=CleanNum(base);
  if(num='nan')or(base='nan')then begin
    Result:='nan';
    Exit;
  end else
  if(num='0.0')or(base='0.0')then begin
    Result:='nan';
    Exit;
  end;

  DeciInt:=self.TDeciDigitCountBaseOne;
  self.TDeciDigitCountBaseOne:=DeciInt+10;

  numV1:=self.SumSub(self.MulDiv('2',lyn('2')),
  lyn(self.MulDiv(num,self.xPowerInt('2','2'),False)));

  numV2:=self.SumSub(self.MulDiv('2',lyn('2')),
  lyn(self.MulDiv(base,self.xPowerInt('2','2'),False)));

  Result:=self.MulDiv(numV1,numV2,False);

  self.TDeciDigitCountBaseOne:=DeciInt;
  getWholeDeci(Result,n1,n2);
  Result:=CutCountDeci(n1,n2);
end;

function StringMath.SqrRoot(x: String): String;
var
  i:Integer;
  n1:String;
begin
  x:=self.CleanNum(x);
  if(x='nan')then begin
    Result:='nan';
    Exit;
  end else
  if(self.isPositive(x)=False)then begin
    Result:='nan';
    Exit;
  end else
  if(x='0.0')then begin
    Result:=x;
    Exit;
  end;
  Result:='1';
  n1:=self.MulDiv('1','2',false);
  for i:=0 to 20 do
    Result:=self.MulDiv(n1,self.SumSub(Result,self.MulDiv(x,Result,False)));
end;

function StringMath.Sine(Degrees: String): String;
var
  BigN1,BigN2:Byte;
  BigN3,BigN4:Byte;
  BigN5,BigN6:Byte;
  BigN7,BigN8:Byte;
begin
  Degrees:=self.CleanNum(Degrees);
  if(Degrees='nan')then begin
    Result:='nan';
    Exit;
  end;

  Degrees:=self.SumSub(Degrees,self.MulDiv('-1',
  self.MulDiv('360',self.RR(self.MulDiv(Degrees,'360',False)))));

  BigN1:=self.isNum1Bigger(Degrees,'0');
  BigN2:=self.isNum1Bigger(Degrees,'90');

  BigN3:=self.isNum1Bigger(Degrees,'91');
  BigN4:=self.isNum1Bigger(Degrees,'180');

  BigN5:=self.isNum1Bigger(Degrees,'181');
  BigN6:=self.isNum1Bigger(Degrees,'270');

  BigN7:=self.isNum1Bigger(Degrees,'271');
  BigN8:=self.isNum1Bigger(Degrees,'360');

  if((BigN1=1)or(BigN1=2))and((BigN2=0)or(BigN2=2))then
    Result:=self.SqrRoot(self.MulDiv(Degrees,'90',False)) else
  if((BigN3=1)or(BigN3=2))and((BigN4=0)or(BigN4=2))then
    Result:=self.SqrRoot(self.SumSub('1',self.MulDiv('-1',self.MulDiv(
    self.SumSub(Degrees,'-90'),'90',False)))) else
  if((BigN5=1)or(BigN5=2))and((BigN6=0)or(BigN6=2))then
    Result:=self.MulDiv('-1',self.SqrRoot(self.MulDiv(
    self.SumSub(Degrees,'-180'),'90',False))) else
  if((BigN7=1)or(BigN7=2))and((BigN8=0)or(BigN8=2))then
    Result:=self.MulDiv('-1',self.SqrRoot(self.SumSub('1',
    self.MulDiv('-1',self.MulDiv(self.SumSub(Degrees,'-270'),'90',False)))));
end;

function StringMath.Cosine(Degrees: String): String;
var
  BigN1,BigN2:Byte;
  BigN3,BigN4:Byte;
  BigN5,BigN6:Byte;
  BigN7,BigN8:Byte;
begin
  Degrees:=self.CleanNum(Degrees);
  if(Degrees='nan')then begin
    Result:='nan';
    Exit;
  end;

  BigN1:=self.isNum1Bigger(Degrees,'0');
  BigN2:=self.isNum1Bigger(Degrees,'90');

  BigN3:=self.isNum1Bigger(Degrees,'91');
  BigN4:=self.isNum1Bigger(Degrees,'180');

  BigN5:=self.isNum1Bigger(Degrees,'181');
  BigN6:=self.isNum1Bigger(Degrees,'270');

  BigN7:=self.isNum1Bigger(Degrees,'271');
  BigN8:=self.isNum1Bigger(Degrees,'360');

  if((BigN1=1)or(BigN1=2))and((BigN2=0)or(BigN2=2))then
    Result:=self.SqrRoot(self.SumSub('1',self.MulDiv('-1',
    self.xPowerInt(self.Sine(Degrees),'2')))) else
  if((BigN3=1)or(BigN3=2))and((BigN4=0)or(BigN4=2))then
    Result:=self.MulDiv('-1',self.SqrRoot(self.SumSub('1',self.MulDiv('-1',
    self.xPowerInt(self.Sine(Degrees),'2'))))) else
  if((BigN5=1)or(BigN5=2))and((BigN6=0)or(BigN6=2))then
    Result:=self.MulDiv('-1',self.SqrRoot(self.SumSub('1',self.MulDiv('-1',
    self.xPowerInt(self.Sine(Degrees),'2'))))) else
  if((BigN7=1)or(BigN7=2))and((BigN8=0)or(BigN8=2))then
    Result:=self.SqrRoot(self.SumSub('1',self.MulDiv('-1',
    self.xPowerInt(self.Sine(Degrees),'2'))));
end;

function StringMath.Tangent(Degrees: String): String;
begin
  Degrees:=self.CleanNum(Degrees);
  if(Degrees='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.MulDiv(self.Sine(Degrees),self.Cosine(Degrees),False);
end;

function StringMath.InSine(SineX: String): String;
begin
  SineX:=self.CleanNum(SineX);
  if(SineX='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.MulDiv(self.xPowerInt(SineX,'2'),'90');
end;

function StringMath.InCosine(CosineX: String): String;
begin
  CosineX:=self.CleanNum(CosineX);
  if(CosineX='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.MulDiv(self.xPowerInt(self.SqrRoot(
  self.SumSub('1',self.MulDiv('-1',self.xPowerInt(CosineX,'2')))),'2'),'90');
end;

function StringMath.InTangent(TangentX: String): String;
begin
  TangentX:=self.CleanNum(TangentX);
  if(TangentX='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.MulDiv(self.xPowerInt(self.MulDiv(TangentX,
  self.SqrRoot(self.SumSub('1',self.xPowerInt(TangentX,'2'))),false),'2'),'90');
end;

function StringMath.FactorialInt(x: String): String;
var
  Ct1:String;
  BigN:Byte;
begin
  x:=self.CleanNum(x);
  if(x='nan')then begin
    Result:='nan';
    Exit;
  end;
  Ct1:=self.RR(x);
  Result:=Ct1;
  BigN:=self.isNum1Bigger(Ct1,'1');
  While(BigN=1)do begin
    Ct1:=self.SumSub(Ct1,'-1');
    Result:=self.MulDiv(Result,Ct1);
    BigN:=self.isNum1Bigger(Ct1,'1');
  end;
end;

function StringMath.ePower(x: String): String;
var
  i:Integer;
begin
  Result:='1';
  for i:=1 to 20 do begin
    Result:=self.SumSub(Result,self.MulDiv(self.xPowerInt(x,IntToStr(i)),
    self.FactorialInt(IntToStr(i)),False));
  end;
end;

function StringMath.ePowerX(x: String): String;
var
  DeciInt:Integer;
  n1,n2:String;
begin
  x:=self.CleanNum(x);
  if(x='nan')then begin
    Result:='nan';
    Exit;
  end;
  DeciInt:=self.TDeciDigitCountBaseOne;
  self.TDeciDigitCountBaseOne:=DeciInt+10;

  Result:=self.ePower(x);

  self.TDeciDigitCountBaseOne:=DeciInt;
  getWholeDeci(Result,n1,n2);
  Result:=CutCountDeci(n1,n2);
end;

function StringMath.xPower(Abase, Apower: String): String;
var
  DeciInt:Integer;
  n1,n2:String;
begin
  Abase:=self.CleanNum(Abase);
  Apower:=self.CleanNum(Apower);
  if(Abase='nan')or(Apower='nan')then begin
    Result:='nan';
    Exit;
  end else
  if(Abase='0.0')and(Apower='0.0')then begin
    Result:='nan';
    Exit;
  end else
  if(Abase='0.0')and(self.isPositive(Apower)=True)then begin
    Result:='0';
    Exit;
  end else
  if(Abase='0.0')and(self.isPositive(Apower)=False)then begin
    Result:='nan';
    Exit;
  end else
  if(Abase='1.0')then begin
    Result:='1.0';
    Exit;
  end;
  DeciInt:=self.TDeciDigitCountBaseOne;
  self.TDeciDigitCountBaseOne:=DeciInt+10;

  Result:=self.ePower(self.MulDiv(self.lnx2(Abase),Apower));

  self.TDeciDigitCountBaseOne:=DeciInt;
  getWholeDeci(Result,n1,n2);
  Result:=CutCountDeci(n1,n2);
end;

initialization
  AStrMath:=StringMath.Create;
  ACtSec:=TCriticalSection.Create;
finalization
  AStrMath.Free;
  ACtSec.Free;

end.

