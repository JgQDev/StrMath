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
  Classes, SysUtils;

type

  Number = Array of Byte;
  IntArr = type Number;
  RealArr = type Number;

{ Extra-Math }
function isNaNNumber(const num:Number):Boolean;
procedure Shift(const isLeft,isSet:Boolean;var num:Number);
procedure Shift(const isLeft:Boolean;var num:Number);
procedure ShiftPace(const isLeft:Boolean;const PaceBaseOne:Integer;var num:Number);
procedure ShiftLeft(var num:Number);
procedure ShiftRight(var num:Number);
procedure ShiftPaceLeft(const PaceBaseOne:Integer;var num:Number);
procedure ShiftPaceRight(const PaceBaseOne:Integer;var num:Number);
function AssignNum(const num:Number):Number;

{ IntArr-Math }
function ConditionInt(Num1:IntArr;Symbol:String;Num2:IntArr):Boolean;
function InRangeInt(var varNum:IntArr;fromNum,ToNum,PaceNum:IntArr):Boolean;
function InRangeInt(var varNum:IntArr;fromNum,ToNum:IntArr):Boolean;
function IntToBitStr(const num:IntArr):String;
function isIntZero(const num:IntArr):Boolean;
function isPositiveIntAdvance(const num:IntArr):Byte; // 0 = False, 1 = True, 2 = Zero, 3 = Error
function isPositiveInt(const num:IntArr):Boolean;
procedure SetZeroInt(var num:IntArr);

function SumSubInt(const num1,num2:IntArr):IntArr;
procedure SumSubInt(const num1,num2:IntArr;var AAnswer:IntArr);
function MulDivInt(const num1,num2:IntArr;const doMul:Boolean = True):IntArr;
procedure MulDivInt(const num1,num2:IntArr;var AAnswer:IntArr;const doMul:Boolean = True);

function InitInt(const num:String):IntArr;
function IntStr(const num:IntArr):String;
function IntMod(const num1,num2:IntArr):IntArr;

{ RealArr-Math }
function ConditionReal(Num1:RealArr;Symbol:String;Num2:RealArr):Boolean;
function InRangeReal(var varNum:RealArr;fromNum,ToNum,PaceNum:RealArr):Boolean;
function InRangeReal(var varNum:RealArr;fromNum,ToNum:RealArr):Boolean;
function RealToBitStr(const num:RealArr):String;
function IntReal(const num:IntArr):RealArr;
function RoundReal(const num:RealArr):IntArr;
function RoundRealR(const num:RealArr):IntArr;
function RealDeciCountBaseOne(const num:RealArr):Integer;
function CutRealDeciCountBaseOne(const num:RealArr;const CutAt:Integer):RealArr;
function CutRealDeciCountBaseOneR(const num:RealArr;const CutAt:Integer):RealArr;
function isPositiveRealAdvance(const num:RealArr):Byte; // 0 = False, 1 = True, 2 = Zero, 3 = Error
function isPositiveReal(const num:RealArr):Boolean;

function SumSubRealO(const num1,num2:RealArr):RealArr;
procedure SumSubRealO(const num1,num2:RealArr;var AAnswer:RealArr);
function SumSubRealO(const num1,num2:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure SumSubRealO(const num1,num2:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);
function MulDivRealO(const num1,num2:RealArr;const doMul:Boolean = True):RealArr;
procedure MulDivRealO(const num1,num2:RealArr;var AAnswer:RealArr;const doMul:Boolean = True);
function MulDivRealO(const num1,num2:RealArr;const DeciCountBaseOne:Integer;const doMul:Boolean = True):RealArr;
procedure MulDivRealO(const num1,num2:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer;const doMul:Boolean = True);

function SumSubReal(const num1,num2:RealArr):RealArr;
procedure SumSubReal(const num1,num2:RealArr;var AAnswer:RealArr);
function SumSubReal(const num1,num2:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure SumSubReal(const num1,num2:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);
function MulDivReal(const num1,num2:RealArr;const doMul:Boolean = True):RealArr;
procedure MulDivReal(const num1,num2:RealArr;var AAnswer:RealArr;const doMul:Boolean = True);
function MulDivReal(const num1,num2:RealArr;const DeciCountBaseOne:Integer;const doMul:Boolean = True):RealArr;
procedure MulDivReal(const num1,num2:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer;const doMul:Boolean = True);

function lnReal(const num:RealArr):RealArr;
procedure lnReal(const num:RealArr;var AAnswer:RealArr);
function lnReal(const num:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure lnReal(const num:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function logReal(const num:RealArr):RealArr;
procedure logReal(const num:RealArr;var AAnswer:RealArr);
function logReal(const num:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure logReal(const num:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function logReal(const num,base:RealArr):RealArr;
procedure logReal(const num,base:RealArr;var AAnswer:RealArr);
function logReal(const num,base:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure logReal(const num,base:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function SqrRootReal(const num:RealArr):RealArr;
procedure SqrRootReal(const num:RealArr;var AAnswer:RealArr);
function SqrRootReal(const num:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure SqrRootReal(const num:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function SineReal(const Degrees:RealArr):RealArr;
procedure SineReal(const Degrees:RealArr;var AAnswer:RealArr);
function SineReal(const Degrees:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure SineReal(const Degrees:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function CosineReal(const Degrees:RealArr):RealArr;
procedure CosineReal(const Degrees:RealArr;var AAnswer:RealArr);
function CosineReal(const Degrees:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure CosineReal(const Degrees:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function TangentReal(const Degrees:RealArr):RealArr;
procedure TangentReal(const Degrees:RealArr;var AAnswer:RealArr);
function TangentReal(const Degrees:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure TangentReal(const Degrees:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function InSineReal(const SineX:RealArr):RealArr;
procedure InSineReal(const SineX:RealArr;var AAnswer:RealArr);
function InSineReal(const SineX:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure InSineReal(const SineX:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function InCosineReal(const CosineX:RealArr):RealArr;
procedure InCosineReal(const CosineX:RealArr;var AAnswer:RealArr);
function InCosineReal(const CosineX:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure InCosineReal(const CosineX:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function InTangentReal(const TangentX:RealArr):RealArr;
procedure InTangentReal(const TangentX:RealArr;var AAnswer:RealArr);
function InTangentReal(const TangentX:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure InTangentReal(const TangentX:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function ePowerReal(const Power:RealArr):RealArr;
procedure ePowerReal(const Power:RealArr;var AAnswer:RealArr);
function ePowerReal(const Power:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure ePowerReal(const Power:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function xPowerReal(const Base,Power:RealArr):RealArr;
procedure xPowerReal(const Base,Power:RealArr;var AAnswer:RealArr);
function xPowerReal(const Base,Power:RealArr;const DeciCountBaseOne:Integer):RealArr;
procedure xPowerReal(const Base,Power:RealArr;var AAnswer:RealArr;const DeciCountBaseOne:Integer);

function InitReal(const num:String):RealArr;
function RealStr(const num:RealArr):String;
function RealMod(const num1,num2:RealArr):RealArr;

{ String-Math }
function Condition(Num1,Symbol,Num2:String):Boolean;
function InRange(var varNum:String;fromNum,ToNum,PaceNum:String):Boolean;
function InRange(var varNum:String;fromNum,ToNum:String):Boolean;
function isNaN(const NumV:String):Boolean;
function CutDeciCount(const NumV:String;const DeciCountBaseOne:Integer):String;
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
function MulDiv(const Num1,Num2:String;out AAnswer:String;const doMul:Boolean = True):Boolean;
function SumSub(const Num1,Num2:String;const DeciCountBaseOne:Integer):String;
function MulDiv(const Num1,Num2:String;const DeciCountBaseOne:Integer;const doMul:Boolean = True):String;
function SumSub(const Num1,Num2:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;
function MulDiv(const Num1,Num2:String;out AAnswer:String;const DeciCountBaseOne:Integer;const doMul:Boolean = True):Boolean;

function isBinary(const Num:String):Boolean;
function IntToBinary(const Num:String):String;
function IntToBinary(const Num:String;out AAnswer:String):Boolean;
function BinaryToInt(const Num:String):String;
function BinaryToInt(const Num:String;out AAnswer:String):Boolean;

function ln(const x:String):String;
function ln(const x:String;out AAnswer:String):Boolean;
function ln(const x:String;const DeciCountBaseOne:Integer):String;
function ln(const x:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function log(const num:String):String;
function log(const num:String;out AAnswer:String):Boolean;
function log(const num:String;const DeciCountBaseOne:Integer):String;
function log(const num:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function log(const num,Base:String):String;
function log(const num,Base:String;out AAnswer:String):Boolean;
function log(const num,Base:String;const DeciCountBaseOne:Integer):String;
function log(const num,Base:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function SqrRoot(const x:String):String;
function SqrRoot(const x:String;out AAnswer:String):Boolean;
function SqrRoot(const x:String;const DeciCountBaseOne:Integer):String;
function SqrRoot(const x:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function Sine(const Degrees:String):String;
function Sine(const Degrees:String;out AAnswer:String):Boolean;
function Sine(const Degrees:String;const DeciCountBaseOne:Integer):String;
function Sine(const Degrees:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function Cosine(const Degrees:String):String;
function Cosine(const Degrees:String;out AAnswer:String):Boolean;
function Cosine(const Degrees:String;const DeciCountBaseOne:Integer):String;
function Cosine(const Degrees:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function Tangent(const Degrees:String):String;
function Tangent(const Degrees:String;out AAnswer:String):Boolean;
function Tangent(const Degrees:String;const DeciCountBaseOne:Integer):String;
function Tangent(const Degrees:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function InSine(const SineX:String):String;
function InSine(const SineX:String;out AAnswer:String):Boolean;
function InSine(const SineX:String;const DeciCountBaseOne:Integer):String;
function InSine(const SineX:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function InCosine(const CosineX:String):String;
function InCosine(const CosineX:String;out AAnswer:String):Boolean;
function InCosine(const CosineX:String;const DeciCountBaseOne:Integer):String;
function InCosine(const CosineX:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function InTangent(const TangentX:String):String;
function InTangent(const TangentX:String;out AAnswer:String):Boolean;
function InTangent(const TangentX:String;const DeciCountBaseOne:Integer):String;
function InTangent(const TangentX:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function ePower(const Power:String):String;
function ePower(const Power:String;out AAnswer:String):Boolean;
function ePower(const Power:String;const DeciCountBaseOne:Integer):String;
function ePower(const Power:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function xPower(const Base,Power:String):String;
function xPower(const Base,Power:String;out AAnswer:String):Boolean;
function xPower(const Base,Power:String;const DeciCountBaseOne:Integer):String;
function xPower(const Base,Power:String;out AAnswer:String;const DeciCountBaseOne:Integer):Boolean;

function xMod(const num1,num2:String):String;

implementation

const

  RealDeciLength = 5;

type

  TNumArr = Array of Integer;

  { ArrMath }

  ArrMath = class(TObject)
  public
    constructor Create;
    destructor Destroy; override;
    function RR(const x:Real):Integer;
    function unNum(const x:Integer):Integer;
    function unNum(const x:Real):Real;
    procedure SetBit(var B:Byte;const PosBaseZero:Byte);
    procedure ClearBit(var B:Byte;const PosBaseZero:Byte);
    procedure ReverseBit(var B:Byte;const PosBaseZero:Byte);
    function IsBitSet(B:Byte;const PosBaseZero:Byte):Boolean;
    procedure BitsToStr(const num:IntArr;var AStrBits:String);
    function BitsLength(const num:IntArr):Integer;
    procedure SetInt(const num:IntArr;var numResult:IntArr);
    procedure ReverseInt(const num:IntArr;var numResult:IntArr);
    function isIntZero(const num:IntArr):Boolean;
    procedure MatchLength(const isLeft:Boolean;const num:IntArr;var numResult:IntArr);
    procedure Shift(const isLeft,isSet:Boolean;var num:IntArr);
    procedure Shift(const isLeft:Boolean;PaceBaseOne:Integer;var num:IntArr);
    function isPositiveAd(var num:IntArr):Byte;
    function isPositive(var num:IntArr):Boolean;
    function isNum1Bigger(var num1,num2:IntArr):Byte;
    function isNum1BiggerAlign(num1,num2:IntArr):Byte;
    function isIntNumber(const Digit:String):Boolean;
    function GetIntDigit(const Digit:Byte):String;
    procedure InitZeroToNine(const isNeg:Boolean;const Digit:Byte;var num:IntArr);
    procedure AlignNums(var num1,num2:IntArr);
    procedure AssignIntNum(num:IntArr;var numResult:IntArr);
    procedure CutSome(num:IntArr;var numResult:IntArr);
    procedure SumInt(num1,num2:IntArr;var numResult:IntArr);
    procedure SubInt(num1,num2:IntArr;var numResult:IntArr;out num1Bigger:Byte);
    procedure SumSubInt(num1,num2:IntArr;var numResult:IntArr);
    procedure MulInt(num1,num2:IntArr;var numResult:IntArr);
    procedure MulIntSum(num1,num2:IntArr;var numResult:IntArr);
    procedure DivInt(num1,num2:IntArr;var numResult:IntArr);
    procedure MulDivInt(num1,num2:IntArr;var numResult:IntArr;const doMul:Boolean);
    procedure StrToIntArr(AStr:String;var numResult:IntArr);
    procedure IntArrToStr(num:IntArr;var AStr:String);
    procedure IntArrMod(num1,num2:IntArr;var numResult:IntArr);
  end;

  { RealMath }

  RealMath = class(TObject)
  public
    TTL:ArrMath;
    constructor Create;
    destructor Destroy; override;
    function CheckIntegrity(num:RealArr):Boolean;
    function DigitStr(const AStr:String):Boolean;
    procedure CombineArr(FromNum1,FromNum2:IntArr;var ToNum:RealArr;var NumAt:IntArr);
    function SplitArr(var FromNum1,FromNum2:IntArr;const ToNum:RealArr;const NumAt:IntArr):Boolean;
    procedure CombineIntToArr(FromNum:IntArr;var ToNum:RealArr);
    procedure SplitIntToArr(var FromNum:IntArr;var ToNum:RealArr);
    procedure StrToRealArr(AStr:String;var numResult:RealArr);
    procedure RealArrToStr(num:RealArr;var AStr:String);
    procedure IntArrToRealArrEqual(num:IntArr;var numResult:RealArr);
    procedure RealArrToIntArrRound(num:RealArr;var numResult:IntArr);
    procedure RRR(num:RealArr;var numResult:IntArr);
    procedure RealArrRound(var num:RealArr);
    function GetDeciCountBaseOne(num:RealArr):Integer;
    procedure RealCutDeciCountBaseOne(var num:RealArr;CutAt:Integer);
    procedure RealCutDeciCountBaseOneR(var num:RealArr;CutAt:Integer);
    procedure AlignStr(var AStr1,AStr2:String;const APlace:String);
    procedure AlignStrLeft(var AStr1,AStr2:String;const APlace:String);
    procedure CutSomeR(var num:IntArr);
    procedure CutSomeStr(var AStr:String);
    function CutSomeStrLeft(AStr:String):String;
    function ReverseStr(const AStr:String):String;
    function isPositiveAd(num:RealArr):Byte;
    function isPositive(num:RealArr):Boolean;
    procedure SumReal(num1,num2:RealArr;var numResult:RealArr;ADeciDigitCountBaseOne:Integer);
    procedure SubReal(num1,num2:RealArr;var numResult:RealArr;out NumBiggerMode:Byte;ADeciDigitCountBaseOne:Integer);
    procedure SumSubReal(num1,num2:RealArr;var numResult:RealArr;ADeciDigitCountBaseOne:Integer);
    procedure MulReal(num1,num2:RealArr;var numResult:RealArr;ADeciDigitCountBaseOne:Integer);
    procedure DivReal(num1,num2:RealArr;var numResult:RealArr;ADeciDigitCountBaseOne:Integer);
    procedure MulDivReal(num1,num2:RealArr;var numResult:RealArr;const doMul:Boolean;ADeciDigitCountBaseOne:Integer);
    procedure RealArrMod(num1,num2:RealArr;var numResult:RealArr);
    function RealXPowerInt(Abase,Apower:RealArr;
      const ADeciDigitCountBaseOne:Integer):RealArr;
    function RealXPowerIntStr(Abase,Apower:RealArr;
      const ADeciDigitCountBaseOne:Integer):RealArr;
    procedure lynReal(num:RealArr;var numResult:RealArr;
      const ADeciDigitCountBaseOne:Integer);
    procedure lynRealR(num:RealArr;var numResult:RealArr;
      const ADeciDigitCountBaseOne:Integer);
    procedure logaReal(num,base:RealArr;var numResult:RealArr;
      const ADeciDigitCountBaseOne:Integer);
    procedure Root2Real(num:RealArr;var numResult:RealArr;
      const ADeciDigitCountBaseOne:Integer);
    function SinReal(Degrees:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    function CosReal(Degrees:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    function TanReal(Degrees:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    function InSinReal(SinX:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    function InCosReal(CosX:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    function InTanReal(TanX:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    function RealFactorialIntStr(num:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    function ePower(num:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    function ePowerX(num:RealArr;ADeciDigitCountBaseOne:Integer):RealArr;
    function xPower(Abase,Apower:RealArr;ADeciDigitCountBaseOne:Integer):RealArr;
  end;

  { StringMath }

  StringMath = class(TObject)
  public
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
    function RR(x:String;const WithDeci:Boolean = True):String;
    function RD(x:String;const WithDeci:Boolean = True):String;
    function RX(x:String;const WithDeci:Boolean = True):String;
    function GetDeciCountBaseOne(num:String):Integer;
    procedure RealCutDeciCountBaseOne(var num:String;CutAt:Integer);
    procedure RealCutDeciCountBaseOneR(var num:String;CutAt:Integer);
    function Sum(const num1,num2:String):String;
    function Sub(const num1,num2:String):String;
    function SumSub(const num1,num2:String):String;
    function Mul(const num1,num2:String):String;
    function DivA(const num1,num2:String;const DeciDigitCountBaseOne:Integer):String;
    function MulDiv(const num1,num2:String;const ADeciDigitCountBaseOne:Integer;const doMul:Boolean = True):String;
    function xPowerInt(Abase,Apower:String;const ADeciDigitCountBaseOne:Integer):String;
    function lyn(x:String;const ADeciDigitCountBaseOne:Integer):String;
    function lnx(x:String;ADeciDigitCountBaseOne:Integer):String;
    function log(num,base:String;ADeciDigitCountBaseOne:Integer):String;
    function SqrRoot(x:String;const ADeciDigitCountBaseOne:Integer):String;
    function Sine(Degrees:String;const ADeciDigitCountBaseOne:Integer):String;
    function Cosine(Degrees:String;const ADeciDigitCountBaseOne:Integer):String;
    function Tangent(Degrees:String;const ADeciDigitCountBaseOne:Integer):String;
    function InSine(SineX:String;const ADeciDigitCountBaseOne:Integer):String;
    function InCosine(CosineX:String;const ADeciDigitCountBaseOne:Integer):String;
    function InTangent(TangentX:String;const ADeciDigitCountBaseOne:Integer):String;
    function FactorialInt(x:String;const ADeciDigitCountBaseOne:Integer):String;
    function ePower(x:String;const ADeciDigitCountBaseOne:Integer):String;
    function ePowerX(x:String;ADeciDigitCountBaseOne:Integer):String;
    function xPower(Abase,Apower:String;ADeciDigitCountBaseOne:Integer):String;
    function xModX(num1,num2:String):String;
  end;

var AArrMath:ArrMath;
var ARealMath:RealMath;
var AStrMath:StringMath;

{ Extra-Math }

function isNaNNumber(const num: Number): Boolean;
begin
  Result:=True;
  if(Length(num)>0)then Result:=False;
end;

procedure Shift(const isLeft, isSet: Boolean; var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  AArrMath.Shift(isLeft,isSet,num);
  if(isLeft=False)then SetLength(num,i);
end;

procedure Shift(const isLeft: Boolean; var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  AArrMath.Shift(isLeft,False,num);
  if(isLeft=False)then SetLength(num,i);
end;

procedure ShiftPace(const isLeft: Boolean; const PaceBaseOne: Integer;
  var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  AArrMath.Shift(isLeft,PaceBaseOne,num);
  if(isLeft=False)then SetLength(num,i);
end;

procedure ShiftLeft(var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  AArrMath.Shift(True,False,num);
  SetLength(num,i);
end;

procedure ShiftRight(var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  AArrMath.Shift(False,False,num);
  SetLength(num,i);
end;

procedure ShiftPaceLeft(const PaceBaseOne: Integer; var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  AArrMath.Shift(True,PaceBaseOne,num);
  SetLength(num,i);
end;

procedure ShiftPaceRight(const PaceBaseOne: Integer; var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  AArrMath.Shift(False,PaceBaseOne,num);
  SetLength(num,i);
end;

function AssignNum(const num: Number): Number;
begin
  Result:=nil;
  AArrMath.AssignIntNum(num,Result);
end;

{ Arr-Math }

function ConditionInt(Num1: IntArr; Symbol: String; Num2: IntArr): Boolean;
var
  Cal:IntArr;
  i:Integer;
  Bool1:Boolean;
  AMode:Byte;
begin
  Result:=False;
  if(Length(Num1)=0)and(Length(Num2)=0)then begin
    Result:=True;
    Exit;
  end else
  if(Length(Num1)=0)or(Length(Num2)=0)then Exit;
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

  Cal:=SumSubInt(Num1,MulDivInt(InitInt('-1'),Num2));
  AMode:=isPositiveIntAdvance(Cal);
  if((Symbol='=')or(Symbol='=='))and(AMode=2)then Result:=True else
  if((Symbol='<>')or(Symbol='!=')or(Symbol='=!'))and((AMode=0)or(AMode=1))then Result:=True else
  if(Symbol='>')and(AMode=1)then Result:=True else
  if(Symbol='<')and(AMode=0)then Result:=True else
  if((Symbol='>=')or(Symbol='=>'))and((AMode=1)or(AMode=2))then Result:=True else
  if((Symbol='<=')or(Symbol='=<'))and((AMode=0)or(AMode=2))then Result:=True;
  SetLength(Cal,0);
end;

function InRangeInt(var varNum: IntArr; fromNum, ToNum, PaceNum: IntArr
  ): Boolean;
var
  TArr1,TArr2:IntArr;
begin
  Result:=False;
  if(Length(varNum)=0)then Exit;
  TArr1:=nil;
  TArr2:=nil;
  if(ConditionInt(fromNum,'<=',ToNum)=True)then begin
    TArr1:=AssignNum(fromNum);
    TArr2:=AssignNum(ToNum);
  end else begin
    TArr1:=AssignNum(ToNum);
    TArr2:=AssignNum(fromNum);
  end;
  if(ConditionInt(varNum,'<',TArr1)=True)or(ConditionInt(varNum,'>',TArr2)=True)then Exit;
  if(ConditionInt(PaceNum,'<',InitInt('0'))=True)then PaceNum:=MulDivInt(PaceNum,InitInt('-1'));
  if(ConditionInt(fromNum,'>',ToNum)=True)then PaceNum:=MulDivInt(PaceNum,InitInt('-1'));
  varNum:=SumSubInt(varNum,PaceNum);
  Result:=True;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
end;

function InRangeInt(var varNum: IntArr; fromNum, ToNum: IntArr): Boolean;
begin
  Result:=InRangeInt(varNum,fromNum,ToNum,InitInt('1'));
end;

function IntToBitStr(const num: IntArr): String;
begin
  Result:='';
  if(Length(num)=0)then Exit;
  AArrMath.BitsToStr(num,Result);
end;

function isIntZero(const num: IntArr): Boolean;
var
  TArr1:IntArr;
begin
  Result:=False;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  AArrMath.SetInt(num,TArr1);
  AArrMath.Shift(True,False,TArr1);
  Result:=AArrMath.isIntZero(TArr1);
  SetLength(TArr1,0);
end;

function isPositiveIntAdvance(const num: IntArr): Byte;
var
  TArr1:IntArr;
begin
  Result:=3;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  AArrMath.SetInt(num,TArr1);
  Result:=AArrMath.isPositiveAd(TArr1);
  SetLength(TArr1,0);
end;

function isPositiveInt(const num: IntArr): Boolean;
var
  TArr1:IntArr;
begin
  Result:=False;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  AArrMath.SetInt(num,TArr1);
  Result:=AArrMath.isPositive(TArr1);
  SetLength(TArr1,0);
end;

procedure SetZeroInt(var num: IntArr);
begin
  num:=InitInt('0');
end;

function SumSubInt(const num1, num2: IntArr): IntArr;
begin
  Result:=nil;
  AArrMath.SumSubInt(num1,num2,Result);
end;

procedure SumSubInt(const num1, num2: IntArr; var AAnswer: IntArr);
begin
  AArrMath.SumSubInt(num1,num2,AAnswer);
end;

function MulDivInt(const num1, num2: IntArr; const doMul: Boolean): IntArr;
begin
  Result:=nil;
  AArrMath.MulDivInt(num1,num2,Result,doMul);
end;

procedure MulDivInt(const num1, num2: IntArr; var AAnswer: IntArr;
  const doMul: Boolean);
begin
  AArrMath.MulDivInt(num1,num2,AAnswer,doMul);
end;

function InitInt(const num: String): IntArr;
begin
  Result:=nil;
  AArrMath.StrToIntArr(num,Result);
end;

function IntStr(const num: IntArr): String;
begin
  Result:='';
  AArrMath.IntArrToStr(num,Result);
end;

function IntMod(const num1, num2: IntArr): IntArr;
begin
  Result:=nil;
  AArrMath.IntArrMod(num1,num2,Result);
end;

{ RealArr-Math }

function ConditionReal(Num1: RealArr; Symbol: String; Num2: RealArr): Boolean;
var
  Cal:RealArr;
  i:Integer;
  Bool1:Boolean;
  AMode:Byte;
begin
  Cal:=nil;
  Result:=False;
  if(Length(Num1)=0)and(Length(Num2)=0)then begin
    Result:=True;
    Exit;
  end else
  if(Length(Num1)=0)or(Length(Num2)=0)then Exit;
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

  Cal:=SumSubReal(Num1,MulDivReal(InitReal('-1'),Num2));
  AMode:=isPositiveRealAdvance(Cal);
  if((Symbol='=')or(Symbol='=='))and(AMode=2)then Result:=True else
  if((Symbol='<>')or(Symbol='!=')or(Symbol='=!'))and((AMode=0)or(AMode=1))then Result:=True else
  if(Symbol='>')and(AMode=1)then Result:=True else
  if(Symbol='<')and(AMode=0)then Result:=True else
  if((Symbol='>=')or(Symbol='=>'))and((AMode=1)or(AMode=2))then Result:=True else
  if((Symbol='<=')or(Symbol='=<'))and((AMode=0)or(AMode=2))then Result:=True;
  SetLength(Cal,0);
end;

function InRangeReal(var varNum: RealArr; fromNum, ToNum, PaceNum: RealArr
  ): Boolean;
var
  TArr1,TArr2,TArr3,TArr4,TArr5,TArr6:RealArr;
begin
  Result:=False;
  if(Length(varNum)=0)then Exit;
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  TArr4:=nil;
  TArr5:=nil;
  TArr6:=nil;
  if(ConditionReal(fromNum,'<=',ToNum)=True)then begin
    TArr1:=AssignNum(fromNum);
    TArr2:=AssignNum(ToNum);

    if(ConditionReal(fromNum,'<',InitReal('0'))=True)then
      TArr4:=MulDivReal(fromNum,InitReal('-1'))
    else
      TArr4:=AssignNum(fromNum);

    if(ConditionReal(ToNum,'<',InitReal('0'))=True)then
      TArr5:=MulDivReal(ToNum,InitReal('-1'))
    else
      TArr5:=AssignNum(ToNum);
  end else begin
    TArr1:=AssignNum(ToNum);
    TArr2:=AssignNum(fromNum);

    if(ConditionReal(ToNum,'<',InitReal('0'))=True)then
      TArr4:=MulDivReal(ToNum,InitReal('-1'))
    else
      TArr4:=AssignNum(ToNum);

    if(ConditionReal(fromNum,'<',InitReal('0'))=True)then
      TArr5:=MulDivReal(fromNum,InitReal('-1'))
    else
      TArr5:=AssignNum(fromNum);
  end;

  if(ConditionReal(PaceNum,'<',InitReal('0'))=True)then
    TArr3:=MulDivReal(PaceNum,InitReal('-1'))
  else
    TArr3:=AssignNum(PaceNum);

  TArr6:=MulDivReal(TArr4,InitReal('-1'));
  TArr6:=SumSubReal(TArr5,TArr6);
  TArr6:=MulDivReal(MulDivReal(TArr3,TArr6),SumSubReal(TArr6,TArr3),False);
  if(Length(TArr6)<>0)then TArr3:=AssignNum(TArr6);

  if(ConditionReal(varNum,'<',TArr1)=True)or(ConditionReal(varNum,'>',TArr2)=True)then Exit;
  if(ConditionReal(PaceNum,'<',InitReal('0'))=True)then PaceNum:=MulDivReal(TArr3,InitReal('-1'));
  if(ConditionReal(fromNum,'>',ToNum)=True)then PaceNum:=MulDivReal(TArr3,InitReal('-1'));
  varNum:=SumSubReal(varNum,PaceNum);
  Result:=True;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

function InRangeReal(var varNum: RealArr; fromNum, ToNum: RealArr): Boolean;
begin
  Result:=InRangeReal(varNum,fromNum,ToNum,InitReal('1.0'));
end;

function RealToBitStr(const num: RealArr): String;
var
  i:Integer;
  Str1,Str2:String;
  bool1:Boolean;
  TArr1,TArr2:IntArr;
begin
  Result:='nil';
  Str1:='';
  Str2:='';
  TArr1:=nil;
  TArr2:=nil;
  Str1:=RealStr(num);
  bool1:=False;
  for i:=1 to Length(Str1)do begin
    if(Str1[i]='.')then begin
      Str2:=Copy(Str1,i+1,Length(Str1));
      Str1:=Copy(Str1,1,i-1);
      bool1:=True;
      break;
    end;
  end;
  if(bool1=False)then Exit;
  TArr1:=InitInt(Str1);
  TArr2:=InitInt(Str2);
  Str1:=IntToBitStr(TArr1);
  Str2:=IntToBitStr(TArr2);
  Result:=Str2+'.'+Str1;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
end;

function IntReal(const num: IntArr): RealArr;
begin
  Result:=nil;
  ARealMath.IntArrToRealArrEqual(num,Result);
end;

function RoundReal(const num: RealArr): IntArr;
begin
  Result:=nil;
  ARealMath.RealArrToIntArrRound(num,Result);
end;

function RoundRealR(const num: RealArr): IntArr;
begin
  Result:=nil;
  ARealMath.RRR(num,Result);
end;

function RealDeciCountBaseOne(const num: RealArr): Integer;
begin
  Result:=ARealMath.GetDeciCountBaseOne(num);
end;

function CutRealDeciCountBaseOne(const num: RealArr; const CutAt: Integer
  ): RealArr;
begin
  Result:=AssignNum(num);
  ARealMath.RealCutDeciCountBaseOne(Result,CutAt);
end;

function CutRealDeciCountBaseOneR(const num: RealArr; const CutAt: Integer
  ): RealArr;
begin
  Result:=AssignNum(num);
  ARealMath.RealCutDeciCountBaseOneR(Result,CutAt);
end;

function isPositiveRealAdvance(const num: RealArr): Byte;
var
  TArr1:RealArr;
begin
  Result:=3;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  AArrMath.SetInt(num,TArr1);
  Result:=ARealMath.isPositiveAd(TArr1);
  SetLength(TArr1,0);
end;

function isPositiveReal(const num: RealArr): Boolean;
var
  TArr1:RealArr;
begin
  Result:=False;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  AArrMath.SetInt(num,TArr1);
  Result:=ARealMath.isPositive(TArr1);
  SetLength(TArr1,0);
end;

function SumSubRealO(const num1, num2: RealArr): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num1);
  Int2:=ARealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.SumSubReal(num1,num2,Result,Int3);
end;

procedure SumSubRealO(const num1, num2: RealArr; var AAnswer: RealArr);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num1);
  Int2:=ARealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.SumSubReal(num1,num2,AAnswer,Int3);
end;

function SumSubRealO(const num1, num2: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
begin
  Result:=nil;
  ARealMath.SumSubReal(num1,num2,Result,DeciCountBaseOne);
end;

procedure SumSubRealO(const num1, num2: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
begin
  ARealMath.SumSubReal(num1,num2,AAnswer,DeciCountBaseOne);
end;

function MulDivRealO(const num1, num2: RealArr; const doMul: Boolean): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num1);
  Int2:=ARealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.MulDivReal(num1,num2,Result,doMul,Int3);
end;

procedure MulDivRealO(const num1, num2: RealArr; var AAnswer: RealArr;
  const doMul: Boolean);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num1);
  Int2:=ARealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.MulDivReal(num1,num2,AAnswer,doMul,Int3);
end;

function MulDivRealO(const num1, num2: RealArr; const DeciCountBaseOne: Integer;
  const doMul: Boolean): RealArr;
begin
  Result:=nil;
  ARealMath.MulDivReal(num1,num2,Result,doMul,DeciCountBaseOne);
end;

procedure MulDivRealO(const num1, num2: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer; const doMul: Boolean);
begin
  ARealMath.MulDivReal(num1,num2,AAnswer,doMul,DeciCountBaseOne);
end;

function SumSubReal(const num1, num2: RealArr): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num1);
  Int2:=ARealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.SumSubReal(num1,num2,Result,Int3+1);
  ARealMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

procedure SumSubReal(const num1, num2: RealArr; var AAnswer: RealArr);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num1);
  Int2:=ARealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.SumSubReal(num1,num2,AAnswer,Int3+1);
  ARealMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
end;

function SumSubReal(const num1, num2: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
begin
  Result:=nil;
  ARealMath.SumSubReal(num1,num2,Result,DeciCountBaseOne+1);
  ARealMath.RealCutDeciCountBaseOneR(Result,DeciCountBaseOne);
end;

procedure SumSubReal(const num1, num2: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
begin
  ARealMath.SumSubReal(num1,num2,AAnswer,DeciCountBaseOne+1);
  ARealMath.RealCutDeciCountBaseOneR(AAnswer,DeciCountBaseOne);
end;

function MulDivReal(const num1, num2: RealArr; const doMul: Boolean): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num1);
  Int2:=ARealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.MulDivReal(num1,num2,Result,doMul,Int3+1);
  ARealMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

procedure MulDivReal(const num1, num2: RealArr; var AAnswer: RealArr;
  const doMul: Boolean);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num1);
  Int2:=ARealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.MulDivReal(num1,num2,AAnswer,doMul,Int3+1);
  ARealMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
end;

function MulDivReal(const num1, num2: RealArr;
  const DeciCountBaseOne: Integer; const doMul: Boolean): RealArr;
begin
  Result:=nil;
  ARealMath.MulDivReal(num1,num2,Result,doMul,DeciCountBaseOne+1);
  ARealMath.RealCutDeciCountBaseOneR(Result,DeciCountBaseOne);
end;

procedure MulDivReal(const num1, num2: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer; const doMul: Boolean);
begin
  ARealMath.MulDivReal(num1,num2,AAnswer,doMul,DeciCountBaseOne+1);
  ARealMath.RealCutDeciCountBaseOneR(AAnswer,DeciCountBaseOne);
end;

function lnReal(const num: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+5;
  ARealMath.lynRealR(num,Result,Int1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1-5);
end;

procedure lnReal(const num: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+5;
  ARealMath.lynRealR(num,AAnswer,Int1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1-5);
end;

function lnReal(const num: RealArr; const DeciCountBaseOne: Integer): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+5;
  ARealMath.lynRealR(num,Result,Int1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1-5);
end;

procedure lnReal(const num: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+5;
  ARealMath.lynRealR(num,AAnswer,Int1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1-5);
end;

function logReal(const num: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  ARealMath.logaReal(num,InitReal('10.0'),Result,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure logReal(const num: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  ARealMath.logaReal(num,InitReal('10.0'),AAnswer,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function logReal(const num: RealArr; const DeciCountBaseOne: Integer): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  ARealMath.logaReal(num,InitReal('10.0'),Result,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure logReal(const num: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  ARealMath.logaReal(num,InitReal('10.0'),AAnswer,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function logReal(const num, base: RealArr): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  Int2:=ARealMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.logaReal(num,base,Result,Int3+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int3);
end;

procedure logReal(const num, base: RealArr; var AAnswer: RealArr);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  Int2:=ARealMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  ARealMath.logaReal(num,base,AAnswer,Int3+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int3);
end;

function logReal(const num, base: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  Int2:=ARealMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  ARealMath.logaReal(num,base,Result,Int3+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int3);
end;

procedure logReal(const num, base: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  Int2:=ARealMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  ARealMath.logaReal(num,base,AAnswer,Int3+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int3);
end;

function SqrRootReal(const num: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  ARealMath.Root2Real(num,Result,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure SqrRootReal(const num: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  ARealMath.Root2Real(num,AAnswer,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function SqrRootReal(const num: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  ARealMath.Root2Real(num,Result,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure SqrRootReal(const num: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  ARealMath.Root2Real(num,AAnswer,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function SineReal(const Degrees: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=ARealMath.SinReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure SineReal(const Degrees: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=ARealMath.SinReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function SineReal(const Degrees: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=ARealMath.SinReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure SineReal(const Degrees: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=ARealMath.SinReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function CosineReal(const Degrees: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=ARealMath.CosReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure CosineReal(const Degrees: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=ARealMath.CosReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function CosineReal(const Degrees: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=ARealMath.CosReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure CosineReal(const Degrees: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=ARealMath.CosReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function TangentReal(const Degrees: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=ARealMath.TanReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure TangentReal(const Degrees: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=ARealMath.TanReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function TangentReal(const Degrees: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=ARealMath.TanReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure TangentReal(const Degrees: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=ARealMath.TanReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InSineReal(const SineX: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=ARealMath.InSinReal(SineX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InSineReal(const SineX: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=ARealMath.InSinReal(SineX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InSineReal(const SineX: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=ARealMath.InSinReal(SineX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InSineReal(const SineX: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=ARealMath.InSinReal(SineX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InCosineReal(const CosineX: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=ARealMath.InCosReal(CosineX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InCosineReal(const CosineX: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=ARealMath.InCosReal(CosineX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InCosineReal(const CosineX: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=ARealMath.InCosReal(CosineX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InCosineReal(const CosineX: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=ARealMath.InCosReal(CosineX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InTangentReal(const TangentX: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=ARealMath.InTanReal(TangentX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InTangentReal(const TangentX: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=ARealMath.InTanReal(TangentX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InTangentReal(const TangentX: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=ARealMath.InTanReal(TangentX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InTangentReal(const TangentX: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=ARealMath.InTanReal(TangentX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function ePowerReal(const Power: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=ARealMath.ePowerX(Power,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure ePowerReal(const Power: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=ARealMath.ePowerX(Power,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function ePowerReal(const Power: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=ARealMath.ePowerX(Power,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure ePowerReal(const Power: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=ARealMath.ePowerX(Power,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function xPowerReal(const Base, Power: RealArr): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Base);
  Int2:=ARealMath.GetDeciCountBaseOne(Power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Result:=ARealMath.xPower(base,power,Int3+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int3);
end;

procedure xPowerReal(const Base, Power: RealArr; var AAnswer: RealArr);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Base);
  Int2:=ARealMath.GetDeciCountBaseOne(Power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  AAnswer:=ARealMath.xPower(base,power,Int3+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int3);
end;

function xPowerReal(const Base, Power: RealArr; const DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=ARealMath.GetDeciCountBaseOne(Base);
  Int2:=ARealMath.GetDeciCountBaseOne(Power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Result:=ARealMath.xPower(base,power,Int3+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int3);
end;

procedure xPowerReal(const Base, Power: RealArr; var AAnswer: RealArr;
  const DeciCountBaseOne: Integer);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=ARealMath.GetDeciCountBaseOne(Base);
  Int2:=ARealMath.GetDeciCountBaseOne(Power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  AAnswer:=ARealMath.xPower(base,power,Int3+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int3);
end;

function InitReal(const num: String): RealArr;
begin
  Result:=nil;
  ARealMath.StrToRealArr(num,Result);
end;

function RealStr(const num: RealArr): String;
begin
  Result:='';
  ARealMath.RealArrToStr(num,Result);
end;

function RealMod(const num1, num2: RealArr): RealArr;
begin
  Result:=nil;
  ARealMath.RealArrMod(num1,num2,Result);
end;

{ String-Math }

function Condition(Num1, Symbol, Num2: String): Boolean;
var
  Cal:String;
  i:Integer;
  Bool1:Boolean;
  AMode:Byte;
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

  Cal:=SumSub(Num1,MulDiv('-1',Num2));
  AMode:=AStrMath.isPositiveAd(Cal);
  if((Symbol='=')or(Symbol='=='))and(AMode=2)then Result:=True else
  if((Symbol='<>')or(Symbol='!=')or(Symbol='=!'))and((AMode=0)or(AMode=1))then Result:=True else
  if(Symbol='>')and(AMode=1)then Result:=True else
  if(Symbol='<')and(AMode=0)then Result:=True else
  if((Symbol='>=')or(Symbol='=>'))and((AMode=1)or(AMode=2))then Result:=True else
  if((Symbol='<=')or(Symbol='=<'))and((AMode=0)or(AMode=2))then Result:=True;
  Cal:='';
end;

function InRange(var varNum: String; fromNum, ToNum, PaceNum: String): Boolean;
var
  TArr1,TArr2,TArr3,TArr4,TArr5,TArr6:String;
begin
  Result:=False;
  if(varNum<>'')or(varNum<>'nil')then Exit;
  TArr1:='';
  TArr2:='';
  TArr3:='';
  TArr4:='';
  TArr5:='';
  TArr6:='';
  if(Condition(fromNum,'<=',ToNum)=True)then begin
    TArr1:=fromNum;
    TArr2:=ToNum;

    if(Condition(fromNum,'<','0')=True)then
      TArr4:=MulDiv(fromNum,'-1')
    else
      TArr4:=fromNum;

    if(Condition(ToNum,'<','0')=True)then
      TArr5:=MulDiv(ToNum,'-1')
    else
      TArr5:=ToNum;
  end else begin
    TArr1:=ToNum;
    TArr2:=fromNum;

    if(Condition(ToNum,'<','0')=True)then
      TArr4:=MulDiv(ToNum,'-1')
    else
      TArr4:=ToNum;

    if(Condition(fromNum,'<','0')=True)then
      TArr5:=MulDiv(fromNum,'-1')
    else
      TArr5:=fromNum;
  end;

  if(Condition(PaceNum,'<','0')=True)then
    TArr3:=MulDiv(PaceNum,'-1')
  else
    TArr3:=PaceNum;

  TArr6:=MulDiv(TArr4,'-1');
  TArr6:=SumSub(TArr5,TArr6);
  TArr6:=MulDiv(MulDiv(TArr3,TArr6),SumSub(TArr6,TArr3),False);
  if(TArr6<>'')or(TArr6<>'nil')then TArr3:=TArr6;

  if(Condition(varNum,'<',TArr1)=True)or(Condition(varNum,'>',TArr2)=True)then Exit;
  if(Condition(PaceNum,'<','0')=True)then PaceNum:=MulDiv(TArr3,'-1');
  if(Condition(fromNum,'>',ToNum)=True)then PaceNum:=MulDiv(TArr3,'-1');
  varNum:=SumSub(varNum,PaceNum);
  Result:=True;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

function InRange(var varNum: String; fromNum, ToNum: String): Boolean;
begin
  Result:=InRange(varNum,fromNum,ToNum,'1.0');
end;

function isNaN(const NumV: String): Boolean;
var
  NV:String;
begin
  NV:=AStrMath.CleanNum(NumV);
  if(NV='nan')then Result:=True
  else Result:=False;
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
  Cal:=SumSub(N1,MulDiv('-1',N2));
  if(AStrMath.isPositiveAd(Cal)=1)then Result:=1 else
  if(AStrMath.isPositiveAd(Cal)=0)then Result:=0 else
  if(AStrMath.isPositiveAd(Cal)=2)then Result:=2;
end;

function SumSub(const Num1, Num2: String): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num1);
  Int2:=AStrMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Result:=AStrMath.SumSub(Num1,Num2);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function MulDiv(const Num1, Num2: String; const doMul: Boolean): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num1);
  Int2:=AStrMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Result:=AStrMath.MulDiv(Num1,Num2,Int3+1,doMul);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function SumSub(const Num1, Num2: String; out AAnswer: String): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num1);
  Int2:=AStrMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  AAnswer:=AStrMath.SumSub(Num1,Num2);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function MulDiv(const Num1, Num2: String; out AAnswer: String;
  const doMul: Boolean): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num1);
  Int2:=AStrMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  AAnswer:=AStrMath.MulDiv(Num1,Num2,Int3+1,doMul);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function SumSub(const Num1, Num2: String; const DeciCountBaseOne: Integer
  ): String;
begin
  Result:='';
  Result:=AStrMath.SumSub(Num1,Num2);
  AStrMath.RealCutDeciCountBaseOneR(Result,DeciCountBaseOne);
end;

function MulDiv(const Num1, Num2: String; const DeciCountBaseOne: Integer;
  const doMul: Boolean): String;
begin
  Result:='';
  Result:=AStrMath.MulDiv(Num1,Num2,DeciCountBaseOne+1,doMul);
  AStrMath.RealCutDeciCountBaseOneR(Result,DeciCountBaseOne);
end;

function SumSub(const Num1, Num2: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
begin
  AAnswer:='';
  AAnswer:=AStrMath.SumSub(Num1,Num2);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,DeciCountBaseOne);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function MulDiv(const Num1, Num2: String; out AAnswer: String;
  const DeciCountBaseOne: Integer; const doMul: Boolean): Boolean;
begin
  AAnswer:='';
  AAnswer:=AStrMath.MulDiv(Num1,Num2,DeciCountBaseOne+1,doMul);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,DeciCountBaseOne);
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
  for i:=1 to Length(Num)do if(((Num[i]='0')or(Num[i]='1'))=False)then Exit;
  if(AStrMath.RR(Length(Num)/8)<>(Length(Num)/8))then Exit;
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
    if(IsInt(BigN)=False)then Result:='1'+Result else Result:='0'+Result;
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
    if(IsInt(BigN)=False)then AAnswer:='1'+AAnswer else AAnswer:='0'+AAnswer;
    BigN:=ToInt(BigN);
  end;
  While(AStrMath.RR(Length(AAnswer)/8)<>(Length(AAnswer)/8))do AAnswer:='0'+AAnswer;
  Result:=True;
end;

function BinaryToInt(const Num: String): String;
var
  i:Integer;
begin
  Result:='0';
  if(isBinary(Num)=False)then Exit;
  if(Num[Length(Num)]='0')then Result:='0' else Result:='1';
  for i:=1 to (Length(Num)-1)do
    Result:=SumSub(Result,xPower(MulDiv(Num[i],'2'),IntToStr(Length(Num)-i)));
end;

function BinaryToInt(const Num: String; out AAnswer: String): Boolean;
var
  i:Integer;
begin
  Result:=False;
  AAnswer:='0';
  if(isBinary(Num)=False)then Exit;
  if(Num[Length(Num)]='0')then AAnswer:='0' else AAnswer:='1';
  for i:=1 to (Length(Num)-1)do
    AAnswer:=SumSub(AAnswer,xPower(MulDiv(Num[i],'2'),IntToStr(Length(Num)-i)));
  Result:=True;
end;

function ln(const x: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.lnx(x,Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function ln(const x: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.lnx(x,Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ln(const x: String; const DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.lnx(x,Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function ln(const x: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.lnx(x,Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.log(num,'10',Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function log(const num: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.log(num,'10',Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num: String; const DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.log(num,'10',Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function log(const num: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.log(num,'10',Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num, Base: String): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num);
  Int2:=AStrMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Result:=AStrMath.log(num,base,Int3+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function log(const num, Base: String; out AAnswer: String): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num);
  Int2:=AStrMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  AAnswer:=AStrMath.log(num,Base,Int3+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num, Base: String; const DeciCountBaseOne: Integer): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num);
  Int2:=AStrMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Result:=AStrMath.log(num,base,Int3+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function log(const num, Base: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(num);
  Int2:=AStrMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  AAnswer:=AStrMath.log(num,Base,Int3+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function SqrRoot(const x: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.SqrRoot(x,Int1+2);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function SqrRoot(const x: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.SqrRoot(x,Int1+2);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function SqrRoot(const x: String; const DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.SqrRoot(x,Int1+2);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function SqrRoot(const x: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.SqrRoot(x,Int1+2);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Sine(const Degrees: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.Sine(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Sine(const Degrees: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.Sine(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Sine(const Degrees: String; const DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.Sine(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Sine(const Degrees: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.Sine(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Cosine(const Degrees: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.Cosine(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Cosine(const Degrees: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.Cosine(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Cosine(const Degrees: String; const DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.Cosine(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Cosine(const Degrees: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.Cosine(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Tangent(const Degrees: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.Tangent(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Tangent(const Degrees: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.Tangent(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Tangent(const Degrees: String; const DeciCountBaseOne: Integer
  ): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.Tangent(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Tangent(const Degrees: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.Tangent(Degrees,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InSine(const SineX: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.InSine(SineX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InSine(const SineX: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.InSine(SineX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InSine(const SineX: String; const DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.InSine(SineX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InSine(const SineX: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.InSine(SineX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InCosine(const CosineX: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.InCosine(CosineX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InCosine(const CosineX: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.InCosine(CosineX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InCosine(const CosineX: String; const DeciCountBaseOne: Integer
  ): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.InCosine(CosineX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InCosine(const CosineX: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.InCosine(CosineX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InTangent(const TangentX: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.InTangent(TangentX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InTangent(const TangentX: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.InTangent(TangentX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InTangent(const TangentX: String; const DeciCountBaseOne: Integer
  ): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.InTangent(TangentX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InTangent(const TangentX: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.InTangent(TangentX,Int1+1);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ePower(const Power: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Result:=AStrMath.ePowerX(Power,Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function ePower(const Power: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  AAnswer:=AStrMath.ePowerX(Power,Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ePower(const Power: String; const DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Result:=AStrMath.ePowerX(Power,Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function ePower(const Power: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  AAnswer:=AStrMath.ePowerX(Power,Int1+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function xPower(const Base, Power: String): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(base);
  Int2:=AStrMath.GetDeciCountBaseOne(power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Result:=AStrMath.xPower(Base,Power,Int3+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function xPower(const Base, Power: String; out AAnswer: String): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(base);
  Int2:=AStrMath.GetDeciCountBaseOne(power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  AAnswer:=AStrMath.xPower(Base,Power,Int3+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function xPower(const Base, Power: String; const DeciCountBaseOne: Integer
  ): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=AStrMath.GetDeciCountBaseOne(base);
  Int2:=AStrMath.GetDeciCountBaseOne(power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Result:=AStrMath.xPower(Base,Power,Int3+10);
  AStrMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function xPower(const Base, Power: String; out AAnswer: String;
  const DeciCountBaseOne: Integer): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=AStrMath.GetDeciCountBaseOne(base);
  Int2:=AStrMath.GetDeciCountBaseOne(power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  AAnswer:=AStrMath.xPower(Base,Power,Int3+10);
  AStrMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function xMod(const num1, num2: String): String;
begin
  Result:=AStrMath.xModX(num1,num2);
end;

{ RealMath }

constructor RealMath.Create;
begin
  self.TTL:=ArrMath.Create;
end;

destructor RealMath.Destroy;
begin
  inherited Destroy;
  self.TTL.Free;
end;

function RealMath.CheckIntegrity(num: RealArr): Boolean;
begin
  Result:=True;
  if(Length(num)<=4)then Result:=False else
  if(Length(num)<6)then Result:=False;
end;

function RealMath.DigitStr(const AStr: String): Boolean;
begin
  Result:=False;
  if(AStr='0')then Result:=True else
  if(AStr='1')then Result:=True else
  if(AStr='2')then Result:=True else
  if(AStr='3')then Result:=True else
  if(AStr='4')then Result:=True else
  if(AStr='5')then Result:=True else
  if(AStr='6')then Result:=True else
  if(AStr='7')then Result:=True else
  if(AStr='8')then Result:=True else
  if(AStr='9')then Result:=True else
  if(AStr='.')then Result:=True;
end;

procedure RealMath.CombineArr(FromNum1, FromNum2: IntArr; var ToNum: RealArr;
  var NumAt: IntArr);
var
  i:Integer;
  TArr1:RealArr;
  TArr2,TArr3:IntArr;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  self.TTL.StrToIntArr('-1',NumAt);
  self.TTL.StrToIntArr('1',TArr3);
  for i:=0 to (Length(FromNum1)-1)do begin
    SetLength(TArr1,Length(TArr1)+1);
    TArr1[Length(TArr1)-1]:=FromNum1[i];

    self.TTL.SetInt(NumAt,TArr2);
    self.TTL.SumSubInt(TArr2,TArr3,NumAt);
  end;
  for i:=0 to (Length(FromNum2)-1)do begin
    SetLength(TArr1,Length(TArr1)+1);
    TArr1[Length(TArr1)-1]:=FromNum2[i];
  end;
  SetLength(ToNum,Length(TArr1));
  for i:=0 to (Length(TArr1)-1)do ToNum[i]:=TArr1[i];
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

function RealMath.SplitArr(var FromNum1, FromNum2: IntArr;
  const ToNum: RealArr; const NumAt: IntArr): Boolean;
var
  i:Integer;
  TArr2,TArr3:IntArr;
begin
  Result:=False;
  TArr2:=nil;
  TArr3:=nil;
  SetLength(FromNum1,0);
  SetLength(FromNum2,0);

  self.TTL.StrToIntArr(IntToStr(Length(ToNum)-1),TArr2);
  self.TTL.StrToIntArr('-1',TArr3);
  if(ConditionInt(NumAt,'<=',TArr3)=True)then Exit;
  if(ConditionInt(NumAt,'>=',TArr2)=True)then Exit;

  self.TTL.StrToIntArr('0',TArr2);
  self.TTL.StrToIntArr('0',TArr3);
  i:=0;
  While(InRangeInt(TArr2,TArr3,NumAt)=True)do begin
    SetLength(FromNum1,Length(FromNum1)+1);
    FromNum1[Length(FromNum1)-1]:=ToNum[i];
    i:=i+1;
  end;
  for i:=Length(FromNum1) to (Length(ToNum)-1)do begin
    SetLength(FromNum2,Length(FromNum2)+1);
    FromNum2[Length(FromNum2)-1]:=ToNum[i];
  end;
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  Result:=True;
end;

procedure RealMath.CombineIntToArr(FromNum: IntArr; var ToNum: RealArr);
var
  i:Integer;
  TArr1:RealArr;
begin
  SetLength(FromNum,4);
  TArr1:=nil;
  for i:=0 to (Length(FromNum)-1)do begin
    SetLength(TArr1,Length(TArr1)+1);
    TArr1[Length(TArr1)-1]:=FromNum[i];
  end;
  for i:=0 to (Length(ToNum)-1)do begin
    SetLength(TArr1,Length(TArr1)+1);
    TArr1[Length(TArr1)-1]:=ToNum[i];
  end;
  SetLength(ToNum,Length(TArr1));
  for i:=0 to (Length(TArr1)-1)do ToNum[i]:=TArr1[i];
  SetLength(TArr1,0);
end;

procedure RealMath.SplitIntToArr(var FromNum: IntArr; var ToNum: RealArr);
var
  i:Integer;
  TArr1:RealArr;
begin
  SetLength(FromNum,4);
  for i:=0 to 3 do FromNum[i]:=ToNum[i];
  TArr1:=nil;
  for i:=4 to (Length(ToNum)-1)do begin
    SetLength(TArr1,Length(TArr1)+1);
    TArr1[Length(TArr1)-1]:=ToNum[i];
  end;
  SetLength(ToNum,Length(TArr1));
  for i:=0 to (Length(TArr1)-1)do ToNum[i]:=TArr1[i];
  SetLength(TArr1,0);
end;

procedure RealMath.StrToRealArr(AStr: String; var numResult: RealArr);
var
  bool1,bool2:Boolean;
  WholeN,DeciN,OneAll:String;
  i,CountA:Integer;
  TArr1,TArr2,TArr3:IntArr;
begin
  SetLength(numResult,0);
  bool1:=False;
  if(AStr[1]='-')then begin
    AStr:=Copy(AStr,2,Length(AStr));
    bool1:=True;
  end else
  if(AStr[1]='+')then AStr:=Copy(AStr,2,Length(AStr));

  CountA:=0;
  for i:=1 to Length(AStr)do begin
    if(AStr[i]='.')then CountA:=CountA+1;
  end;
  if(CountA>1)then Exit;

  for i:=1 to Length(AStr)do if(self.DigitStr(AStr[i])=False)then Exit;

  bool2:=False;
  for i:=1 to Length(AStr)do begin
    if(AStr[i]='.')then begin
      bool2:=True;
      WholeN:=Copy(AStr,1,i-1);
      DeciN:=Copy(AStr,i+1,Length(AStr));
      break;
    end;
  end;
  if(bool2=False)then begin
    WholeN:=AStr;
    DeciN:='0';
  end;
  if(WholeN='')then WholeN:='0';
  if(DeciN='')then DeciN:='0';

  bool2:=False;
  for i:=Length(DeciN)downto 1 do begin
    if(DeciN[i]<>'0')then begin
      bool2:=True;
      DeciN:=Copy(DeciN,1,i);
      break;
    end;
  end;
  if(bool2=False)then DeciN:='0';

  bool2:=False;
  OneAll:=WholeN+DeciN;
  self.CutSomeStr(OneAll);
  if(OneAll='0')then bool2:=True;


  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  DeciN:='10'+DeciN;
  self.TTL.StrToIntArr(WholeN,TArr1);
  self.TTL.StrToIntArr(DeciN,TArr2);

  self.CombineArr(TArr1,TArr2,numResult,TArr3);
  self.CombineIntToArr(TArr3,numResult);

  if(bool2=False)then begin
    if(bool1=False)then self.TTL.Shift(False,True,numResult) else
    if(bool1=True)then self.TTL.Shift(False,False,numResult);
  end else begin
    self.TTL.Shift(False,True,numResult);
  end;

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

procedure RealMath.RealArrToStr(num: RealArr; var AStr: String);
var
  TArr1,TArr2,TArr3:IntArr;
  bool1,bool2:Boolean;
  Str1,Str2:String;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  Str1:='';
  Str2:='';
  AStr:='nil';
  if(Length(num)=0)then Exit;
  if(self.TTL.IsBitSet(num[0],0)=True)then bool1:=False else bool1:=True;
  self.TTL.Shift(True,False,num);

  if(self.CheckIntegrity(num)=False)then Exit;
  self.TTL.SetInt(num,TArr3);
  self.TTL.CutSome(TArr3,num);

  self.SplitIntToArr(TArr3,num);
  bool2:=self.SplitArr(TArr1,TArr2,num,TArr3);
  if(bool2=False)then Exit;
  AStr:='';

  self.TTL.IntArrToStr(TArr1,Str1);
  self.TTL.IntArrToStr(TArr2,Str2);

  Str2:=Copy(Str2,3,Length(Str2));
  AStr:=Str1+'.'+Str2;
  if(bool1=True)and(AStr<>'0.0')then AStr:='-'+AStr;

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

procedure RealMath.IntArrToRealArrEqual(num: IntArr; var numResult: RealArr);
var
  StrA:String;
begin
  SetLength(numResult,0);
  StrA:='';
  self.TTL.IntArrToStr(num,StrA);
  StrA:=StrA+'.0';
  self.StrToRealArr(StrA,numResult);
end;

procedure RealMath.RealArrToIntArrRound(num: RealArr; var numResult: IntArr);
var
  StrA:String;
  Str2:String;
  Str3,Str4:String;
  i:Integer;
  TArr1,TArr2:RealArr;
begin
  SetLength(numResult,0);
  if(self.CheckIntegrity(num)=False)then Exit;
  StrA:='';
  self.RealArrToStr(num,StrA);
  if(StrA='nil')then Exit;

  Str2:='';
  for i:=1 to Length(StrA)do begin
    if(StrA[i]='.')then begin
      Str2:=Copy(StrA,i+1,Length(StrA));
      break;
    end;
  end;

  Str4:='';
  for i:=1 to Length(Str2)do begin
    if(i=Length(Str2))then Str4:=Str4+'4'
    else Str4:=Str4+'0';
  end;

  Str3:='';
  for i:=1 to Length(Str2)do begin
    if(i=1)then Str3:=Str3+'4'
    else Str3:=Str3+'0';
  end;

  TArr1:=nil;
  TArr2:=nil;
  self.StrToRealArr('0.'+Str4,TArr2);
  self.SumSubReal(num,TArr2,TArr1,Length(Str4)+1);
  self.StrToRealArr('0.'+Str3,TArr2);
  self.SumSubReal(TArr1,TArr2,num,Length(Str3)+1);
  self.RealArrToStr(num,StrA);
  if(StrA='nil')then Exit;

  for i:=1 to Length(StrA)do begin
    if(StrA[i]='.')then begin
      StrA:=Copy(StrA,1,i-1);
      break;
    end;
  end;
  self.TTL.StrToIntArr(StrA,numResult);
end;

procedure RealMath.RRR(num: RealArr; var numResult: IntArr);
begin
  numResult:=RoundReal(num);
  if(ConditionReal(num,'<',IntReal(numResult))=True)then
    numResult:=SumSubInt(numResult,InitInt('-1'));
end;

procedure RealMath.RealArrRound(var num: RealArr);
var
  TArr1,TArr2,TArr3:RealArr;
  StrA:String;
  Str1,Str2,Str4:String;
  i,j:Integer;
  Int1:Integer;
begin
  if(self.CheckIntegrity(num)=False)then Exit;
  if(self.GetDeciCountBaseOne(num)<=RealDeciLength)then Exit;
  StrA:='';
  Int1:=0;
  TArr3:=nil;
  self.TTL.SetInt(num,TArr3);
  SetLength(num,0);
  self.RealArrToStr(TArr3,StrA);
  if(StrA='nil')then Exit;

  Str1:='';
  Str2:='';
  for i:=1 to Length(StrA)do begin
    if(StrA[i]='.')then begin
      Str1:=Copy(StrA,1,i-1);
      Str2:=Copy(StrA,i+1,Length(StrA));
      Int1:=Length(Str2);
      break;
    end;
  end;

  Str4:='';
  for i:=1 to Length(Str2)do begin
    if(i=Length(Str2))then Str4:=Str4+'4'
    else Str4:=Str4+'0';
  end;

  TArr1:=nil;
  TArr2:=nil;
  self.StrToRealArr('0.'+Str4,TArr2);
  self.SumSubReal(TArr3,TArr2,TArr1,Length(Str4)+1);
  self.RealArrToStr(TArr1,StrA);
  if(StrA='nil')then Exit;

  Str1:='';
  Str2:='';
  for i:=1 to Length(StrA)do begin
    if(StrA[i]='.')then begin
      Str1:=Copy(StrA,1,i-1);
      Str2:=Copy(StrA,i+1,Length(StrA));
      if(Length(Str2)>=(Int1-1))then begin
        Str2:=Copy(Str2,1,Int1-1);
      end else
      if(Length(Str2)<(Int1-1))then begin
        for j:=1 to ((Int1-1)-Length(Str2))do Str2:=Str2+'0';
      end;
      break;
    end;
  end;

  self.StrToRealArr(Str1+'.'+Str2,num);
end;

function RealMath.GetDeciCountBaseOne(num: RealArr): Integer;
var
  StrA:String;
  i:Integer;
begin
  Result:=0;
  StrA:='';
  self.RealArrToStr(num,StrA);
  if(StrA='nil')then Exit;
  for i:=1 to Length(StrA)do begin
    if(StrA[i]='.')then begin
      StrA:=Copy(StrA,i+1,Length(StrA));
      Result:=Length(StrA);
      Exit;
    end;
  end;
  //End...
end;

procedure RealMath.RealCutDeciCountBaseOne(var num: RealArr; CutAt: Integer);
var
  StrA:String;
  Str1,Str2:String;
  i:Integer;
begin
  StrA:='';
  self.RealArrToStr(num,StrA);
  if(StrA='nil')then Exit;
  if(CutAt<1)then CutAt:=1;
  for i:=1 to Length(StrA)do begin
    if(StrA[i]='.')then begin
      Str1:=Copy(StrA,1,i-1);
      Str2:=Copy(StrA,i+1,Length(StrA));
      Str2:=Copy(Str2,1,CutAt);
      self.StrToRealArr(Str1+'.'+Str2,num);
      Exit;
    end;
  end;
  //End...
end;

procedure RealMath.RealCutDeciCountBaseOneR(var num: RealArr; CutAt: Integer);
begin
  if(Length(num)=0)then Exit;
  if(CutAt<1)then CutAt:=1;
  self.RealCutDeciCountBaseOne(num,CutAt+1);
  self.RealArrRound(num);
end;

procedure RealMath.AlignStr(var AStr1, AStr2: String; const APlace: String);
var
  i:Integer;
begin
  if(Length(AStr1)>Length(AStr2))then begin
    for i:=1 to (Length(AStr1)-Length(AStr2))do AStr2:=AStr2+APlace;
  end else
  if(Length(AStr1)<Length(AStr2))then begin
    for i:=1 to (Length(AStr2)-Length(AStr1))do AStr1:=AStr1+APlace;
  end;
end;

procedure RealMath.AlignStrLeft(var AStr1, AStr2: String; const APlace: String);
var
  i:Integer;
begin
  if(Length(AStr1)>Length(AStr2))then begin
    for i:=1 to (Length(AStr1)-Length(AStr2))do AStr2:=APlace+AStr2;
  end else
  if(Length(AStr1)<Length(AStr2))then begin
    for i:=1 to (Length(AStr2)-Length(AStr1))do AStr1:=APlace+AStr1;
  end;
end;

procedure RealMath.CutSomeR(var num: IntArr);
var
  TArr1:IntArr;
begin
  TArr1:=nil;
  self.TTL.SetInt(num,TArr1);
  self.TTL.CutSome(TArr1,num);
end;

procedure RealMath.CutSomeStr(var AStr: String);
var
  i:Integer;
  bool1:Boolean;
begin
  bool1:=False;
  for i:=Length(AStr) downto 1 do begin
    if(AStr[i]<>'0')then begin
      bool1:=True;
      AStr:=Copy(AStr,1,i);
      break;
    end;
  end;
  if(bool1=True)then Exit;
  AStr:='0';
end;

function RealMath.CutSomeStrLeft(AStr: String): String;
begin
  AStr:=self.ReverseStr(AStr);
  self.CutSomeStr(AStr);
  Result:=self.ReverseStr(AStr);
end;

function RealMath.ReverseStr(const AStr: String): String;
var
  i:Integer;
begin
  Result:='';
  for i:=Length(AStr)downto 1 do Result:=Result+AStr[i];
end;

function RealMath.isPositiveAd(num: RealArr): Byte;
var
  TArr1,TArr2,TArr3:IntArr;
  bool1:Boolean;
  bool2,bool3,bool4:Boolean;
  Str1:String;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  bool1:=False;
  bool2:=False;
  bool3:=False;
  bool4:=False;
  Str1:='';

  if(self.TTL.IsBitSet(num[0],0)=True)then bool1:=False else bool1:=True;
  self.TTL.Shift(True,False,num);

  self.SplitIntToArr(TArr3,num);
  self.SplitArr(TArr1,TArr2,num,TArr3);

  Str1:=IntStr(TArr2);
  Str1:=Copy(Str1,3,Length(Str1));
  TArr2:=InitInt(Str1);

  bool2:=isIntZero(TArr1);
  bool3:=isIntZero(TArr2);

  if(bool2=False)and(bool3=False)then bool4:=False else
  if(bool2=True)and(bool3=False)then bool4:=False else
  if(bool2=False)and(bool3=True)then bool4:=False else
  if(bool2=True)and(bool3=True)then bool4:=True;

  if(bool4=False)and(bool1=False)then Result:=1 else
  if(bool4=True)and(bool1=False)then Result:=2 else
  if(bool4=False)and(bool1=True)then Result:=0 else
  if(bool4=True)and(bool1=True)then Result:=2;

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

function RealMath.isPositive(num: RealArr): Boolean;
var
  AMode:Byte;
begin
  AMode:=self.isPositiveAd(num);
  if(AMode=0)then Result:=False else
  if(AMode=1)then Result:=True else Result:=False;
end;

procedure RealMath.SumReal(num1, num2: RealArr; var numResult: RealArr;
  ADeciDigitCountBaseOne: Integer);
var
  TArr1,TArr2,TArr3:IntArr;
  TArr4,TArr5,TArr6:IntArr;
  Str1,Str2,Str3:String;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  TArr4:=nil;
  TArr5:=nil;
  TArr6:=nil;
  Str1:='';
  Str2:='';
  Str3:='';
  SetLength(numResult,0);

  self.SplitIntToArr(TArr3,num1);
  self.SplitArr(TArr1,TArr2,num1,TArr3);

  self.SplitIntToArr(TArr6,num2);
  self.SplitArr(TArr4,TArr5,num2,TArr6);

  self.TTL.IntArrToStr(TArr2,Str1);
  self.TTL.IntArrToStr(TArr5,Str2);

  self.AlignStr(Str1,Str2,'0');
  self.TTL.StrToIntArr(Str1,TArr2);
  self.TTL.StrToIntArr(Str2,TArr5);

  self.TTL.SumSubInt(TArr2,TArr5,TArr6);
  self.TTL.IntArrToStr(TArr6,Str1);
  Str3:=Copy(Str1,3,Length(Str1));
  self.CutSomeStr(Str3);
  if(Length(Str3)>ADeciDigitCountBaseOne)then
    Str3:=Copy(Str3,1,ADeciDigitCountBaseOne);
  if(Str3='')then Str3:='0';
  Str3:='10'+Str3;
  Str1:=Copy(Str1,1,2);
  Str1:=Copy(Str1,2,Length(Str1));

  self.TTL.StrToIntArr(Str3,TArr6);
  self.TTL.StrToIntArr(Str1,TArr5);
  self.TTL.SumSubInt(TArr1,TArr5,TArr2);
  self.TTL.SumSubInt(TArr2,TArr4,TArr3);

  self.CombineArr(TArr3,TArr6,numResult,TArr1);
  self.CombineIntToArr(TArr1,numResult);

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

procedure RealMath.SubReal(num1, num2: RealArr; var numResult: RealArr; out
  NumBiggerMode: Byte; ADeciDigitCountBaseOne: Integer);
var
  TArr1,TArr2,TArr3:IntArr;
  TArr4,TArr5,TArr6:IntArr;
  Str1,Str2,Str3:String;
  Str4,Str5,Str6:String;
  Str7,Str8:String;
  Int1,Int2:Integer;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  TArr4:=nil;
  TArr5:=nil;
  TArr6:=nil;
  Str1:='';
  Str2:='';
  Str3:='';
  Str4:='';
  Str5:='';
  Str6:='';
  Str7:='';
  Str8:='';
  Int1:=0;
  Int2:=0;
  SetLength(numResult,0);

  self.SplitIntToArr(TArr3,num1);
  self.SplitArr(TArr1,TArr2,num1,TArr3);

  self.SplitIntToArr(TArr6,num2);
  self.SplitArr(TArr4,TArr5,num2,TArr6);

  self.TTL.IntArrToStr(TArr1,Str4);
  self.TTL.IntArrToStr(TArr4,Str5);

  self.TTL.IntArrToStr(TArr2,Str1);
  self.TTL.IntArrToStr(TArr5,Str2);

  self.AlignStr(Str1,Str2,'0');
  Str7:=Copy(Str1,3,Length(Str1));
  Str8:=Copy(Str2,3,Length(Str2));
  Str7:=Str4+Str7;
  Str8:=Str5+Str8;
  self.AlignStrLeft(Str7,Str8,'0');
  Str7:='1'+Str7;
  Str8:='1'+Str8;
  self.TTL.StrToIntArr(Str7,TArr3);
  self.TTL.StrToIntArr(Str8,TArr6);

  if(ConditionInt(TArr3,'>',TArr6)=True)then NumBiggerMode:=1 else
  if(ConditionInt(TArr3,'<',TArr6)=True)then NumBiggerMode:=0 else
  if(ConditionInt(TArr3,'=',TArr6)=True)then NumBiggerMode:=2;

  Str1:=Copy(Str1,3,Length(Str1));
  Str2:=Copy(Str2,3,Length(Str2));
  Int1:=Length(Str1);
  Int2:=Length(Str4);
  Str1:=Str4+Str1;
  Str2:=Str5+Str2;
  self.AlignStrLeft(Str1,Str2,'0');

  if(NumBiggerMode>=1)then begin
    Str1:='2'+Str1;
    Str2:='1'+Str2;
    self.TTL.StrToIntArr(Str1,TArr3);
    self.TTL.StrToIntArr(Str2,TArr6);

    self.TTL.StrToIntArr('-1',TArr1);
    self.TTL.MulDivInt(TArr6,TArr1,TArr4,True);
    self.TTL.SumSubInt(TArr3,TArr4,TArr1);
    self.TTL.IntArrToStr(TArr1,Str3);
  end else
  if(NumBiggerMode=0)then begin
    Str1:='1'+Str1;
    Str2:='2'+Str2;
    self.TTL.StrToIntArr(Str1,TArr3);
    self.TTL.StrToIntArr(Str2,TArr6);

    self.TTL.StrToIntArr('-1',TArr1);
    self.TTL.MulDivInt(TArr3,TArr1,TArr4,True);
    self.TTL.SumSubInt(TArr6,TArr4,TArr1);
    self.TTL.IntArrToStr(TArr1,Str3);
  end;

  if(Str3[1]='-')then Str3:=Copy(Str3,2,Length(Str3));
  Str6:=Copy(Str3,Int2+2,Length(Str3));
  Str3:=Copy(Str3,1,Length(Str3)-Int1);
  Str3:=Copy(Str3,2,Length(Str3));
  if(Str3='')then Str3:='0';

  self.CutSomeStr(Str6);
  if(Length(Str6)>ADeciDigitCountBaseOne)then
    Str6:=Copy(Str6,1,ADeciDigitCountBaseOne);
  if(Str6='')then Str6:='0';
  Str6:='10'+Str6;

  self.TTL.StrToIntArr(Str3,TArr3);
  self.TTL.StrToIntArr(Str6,TArr6);
  self.CombineArr(TArr3,TArr6,numResult,TArr1);
  self.CombineIntToArr(TArr1,numResult);

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

procedure RealMath.SumSubReal(num1, num2: RealArr; var numResult: RealArr;
  ADeciDigitCountBaseOne: Integer);
var
  bool1,bool2:Boolean;
  AMode:Byte;
begin
  SetLength(numResult,0);
  if(Length(num1)=0)then Exit;
  if(Length(num2)=0)then Exit;
  bool1:=self.isPositive(num1);
  bool2:=self.isPositive(num2);
  self.TTL.Shift(True,False,num1);
  self.TTL.Shift(True,False,num2);
  self.CutSomeR(num1);
  self.CutSomeR(num2);
  if(self.CheckIntegrity(num1)=False)then Exit;
  if(self.CheckIntegrity(num2)=False)then Exit;
  if(ADeciDigitCountBaseOne<1)then ADeciDigitCountBaseOne:=1;
  AMode:=0;
  if(bool1=False)and(bool2=False)then begin
    self.SumReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    self.TTL.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=False)then begin
    self.SubReal(num1,num2,numResult,AMode,ADeciDigitCountBaseOne);
    if(AMode=1)then self.TTL.Shift(False,True,numResult) else
    if(AMode=0)then self.TTL.Shift(False,False,numResult) else
    if(AMode=2)then self.TTL.Shift(False,True,numResult);
  end else
  if(bool1=False)and(bool2=True)then begin
    self.SubReal(num1,num2,numResult,AMode,ADeciDigitCountBaseOne);
    if(AMode=1)then self.TTL.Shift(False,False,numResult) else
    if(AMode=0)then self.TTL.Shift(False,True,numResult) else
    if(AMode=2)then self.TTL.Shift(False,True,numResult);
  end else
  if(bool1=True)and(bool2=True)then begin
    self.SumReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    self.TTL.Shift(False,True,numResult);
  end;
end;

procedure RealMath.MulReal(num1, num2: RealArr; var numResult: RealArr;
  ADeciDigitCountBaseOne: Integer);
var
  TArr1,TArr2,TArr3:IntArr;
  TArr4,TArr5,TArr6:IntArr;
  Str1,Str2,Str3:String;
  Int1,Int2:Integer;
  Int3:Integer;
  i:Integer;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  TArr4:=nil;
  TArr5:=nil;
  TArr6:=nil;
  Str1:='';
  Str2:='';
  Str3:='';
  Int1:=0;
  Int2:=0;
  Int3:=0;
  SetLength(numResult,0);

  self.SplitIntToArr(TArr3,num1);
  self.SplitArr(TArr1,TArr2,num1,TArr3);

  self.SplitIntToArr(TArr6,num2);
  self.SplitArr(TArr4,TArr5,num2,TArr6);

  self.TTL.IntArrToStr(TArr2,Str1);
  self.TTL.IntArrToStr(TArr5,Str2);
  Str1:=Copy(Str1,3,Length(Str1));
  Str2:=Copy(Str2,3,Length(Str2));
  Int1:=Length(Str1);
  Int2:=Length(Str2);

  self.TTL.IntArrToStr(TArr1,Str3);
  Str1:=Str3+Str1;
  self.TTL.IntArrToStr(TArr4,Str3);
  Str2:=Str3+Str2;

  Int3:=0;
  for i:=1 to Length(Str1)do if(Str1[i]<>'0')then break else Int3:=Int3+1;
  for i:=1 to Length(Str2)do if(Str2[i]<>'0')then break else Int3:=Int3+1;

  self.TTL.StrToIntArr(Str1,TArr3);
  self.TTL.StrToIntArr(Str2,TArr6);

  self.TTL.MulDivInt(TArr3,TArr6,TArr1,True);
  self.TTL.IntArrToStr(TArr1,Str3);
  for i:=1 to Int3 do Str3:='0'+Str3;

  Str1:=Copy(Str3,1,Length(Str3)-(Int1+Int2));
  Str2:=Copy(Str3,(Length(Str3)-(Int1+Int2))+1,Length(Str3));
  self.CutSomeStr(Str2);
  if(Length(Str2)>ADeciDigitCountBaseOne)then
    Str2:=Copy(Str2,1,ADeciDigitCountBaseOne);
  if(Str1='')then Str1:='0';
  if(Str2='')then Str2:='0';
  Str2:='10'+Str2;

  self.TTL.StrToIntArr(Str1,TArr3);
  self.TTL.StrToIntArr(Str2,TArr6);

  self.TTL.IntArrToStr(TArr3,Str1);
  self.TTL.IntArrToStr(TArr6,Str2);

  self.CombineArr(TArr3,TArr6,numResult,TArr1);
  self.CombineIntToArr(TArr1,numResult);

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

procedure RealMath.DivReal(num1, num2: RealArr; var numResult: RealArr;
  ADeciDigitCountBaseOne: Integer);
var
  TArr1,TArr2,TArr3:IntArr;
  TArr4,TArr5,TArr6:IntArr;
  Str1,Str2,Str3:String;
  Str4,Str5,Str6:String;
  Int1,Int2:Integer;
  i:Integer;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  TArr4:=nil;
  TArr5:=nil;
  TArr6:=nil;
  Str1:='';
  Str2:='';
  Str3:='';
  Str4:='';
  Str5:='';
  Str6:='';
  Int1:=0;
  Int2:=0;
  SetLength(numResult,0);

  self.SplitIntToArr(TArr3,num1);
  self.SplitArr(TArr1,TArr2,num1,TArr3);

  self.SplitIntToArr(TArr6,num2);
  self.SplitArr(TArr4,TArr5,num2,TArr6);

  self.TTL.IntArrToStr(TArr1,Str1);
  self.TTL.IntArrToStr(TArr2,Str2);
  self.TTL.IntArrToStr(TArr4,Str4);
  self.TTL.IntArrToStr(TArr5,Str5);
  Str2:=Copy(Str2,3,Length(Str2));
  Str5:=Copy(Str5,3,Length(Str5));

  Int2:=Length(Str2);
  Int1:=Length(Str5);

  self.CutSomeStr(Str2);
  self.CutSomeStr(Str5);
  Str3:=self.CutSomeStrLeft(Str1);
  Str6:=self.CutSomeStrLeft(Str4);
  Str3:=Str1+Str2;
  Str6:=Str4+Str5;

  for i:=1 to Int1 do Str3:=Str3+'0';
  for i:=1 to Int2 do Str6:=Str6+'0';

  self.TTL.StrToIntArr(Str3,TArr3);
  self.TTL.StrToIntArr(Str6,TArr6);

  self.TTL.MulDivInt(TArr3,TArr6,TArr1,False);
  self.TTL.IntArrToStr(TArr1,Str5);
  if(Str5='nil')then Str5:='0';

  Int1:=0;
  TArr4:=InitInt('1');
  Str2:='1';
  for i:=1 to (ADeciDigitCountBaseOne+1) do begin
    self.TTL.MulDivInt(TArr4,TArr3,TArr2,True);
    self.TTL.MulDivInt(TArr2,TArr6,TArr1,False);
    self.TTL.IntArrToStr(TArr1,Str4);
    if(Str4='0')then begin
      Str2:=Str2+'0';
      self.TTL.StrToIntArr(Str2,TArr4);
      Int1:=Int1+1;
    end else
    if(Str4='nil')then break else break;
  end;

  Str1:='10';
  if(Length(Str1)>=2)then begin
    Str1:=Copy(Str1,1,2);
  end else
  if(Length(Str1)<2)then begin
    for i:=1 to (2-Length(Str1))do Str1:=Str1+'0';
  end;

  if(Length(Str1)>=(ADeciDigitCountBaseOne+1))then begin
    Str1:=Copy(Str1,1,ADeciDigitCountBaseOne+1);
  end else
  if(Length(Str1)<(ADeciDigitCountBaseOne+1))then begin
    for i:=1 to ((ADeciDigitCountBaseOne+1)-Length(Str1))do Str1:=Str1+'0';
  end;

  self.TTL.StrToIntArr(Str1,TArr1);
  self.TTL.StrToIntArr(Str3,TArr2);
  self.TTL.StrToIntArr(Str6,TArr4);
  self.TTL.MulDivInt(TArr1,TArr2,TArr5,True);
  self.TTL.MulDivInt(TArr5,TArr4,TArr1,False);
  self.TTL.IntArrToStr(TArr1,Str1);
  if(Str1='nil')then Str1:='0';

  for i:=1 to Int1 do Str1:='0'+Str1;
  Str1:=Copy(Str1,Length(Str5)+1,Length(Str1));

  self.CutSomeStr(Str1);
  if(Length(Str1)>ADeciDigitCountBaseOne)then
    Str1:=Copy(Str1,1,ADeciDigitCountBaseOne);
  if(Str1='')then Str1:='0';
  Str1:='10'+Str1;

  self.TTL.StrToIntArr(Str5,TArr3);
  self.TTL.StrToIntArr(Str1,TArr6);
  self.CombineArr(TArr3,TArr6,numResult,TArr1);
  self.CombineIntToArr(TArr1,numResult);

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

procedure RealMath.MulDivReal(num1, num2: RealArr; var numResult: RealArr;
  const doMul: Boolean; ADeciDigitCountBaseOne: Integer);
var
  bool1,bool2:Boolean;
begin
  SetLength(numResult,0);
  if(Length(num1)=0)then Exit;
  if(Length(num2)=0)then Exit;
  if(self.isPositiveAd(num2)=2)and(doMul=False)then Exit;
  bool1:=self.isPositive(num1);
  bool2:=self.isPositive(num2);
  self.TTL.Shift(True,False,num1);
  self.TTL.Shift(True,False,num2);
  self.CutSomeR(num1);
  self.CutSomeR(num2);
  if(self.CheckIntegrity(num1)=False)then Exit;
  if(self.CheckIntegrity(num2)=False)then Exit;
  if(ADeciDigitCountBaseOne<1)then ADeciDigitCountBaseOne:=1;
  if(bool1=False)and(bool2=False)then begin
    if(doMul=True)then self.MulReal(num1,num2,numResult,ADeciDigitCountBaseOne) else
    if(doMul=False)then self.DivReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    self.TTL.Shift(False,True,numResult);
  end else
  if(bool1=True)and(bool2=False)then begin
    if(doMul=True)then self.MulReal(num1,num2,numResult,ADeciDigitCountBaseOne) else
    if(doMul=False)then self.DivReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    self.TTL.Shift(False,False,numResult);
  end else
  if(bool1=False)and(bool2=True)then begin
    if(doMul=True)then self.MulReal(num1,num2,numResult,ADeciDigitCountBaseOne) else
    if(doMul=False)then self.DivReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    self.TTL.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=True)then begin
    if(doMul=True)then self.MulReal(num1,num2,numResult,ADeciDigitCountBaseOne) else
    if(doMul=False)then self.DivReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    self.TTL.Shift(False,True,numResult);
  end;
  //End...
end;

procedure RealMath.RealArrMod(num1, num2: RealArr; var numResult: RealArr);
var
  TArr1,TArr2,TArr3:RealArr;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  SetLength(numResult,0);
  if(Length(num1)=0)then Exit;
  if(Length(num2)=0)then Exit;
  TArr1:=StrMath.MulDivReal(num1,num2,False);
  TArr1:=StrMath.IntReal(StrMath.RoundRealR(TArr1));
  TArr2:=StrMath.MulDivReal(TArr1,num2,True);
  TArr3:=StrMath.MulDivReal(TArr2,InitReal('-1'),True);
  numResult:=StrMath.SumSubReal(num1,TArr3);
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

function RealMath.RealXPowerInt(Abase, Apower: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
var
  Amode:RealArr;
begin
  Amode:=nil;
  Amode:=InitReal('0');
  Result:=InitReal('1');;
  While(ConditionReal(Apower,'<>',InitReal('0'))=True)do begin
    Amode:=IntReal(RoundRealR(RealMod(Apower,InitReal('2'))));
    if(ConditionReal(Amode,'=',InitReal('1'))=True)then
      Result:=StrMath.MulDivReal(Result,Abase,ADeciDigitCountBaseOne);
    Abase:=StrMath.MulDivReal(Abase,Abase,ADeciDigitCountBaseOne);
    Apower:=IntReal(RoundRealR(StrMath.MulDivReal(Apower,InitReal('2'),ADeciDigitCountBaseOne,False)));
  end;
end;

function RealMath.RealXPowerIntStr(Abase, Apower: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
var
  StrA:StringMath;
  Str1,Str2,Str3:String;
begin
  Result:=nil;
  StrA:=StringMath.Create;
  Apower:=IntReal(RoundRealR(Apower));
  Str1:=RealStr(Abase);
  Str2:=RealStr(Apower);
  Str3:=StrA.xPowerInt(Str1,Str2,ADeciDigitCountBaseOne+5);
  Result:=InitReal(Str3);
  Result:=StrMath.CutRealDeciCountBaseOneR(Result,ADeciDigitCountBaseOne);
  StrA.Free;
end;

procedure RealMath.lynReal(num: RealArr; var numResult: RealArr;
  const ADeciDigitCountBaseOne: Integer);
var
  n1,n2:RealArr;
  n3,n4:RealArr;
  n5,n6:RealArr;
begin
  n1:=nil;
  n2:=nil;
  n3:=nil;
  n4:=nil;
  n5:=nil;
  n6:=nil;

  n1:=StrMath.MulDivReal(StrMath.SumSubReal(num,InitReal('-1.0'),
  ADeciDigitCountBaseOne),StrMath.SumSubReal(num,InitReal('1.0'),
  ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False);

  n3:=AssignNum(n1);
  n4:=StrMath.MulDivReal(n1,n1,ADeciDigitCountBaseOne,True);
  n2:=InitReal('1.0');
  numResult:=InitReal('0.0');
  While(ConditionReal(n3,'<>',InitReal('0.0'))=True)do begin
    n3:=StrMath.MulDivReal(n3,n4,ADeciDigitCountBaseOne,True);
    n5:=self.RealXPowerInt(n1,n2,ADeciDigitCountBaseOne);
    n6:=StrMath.MulDivReal(n5,n2,ADeciDigitCountBaseOne,False);
    numResult:=StrMath.SumSubReal(numResult,n6,ADeciDigitCountBaseOne);
    n2:=StrMath.SumSubReal(n2,InitReal('2.0'));
  end;
  numResult:=StrMath.MulDivReal(numResult,InitReal('2.0'),
  ADeciDigitCountBaseOne,True);
end;

procedure RealMath.lynRealR(num: RealArr; var numResult: RealArr;
  const ADeciDigitCountBaseOne: Integer);
var
  n1,n2:RealArr;
  Str1,Str2,Str3:String;
  i:Integer;
  Num1:Integer;
  bool1:Boolean;
begin
  n1:=nil;
  n2:=nil;
  Str1:='';
  Str2:='';
  Str3:='';
  Str1:=RealStr(num);
  Num1:=0;
  bool1:=False;
  for i:=1 to Length(Str1)do begin
    if(Str1[i]='.')then begin
      Num1:=i;
      bool1:=True;
      break;
    end;
  end;
  if(bool1=False)then Num1:=Length(Str1)+1;
  Str2:=Copy(Str1,1,Num1-1);
  Str3:=Copy(Str1,i+1,Length(Str1));
  if(Str2='')or(Str2='nil')then Str2:='0';
  if(Str3='')or(Str3='nil')then Str3:='0';
  Num1:=Length(Copy(Str2,2,Length(Str2)));
  Str1:=Copy(Str2,1,1)+'.'+Copy(Str2,2,Length(Str2))+Str3;

  self.lynReal(InitReal(Str1),n1,ADeciDigitCountBaseOne);

  if(ADeciDigitCountBaseOne<=50)then
    n2:=InitReal('2.30258509299404568401799145468436420760110148862877')
  else
    self.lynReal(InitReal('10.0'),n2,ADeciDigitCountBaseOne);

  n2:=StrMath.MulDivReal(n2,InitReal(IntToStr(Num1)),ADeciDigitCountBaseOne);

  numResult:=StrMath.SumSubReal(n1,n2,ADeciDigitCountBaseOne);
end;

procedure RealMath.logaReal(num, base: RealArr; var numResult: RealArr;
  const ADeciDigitCountBaseOne: Integer);
begin
  numResult:=StrMath.MulDivReal(lnReal(num),lnReal(base),
  ADeciDigitCountBaseOne,False);
end;

procedure RealMath.Root2Real(num: RealArr; var numResult: RealArr;
  const ADeciDigitCountBaseOne: Integer);
var
  i:Integer;
  n1,n2,n3:RealArr;
begin
  n1:=nil;
  n2:=nil;
  n3:=nil;
  SetLength(numResult,0);
  if(Length(num)=0)then Exit else
  if(ConditionReal(num,'<',InitReal('0.0'))=True)then Exit else
  if(ConditionReal(num,'=',InitReal('0.0'))=True)then begin
    numResult:=AssignNum(num);
    Exit;
  end;
  numResult:=InitReal('1.0');
  n1:=StrMath.MulDivReal(InitReal('1.0'),InitReal('2.0'),ADeciDigitCountBaseOne,False);
  for i:=0 to 10 do begin
    n3:=StrMath.MulDivReal(num,numResult,ADeciDigitCountBaseOne,False);
    n2:=StrMath.SumSubReal(numResult,n3,ADeciDigitCountBaseOne);
    numResult:=StrMath.MulDivReal(n1,n2,ADeciDigitCountBaseOne,True);
  end;
  SetLength(n1,0);
  SetLength(n2,0);
  SetLength(n3,0);
end;

function RealMath.SinReal(Degrees: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
begin
  Result:=nil;
  SetLength(Result,0);
  if(Length(Degrees)=0)then Exit;

  Degrees:=StrMath.SumSubReal(Degrees,StrMath.MulDivReal(InitReal('-1'),
  StrMath.MulDivReal(InitReal('360.0'),IntReal(RoundRealR(StrMath.MulDivReal
  (Degrees,InitReal('360.0'),ADeciDigitCountBaseOne,False))),
  ADeciDigitCountBaseOne,True),ADeciDigitCountBaseOne,True),
  ADeciDigitCountBaseOne);

  if(ConditionReal(Degrees,'>=',InitReal('0.0'))=True)and
  (ConditionReal(Degrees,'<=',InitReal('90.0'))=True)then
    Result:=StrMath.SqrRootReal(StrMath.MulDivReal(Degrees,InitReal('90.0'),
    ADeciDigitCountBaseOne,False)) else
  if(ConditionReal(Degrees,'>=',InitReal('91.0'))=True)and
  (ConditionReal(Degrees,'<=',InitReal('180.0'))=True)then
    Result:=StrMath.SqrRootReal(StrMath.SumSubReal(InitReal('1.0'),
    StrMath.MulDivReal(InitReal('-1.0'),StrMath.MulDivReal(StrMath.SumSubReal
    (Degrees,InitReal('-90'),ADeciDigitCountBaseOne),InitReal('90.0'),
    ADeciDigitCountBaseOne,False),ADeciDigitCountBaseOne,True),
    ADeciDigitCountBaseOne)) else
  if(ConditionReal(Degrees,'>=',InitReal('181.0'))=True)and
  (ConditionReal(Degrees,'<=',InitReal('270.0'))=True)then
    Result:=StrMath.MulDivReal(InitReal('-1.0'),StrMath.SqrRootReal
    (StrMath.MulDivReal(StrMath.SumSubReal(Degrees,InitReal('-180.0'),
    ADeciDigitCountBaseOne),InitReal('90.0'),ADeciDigitCountBaseOne,False)),
    ADeciDigitCountBaseOne,True) else
  if(ConditionReal(Degrees,'>=',InitReal('271.0'))=True)and
  (ConditionReal(Degrees,'<=',InitReal('360.0'))=True)then
    Result:=StrMath.MulDivReal(InitReal('-1.0'),StrMath.SqrRootReal
    (StrMath.SumSubReal(InitReal('1.0'),StrMath.MulDivReal(InitReal('-1.0'),
    StrMath.MulDivReal(StrMath.SumSubReal(Degrees,InitReal('-270'),
    ADeciDigitCountBaseOne),InitReal('90.0'),ADeciDigitCountBaseOne,False),
    ADeciDigitCountBaseOne,True),ADeciDigitCountBaseOne)),
    ADeciDigitCountBaseOne,True);
end;

function RealMath.CosReal(Degrees: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
begin
  Result:=nil;
  SetLength(Result,0);
  if(Length(Degrees)=0)then Exit;

  Degrees:=StrMath.SumSubReal(Degrees,StrMath.MulDivReal(InitReal('-1'),
  StrMath.MulDivReal(InitReal('360.0'),IntReal(RoundRealR(StrMath.MulDivReal
  (Degrees,InitReal('360.0'),ADeciDigitCountBaseOne,False))),
  ADeciDigitCountBaseOne,True),ADeciDigitCountBaseOne,True),
  ADeciDigitCountBaseOne);

  if(ConditionReal(Degrees,'>=',InitReal('0.0'))=True)and
  (ConditionReal(Degrees,'<=',InitReal('90.0'))=True)then
    Result:=StrMath.SqrRootReal(StrMath.SumSubReal(InitReal('1.0'),
    StrMath.MulDivReal(InitReal('-1.0'),self.RealXPowerInt(self.SinReal
    (Degrees,ADeciDigitCountBaseOne),InitReal('2.0'),ADeciDigitCountBaseOne),
    ADeciDigitCountBaseOne,True),ADeciDigitCountBaseOne)) else
  if(ConditionReal(Degrees,'>=',InitReal('91.0'))=True)and
  (ConditionReal(Degrees,'<=',InitReal('180.0'))=True)then
    Result:=StrMath.MulDivReal(InitReal('-1.0'),StrMath.SqrRootReal(
    StrMath.SumSubReal(InitReal('1.0'),StrMath.MulDivReal(InitReal('-1.0'),
    self.RealXPowerInt(self.SinReal(Degrees,ADeciDigitCountBaseOne),InitReal('2.0'),
    ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,True),ADeciDigitCountBaseOne)),
    ADeciDigitCountBaseOne,True) else
  if(ConditionReal(Degrees,'>=',InitReal('181.0'))=True)and
  (ConditionReal(Degrees,'<=',InitReal('270.0'))=True)then
    Result:=StrMath.MulDivReal(InitReal('-1.0'),StrMath.SqrRootReal(
    StrMath.SumSubReal(InitReal('1.0'),StrMath.MulDivReal(InitReal('-1.0'),
    self.RealXPowerInt(self.SinReal(Degrees,ADeciDigitCountBaseOne),InitReal('2.0'),
    ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,True),ADeciDigitCountBaseOne)),
    ADeciDigitCountBaseOne,True) else
  if(ConditionReal(Degrees,'>=',InitReal('271.0'))=True)and
  (ConditionReal(Degrees,'<=',InitReal('360.0'))=True)then
    Result:=StrMath.SqrRootReal(StrMath.SumSubReal(InitReal('1.0'),
    StrMath.MulDivReal(InitReal('-1.0'),self.RealXPowerInt(self.SinReal
    (Degrees,ADeciDigitCountBaseOne),InitReal('2.0'),ADeciDigitCountBaseOne),
    ADeciDigitCountBaseOne,True),ADeciDigitCountBaseOne));
end;

function RealMath.TanReal(Degrees: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
begin
  Result:=nil;
  SetLength(Result,0);
  if(Length(Degrees)=0)then Exit;
  Result:=StrMath.MulDivReal(self.SinReal(Degrees,ADeciDigitCountBaseOne),
  self.CosReal(Degrees,ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False);
end;

function RealMath.InSinReal(SinX: RealArr; const ADeciDigitCountBaseOne: Integer
  ): RealArr;
begin
  Result:=nil;
  SetLength(Result,0);
  if(Length(SinX)=0)then Exit;
  Result:=StrMath.MulDivReal(self.RealXPowerInt(SinX,InitReal('2.0'),
  ADeciDigitCountBaseOne),InitReal('90.0'),ADeciDigitCountBaseOne,True);
end;

function RealMath.InCosReal(CosX: RealArr; const ADeciDigitCountBaseOne: Integer
  ): RealArr;
begin
  Result:=nil;
  SetLength(Result,0);
  if(Length(CosX)=0)then Exit;
  Result:=StrMath.MulDivReal(self.RealXPowerInt(StrMath.SqrRootReal(
  StrMath.SumSubReal(InitReal('1.0'),StrMath.MulDivReal(InitReal('-1.0'),
  self.RealXPowerInt(CosX,InitReal('2.0'),ADeciDigitCountBaseOne),
  ADeciDigitCountBaseOne,True),ADeciDigitCountBaseOne)),InitReal('2.0'),
  ADeciDigitCountBaseOne),InitReal('90.0'),ADeciDigitCountBaseOne,True);
end;

function RealMath.InTanReal(TanX: RealArr; const ADeciDigitCountBaseOne: Integer
  ): RealArr;
begin
  Result:=nil;
  SetLength(Result,0);
  if(Length(TanX)=0)then Exit;
  Result:=StrMath.MulDivReal(self.RealXPowerInt(StrMath.MulDivReal(TanX,
  StrMath.SqrRootReal(StrMath.SumSubReal(InitReal('1.0'),self.RealXPowerInt
  (TanX,InitReal('2.0'),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne)),
  ADeciDigitCountBaseOne,False),InitReal('2.0'),ADeciDigitCountBaseOne),
  InitReal('90.0'),ADeciDigitCountBaseOne,True);
end;

function RealMath.RealFactorialIntStr(num: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
var
  StrA:StringMath;
  Str1,Str2:String;
begin
  Result:=nil;
  Str1:='';
  Str2:='';
  StrA:=nil;
  StrA:=StringMath.Create;
  Str1:=RealStr(num);
  Str2:=StrA.FactorialInt(Str1,ADeciDigitCountBaseOne+5);
  Result:=InitReal(Str2);
  Result:=StrMath.CutRealDeciCountBaseOneR(Result,ADeciDigitCountBaseOne);
  StrA.Free;
end;

function RealMath.ePower(num: RealArr; const ADeciDigitCountBaseOne: Integer
  ): RealArr;
var
  i:Integer;
begin
  Result:=InitReal('1.0');
  for i:=1 to 20 do begin
    Result:=StrMath.SumSubReal(Result,StrMath.MulDivReal(self.RealXPowerInt
    (num,InitReal(IntToStr(i)),ADeciDigitCountBaseOne),self.RealFactorialIntStr
    (InitReal(IntToStr(i)),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False),
    ADeciDigitCountBaseOne);
  end;
end;

function RealMath.ePowerX(num: RealArr; ADeciDigitCountBaseOne: Integer
  ): RealArr;
begin
  Result:=nil;
  if(Length(num)=0)then Exit;
  Result:=self.ePower(num,ADeciDigitCountBaseOne);
end;

function RealMath.xPower(Abase, Apower: RealArr; ADeciDigitCountBaseOne: Integer
  ): RealArr;
var
  AMode:Byte;
  i:Integer;
  Str1:String;
  bool1:Boolean;
begin
  Result:=nil;
  AMode:=self.isPositiveAd(Apower);
  if(Length(Abase)=0)or(Length(Apower)=0)then Exit else
  if(ConditionReal(Abase,'=',InitReal('0.0'))=True)and(ConditionReal(Apower,'=',InitReal('0.0'))=True)then Exit else
  if(ConditionReal(Abase,'=',InitReal('0.0'))=True)and(AMode=1)then begin
    Result:=InitReal('0.0');
    Exit;
  end else
  if(ConditionReal(Abase,'=',InitReal('0.0'))=True)and(AMode=0)then Exit else
  if(ConditionReal(Abase,'=',InitReal('1.0'))=True)then begin
    Result:=InitReal('1.0');
    Exit;
  end;
  Str1:=RealStr(Apower);
  bool1:=False;
  for i:=1 to Length(Str1)do begin
    if(Str1[i]='.')then begin
      bool1:=True;
      Str1:=Copy(Str1,i+1,Length(Str1));
      break;
    end;
  end;
  if(bool1=False)then Str1:='0';
  if(Str1<>'0')then begin
    self.lynReal(Abase,Result,ADeciDigitCountBaseOne);
    Result:=self.ePower(StrMath.MulDivReal(Result,Apower,ADeciDigitCountBaseOne,True),
    ADeciDigitCountBaseOne);
  end else begin
    Result:=self.RealXPowerInt(Abase,Apower,ADeciDigitCountBaseOne);
  end;
end;

{ ArrMath }

constructor ArrMath.Create;
begin
  //nothing...
end;

destructor ArrMath.Destroy;
begin
  inherited Destroy;
end;

function ArrMath.RR(const x: Real): Integer;
begin
  Result:=Round(x);
  if(Round(x)>x)then Result:=Round(x)-1;
end;

function ArrMath.unNum(const x: Integer): Integer;
begin
  Result:=x;
  if(x<0)then Result:=Result*(-1);
end;

function ArrMath.unNum(const x: Real): Real;
begin
  Result:=x;
  if(x<0)then Result:=Result*(-1);
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
  AStrBits:='';
  for i:=0 to (Length(num)-1)do AStrBits:=BinStr(num[i],8)+' '+AStrBits;
end;

function ArrMath.BitsLength(const num: IntArr): Integer;
var
  i:Integer;
  AStr:String;
begin
  Result:=0;
  AStr:='';
  for i:=0 to (Length(num)-1)do AStr:=AStr+BinStr(num[i],8);
  Result:=Length(AStr);
end;

procedure ArrMath.SetInt(const num: IntArr; var numResult: IntArr);
var
  i:Integer;
begin
  SetLength(numResult,Length(num));
  for i:=0 to (Length(num)-1)do numResult[i]:=num[i];
end;

procedure ArrMath.ReverseInt(const num: IntArr; var numResult: IntArr);
var
  i,j:Integer;
begin
  SetLength(numResult,0);
  SetLength(numResult,Length(num));
  for i:=0 to (Length(num)-1)do
    for j:=0 to 7 do if(self.IsBitSet(num[i],j)=True)then self.SetBit(numResult[(Length(numResult)-1)-i],7-j);
end;

function ArrMath.isIntZero(const num: IntArr): Boolean;
var
  i:Integer;
begin
  Result:=True;
  for i:=0 to (Length(num)-1)do if(num[i]<>0)then begin Result:=False; Exit; end;
end;

procedure ArrMath.MatchLength(const isLeft: Boolean; const num: IntArr;
  var numResult: IntArr);
var
  i:Integer;
  bool1:Boolean;
begin
  bool1:=False;
  SetLength(numResult,0);
  for i:=0 to (Length(num)-1)do
    if(num[i]<>0)then begin bool1:=True; break; end;
  if(bool1=False)then begin SetLength(numResult,1); Exit; end;
  for i:=(self.BitsLength(num)-1) downto 0 do
    if(self.IsBitSet(num[self.RR(i/8)],i-(self.RR(i/8)*8))=True)then begin
      if(isLeft=False)then SetLength(numResult,self.RR((i+1)/8)+1) else
      if(isLeft=True)then SetLength(numResult,self.RR((i-1)/8)+1);
      break;
    end;
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
    self.MatchLength(isLeft,num,TArr1);
    self.AlignNums(num,TArr1);
    for i:=0 to (Length(num)-1)do begin
      if(bool1=True)then self.SetBit(TArr1[i],0);
      bool1:=False;
      for j:=0 to 7 do begin
        if(j<7)and(self.IsBitSet(num[i],j)=True)then
          self.SetBit(TArr1[i],j+1) else
        if(j=7)and(self.IsBitSet(num[i],j)=True)then bool1:=True;
      end;
    end;
    if(bool1=True)then begin
      SetLength(TArr1,Length(TArr1)+1);
      TArr1[Length(TArr1)-1]:=0;
      if(bool1=True)then self.SetBit(TArr1[Length(TArr1)-1],0);
    end;
    if(isSet=True)then self.SetBit(TArr1[0],0);
    bool1:=True;
  end else
  if(isLeft=True)then begin
    self.MatchLength(isLeft,num,TArr1);
    self.AlignNums(num,TArr1);
    for i:=0 to (Length(num)-1)do begin
      for j:=0 to 7 do begin
        if(j>0)then if(self.IsBitSet(num[i],j)=True)then
          self.SetBit(TArr1[i],j-1);
      end;
      if((i+1)<=(Length(num)-1))and(self.IsBitSet(num[i+1],0)=True)then
        self.SetBit(TArr1[i],7);
    end;
    if(isSet=True)then self.SetBit(TArr1[Length(TArr1)-1],7);
    bool1:=True;
  end;
  if(bool1=True)then begin
    SetLength(num,Length(TArr1));
    for i:=0 to (Length(TArr1)-1)do num[i]:=TArr1[i];
  end;
  SetLength(TArr1,0);
end;

procedure ArrMath.Shift(const isLeft: Boolean; PaceBaseOne: Integer;
  var num: IntArr);
var
  i:Integer;
  TArr1:IntArr;
  bool1:Boolean;
  nCount:Integer;
  nCountr:Real;
begin
  TArr1:=nil;
  bool1:=False;
  nCount:=0;
  nCountr:=0;
  if(PaceBaseOne<0)then PaceBaseOne:=PaceBaseOne*(-1);
  if(isLeft=True)then begin
    for i:=0 to ((8*Length(num))-1)do begin
      nCount:=i-PaceBaseOne;
      if(nCount>-1)then begin
        nCountr:=i/7;
        if(Length(TArr1)=0)then SetLength(TArr1,Length(TArr1)+1);
        if(nCountr=RR(nCountr))and(nCountr<>0)then bool1:=True;
        if(self.IsBitSet(num[RR(i/8)],i-(RR(i/8)*8))=True)then
          self.SetBit(TArr1[RR(nCount/8)],nCount-(RR(nCount/8)*8));
      end;
      if(bool1=True)then SetLength(TArr1,Length(TArr1)+1);
      bool1:=False;
    end;
    bool1:=True;
  end else
  if(isLeft=False)then begin
    for i:=0 to ((8*Length(num))-1)do begin
      nCount:=i+PaceBaseOne;
      nCountr:=nCount/7;
      if(Length(TArr1)=0)then SetLength(TArr1,RR(unNum(PaceBaseOne-1)/7)+1);
      if(nCountr=RR(nCountr))and(nCountr<>0)then bool1:=True;
      if(bool1=True)then SetLength(TArr1,Length(TArr1)+1); bool1:=False;
      if(self.IsBitSet(num[RR(i/8)],i-(RR(i/8)*8))=True)then
        self.SetBit(TArr1[RR(nCount/8)],nCount-(RR(nCount/8)*8));
    end;
    bool1:=True;
  end;
  if(bool1=True)then begin
    for i:=(Length(TArr1)-1)downto 0 do if(TArr1[i]<>0)then break;
    SetLength(TArr1,i+1);

    if(Length(TArr1)=0)then SetLength(TArr1,1);

    SetLength(num,Length(TArr1));
    for i:=0 to (Length(TArr1)-1)do num[i]:=TArr1[i];
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
  for i:=(Length(num1)-1) downto 0 do begin
    for j:=7 downto 0 do begin
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

function ArrMath.isNum1BiggerAlign(num1, num2: IntArr): Byte;
begin
  self.AlignNums(num1,num2);
  Result:=self.isNum1Bigger(num1,num2);
end;

function ArrMath.isIntNumber(const Digit: String): Boolean;
begin
  Result:=False;
  if(Length(Digit)=0)then Exit;
  if(Length(Digit)>1)then Exit;
  if(Digit='0')then Result:=True else
  if(Digit='1')then Result:=True else
  if(Digit='2')then Result:=True else
  if(Digit='3')then Result:=True else
  if(Digit='4')then Result:=True else
  if(Digit='5')then Result:=True else
  if(Digit='6')then Result:=True else
  if(Digit='7')then Result:=True else
  if(Digit='8')then Result:=True else
  if(Digit='9')then Result:=True;
end;

function ArrMath.GetIntDigit(const Digit: Byte): String;
begin
  Result:='';
  if(Digit=0)then Result:='0' else
  if(Digit=1)then Result:='1' else
  if(Digit=2)then Result:='2' else
  if(Digit=3)then Result:='3' else
  if(Digit=4)then Result:='4' else
  if(Digit=5)then Result:='5' else
  if(Digit=6)then Result:='6' else
  if(Digit=7)then Result:='7' else
  if(Digit=8)then Result:='8' else
  if(Digit=9)then Result:='9';
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

procedure ArrMath.AssignIntNum(num: IntArr; var numResult: IntArr);
begin
  self.SetInt(num,numResult);
end;

procedure ArrMath.CutSome(num: IntArr; var numResult: IntArr);
var
  i:Integer;
  bool1:Boolean;
begin
  bool1:=False;
  SetLength(numResult,0);
  for i:=(Length(num)-1) downto 0 do begin
    if(num[i]<>0)and(bool1=False)then begin
      bool1:=True;
      SetLength(numResult,Length(numResult)+1);
      numResult[Length(numResult)-1]:=num[i];
    end else
    if(bool1=True)then begin
      SetLength(numResult,Length(numResult)+1);
      numResult[Length(numResult)-1]:=num[i];
    end;
  end;
  SetLength(num,Length(numResult));
  for i:=0 to (Length(num)-1)do num[(Length(num)-1)-i]:=numResult[i];
  for i:=0 to (Length(num)-1)do numResult[i]:=num[i];
end;

procedure ArrMath.SumInt(num1, num2: IntArr; var numResult: IntArr);
var
  i:Integer;
  bool1,bool2,bool3:Boolean;
begin
  SetLength(numResult,0);
  self.AlignNums(num1,num2);
  SetLength(numResult,Length(num1));
  bool3:=False;
  for i:=0 to (self.BitsLength(num1)-1)do begin
    bool1:=False;
    bool2:=False;
    if(self.IsBitSet(num1[self.RR(i/8)],i-(self.RR(i/8)*8))=True)then bool1:=True;
    if(self.IsBitSet(num2[self.RR(i/8)],i-(self.RR(i/8)*8))=True)then bool2:=True;
    if(bool1=False)and(bool2=False)then begin
      if(bool3=True)then self.SetBit(numResult[self.RR(i/8)],i-(self.RR(i/8)*8));
      bool3:=False;
    end else
    if(bool1=True)and(bool2=False)then begin
      if(bool3=False)then self.SetBit(numResult[self.RR(i/8)],i-(self.RR(i/8)*8));
    end else
    if(bool1=False)and(bool2=True)then begin
      if(bool3=False)then self.SetBit(numResult[self.RR(i/8)],i-(self.RR(i/8)*8));
    end else
    if(bool1=True)and(bool2=True)then begin
      if(bool3=True)then self.SetBit(numResult[self.RR(i/8)],i-(self.RR(i/8)*8));
      bool3:=True;
    end;
  end;
  if(bool3=True)then begin
    SetLength(numResult,Length(numResult)+1); i:=i+1;
    self.SetBit(numResult[self.RR(i/8)],i-(self.RR(i/8)*8));
  end;
  //End...
end;

procedure ArrMath.SubInt(num1, num2: IntArr; var numResult: IntArr; out
  num1Bigger: Byte);
var
  i:Integer;
  bool1,bool2,bool3:Boolean;
  ByteA:Byte;
  TArr1,TArr2:IntArr;
begin
  SetLength(numResult,0);
  self.AlignNums(num1,num2);
  SetLength(numResult,Length(num1));
  ByteA:=self.isNum1Bigger(num1,num2);
  TArr1:=nil;
  TArr2:=nil;
  num1Bigger:=ByteA;
  if(ByteA=0)then begin
    self.SetInt(num2,TArr1);
    self.SetInt(num1,TArr2);
  end else
  if(ByteA=1)then begin
    self.SetInt(num1,TArr1);
    self.SetInt(num2,TArr2);
  end else begin
    SetLength(numResult,1);
    numResult[0]:=0;
    Exit;
  end;
  bool3:=False;
  for i:=0 to (self.BitsLength(num1)-1)do begin
    bool1:=False;
    bool2:=False;
    if(self.IsBitSet(TArr1[self.RR(i/8)],i-(self.RR(i/8)*8))=True)then bool1:=True;
    if(self.IsBitSet(TArr2[self.RR(i/8)],i-(self.RR(i/8)*8))=True)then bool2:=True;
    if(bool1=False)and(bool2=False)then begin
      if(bool3=True)then self.SetBit(numResult[self.RR(i/8)],i-(self.RR(i/8)*8));
    end else
    if(bool1=True)and(bool2=False)then begin
      if(bool3=True)then bool3:=False else
      if(bool3=False)then self.SetBit(numResult[self.RR(i/8)],i-(self.RR(i/8)*8));
    end else
    if(bool1=False)and(bool2=True)then begin
      if(bool3=False)then begin
        self.SetBit(numResult[self.RR(i/8)],i-(self.RR(i/8)*8));
        bool3:=True;
      end;
    end else
    if(bool1=True)and(bool2=True)then begin
      if(bool3=True)then self.SetBit(numResult[self.RR(i/8)],i-(self.RR(i/8)*8));
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
  if(Length(num1)=0)then Exit;
  if(Length(num2)=0)then Exit;
  bool1:=self.isPositive(num1);
  bool2:=self.isPositive(num2);
  if(bool1=False)and(bool2=False)then begin
    self.SumInt(num1,num2,numResult);
    self.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=False)then begin
    self.SubInt(num1,num2,numResult,ByteA);
    if(ByteA=0)then self.Shift(False,False,numResult) else
    if(ByteA=1)then self.Shift(False,True,numResult) else
    if(ByteA=2)then self.Shift(False,True,numResult);
  end else
  if(bool1=False)and(bool2=True)then begin
    self.SubInt(num1,num2,numResult,ByteA);
    if(ByteA=0)then self.Shift(False,True,numResult) else
    if(ByteA=1)then self.Shift(False,False,numResult) else
    if(ByteA=2)then self.Shift(False,True,numResult);
  end else
  if(bool1=True)and(bool2=True)then begin
    self.SumInt(num1,num2,numResult);
    self.Shift(False,True,numResult);
  end;
  if(Length(numResult)>1)then begin
    self.CutSome(numResult,num1);
    self.SetInt(num1,numResult);
  end;
end;

procedure ArrMath.MulInt(num1, num2: IntArr; var numResult: IntArr);
var
  //k:Integer;
  i,j:Integer;
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
    for j:=0 to 7 do begin
      bool1:=self.IsBitSet(num1[i],j);
      if(bool1=True)then begin
        self.SetInt(numResult,TArr1);
        self.SetInt(num2,TArr2);
        self.Shift(False,CountA,TArr2);
        //for k:=1 to CountA do self.Shift(False,False,TArr2);
        self.SumInt(TArr1,TArr2,numResult);
      end;
      CountA:=CountA+1;
    end;
  end;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
end;

procedure ArrMath.MulIntSum(num1, num2: IntArr; var numResult: IntArr);
var
  AMode:Byte;
  TArr1,TArr2,TArr3,TArr4:IntArr;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  TArr4:=nil;
  SetLength(numResult,1);
  numResult[0]:=0;
  AMode:=self.isNum1BiggerAlign(num1,num2);
  if(AMode=1)or(AMode=2)then begin
    self.SetInt(num1,TArr1);
    self.SetInt(num2,TArr2);
  end else
  if(AMode=0)then begin
    self.SetInt(num2,TArr1);
    self.SetInt(num1,TArr2);
  end;
  self.InitZeroToNine(False,1,TArr3);
  self.Shift(True,False,TArr3);
  self.InitZeroToNine(False,1,TArr4);
  self.Shift(True,False,TArr4);
  self.SetInt(numResult,num2);
  AMode:=self.isNum1BiggerAlign(TArr3,TArr2);
  While((AMode=0)or(AMode=2))do begin
    self.SumInt(num2,TArr1,numResult);
    self.SetInt(numResult,num2);

    self.SumInt(TArr3,TArr4,num1);
    self.SetInt(num1,TArr3);
    AMode:=self.isNum1BiggerAlign(TArr3,TArr2);
  end;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
end;

procedure ArrMath.DivInt(num1, num2: IntArr; var numResult: IntArr);
var
  i:Integer;
  TArr2,TArr3:IntArr;
  AMode,Num1Big:Byte;
begin
  TArr2:=nil;
  TArr3:=nil;
  SetLength(numResult,1);
  numResult[0]:=0;
  SetLength(TArr2,1);
  TArr2[0]:=0;
  AMode:=0;
  Num1Big:=0;
  for i:=(self.BitsLength(num1)-1) downto 0 do begin
    if(self.IsBitSet(num1[self.RR(i/8)],i-(self.RR(i/8)*8))=True)
    then self.Shift(False,True,TArr2) else self.Shift(False,False,TArr2);
    AMode:=self.isNum1BiggerAlign(num2,TArr2);
    if(AMode=0)then begin
      self.Shift(False,True,numResult);
      self.SubInt(TArr2,num2,TArr3,Num1Big);
      self.SetInt(TArr3,TArr2);
    end else
    if(AMode=1)then begin
      self.Shift(False,False,numResult);
    end else
    if(AMode=2)then begin
      self.Shift(False,True,numResult);
      self.InitZeroToNine(False,0,TArr2);
      self.Shift(True,False,TArr2);
    end;
  end;
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

procedure ArrMath.MulDivInt(num1, num2: IntArr; var numResult: IntArr;
  const doMul: Boolean);
var
  bool1,bool2:Boolean;
begin
  SetLength(numResult,0);
  if(Length(num1)=0)then Exit;
  if(Length(num2)=0)then Exit;
  bool1:=self.isPositive(num1);
  bool2:=self.isPositive(num2);
  if(self.isIntZero(num2)=True)and(doMul=False)then Exit;
  if(bool1=False)and(bool2=False)then begin
    if(doMul=True)then self.MulInt(num1,num2,numResult) else
    //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
    if(doMul=False)then self.DivInt(num1,num2,numResult);
    self.Shift(False,True,numResult);
  end else
  if(bool1=True)and(bool2=False)then begin
    if(doMul=True)then self.MulInt(num1,num2,numResult) else
    //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
    if(doMul=False)then self.DivInt(num1,num2,numResult);
    self.Shift(False,False,numResult);
  end else
  if(bool1=False)and(bool2=True)then begin
    if(doMul=True)then self.MulInt(num1,num2,numResult) else
    //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
    if(doMul=False)then self.DivInt(num1,num2,numResult);
    self.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=True)then begin
    if(doMul=True)then self.MulInt(num1,num2,numResult) else
    //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
    if(doMul=False)then self.DivInt(num1,num2,numResult);
    self.Shift(False,True,numResult);
  end;
  if(Length(numResult)>1)then begin
    self.CutSome(numResult,num1);
    self.SetInt(num1,numResult);
  end;
end;

procedure ArrMath.StrToIntArr(AStr: String; var numResult: IntArr);
var
  bool1:Boolean;
  i:Integer;
  TArr1,TArr2,TArr3,TArr4,TArr5:IntArr;
begin
  SetLength(numResult,0);
  if(Length(AStr)=0)then Exit;
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  TArr4:=nil;
  TArr5:=nil;
  bool1:=False;
  if(AStr[1]='-')then begin
    bool1:=True;
    AStr:=Copy(AStr,2,Length(AStr));
  end else
  if(AStr[1]='+')then AStr:=Copy(AStr,2,Length(AStr));
  for i:=1 to Length(AStr)do if(self.isIntNumber(AStr[i])=False)then Exit;
  if(Length(AStr)=1)then begin
    self.InitZeroToNine(bool1,StrToInt(AStr),numResult);
  end else
  if(Length(AStr)>1)then begin
    self.InitZeroToNine(False,StrToInt(AStr[Length(AStr)]),numResult);
    AStr:=Copy(AStr,1,Length(AStr)-1);
    self.InitZeroToNine(False,5,TArr1);
    self.InitZeroToNine(False,5,TArr2);
    self.SumSubInt(TArr1,TArr2,TArr3);
    self.SetInt(TArr3,TArr4);
    self.SetInt(TArr3,TArr5);
    for i:=1 to Length(AStr)do begin
      self.SetInt(TArr5,TArr1);
      self.MulDivInt(TArr1,TArr4,TArr5,True);
    end;
    self.SetInt(numResult,TArr1);
    self.SumSubInt(TArr5,TArr1,numResult);
    for i:=Length(AStr) downto 1 do begin
      self.InitZeroToNine(False,StrToInt(AStr[i]),TArr1);
      self.MulDivInt(TArr3,TArr1,TArr2,True);
      self.SetInt(numResult,TArr1);
      self.SumSubInt(TArr1,TArr2,numResult);
      self.SetInt(TArr3,TArr2);
      self.MulDivInt(TArr2,TArr4,TArr3,True);
    end;
    self.SetInt(numResult,TArr1);
    self.InitZeroToNine(True,1,TArr2);
    self.MulDivInt(TArr5,TArr2,TArr4,True);
    self.SumSubInt(TArr1,TArr4,numResult);
    if(bool1=True)then begin
      self.SetInt(numResult,TArr1);
      self.InitZeroToNine(True,1,TArr2);
      self.MulDivInt(TArr1,TArr2,numResult,True);
    end;
  end;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
end;

procedure ArrMath.IntArrToStr(num: IntArr; var AStr: String);
var
  TArr1,TArr2,TArr3,TArr4,TArr5:IntArr;
  TArr6,TArr7,TArr8:IntArr;
  bool1:Byte;
  AMode:Byte;
  StrArr:Array of String;
  i:Integer;
begin
  AStr:='nil';
  if(Length(num)=0)then Exit;
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  TArr4:=nil;
  TArr5:=nil;
  TArr6:=nil;
  TArr7:=nil;
  TArr8:=nil;
  AMode:=1;
  AStr:='';
  StrArr:=nil;
  SetLength(StrArr,1);
  StrArr[0]:='';

  self.InitZeroToNine(False,5,TArr1);
  self.Shift(True,False,TArr1);
  self.InitZeroToNine(False,5,TArr2);
  self.Shift(True,False,TArr2);
  self.SumInt(TArr1,TArr2,TArr3);
  self.SetInt(TArr3,TArr4);

  self.SetInt(num,TArr1);
  bool1:=self.isPositiveAd(TArr1);
  While(True)do begin
    self.SetInt(TArr4,TArr3);

    self.InitZeroToNine(False,1,TArr6);
    self.Shift(True,False,TArr6);
    self.InitZeroToNine(False,1,TArr8);
    self.Shift(True,False,TArr8);
    While((AMode=1)or(AMode=2))do begin
      self.SetInt(TArr3,TArr2);
      self.MulInt(TArr2,TArr4,TArr3);

      self.SetInt(TArr6,TArr7);
      self.SumInt(TArr7,TArr8,TArr6);
      AMode:=self.isNum1BiggerAlign(TArr1,TArr3);
    end;
    self.SetInt(TArr6,TArr7);
    self.SubInt(TArr7,TArr8,TArr6,AMode);

    self.SetInt(TArr3,TArr2);
    self.DivInt(TArr2,TArr4,TArr3);
    self.InitZeroToNine(False,9,TArr2);
    self.Shift(True,False,TArr2);
    AMode:=self.isNum1BiggerAlign(TArr1,TArr2);
    if(AMode=0)or(AMode=2)then begin
      StrArr[Length(StrArr)-1]:=StrArr[Length(StrArr)-1]+self.GetIntDigit(TArr1[0]);
      break;
    end else begin
      self.InitZeroToNine(False,0,TArr2);
      self.Shift(True,False,TArr2);
      AMode:=1;
      While((AMode=1)or(AMode=2))do begin
        self.SumInt(TArr2,TArr3,TArr5);
        self.SetInt(TArr5,TArr2);
        AMode:=self.isNum1BiggerAlign(TArr1,TArr5);
      end;
      self.SubInt(TArr2,TArr3,TArr5,AMode);
      self.SubInt(TArr1,TArr5,TArr2,AMode);
      self.SetInt(TArr2,TArr1);
      AMode:=1;
      While(AMode=1)do begin
        self.DivInt(TArr5,TArr4,TArr2);
        self.SetInt(TArr2,TArr5);
        self.InitZeroToNine(False,9,TArr2);
        self.Shift(True,False,TArr2);
        AMode:=self.isNum1BiggerAlign(TArr5,TArr2);
      end;
      self.InitZeroToNine(False,1,TArr7);
      self.SetInt(TArr7,TArr8);
      self.Shift(False,True,TArr6);
      StrArr[Length(StrArr)-1]:=StrArr[Length(StrArr)-1]+self.GetIntDigit(TArr5[0]);
      While(InRangeInt(TArr7,TArr8,TArr6))do StrArr[Length(StrArr)-1]:=StrArr[Length(StrArr)-1]+'0';
      SetLength(StrArr,Length(StrArr)+1);
      StrArr[Length(StrArr)-1]:='';
    end;
    AMode:=1;
  end;
  for i:=0 to (Length(StrArr)-1)do begin
    if(i=0)then AStr:=StrArr[i] else AStr:=Copy(AStr,1,Length(AStr)-Length(StrArr[i]))+StrArr[i];
  end;
  if(bool1=0)then AStr:='-'+AStr;
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
  SetLength(TArr7,0);
  SetLength(TArr8,0);
  SetLength(StrArr,0);
end;

procedure ArrMath.IntArrMod(num1, num2: IntArr; var numResult: IntArr);
var
  TArr1,TArr2,TArr3:IntArr;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  SetLength(numResult,0);
  if(Length(num1)=0)then Exit;
  if(Length(num2)=0)then Exit;
  self.MulDivInt(num1,num2,TArr1,False);
  self.MulDivInt(TArr1,num2,TArr2,True);
  self.MulDivInt(TArr2,InitInt('-1'),TArr3,True);
  self.SumSubInt(num1,TArr3,numResult);
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

{ StringMath }

constructor StringMath.Create;
begin
  //nothing...
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

function StringMath.GetDeciCountBaseOne(num: String): Integer;
var
  Str1,Str2:String;
begin
  Str1:='';
  Str2:='';
  self.getWholeDeci(num,Str1,Str2);
  Result:=Length(Str2);
end;

procedure StringMath.RealCutDeciCountBaseOne(var num: String; CutAt: Integer);
var
  TArr1:RealArr;
begin
  TArr1:=nil;
  TArr1:=InitReal(num);
  ARealMath.RealCutDeciCountBaseOne(TArr1,CutAt);
  num:=RealStr(TArr1);
  SetLength(TArr1,0);
end;

procedure StringMath.RealCutDeciCountBaseOneR(var num: String; CutAt: Integer);
var
  TArr1:RealArr;
begin
  TArr1:=nil;
  TArr1:=InitReal(num);
  ARealMath.RealCutDeciCountBaseOneR(TArr1,CutAt);
  num:=RealStr(TArr1);
  SetLength(TArr1,0);
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

function StringMath.MulDiv(const num1, num2: String;
  const ADeciDigitCountBaseOne: Integer; const doMul: Boolean): String;
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
      Result:=DivA(n1,n2,ADeciDigitCountBaseOne);
    end else
    if(isPositive(n1)=False)and(isPositive(n2)=True)then begin
      n1:=Copy(n1,2,Length(n1));
      Result:='-'+DivA(n1,n2,ADeciDigitCountBaseOne);
    end else
    if(isPositive(n1)=True)and(isPositive(n2)=False)then begin
      n2:=Copy(n2,2,Length(n2));
      Result:='-'+DivA(n1,n2,ADeciDigitCountBaseOne);
    end else
    if(isPositive(n1)=False)and(isPositive(n2)=False)then begin
      n1:=Copy(n1,2,Length(n1));
      n2:=Copy(n2,2,Length(n2));
      Result:=DivA(n1,n2,ADeciDigitCountBaseOne);
    end;
  end;
  Result:=CleanNum(Result);
end;

function StringMath.xPowerInt(Abase, Apower: String;
  const ADeciDigitCountBaseOne: Integer): String;
var
  Amode:String;
begin
  Amode:='';
  Result:='1';
  While(Condition(Apower,'<>','0')=True)do begin
    Amode:=StrMath.ToRound(Xmod(Apower,'2'),False);
    if(Condition(Amode,'=','1')=True)then
      Result:=StrMath.MulDiv(Result,Abase,ADeciDigitCountBaseOne);
    Abase:=StrMath.MulDiv(Abase,Abase,ADeciDigitCountBaseOne);
    Apower:=StrMath.ToRound(StrMath.MulDiv(Apower,'2',ADeciDigitCountBaseOne,False),False);
  end;
end;

function StringMath.lyn(x: String; const ADeciDigitCountBaseOne: Integer
  ): String;
var
  n1,n2:String;
  n3,n4:String;
  n5,n6:String;
begin
  n1:='';
  n2:='';
  n3:='';
  n4:='';
  n5:='';
  n6:='';

  n1:=StrMath.MulDiv(StrMath.SumSub(x,'-1.0',
  ADeciDigitCountBaseOne),StrMath.SumSub(x,'1.0',
  ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False);

  n3:=n1;
  n4:=StrMath.MulDiv(n1,n1,ADeciDigitCountBaseOne,True);
  n2:='1.0';
  Result:='0.0';
  While(Condition(n3,'<>','0.0')=True)do begin
    n3:=StrMath.MulDiv(n3,n4,ADeciDigitCountBaseOne,True);
    n5:=self.xPowerInt(n1,n2,ADeciDigitCountBaseOne);
    n6:=StrMath.MulDiv(n5,n2,ADeciDigitCountBaseOne,False);
    Result:=StrMath.SumSub(Result,n6,ADeciDigitCountBaseOne);
    n2:=StrMath.SumSub(n2,'2.0');
  end;
  Result:=StrMath.MulDiv(Result,'2.0',ADeciDigitCountBaseOne,True);
end;

function StringMath.lnx(x: String; ADeciDigitCountBaseOne: Integer): String;
var
  n1,n2:String;
  Str1,Str2,Str3:String;
  i:Integer;
  Num1:Integer;
  bool1:Boolean;
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
  n1:='';
  n2:='';
  Str1:='';
  Str2:='';
  Str3:='';
  Str1:=x;
  Num1:=0;
  bool1:=False;
  for i:=1 to Length(Str1)do begin
    if(Str1[i]='.')then begin
      Num1:=i;
      bool1:=True;
      break;
    end;
  end;
  if(bool1=False)then Num1:=Length(Str1)+1;
  Str2:=Copy(Str1,1,Num1-1);
  Str3:=Copy(Str1,i+1,Length(Str1));
  if(Str2='')or(Str2='nil')then Str2:='0';
  if(Str3='')or(Str3='nil')then Str3:='0';
  Num1:=Length(Copy(Str2,2,Length(Str2)));
  Str1:=Copy(Str2,1,1)+'.'+Copy(Str2,2,Length(Str2))+Str3;

  n1:=self.lyn(Str1,ADeciDigitCountBaseOne);

  if(ADeciDigitCountBaseOne<=50)then
    n2:='2.30258509299404568401799145468436420760110148862877'
  else
    n2:=self.lyn('10.0',ADeciDigitCountBaseOne);

  n2:=StrMath.MulDiv(n2,IntToStr(Num1),ADeciDigitCountBaseOne);

  Result:=StrMath.SumSub(n1,n2,ADeciDigitCountBaseOne);
end;

function StringMath.log(num, base: String; ADeciDigitCountBaseOne: Integer
  ): String;
var
  numV1,numV2:String;
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
  numV1:=self.SumSub(self.MulDiv('2',lnx('2',ADeciDigitCountBaseOne),ADeciDigitCountBaseOne),
  lnx(self.MulDiv(num,self.xPowerInt('2','2',ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False),ADeciDigitCountBaseOne));

  numV2:=self.SumSub(self.MulDiv('2',lnx('2',ADeciDigitCountBaseOne),ADeciDigitCountBaseOne),
  lnx(self.MulDiv(base,self.xPowerInt('2','2',ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False),ADeciDigitCountBaseOne));

  Result:=self.MulDiv(numV1,numV2,ADeciDigitCountBaseOne,False);
end;

function StringMath.SqrRoot(x: String; const ADeciDigitCountBaseOne: Integer
  ): String;
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
  n1:=self.MulDiv('1','2',ADeciDigitCountBaseOne,false);
  for i:=0 to 20 do
    Result:=self.MulDiv(n1,self.SumSub(Result,self.MulDiv(x,Result,ADeciDigitCountBaseOne,False)),ADeciDigitCountBaseOne);
end;

function StringMath.Sine(Degrees: String; const ADeciDigitCountBaseOne: Integer
  ): String;
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
  self.MulDiv('360',self.RR(self.MulDiv(Degrees,'360',ADeciDigitCountBaseOne,
  False)),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne));

  BigN1:=self.isNum1Bigger(Degrees,'0');
  BigN2:=self.isNum1Bigger(Degrees,'90');

  BigN3:=self.isNum1Bigger(Degrees,'91');
  BigN4:=self.isNum1Bigger(Degrees,'180');

  BigN5:=self.isNum1Bigger(Degrees,'181');
  BigN6:=self.isNum1Bigger(Degrees,'270');

  BigN7:=self.isNum1Bigger(Degrees,'271');
  BigN8:=self.isNum1Bigger(Degrees,'360');

  if((BigN1=1)or(BigN1=2))and((BigN2=0)or(BigN2=2))then
    Result:=self.SqrRoot(self.MulDiv(Degrees,'90',ADeciDigitCountBaseOne,False),
    ADeciDigitCountBaseOne) else
  if((BigN3=1)or(BigN3=2))and((BigN4=0)or(BigN4=2))then
    Result:=self.SqrRoot(self.SumSub('1',self.MulDiv('-1',self.MulDiv(
    self.SumSub(Degrees,'-90'),'90',ADeciDigitCountBaseOne,False),
    ADeciDigitCountBaseOne)),ADeciDigitCountBaseOne) else
  if((BigN5=1)or(BigN5=2))and((BigN6=0)or(BigN6=2))then
    Result:=self.MulDiv('-1',self.SqrRoot(self.MulDiv(
    self.SumSub(Degrees,'-180'),'90',ADeciDigitCountBaseOne,False),
    ADeciDigitCountBaseOne),ADeciDigitCountBaseOne) else
  if((BigN7=1)or(BigN7=2))and((BigN8=0)or(BigN8=2))then
    Result:=self.MulDiv('-1',self.SqrRoot(self.SumSub('1',
    self.MulDiv('-1',self.MulDiv(self.SumSub(Degrees,'-270'),'90',
    ADeciDigitCountBaseOne,False),ADeciDigitCountBaseOne)),
    ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);
end;

function StringMath.Cosine(Degrees: String;
  const ADeciDigitCountBaseOne: Integer): String;
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
  self.MulDiv('360',self.RR(self.MulDiv(Degrees,'360',ADeciDigitCountBaseOne,
  False)),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne));

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
    self.xPowerInt(self.Sine(Degrees,ADeciDigitCountBaseOne),'2',
    ADeciDigitCountBaseOne),ADeciDigitCountBaseOne)),ADeciDigitCountBaseOne) else
  if((BigN3=1)or(BigN3=2))and((BigN4=0)or(BigN4=2))then
    Result:=self.MulDiv('-1',self.SqrRoot(self.SumSub('1',self.MulDiv('-1',
    self.xPowerInt(self.Sine(Degrees,ADeciDigitCountBaseOne),'2',
    ADeciDigitCountBaseOne),ADeciDigitCountBaseOne)),ADeciDigitCountBaseOne),
    ADeciDigitCountBaseOne) else
  if((BigN5=1)or(BigN5=2))and((BigN6=0)or(BigN6=2))then
    Result:=self.MulDiv('-1',self.SqrRoot(self.SumSub('1',self.MulDiv('-1',
    self.xPowerInt(self.Sine(Degrees,ADeciDigitCountBaseOne),'2',
    ADeciDigitCountBaseOne),ADeciDigitCountBaseOne)),ADeciDigitCountBaseOne),
    ADeciDigitCountBaseOne) else
  if((BigN7=1)or(BigN7=2))and((BigN8=0)or(BigN8=2))then
    Result:=self.SqrRoot(self.SumSub('1',self.MulDiv('-1',
    self.xPowerInt(self.Sine(Degrees,ADeciDigitCountBaseOne),'2',
    ADeciDigitCountBaseOne),ADeciDigitCountBaseOne)),ADeciDigitCountBaseOne);
end;

function StringMath.Tangent(Degrees: String;
  const ADeciDigitCountBaseOne: Integer): String;
begin
  Degrees:=self.CleanNum(Degrees);
  if(Degrees='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.MulDiv(self.Sine(Degrees,ADeciDigitCountBaseOne),
  self.Cosine(Degrees,ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False);
end;

function StringMath.InSine(SineX: String; const ADeciDigitCountBaseOne: Integer
  ): String;
begin
  SineX:=self.CleanNum(SineX);
  if(SineX='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.MulDiv(self.xPowerInt(SineX,'2',ADeciDigitCountBaseOne),'90',
  ADeciDigitCountBaseOne);
end;

function StringMath.InCosine(CosineX: String;
  const ADeciDigitCountBaseOne: Integer): String;
begin
  CosineX:=self.CleanNum(CosineX);
  if(CosineX='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.MulDiv(self.xPowerInt(self.SqrRoot(
  self.SumSub('1',self.MulDiv('-1',self.xPowerInt(CosineX,'2',
  ADeciDigitCountBaseOne),ADeciDigitCountBaseOne)),ADeciDigitCountBaseOne),'2',
  ADeciDigitCountBaseOne),'90',ADeciDigitCountBaseOne);
end;

function StringMath.InTangent(TangentX: String;
  const ADeciDigitCountBaseOne: Integer): String;
begin
  TangentX:=self.CleanNum(TangentX);
  if(TangentX='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.MulDiv(self.xPowerInt(self.MulDiv(TangentX,
  self.SqrRoot(self.SumSub('1',self.xPowerInt(TangentX,'2',
  ADeciDigitCountBaseOne)),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,
  false),'2',ADeciDigitCountBaseOne),'90',ADeciDigitCountBaseOne);
end;

function StringMath.FactorialInt(x: String;
  const ADeciDigitCountBaseOne: Integer): String;
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
    Result:=self.MulDiv(Result,Ct1,ADeciDigitCountBaseOne);
    BigN:=self.isNum1Bigger(Ct1,'1');
  end;
end;

function StringMath.ePower(x: String; const ADeciDigitCountBaseOne: Integer
  ): String;
var
  i:Integer;
begin
  Result:='1';
  for i:=1 to 20 do begin
    Result:=self.SumSub(Result,self.MulDiv(self.xPowerInt(x,IntToStr(i),
    ADeciDigitCountBaseOne),self.FactorialInt(IntToStr(i),ADeciDigitCountBaseOne),
    ADeciDigitCountBaseOne,False));
  end;
end;

function StringMath.ePowerX(x: String; ADeciDigitCountBaseOne: Integer): String;
begin
  x:=self.CleanNum(x);
  if(x='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.ePower(x,ADeciDigitCountBaseOne);
end;

function StringMath.xPower(Abase, Apower: String;
  ADeciDigitCountBaseOne: Integer): String;
var
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
  getWholeDeci(Apower,n1,n2);
  if(n2<>'0')then Result:=self.ePower(self.MulDiv(self.lnx(Abase,
  ADeciDigitCountBaseOne),Apower,ADeciDigitCountBaseOne),ADeciDigitCountBaseOne)
  else Result:=self.xPowerInt(Abase,Apower,ADeciDigitCountBaseOne);
end;

function StringMath.xModX(num1, num2: String): String;
var
  TArr1,TArr2,TArr3:String;
begin
  TArr1:='';
  TArr2:='';
  TArr3:='';
  Result:='';
  if(num1='')then Exit;
  if(num2='')then Exit;
  TArr1:=StrMath.MulDiv(num1,num2,False);
  TArr1:=StrMath.ToInt(TArr1,False);
  TArr2:=StrMath.MulDiv(TArr1,num2,True);
  TArr3:=StrMath.MulDiv(TArr2,'-1',True);
  Result:=StrMath.SumSub(num1,TArr3);
  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

initialization
  AArrMath:=ArrMath.Create;
  ARealMath:=RealMath.Create;
  AStrMath:=StringMath.Create;
finalization
  AArrMath.Free;
  ARealMath.Free;
  AStrMath.Free;

end.

