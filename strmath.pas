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

type

  IntArr = Array of Byte;

{ Arr-Math Integer }
function IntBitToStr(const num:IntArr):String;
procedure Shift(const isLeft,isSet:Boolean;var num:IntArr);
procedure Shift(const isLeft:Boolean;var num:IntArr);
procedure ShiftLeft(var num:IntArr);
procedure ShiftRight(var num:IntArr);
function isIntZero(const num:IntArr):Boolean;
function isPositiveAd(const num:IntArr):Byte;
function isPositive(const num:IntArr):Boolean;
procedure SetZero(var num:IntArr);
function SumSubInt(const num1,num2:IntArr):IntArr;
procedure SumSubInt(const num1,num2:IntArr;var AAnswer:IntArr);

{ String-Math }
function Condition(Num1,Symbol,Num2:String):Boolean;
function isNaN(const NumV:String):Boolean;
function GetDeciCount:Integer;
function CutDeciCount(const NumV:String;const DeciCountBaseOne:Integer):String;
procedure SetDeciCountDefault;
procedure SetDeciCount(const CountBaseOne:Integer);
function isNumber(const NumV:String):Boolean;
function isInt(const NumV:String):boolean;
function CleanNum(const NumV:String):String;
function ToRound(const NumV:String;const WithDeci:Boolean = True):String;
function ToRound(const NumV:String;out AAnswer:String;
  const WithDeci:Boolean = True):Boolean;
function ToInt(const NumV:String;const WithDeci:Boolean = True):String;
function ToInt(const NumV:String;out AAnswer:String;
  const WithDeci:Boolean = True):Boolean;
function ToDeci(const NumV:String;const WithDeci:Boolean = True):String;
function ToDeci(const NumV:String;out AAnswer:String;
  const WithDeci:Boolean = True):Boolean;
function isPositiveAdvance(const NumV:String):Byte; // 0 = False, 1 = True, 2 = Zero, 3 = Error
function isPositive(const NumV:String):Boolean;
function Num1Bigger(const Num1,Num2:String):Byte; // 0 = False, 1 = True, 2 = Same-Numbers, 3 = Error
function SumSub(const Num1,Num2:String):String;
function MulDiv(const Num1,Num2:String;const doMul:Boolean = True):String;
function SumSub(const Num1,Num2:String;out AAnswer:String):Boolean;
function MulDiv(const Num1,Num2:String;out AAnswer:String;
  const doMul:Boolean = True):Boolean;
function isBinary(const Num:String):Boolean;
function IntToBinary(const Num:String):String;
function IntToBinary(const Num:String;out AAnswer:String):Boolean;
function BinaryToInt(const Num:String):String;
function BinaryToInt(const Num:String;out AAnswer:String):Boolean;
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

  { ArrMath }

  ArrMath = class(TObject)
  public
    constructor Create;
    destructor Destroy; override;
    procedure SetBit(var B:Byte;const PosBaseZero:Byte);
    procedure ClearBit(var B:Byte;const PosBaseZero:Byte);
    procedure ReverseBit(var B:Byte;const PosBaseZero:Byte);
    function IsBitSet(B:Byte;const PosBaseZero:Byte):Boolean;
    procedure BitsToStr(const num:IntArr;var AStrBits:String);
    procedure SetInt(const num:IntArr;var numResult:IntArr);
    function isIntZero(const num:IntArr):Boolean;
    procedure Shift(const isLeft,isSet:Boolean;var num:IntArr);
    function isPositiveAd(var num:IntArr):Byte;
    function isPositive(var num:IntArr):Boolean;
    function isNum1Bigger(var num1,num2:IntArr):Byte;
    procedure InitZeroToNine(const isNeg:Boolean;const Digit:Byte;var num:IntArr);
    procedure AlignNums(var num1,num2:IntArr);
    procedure SumInt(num1,num2:IntArr;var numResult:IntArr);
    procedure SubInt(num1,num2:IntArr;var numResult:IntArr;out num1Bigger:Byte);
    procedure SumSubInt(num1,num2:IntArr;var numResult:IntArr);
    procedure MulInt(num1,num2:IntArr;var numResult:IntArr);
  end;

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
    function RR(x:String;const WithDeci:Boolean = True):String;
    function RD(x:String;const WithDeci:Boolean = True):String;
    function RX(x:String;const WithDeci:Boolean = True):String;
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

var AArrMath:ArrMath;
var AStrMath:StringMath;
var ACtSec:TCriticalSection;

{ Arr-Math }

function IntBitToStr(const num: IntArr): String;
begin
  AArrMath.BitsToStr(num,Result);
end;

procedure Shift(const isLeft, isSet: Boolean; var num: IntArr);
var
  i:Integer;
begin
  i:=Length(num);
  AArrMath.Shift(isLeft,isSet,num);
  if(isLeft=False)then SetLength(num,i);
end;

procedure Shift(const isLeft: Boolean; var num: IntArr);
var
  i:Integer;
begin
  i:=Length(num);
  AArrMath.Shift(isLeft,False,num);
  if(isLeft=False)then SetLength(num,i);
end;

procedure ShiftLeft(var num: IntArr);
begin
  AArrMath.Shift(True,False,num);
end;

procedure ShiftRight(var num: IntArr);
var
  i:Integer;
begin
  i:=Length(num);
  AArrMath.Shift(False,False,num);
  SetLength(num,i);
end;

function isIntZero(const num: IntArr): Boolean;
var
  TArr1:IntArr;
begin
  TArr1:=nil;
  AArrMath.SetInt(num,TArr1);
  AArrMath.Shift(True,False,TArr1);
  Result:=AArrMath.isIntZero(TArr1);
  SetLength(TArr1,0);
end;

function isPositiveAd(const num: IntArr): Byte;
var
  TArr1:IntArr;
begin
  TArr1:=nil;
  AArrMath.SetInt(num,TArr1);
  Result:=AArrMath.isPositiveAd(TArr1);
  SetLength(TArr1,0);
end;

function isPositive(const num: IntArr): Boolean;
var
  TArr1:IntArr;
begin
  TArr1:=nil;
  AArrMath.SetInt(num,TArr1);
  Result:=AArrMath.isPositive(TArr1);
  SetLength(TArr1,0);
end;

procedure SetZero(var num: IntArr);
begin
  SetLength(num,1);
  num[0]:=0;
end;

function SumSubInt(const num1, num2: IntArr): IntArr;
begin
  AArrMath.SumSubInt(num1,num2,Result);
end;

procedure SumSubInt(const num1, num2: IntArr; var AAnswer: IntArr);
begin
  AArrMath.SumSubInt(num1,num2,AAnswer);
end;

{ String-Math }

function Condition(Num1, Symbol, Num2: String): Boolean;
var
  Cal:String;
  i:Integer;
  Bool1:Boolean;
begin
  Result:=False;
  Num1:=AStrMath.CleanNum(Num1);
  Num2:=AStrMath.CleanNum(Num2);
  if(Num1='nan')and(Num2='nan')then begin
    Result:=True;
    Exit;
  end else
  if(Num1='nan')or(Num2='nan')then Exit;
  bool1:=False;
  for i:=1 to Length(Symbol)do
    if(Symbol[i]<>' ')then begin
      bool1:=True;
      Break;
    end;
  if(bool1=False)then Exit;

  for i:=1 to Length(Symbol)do
    if(Symbol[i]<>' ')then begin
      Symbol:=Copy(Symbol,i,Length(Symbol));
      Break;
    end;
  for i:=1 to Length(Symbol)do
    if(Symbol[i]=' ')then begin
      Symbol:=Copy(Symbol,1,i-1);
      Break;
    end;

  if(Symbol='=')or(Symbol='==')then begin
    Cal:=SumSub(Num1,MulDiv('-1',Num2));
    if(AStrMath.isPositiveAd(Cal)=2)then Result:=True;
  end else
  if(Symbol='<>')or(Symbol='!=')or(Symbol='=!')then begin
    Cal:=SumSub(Num1,MulDiv('-1',Num2));
    if(AStrMath.isPositiveAd(Cal)=0)or
    (AStrMath.isPositiveAd(Cal)=1)then Result:=True;
  end else
  if(Symbol='>')then begin
    Cal:=SumSub(Num1,MulDiv('-1',Num2));
    if(AStrMath.isPositiveAd(Cal)=1)then Result:=True;
  end else
  if(Symbol='<')then begin
    Cal:=SumSub(Num1,MulDiv('-1',Num2));
    if(AStrMath.isPositiveAd(Cal)=0)then Result:=True;
  end else
  if(Symbol='>=')or(Symbol='=>')then begin
    Cal:=SumSub(Num1,MulDiv('-1',Num2));
    if(AStrMath.isPositiveAd(Cal)=1)or
    (AStrMath.isPositiveAd(Cal)=2)then Result:=True;
  end else
  if(Symbol='<=')or(Symbol='=<')then begin
    Cal:=SumSub(Num1,MulDiv('-1',Num2));
    if(AStrMath.isPositiveAd(Cal)=0)or
    (AStrMath.isPositiveAd(Cal)=2)then Result:=True;
  end;
end;

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
  AStrMath.TDeciDigitCountBaseOne:=11;
  ACtSec.Leave;
end;

procedure SetDeciCount(const CountBaseOne: Integer);
begin
  if(ACtSec.TryEnter=False)then Exit;
  AStrMath.TDeciDigitCountBaseOne:=CountBaseOne;
  ACtSec.Leave;
end;

function isNumber(const NumV: String): Boolean;
var
  Cal:String;
begin
  Cal:=AStrMath.CleanNum(NumV);
  if(Cal='nan')then Result:=False else Result:=True;
end;

function isInt(const NumV: String): boolean;
var
  Cal,AWhole,ADeci:String;
begin
  Result:=False;
  Cal:=AStrMath.CleanNum(NumV);
  if(Cal='nan')then Exit;
  AStrMath.getWholeDeci(Cal,AWhole,ADeci);
  if(ADeci='0')then Result:=True;
end;

function CleanNum(const NumV: String): String;
begin
  Result:=AStrMath.CleanNum(NumV);
end;

function ToRound(const NumV: String; const WithDeci: Boolean): String;
begin
  Result:=AStrMath.RX(NumV,WithDeci);
end;

function ToRound(const NumV: String; out AAnswer: String;
  const WithDeci: Boolean): Boolean;
begin
  AAnswer:=AStrMath.RX(NumV,WithDeci);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ToInt(const NumV: String; const WithDeci: Boolean): String;
begin
  Result:=AStrMath.RR(NumV,WithDeci);
end;

function ToInt(const NumV: String; out AAnswer: String; const WithDeci: Boolean
  ): Boolean;
begin
  AAnswer:=AStrMath.RR(NumV,WithDeci);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ToDeci(const NumV: String; const WithDeci: Boolean): String;
begin
  Result:=AStrMath.RD(NumV,WithDeci);
end;

function ToDeci(const NumV: String; out AAnswer: String; const WithDeci: Boolean
  ): Boolean;
begin
  AAnswer:=AStrMath.RD(NumV,WithDeci);
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

function isBinary(const Num: String): Boolean;
var
  i:Integer;
  NV:String;
begin
  Result:=False;
  NV:=AStrMath.CleanNum(Num);
  if(NV='nan')then Exit;
  NV:=ToInt(NV,False);
  for i:=1 to Length(NV)do if(((NV[i]='0')or(NV[i]='1'))=False)then Exit;
  if(AStrMath.RR(Length(NV)/8)<>(Length(NV)/8))then Exit;
  Result:=True;
end;

function IntToBinary(const Num: String): String;
var
  BigN:String;
begin
  Result:='00000000';
  if(isNumber(Num)=False)or(isInt(Num)=False)then Exit;
  BigN:=CleanNum(Num);
  Result:='';
  While(BigN<>'0.0')do begin
    BigN:=MulDiv(BigN,'2',False);
    if(IsInt(BigN)=False)then Result:=Result+'1' else Result:=Result+'0';
    BigN:=ToInt(BigN);
  end;
  While(AStrMath.RR(Length(Result)/8)<>(Length(Result)/8))do Result:='0'+Result;
end;

function IntToBinary(const Num: String; out AAnswer: String): Boolean;
var
  BigN:String;
begin
  Result:=False;
  AAnswer:='00000000';
  if(isNumber(Num)=False)or(isInt(Num)=False)then Exit;
  BigN:=CleanNum(Num);
  AAnswer:='';
  While(BigN<>'0.0')do begin
    BigN:=MulDiv(BigN,'2',False);
    if(IsInt(BigN)=False)then AAnswer:=AAnswer+'1' else AAnswer:=AAnswer+'0';
    BigN:=ToInt(BigN);
  end;
  While(AStrMath.RR(Length(AAnswer)/8)<>(Length(AAnswer)/8))do AAnswer:='0'+AAnswer;
  Result:=True;
end;

function BinaryToInt(const Num: String): String;
var
  NV:String;
  i:Integer;
begin
  Result:='0';
  if(isBinary(Num)=False)then Exit;
  NV:=CleanNum(Num);
  NV:=ToInt(NV,False);
  if(NV[Length(NV)]='0')then Result:='0' else Result:='1';
  for i:=(Length(NV)-1) downto 1 do
    Result:=SumSub(Result,xPower(MulDiv(NV[i],'2'),IntToStr(Length(NV)-i)));
end;

function BinaryToInt(const Num: String; out AAnswer: String): Boolean;
var
  NV:String;
  i:Integer;
begin
  Result:=False;
  AAnswer:='0';
  if(isBinary(Num)=False)then Exit;
  NV:=CleanNum(Num);
  NV:=ToInt(NV,False);
  if(NV[Length(NV)]='0')then AAnswer:='0' else AAnswer:='1';
  for i:=(Length(NV)-1) downto 1 do
    AAnswer:=SumSub(AAnswer,xPower(MulDiv(NV[i],'2'),IntToStr(Length(NV)-i)));
  Result:=True;
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

{ ArrMath }

constructor ArrMath.Create;
begin

end;

destructor ArrMath.Destroy;
begin
  inherited Destroy;
end;

procedure ArrMath.SetBit(var B: Byte; const PosBaseZero: Byte);
begin
  B:=B or (1 shl PosBaseZero);
end;

procedure ArrMath.ClearBit(var B: Byte; const PosBaseZero: Byte);
begin
  B:=B and not (1 shl PosBaseZero);
end;

procedure ArrMath.ReverseBit(var B: Byte; const PosBaseZero: Byte);
begin
  B:=B xor (1 shl PosBaseZero);
end;

function ArrMath.IsBitSet(B: Byte; const PosBaseZero: Byte): Boolean;
begin
  Result:=(B and (1 shl PosBaseZero)) <> 0;
end;

procedure ArrMath.BitsToStr(const num: IntArr; var AStrBits: String);
var
  i:Integer;
begin
  AStrBits:=nil;
  for i:=0 to (Length(num)-1)do AStrBits:=AStrBits+BinStr(num[i],8)+' ';
end;

procedure ArrMath.SetInt(const num: IntArr; var numResult: IntArr);
var
  i:Integer;
begin
  SetLength(numResult,Length(num));
  for i:=0 to (Length(num)-1)do numResult[i]:=num[i];
end;

function ArrMath.isIntZero(const num: IntArr): Boolean;
var
  i:Integer;
begin
  Result:=True;
  for i:=0 to (Length(num)-1)do if(num[i]<>0)then begin Result:=False; Exit; end;
end;

procedure ArrMath.Shift(const isLeft, isSet: Boolean; var num: IntArr);
var
  i,j:Integer;
  TArr1:IntArr;
  bool1:Boolean;
begin
  TArr1:=nil;
  bool1:=False;
  if(isLeft=False)then begin
    for i:=0 to (Length(num)-1)do begin
      SetLength(TArr1,Length(TArr1)+1);
      TArr1[Length(TArr1)-1]:=0;
      if(bool1=True)then self.SetBit(TArr1[Length(TArr1)-1],0);
      bool1:=False;
      for j:=0 to 255 do begin
        if(j<255)then if(self.IsBitSet(num[i],j)=True)then
          self.SetBit(TArr1[Length(TArr1)-1],j+1) else
        if(j=255)then if(self.IsBitSet(num[i],j)=True)then bool1:=True;
      end;
    end;
    if(bool1=True)then begin
      SetLength(TArr1,Length(TArr1)+1);
      TArr1[Length(TArr1)-1]:=0;
      if(bool1=True)then self.SetBit(TArr1[Length(TArr1)-1],0);
    end;
    if(isSet=True)then self.SetBit(TArr1[Length(TArr1)-1],0);
    bool1:=True;
  end else
  if(isLeft=True)then begin
    for i:=0 to (Length(num)-1)do begin
      SetLength(TArr1,Length(TArr1)+1);
      TArr1[Length(TArr1)-1]:=0;
      for j:=0 to 255 do begin
        if(j>0)then if(self.IsBitSet(num[i],j)=True)then
          self.SetBit(TArr1[Length(TArr1)-1],j-1);
      end;
      if((i+1)<=(Length(num)-1))and(self.IsBitSet(num[i+1],0)=True)then
        self.SetBit(TArr1[Length(TArr1)-1],255);
    end;
    if(isSet=True)then self.SetBit(TArr1[Length(TArr1)-1],255);
    bool1:=True;
  end;
  if(bool1=True)then begin
    SetLength(num,Length(TArr1));
    for i:=0 to (Length(TArr1)-1)then num[i]:=TArr1[i];
  end;
  SetLength(TArr1,0);
end;

function ArrMath.isPositiveAd(var num: IntArr): Byte;
var
  bool1:Boolean;
begin
  bool1:=False;
  if(self.IsBitSet(num[0],0)=True)then bool1:=True;
  self.Shift(True,False,num);
  if(self.isIntZero(num)=True)then Result:=2 else
  if(bool1=True)then Result:=1 else Result:=0;
end;

function ArrMath.isPositive(var num: IntArr): Boolean;
var
  ByteA:Byte;
begin
  ByteA:=self.isPositiveAd(num);
  if(ByteA=1)then Result:=True else
  if(ByteA=0)then Result:=False else Result:=False;
end;

function ArrMath.isNum1Bigger(var num1, num2: IntArr): Byte;
var
  i,j:Integer;
  bool1,bool2:Boolean;
begin
  for i:=0 to (Length(num1)-1)do begin
    for j:=0 to 255 do begin
      bool1:=False;
      bool2:=False;
      if(self.IsBitSet(num1[i],j)=True)then bool1:=True;
      if(self.IsBitSet(num2[i],j)=True)then bool2:=True;
      if(bool1=True)and(bool2=False)then begin Result:=1; Exit; end else
      if(bool1=False)and(bool2=True)then begin Result:=0; Exit; end;
    end;
  end;
  Result:=2;
end;

procedure ArrMath.InitZeroToNine(const isNeg: Boolean; const Digit: Byte;
  var num: IntArr);
begin
  SetLength(num,1);
  num[0]:=0;
  if(Digit=1)then self.SetBit(num[0],0) else
  if(Digit=2)then self.SetBit(num[0],1) else
  if(Digit=3)then begin
    self.SetBit(num[0],0);
    self.SetBit(num[0],1);
  end else
  if(Digit=4)then self.SetBit(num[0],2) else
  if(Digit=5)then begin
    self.SetBit(num[0],0);
    self.SetBit(num[0],2);
  end else
  if(Digit=6)then begin
    self.SetBit(num[0],1);
    self.SetBit(num[0],2);
  end else
  if(Digit=7)then begin
    self.SetBit(num[0],0);
    self.SetBit(num[0],1);
    self.SetBit(num[0],2);
  end else
  if(Digit=8)then self.SetBit(num[0],3) else
  if(Digit=9)then begin
    self.SetBit(num[0],0);
    self.SetBit(num[0],3);
  end;
  if(isNeg=False)then self.Shift(False,True,num) else self.Shift(False,False,num);
end;

procedure ArrMath.AlignNums(var num1, num2: IntArr);
begin
  if(Length(num1)>Length(num2))then SetLength(num2,Length(num1)) else
  if(Length(num2)>Length(num1))then SetLength(num1,Length(num2));
end;

procedure ArrMath.SumInt(num1, num2: IntArr; var numResult: IntArr);
var
  i,j:Integer;
  bool1,bool2,bool3:Boolean;
begin
  SetLength(numResult,0);
  self.AlignNums(num1,num2);
  bool3:=False;
  for i:=0 to (Length(num1)-1)do begin
    SetLength(numResult,Length(numResult)+1);
    numResult[Length(numResult)-1]:=0;
    for j:=0 to 255 do begin
      bool1:=False;
      bool2:=False;
      if(self.IsBitSet(num1[i],j)=True)then bool1:=True;
      if(self.IsBitSet(num2[i],j)=True)then bool2:=True;
      if(bool1=False)and(bool2=False)then begin
        if(bool3=True)then self.SetBit(numResult[Length(numResult)-1],j);
        bool3:=False;
      end else
      if(bool1=True)and(bool2=False)then begin
        if(bool3=False)then self.SetBit(numResult[Length(numResult)-1],j);
      end else
      if(bool1=False)and(bool2=True)then begin
        if(bool3=False)then self.SetBit(numResult[Length(numResult)-1],j);
      end else
      if(bool1=True)and(bool2=True)then begin
        if(bool3=True)then self.SetBit(numResult[Length(numResult)-1],j);
        bool3:=True;
      end;
    end;
  end;
  if(bool3=True)and(numResult[Length(numResult)-1]=255)then begin
    SetLength(numResult,Length(numResult)+1);
    numResult[Length(numResult)-1]:=0;
    self.SetBit(numResult[Length(numResult)-1],0);
  end else
  if(bool3=True)then begin
    for j:=254 downto 0 do begin
      if(self.IsBitSet(numResult[Length(numResult)-1],j)=True)then begin
        self.SetBit(numResult[Length(numResult)-1],j+1);
        Break;
      end;
    end;
  end;
  //End...
end;

procedure ArrMath.SubInt(num1, num2: IntArr; var numResult: IntArr; out
  num1Bigger: Byte);
var
  i,j:Integer;
  bool1,bool2,bool3:Boolean;
  ByteA:Byte;
  TArr1,TArr2:IntArr;
begin
  SetLength(numResult,0);
  self.AlignNums(num1,num2);
  ByteA:=self.isNum1Bigger(num1,num2);
  TArr1:=nil;
  TArr2:=nil;
  num1Bigger:=ByteA;
  if(ByteA=0)then begin
    SetLength(TArr1,Length(num2));
    for i:=0 to (Length(num2)-1)do TArr1[i]:=num2[i];
    SetLength(TArr2,Length(num1));
    for i:=0 to (Length(num1)-1)do TArr2[i]:=num1[i];
  end else
  if(ByteA=1)then begin
    SetLength(TArr1,Length(num1));
    for i:=0 to (Length(num1)-1)do TArr1[i]:=num1[i];
    SetLength(TArr2,Length(num2));
    for i:=0 to (Length(num2)-1)do TArr2[i]:=num2[i];
  end else begin
    SetLength(numResult,Length(num1));
    for i:=0 to (Length(num1)-1)do numResult[i]:=0;
    Exit;
  end;
  bool3:=False;
  for i:=0 to (Length(TArr1)-1)do begin
    SetLength(numResult,Length(numResult)+1);
    numResult[Length(numResult)-1]:=0;
    for j:=0 to 255 do begin
      bool1:=False;
      bool2:=False;
      if(self.IsBitSet(TArr1[i],j)=True)then bool1:=True;
      if(self.IsBitSet(TArr2[i],j)=True)then bool2:=True;
      if(bool1=False)and(bool2=False)then begin
        if(bool3=True)then self.SetBit(numResult[Length(numResult)-1],j);
      end else
      if(bool1=True)and(bool2=False)then begin
        if(bool3=True)then bool3:=False else
        if(bool3=False)then self.SetBit(numResult[Length(numResult)-1],j);
      end else
      if(bool1=False)and(bool2=True)then begin
        if(bool3=False)then begin
          self.SetBit(numResult[Length(numResult)-1],j);
          bool3:=True;
        end;
      end else
      if(bool1=True)and(bool2=True)then begin
        //nothing...
      end;
    end;
  end;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
end;

procedure ArrMath.SumSubInt(num1, num2: IntArr; var numResult: IntArr);
var
  bool1,bool2:Boolean;
  ByteA:Byte;
begin
  SetLength(numResult,0);
  if(Length(num1)=Length(num2))and(Length(num1)=0)then Exit;
  if(Length(num1)=0)then self.InitZeroToNine(False,0,num1) else
  if(Length(num2)=0)then self.InitZeroToNine(False,0,num2);
  bool1:=self.isPositive(num1);
  bool2:=self.isPositive(num2);
  if(bool1=False)and(bool2=False)then begin
    self.SumInt(num1,num2,numResult);
    self.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=False)then begin
    self.SubInt(num1,num2,numResult,ByteA);
    if(ByteA=0)then self.Shift(False,False,numResult) else
    if(ByteA=1)then self.Shift(False,True,numResult);
  end else
  if(bool1=False)and(bool2=True)then begin
    self.SubInt(num1,num2,numResult,ByteA);
    if(ByteA=0)then self.Shift(False,True,numResult) else
    if(ByteA=1)then self.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=True)then begin
    self.SumInt(num1,num2,numResult);
    self.Shift(False,True,numResult);
  end;
end;

procedure ArrMath.MulInt(num1, num2: IntArr; var numResult: IntArr);
var
  i,j,k:Integer;
  bool1:Boolean;
  TArr1,TArr2:IntArr;
  CountA:Integer;
begin
  TArr1:=nil;
  TArr2:=nil;
  SetLength(numResult,1);
  numResult[0]:=0;
  bool1:=False;
  CountA:=0;
  for i:=0 to (Length(num1)-1)do begin
    for j:=0 to 255 do begin
      bool1:=self.IsBitSet(num1[i],j);
      if(bool1=True)then begin
        self.SetInt(numResult,TArr1);
        self.SetInt(num2,TArr2);
        for k:=1 to CountA do self.Shift(False,False,TArr2);
        self.SumInt(TArr1,TArr2,numResult);
      end;
      CountA:=CountA+1;
    end;
  end;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
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

function StringMath.RR(x: String; const WithDeci: Boolean): String;
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
  if(WithDeci=True)then Result:=AWhole+'.0' else Result:=AWhole;
  if(ASign=False)then Result:='-'+Result;
end;

function StringMath.RD(x: String; const WithDeci: Boolean): String;
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
  if(WithDeci=True)then Result:=ADeci+'.0' else Result:=ADeci;
  if(ASign=False)then Result:='-'+Result;
end;

function StringMath.RX(x: String; const WithDeci: Boolean): String;
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
  if(StrToInt(ADeci[1])<=5)then begin
    if(WithDeci=True)then Result:=AWhole+'.0' else Result:=AWhole;
  end else
  if(StrToInt(ADeci[1])>5)then begin
    Result:=self.SumSub(AWhole,'1');
    GetWholeDeci(Result,AWhole,ADeci);
    if(WithDeci=True)then Result:=AWhole+'.0' else Result:=AWhole;
  end;
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

  getWholeDeci(Apower,n1,n2);
  if(n2<>'0')then Result:=self.ePower(self.MulDiv(self.lnx2(Abase),Apower))
  else Result:=self.xPowerInt(Abase,Apower);

  self.TDeciDigitCountBaseOne:=DeciInt;
  getWholeDeci(Result,n1,n2);
  Result:=CutCountDeci(n1,n2);
end;

initialization
  AArrMath:=ArrMath.Create;
  AStrMath:=StringMath.Create;
  ACtSec:=TCriticalSection.Create;
finalization
  AArrMath.Free;
  AStrMath.Free;
  ACtSec.Free;

end.

