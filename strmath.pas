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
procedure Shift(isLeft,isSet:Boolean;var num:Number);
procedure Shift(isLeft:Boolean;var num:Number);
procedure ShiftPace(isLeft:Boolean;const PaceBaseOne:Integer;var num:Number);
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

function unNumInt(const num:IntArr):IntArr;
procedure unNumInt(const num:IntArr;var AAnswer:IntArr);

function xPowerInt(const Base,Power:IntArr):IntArr;
procedure xPowerInt(const Base,Power:IntArr;var AAnswer:IntArr);

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
function SumSubRealO(const num1,num2:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure SumSubRealO(const num1,num2:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);
function MulDivRealO(const num1,num2:RealArr;const doMul:Boolean = True):RealArr;
procedure MulDivRealO(const num1,num2:RealArr;var AAnswer:RealArr;const doMul:Boolean = True);
function MulDivRealO(const num1,num2:RealArr;DeciCountBaseOne:Integer;const doMul:Boolean = True):RealArr;
procedure MulDivRealO(const num1,num2:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer;const doMul:Boolean = True);

function SumSubReal(const num1,num2:RealArr):RealArr;
procedure SumSubReal(const num1,num2:RealArr;var AAnswer:RealArr);
function SumSubReal(const num1,num2:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure SumSubReal(const num1,num2:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);
function MulDivReal(const num1,num2:RealArr;const doMul:Boolean = True):RealArr;
procedure MulDivReal(const num1,num2:RealArr;var AAnswer:RealArr;const doMul:Boolean = True);
function MulDivReal(const num1,num2:RealArr;DeciCountBaseOne:Integer;const doMul:Boolean = True):RealArr;
procedure MulDivReal(const num1,num2:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer;const doMul:Boolean = True);

function unNumReal(const num:RealArr):RealArr;
procedure unNumReal(const num:RealArr;var AAnswer:RealArr);

function lnReal(const num:RealArr):RealArr;
procedure lnReal(const num:RealArr;var AAnswer:RealArr);
function lnReal(const num:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure lnReal(const num:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function logReal(const num:RealArr):RealArr;
procedure logReal(const num:RealArr;var AAnswer:RealArr);
function logReal(const num:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure logReal(const num:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function logReal(const num,base:RealArr):RealArr;
procedure logReal(const num,base:RealArr;var AAnswer:RealArr);
function logReal(const num,base:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure logReal(const num,base:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function SqrRootReal(const num:RealArr):RealArr;
procedure SqrRootReal(const num:RealArr;var AAnswer:RealArr);
function SqrRootReal(const num:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure SqrRootReal(const num:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function SineReal(const Degrees:RealArr):RealArr;
procedure SineReal(const Degrees:RealArr;var AAnswer:RealArr);
function SineReal(const Degrees:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure SineReal(const Degrees:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function CosineReal(const Degrees:RealArr):RealArr;
procedure CosineReal(const Degrees:RealArr;var AAnswer:RealArr);
function CosineReal(const Degrees:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure CosineReal(const Degrees:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function TangentReal(const Degrees:RealArr):RealArr;
procedure TangentReal(const Degrees:RealArr;var AAnswer:RealArr);
function TangentReal(const Degrees:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure TangentReal(const Degrees:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function InSineReal(const SineX:RealArr):RealArr;
procedure InSineReal(const SineX:RealArr;var AAnswer:RealArr);
function InSineReal(const SineX:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure InSineReal(const SineX:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function InCosineReal(const CosineX:RealArr):RealArr;
procedure InCosineReal(const CosineX:RealArr;var AAnswer:RealArr);
function InCosineReal(const CosineX:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure InCosineReal(const CosineX:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function InTangentReal(const TangentX:RealArr):RealArr;
procedure InTangentReal(const TangentX:RealArr;var AAnswer:RealArr);
function InTangentReal(const TangentX:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure InTangentReal(const TangentX:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function ePowerReal(const Power:RealArr):RealArr;
procedure ePowerReal(const Power:RealArr;var AAnswer:RealArr);
function ePowerReal(const Power:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure ePowerReal(const Power:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

function xPowerReal(const Base,Power:RealArr):RealArr;
procedure xPowerReal(const Base,Power:RealArr;var AAnswer:RealArr);
function xPowerReal(const Base,Power:RealArr;DeciCountBaseOne:Integer):RealArr;
procedure xPowerReal(const Base,Power:RealArr;var AAnswer:RealArr;DeciCountBaseOne:Integer);

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
function SumSub(const Num1,Num2:String;DeciCountBaseOne:Integer):String;
function MulDiv(const Num1,Num2:String;DeciCountBaseOne:Integer;const doMul:Boolean = True):String;
function SumSub(const Num1,Num2:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;
function MulDiv(const Num1,Num2:String;out AAnswer:String;DeciCountBaseOne:Integer;const doMul:Boolean = True):Boolean;

function isBinary(const Num:String):Boolean;
function IntToBinary(const Num:String):String;
function IntToBinary(const Num:String;out AAnswer:String):Boolean;
function BinaryToInt(const Num:String):String;
function BinaryToInt(const Num:String;out AAnswer:String):Boolean;

function unNum(const num:String):String;
function unNum(const num:String;var AAnswer:String):Boolean;

function ln(const x:String):String;
function ln(const x:String;out AAnswer:String):Boolean;
function ln(const x:String;DeciCountBaseOne:Integer):String;
function ln(const x:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function log(const num:String):String;
function log(const num:String;out AAnswer:String):Boolean;
function log(const num:String;DeciCountBaseOne:Integer):String;
function log(const num:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function log(const num,Base:String):String;
function log(const num,Base:String;out AAnswer:String):Boolean;
function log(const num,Base:String;DeciCountBaseOne:Integer):String;
function log(const num,Base:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function SqrRoot(const x:String):String;
function SqrRoot(const x:String;out AAnswer:String):Boolean;
function SqrRoot(const x:String;DeciCountBaseOne:Integer):String;
function SqrRoot(const x:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function Sine(const Degrees:String):String;
function Sine(const Degrees:String;out AAnswer:String):Boolean;
function Sine(const Degrees:String;DeciCountBaseOne:Integer):String;
function Sine(const Degrees:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function Cosine(const Degrees:String):String;
function Cosine(const Degrees:String;out AAnswer:String):Boolean;
function Cosine(const Degrees:String;DeciCountBaseOne:Integer):String;
function Cosine(const Degrees:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function Tangent(const Degrees:String):String;
function Tangent(const Degrees:String;out AAnswer:String):Boolean;
function Tangent(const Degrees:String;DeciCountBaseOne:Integer):String;
function Tangent(const Degrees:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function InSine(const SineX:String):String;
function InSine(const SineX:String;out AAnswer:String):Boolean;
function InSine(const SineX:String;DeciCountBaseOne:Integer):String;
function InSine(const SineX:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function InCosine(const CosineX:String):String;
function InCosine(const CosineX:String;out AAnswer:String):Boolean;
function InCosine(const CosineX:String;DeciCountBaseOne:Integer):String;
function InCosine(const CosineX:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function InTangent(const TangentX:String):String;
function InTangent(const TangentX:String;out AAnswer:String):Boolean;
function InTangent(const TangentX:String;DeciCountBaseOne:Integer):String;
function InTangent(const TangentX:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function ePower(const Power:String):String;
function ePower(const Power:String;out AAnswer:String):Boolean;
function ePower(const Power:String;DeciCountBaseOne:Integer):String;
function ePower(const Power:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function xPower(const Base,Power:String):String;
function xPower(const Base,Power:String;out AAnswer:String):Boolean;
function xPower(const Base,Power:String;DeciCountBaseOne:Integer):String;
function xPower(const Base,Power:String;out AAnswer:String;DeciCountBaseOne:Integer):Boolean;

function xMod(const num1,num2:String):String;

implementation

const

  RealDeciLength = 5;

type

  TPtrNumber = ^Number;
  PtrCodeProperties = ^CodeProperties;
  PtrCodeLog = ^CodeLog;

  TByteArr = Array of Byte;
  TBoolArr = Array of Boolean;
  TNumArr = Array of Integer;
  TParamArr = Array of Number;

  TProcNor = procedure(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
  TProcObj = procedure(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties) of object;

  TBitPos = Record
    ByteAtBaseZero:Integer;
    BitAtBaseZero:Integer;
  end;

  { CodeLog }

  CodeLog = class(TObject)
  private
    TLogError:Array of String;
    TLogWarning:Array of String;
  public
    constructor Create;
    destructor Destroy; override;
    procedure ChangeTo(var ACodeLog:CodeLog);
    procedure Error_CreateLastLog(const ALog:String);
    procedure Error_AppendLastLog(const ALog:String);
    function Error_LogToString:String;
    function Error_ArrLength:Integer;
    procedure Error_EraseLog;
    procedure Warning_CreateLastLog(const ALog:String);
    procedure Warning_AppendLastLog(const ALog:String);
    function Warning_LogToString:String;
    function Warning_ArrLength:Integer;
    procedure Warning_EraseLog;
  end;

  { CodePoint }

  CodePoint = class(TObject)
  private
    TPointArr:Array of Integer;
    TStartMemArr:Array of Integer;
  public
    constructor Create;
    constructor Create(const APoint:Integer);
    constructor Create(var ACodePoint:CodePoint);
    destructor Destroy; override;
    procedure ChangeTo(var ACodePoint:CodePoint);
    procedure Point_ResetAll;
    procedure Point_Continue;
    procedure Point_ToPrevious;
    procedure Point_SetPoint(const APoint:Integer);
    procedure Point_AddLast;
    procedure Point_AddLast(const APoint:Integer);
    procedure Point_DeleteLast;
    function Point_GetPoint:Integer;
    procedure Point_StartMem_SetPoint(const AStartMem:Integer);
    procedure Point_StartMem_AddLast;
    procedure Point_StartMem_AddLast(const AStartMem:Integer);
    procedure Point_StartMem_DeleteLast;
    function Point_StartMem_GetPoint:Integer;
  end;

  { CodeVariable }

  CodeVariable = class(TObject)
  private
    TVarArr:Array of Number;
    TVarMode:TByteArr;
    TVarName:Array of String;
    function isVarNameExist(const AVarName:String;out AIndex:Integer):Boolean;
    function isVarNamePart(const AVarName,AVarNamePart:String):Boolean;
  public
    constructor Create;
    constructor Create(var ACodeVariable:CodeVariable);
    destructor Destroy; override;
    procedure changeTo(var ACodeVariable:CodeVariable);
    procedure Var_ResetAll;
    procedure Var_GetVarNameParts(const AVarNamePart:String;out ANumArr:TNumArr);
    procedure Var_DeleteVarNames(const ANumArr:TNumArr);
    procedure Var_SetVarDataType(const AIndex:Integer;const AMode:String);
    function Var_GetVarDataType(const AIndex:Integer):String;
    function Var_AddVariable(const AVarName:String):Boolean;
    function Var_AddVariable(const AVarName:String;const AValue:Number):Boolean;
    function Var_AddVariableInt(const AVarName:String;AValue:Integer):Boolean;
    function Var_AddVariableReal(const AVarName:String;AValue:Real):Boolean;
    function Var_AddVariableStr(const AVarName:String;AValue:String):Boolean;
    function Var_ArrLength:Integer;
    procedure Var_SetValue(const AVarName:String;const AValue:Number);
    procedure Var_SetValueInt(const AVarName:String;AValue:Integer);
    procedure Var_SetValueReal(const AVarName:String;AValue:Real);
    procedure Var_SetValueStr(const AVarName:String;AValue:String);
    procedure Var_SetValue(const AIndex:Integer;const AValue:Number);
    procedure Var_SetValueInt(const AIndex:Integer;AValue:Integer);
    procedure Var_SetValueReal(const AIndex:Integer;AValue:Real);
    procedure Var_SetValueStr(const AIndex:Integer;AValue:String);
    function Var_GetVar(const AVarName:String):TPtrNumber;
    function Var_GetVar(const AIndex:Integer):TPtrNumber;
    function Var_GetValue(const AVarName:String):Number;
    function Var_GetValueInt(const AVarName:String):Integer;
    function Var_GetValueReal(const AVarName:String):Real;
    function Var_GetValueStr(const AVarName:String):String;
    function Var_GetValue(const AIndex:Integer):Number;
    function Var_GetValueInt(const AIndex:Integer):Integer;
    function Var_GetValueReal(const AIndex:Integer):Real;
    function Var_GetValueStr(const AIndex:Integer):String;
    function Var_GetValueInt_Index(const AVarName:String):Integer;
  end;

  TCVrArr = Array of CodeVariable;

  { CodeVariableArray }

  CodeVariableArray = class(TObject)
  private
    TCodeVar:TCVrArr;
  public
    Vars:^TCVrArr;
    Vars_AtLast:^CodeVariable;
    constructor Create;
    constructor Create(var ACodeVariableArray:CodeVariableArray);
    destructor Destroy; override;
    procedure ChangeTo(var ACodeVariableArray:CodeVariableArray);
    procedure Vars_CreateLast;
    procedure Vars_DeleteLast;
    procedure Vars_DeleteAllExceptFirst;
    function Vars_ArrLength:Integer;
  end;

  { CodeLine }

  CodeLine = class(TObject)
  private
    TCodeArr:Number;
    TParaArr:Array of Number;
    TFuncDataIsNor:Byte;        // 0 = False, 1 = True, 2 =  nil
    TFuncDataNor:TProcNor;
    TFuncDataObj:TProcObj;
    TCCodeProperties:^CodeProperties;
    function isVarNameValid(const VarName:String):Boolean;
    function GetAnd(num1,num2:Number):Number;
    function GetOr(num1,num2:Number):Number;
    function GetNot(const num1:Number):Number;
    function GetXOR(const num1,num2:Number):Number;
    function GetEqual(num1,num2:Number):Number;
    function GetEqual(const num1,num2:Real):Number;
    function GetNotEqual(const num1,num2:Number):Number;
    function GetNotEqual(const num1,num2:Real):Number;
    function GetIf(const num1:Number):Number;
    function GetGreaterThan(const num1,num2:Real):Number;
    function GetGreaterThanOrEqualTo(const num1,num2:Real):Number;
    function GetLessThan(const num1,num2:Real):Number;
    function GetLessThanOrEqualTo(const num1,num2:Real):Number;

    //procedure(AParamArr:TParamArr;var ATCMemCapNum:TPtrInteger;var ATCMemCapStr:TPtrString;var ATCCodeProperties:PtrCodeProperties);
    procedure DebugPoint_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure DebugPointCoreAt_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure DebugPointIf_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure DebugPointIf_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure DebugPointIf_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure DebugPointIf_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SumSubInteger_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MulDivInteger_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SumInteger_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SubInteger_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MulInteger_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure DivInteger_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SumSubReal_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MulDivReal_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SumReal_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SubReal_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MulReal_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure DivReal_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure ArrayIndexGet_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure ArrayIndexSet_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure StrIndexGet_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure StrIndexSet_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SetLength_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure Length_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure StrLength_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure JumpTo_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure JumpTo_Address_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure Goto_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure Goto_Address_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure Exit_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToV1_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToV1_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToV1_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToV1_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);

    procedure MoveV2ToGV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveGV1ToV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV1_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV1_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV1_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV1_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);

    procedure MoveV2ToGV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveGV2ToV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV2_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV2_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV2_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV2_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);

    procedure MoveV2ToGV3_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveGV3ToV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV3_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV3_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV3_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV3_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);

    procedure MoveV2ToGV4_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveGV4ToV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV4_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV4_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV4_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV4_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);

    procedure MoveV2ToGV5_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveGV5ToV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV5_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV5_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV5_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV5_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);

    procedure MoveV2ToGV6_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveGV6ToV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV6_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV6_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV6_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV6_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);

    procedure MoveV2ToGV7_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveGV7ToV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV7_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV7_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV7_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure MoveV2ToGV7_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);

    procedure V1AndV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1OrV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure NotV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1XORV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1SHLV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1SHRV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1EqV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1NotEqV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1GTV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1GTEqV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1LTV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure V1LTEqV2_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure CombineV2ToV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure IfV1_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure IfV1True_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure IfV1False_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure IfV1_Goto_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure IfV1True_Goto_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure IfV1False_Goto_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure AllocateMem_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure AllocateMem_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure AllocateMem_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure AllocateMem_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure BinStr_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure StartMem_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure EndMem_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure Port_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SetVarMem_Number_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SetVarMem_Integer_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SetVarMem_Real_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SetVarMem_String_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure Round_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure CopyStr_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure StrToInt_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure IntToStr_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
    procedure SetValueMode_Proc(AParamArr:TParamArr;var ATCCodeProperties:PtrCodeProperties);
  public
    constructor Create;
    constructor Create(var ACodeLine:CodeLine);
    constructor Create(const CodeData:Number);
    destructor Destroy; override;
    procedure ChangeTo(var ACodeLine:CodeLine);
    procedure Code_SetCodeData(const CodeData:Number);
    procedure Code_AddParamData(const ParamData:Number);
    procedure Code_AddParamDataInt(const ParamData:Integer);
    procedure Code_AddParamDataReal(const ParamData:Real);
    procedure Code_AddParamDataStr(const ParamData:String);
    procedure Code_SetFuncData(const FuncData:TProcNor);
    procedure Code_SetFuncData(const FuncData:TProcObj);
    function Code_ParamArrLength:Integer;
    function Code_GetParamData(const AIndexBaseZero:Integer):Number;
    function Code_GetParamDataInt(const AIndexBaseZero:Integer):Integer;
    function Code_GetParamDataReal(const AIndexBaseZero:Integer):Real;
    function Code_GetParamDataStr(const AIndexBaseZero:Integer):String;
    function Code_RunFuncData:Boolean;
  end;

  TClnArr = Array of CodeLine;

  { CodeArray }

  CodeArray = class(TObject)
  private
    TCodeLn:TClnArr;
    TCCodeProperties:^CodeProperties;
    procedure SetPtrCodeProperties;
  public
    Lines:^TClnArr;
    Lines_AtLast:^CodeLine;
    constructor Create;
    constructor Create(var ACodeArray:CodeArray);
    destructor Destroy; override;
    procedure ChangeTo(var ACodeArray:CodeArray);
    procedure Lines_CreateLast;
    function Lines_ArrLength:Integer;
  end;

  { CodeProperties }

  CodeProperties = class(TObject)
  private
    TCPoint:CodePoint;
    TPortArr:CodeVariableArray;
    TParaArr:CodeVariable;
    TVarArr:CodeVariableArray;
    TCodeArr:CodeArray;
    TCMemCapNum:Integer;
    TCLogs:PtrCodeLog;
  public
    Property_CodePoint:^CodePoint;
    Property_CodePorts:^CodeVariableArray;
    Property_CodeParams:^CodeVariable;
    Property_CodeVariable:^CodeVariableArray;
    Property_CodeArray:^CodeArray;
    constructor Create;
    constructor Create(var ACodeProperties:CodeProperties);
    destructor Destroy; override;
    procedure ChangeTo(var ACodeProperties:CodeProperties);
    procedure Property_ResetAll;
  end;

  CodePropertiesArr = Array of CodeProperties;

  { CodeCores }

  CodeCores = class(TObject)
  private
    TCoreIndex:Integer;
    TCPropertyArr:CodePropertiesArr;
    TCPropertyIndexDoneArr:TByteArr;
    TCPropertyDoneBoolArr:TBoolArr;
    TCPropertyOutBoundBoolArr:TBoolArr;
    TCLogs:CodeLog;
    procedure SetProperties;
    procedure AddProperty(var ACodeProperties:CodeProperties);
  public
    constructor Create;
    constructor Create(var ACodeCores:CodeCores);
    destructor Destroy; override;
    procedure ChangeTo(var ACodeCores:CodeCores);
    procedure Cores_AddProperty(var ACodeProperties:CodeProperties;ATimes:Integer);
    procedure Cores_AddProperty(var ACodeProperties:CodeProperties);
    procedure Cores_DeleteProperties;
    procedure Cores_ResetIndex;
    procedure Cores_ResetCores;
    procedure Cores_Continue;
    function Cores_GetPropertyVar_Number(const CoreIndexAt:Integer;const VarName:String):Number;
    function Cores_GetPropertyVar_Integer(const CoreIndexAt:Integer;const VarName:String):Integer;
    function Cores_GetPropertyVar_Real(const CoreIndexAt:Integer;const VarName:String):Real;
    function Cores_GetPropertyVar_String(const CoreIndexAt:Integer;const VarName:String):String;
    function Cores_ErrorLogs:String;
    function Cores_ErrorLength:Integer;
    function Cores_WarningLogs:String;
    function Cores_WarningLength:Integer;
    function Cores_GetCoreIndexAt:Integer;
    function Cores_GetPropertyIndexAt:Integer;
    function Cores_RunProperty:Boolean;
    function Cores_RunPropertyUntilOutBound:Boolean;
    function Cores_RunPropertyUntilDone:Boolean;
    function Cores_isPropertyOutBound:Boolean;
    function Cores_isPropertyDone:Boolean;
    function Cores_ArePropertiesOutBound:Boolean;
    function Cores_ArePropertiesDone:Boolean;
    function Cores_ArrLength:Integer;
  end;

  { CodeComponentBasic }

  CodeComponentBasic = class(TObject)
  private
    TCProperty:PtrCodeProperties;
    TCNumStartRec:Integer;
    TCNumEndRec:Integer;
    TCNumPresent:Integer;
    function isVarNameValid(const VarName:String):Boolean;
  public
    constructor Create;
    constructor Create(const APtrCodeProperties:PtrCodeProperties);
    constructor Create(var ACodeComponentBasic:CodeComponentBasic);
    destructor Destroy; override;
    procedure changeTo(var ACodeComponentBasic:CodeComponentBasic);
    procedure UnComponent_SetProperty(const APtrCodeProperties:PtrCodeProperties);
    function UnComponent_CodeLength:Integer;
    function UnComponent_AppendVariable(const VarName:String):Integer;
    function UnComponent_AppendVariable(const VarName:String;const AValue:Number):Integer;
    function UnComponent_AppendVariable(const VarName:String;const AValue:Integer):Integer;
    function UnComponent_AppendVariable(const VarName:String;const AValue:Real):Integer;
    function UnComponent_AppendVariable(const VarName:String;const AValue:String):Integer;
    function UnComponent_CreateVariable(const VarName:String):Integer;
    function UnComponent_CreateVariable(const VarName:String;const AValue:Number):Integer;
    function UnComponent_CreateVariable(const VarName:String;const AValue:Integer):Integer;
    function UnComponent_CreateVariable(const VarName:String;const AValue:Real):Integer;
    function UnComponent_CreateVariable(const VarName:String;const AValue:String):Integer;
    function Component_DebugPoint:Integer;
    function Component_DebugPointCoreAt(const CoreIndex:Integer):Integer;
    function Component_DebugPointIf(const num1VarName:String;const AValue:Number):Integer;
    function Component_DebugPointIf(const num1VarName:String;const AValue:Integer):Integer;
    function Component_DebugPointIf(const num1VarName:String;const AValue:Real):Integer;
    function Component_DebugPointIf(const num1VarName:String;const AValue:String):Integer;
    function Component_SumSubInteger(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_MulDivInteger(const num1VarName,num2VarName,ResultVarName,isMulVarName:String):Integer;
    function Component_SumInteger(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_SubInteger(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_MulInteger(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_DivInteger(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_SumSubReal(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_MulDivReal(const num1VarName,num2VarName,ResultVarName,isMulVarName:String):Integer;
    function Component_SumReal(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_SubReal(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_MulReal(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_DivReal(const num1VarName,num2VarName,ResultVarName:String):Integer;
    function Component_ArrayIndexGet(const ArrayVarName,IndexVarName,ResultVarName:String):Integer;
    function Component_ArrayIndexSet(const ArrayVarName,IndexVarName,ValueVarName:String):Integer;
    function Component_StrIndexGet(const StrVarName,IndexVarName,ResultVarName:String):Integer;
    function Component_StrIndexSet(const StrVarName,IndexVarName,ValueVarName:String):Integer;
    function Component_SetLength(const ArrayVarName,ArrayLengthVarName:String):Integer;
    function Component_Length(const ArrayVarName,ResultVarName:String):Integer;
    function Component_StrLength(const StrVarName,ResultVarName:String):Integer;
    function Component_JumpTo(const JumpToPortName:String):Integer;
    function Component_JumpTo(const JumpToPortAddress:Integer):Integer;
    function Component_Goto(const GotoPortName:String):Integer;
    function Component_Goto(const GotoPortAddress:Integer):Integer;
    function Component_Exit:Integer;
    function Component_MoveV2ToV1(const VarName1,VarName2:String):Integer;
    function Component_MoveC2ToV1(const VarName:String;const AValue:Number):Integer;
    function Component_MoveC2ToV1(const VarName:String;const AValue:Integer):Integer;
    function Component_MoveC2ToV1(const VarName:String;const AValue:Real):Integer;
    function Component_MoveC2ToV1(const VarName:String;const AValue:String):Integer;

    function Component_MoveV2ToGV1(const VarName2:String):Integer;
    function Component_MoveGV1ToV1(const VarName1:String):Integer;
    function Component_MoveC2ToGV1(const C2AValue:Number):Integer;
    function Component_MoveC2ToGV1(const C2AValue:Integer):Integer;
    function Component_MoveC2ToGV1(const C2AValue:Real):Integer;
    function Component_MoveC2ToGV1(const C2AValue:String):Integer;

    function Component_MoveV2ToGV2(const VarName2:String):Integer;
    function Component_MoveGV2ToV1(const VarName1:String):Integer;
    function Component_MoveC2ToGV2(const C2AValue:Number):Integer;
    function Component_MoveC2ToGV2(const C2AValue:Integer):Integer;
    function Component_MoveC2ToGV2(const C2AValue:Real):Integer;
    function Component_MoveC2ToGV2(const C2AValue:String):Integer;

    function Component_MoveV2ToGV3(const VarName2:String):Integer;
    function Component_MoveGV3ToV1(const VarName1:String):Integer;
    function Component_MoveC2ToGV3(const C2AValue:Number):Integer;
    function Component_MoveC2ToGV3(const C2AValue:Integer):Integer;
    function Component_MoveC2ToGV3(const C2AValue:Real):Integer;
    function Component_MoveC2ToGV3(const C2AValue:String):Integer;

    function Component_MoveV2ToGV4(const VarName2:String):Integer;
    function Component_MoveGV4ToV1(const VarName1:String):Integer;
    function Component_MoveC2ToGV4(const C2AValue:Number):Integer;
    function Component_MoveC2ToGV4(const C2AValue:Integer):Integer;
    function Component_MoveC2ToGV4(const C2AValue:Real):Integer;
    function Component_MoveC2ToGV4(const C2AValue:String):Integer;

    function Component_MoveV2ToGV5(const VarName2:String):Integer;
    function Component_MoveGV5ToV1(const VarName1:String):Integer;
    function Component_MoveC2ToGV5(const C2AValue:Number):Integer;
    function Component_MoveC2ToGV5(const C2AValue:Integer):Integer;
    function Component_MoveC2ToGV5(const C2AValue:Real):Integer;
    function Component_MoveC2ToGV5(const C2AValue:String):Integer;

    function Component_MoveV2ToGV6(const VarName2:String):Integer;
    function Component_MoveGV6ToV1(const VarName1:String):Integer;
    function Component_MoveC2ToGV6(const C2AValue:Number):Integer;
    function Component_MoveC2ToGV6(const C2AValue:Integer):Integer;
    function Component_MoveC2ToGV6(const C2AValue:Real):Integer;
    function Component_MoveC2ToGV6(const C2AValue:String):Integer;

    function Component_MoveV2ToGV7(const VarName2:String):Integer;
    function Component_MoveGV7ToV1(const VarName1:String):Integer;
    function Component_MoveC2ToGV7(const C2AValue:Number):Integer;
    function Component_MoveC2ToGV7(const C2AValue:Integer):Integer;
    function Component_MoveC2ToGV7(const C2AValue:Real):Integer;
    function Component_MoveC2ToGV7(const C2AValue:String):Integer;

    function Component_V1AndV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_V1OrV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_NotV1(const VarName1,ResultVarName:String):Integer;
    function Component_V1XORV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_V1SHLV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_V1SHRV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_V1EqV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_V1NotEqV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_V1GTV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_V1GTEqV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_V1LTV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_V1LTEqV2(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_CombineV2ToV1(const VarName1,VarName2,ResultVarName:String):Integer;
    function Component_IfV1(const VarName1,JumpToTruePortName,JumpToFalsePortName:String):Integer;
    function Component_IfV1True(const VarName1,JumpToTruePortName:String):Integer;
    function Component_IfV1False(const VarName1,JumpToFalsePortName:String):Integer;
    function Component_IfV1_Goto(const VarName1,GotoTruePortName,GotoFalsePortName:String):Integer;
    function Component_IfV1True_Goto(const VarName1,GotoTruePortName:String):Integer;
    function Component_IfV1False_Goto(const VarName1,GotoFalsePortName:String):Integer;
    function Component_AllocateMem(const VarName:String;const AValue:Number):Integer;
    function Component_AllocateMem(const VarName:String;const AValue:Integer):Integer;
    function Component_AllocateMem(const VarName:String;const AValue:Real):Integer;
    function Component_AllocateMem(const VarName:String;const AValue:String):Integer;
    function Component_BinStr(const VarName,CountVarName,ResultStrVarName:String):Integer;
    function Component_StartMem:Integer;
    function Component_EndMem:Integer;
    function Component_Port(const PortName:String):Integer;
    function Component_SetVarMem(const VarName:String;const AValue:Number):Integer;
    function Component_SetVarMem(const VarName:String;const AValue:Integer):Integer;
    function Component_SetVarMem(const VarName:String;const AValue:Real):Integer;
    function Component_SetVarMem(const VarName:String;const AValue:String):Integer;
    function Component_Round(const VarNameReal,ResultIntVarName:String):Integer;
    function Component_CopyStr(const VarNameStr,VarNameIntPos1,VarNameIntPos2,VarNameResultStr:String):Integer;
    function Component_StrToInt(const VarNameStr,VarNameResultInt:String):Integer;
    function Component_IntToStr(const VarNameInt,VarNameResultStr:String):Integer;
    function Component_SetValueMode(const VarName,ValueMode:String):Integer;
  end;

  PtrCodeComponentBasic = ^CodeComponentBasic;

  { CodeComponent }

  CodeComponent = class(TObject)
  private
    TPtrCComponent:PtrCodeComponentBasic;
  public
    constructor Create;
    constructor Create(const APtrCodeComponentBasic:PtrCodeComponentBasic);
    constructor Create(var ACodeComponent:CodeComponent);
    destructor Destroy; override;
    procedure changeTo(var ACodeComponent:CodeComponent);
    procedure UnComponent_SetCodeComponentBasic(const APtrCodeComponentBasic:PtrCodeComponentBasic);

    //Funcs

    function Component_isPositiveIntAdvance(const SetInt_Address,isPositiveAd_Address:Integer):Integer;

    //ArrMath

    function Component_SetLengthInc:Integer;
    function Component_SetLengthToLength:Integer;
    function Component_RR:Integer;
    function Component_unNumInteger:Integer;
    function Component_unNumReal:Integer;
    function Component_SetBit:Integer;
    function Component_ClearBit:Integer;
    function Component_ReverseBit:Integer;
    function Component_IsBitSet:Integer;
    function Component_BitsToStr:Integer;
    function Component_BitsLength:Integer;
    function Component_SetInt:Integer;
    function Component_ReverseInt(const IsBitSet_Address,SetBit_Address:Integer):Integer;
    function Component_isIntZero:Integer;
    function Component_MatchLength(const BitsLength_Address,IsBitSet_Address:Integer):Integer;
    function Component_Shift(const SetLengthInc_Address,MatchLength_Address,AlignNums_Address,IsBitSet_Address,SetBit_Address,SetLengthToLength_Address:Integer):Integer;
    function Component_ShiftPace(const unNumInteger_Address,RR_Address,SetLengthInc_Address,IsBitSet_Address,SetBit_Address:Integer):Integer;
    function Component_isPositiveAd(const IsBitSet_Address,Shift_Address,isIntZero_Address:Integer):Integer;
    function Component_isPositive(const isPositiveAd_Address:Integer):Integer;
    function Component_isNum1Bigger(const IsBitSet_Address:Integer):Integer;
    function Component_isNum1BiggerAlign(const AlignNums_Address,isNum1Bigger_Address:Integer):Integer;
    function Component_isIntNumber:Integer;
    function Component_GetIntDigit:Integer;
    function Component_InitZeroToNine(const SetBit_Address,Shift_Address:Integer):Integer;
    function Component_AlignNums:Integer;
    function Component_AssignIntNum(const SetInt_Address:Integer):Integer;
    function Component_CutSome(const SetLengthInc_Address,SetLengthToLength_Address:Integer):Integer;

    function Component_IsBitPosVar:Integer;
    function Component_CreateBitPosVar:Integer;
    function Component_GetBitPos(const IsBitPosVar_Address:Integer):Integer;

    function Component_SetBitPosZero(const IsBitPosVar_Address:Integer):Integer;
    function Component_CopyBitPos(const GetBitPos_Address,SetBitPos_Address:Integer):Integer;
    function Component_SetBitPos(const IsBitPosVar_Address:Integer):Integer;
    function Component_IncBitPos(const GetBitPos_Address,SetBitPos_Address:Integer):Integer;
    function Component_DecBitPos(const GetBitPos_Address,SetBitPos_Address:Integer):Integer;
    function Component_GetLastBit(const CreateBitPosVar_Address,SetBitPos_Address,SetBitPosZero_Address,IsBitPosEqual_Address,IsBitPosSet_Address,DecBitPos_Address:Integer):Integer;
    function Component_IsBitPosEqual(const GetBitPos_Address:Integer):Integer;
    function Component_IsBitPosSet(const GetBitPos_Address,IsBitSet_Address:Integer):Integer;
    function Component_BitPosSetArr(const GetBitPos_Address,SetBit_Address:Integer):Integer;
    function Component_BitPosAddSetArr(const GetBitPos_Address,SetBit_Address:Integer):Integer;

    function Component_SumInt(const AlignNums_Address,BitsLength_Address,IsBitSet_Address,SetLengthInc_Address,SetBit_Address:Integer):Integer;
    function Component_SubInt(const AlignNums_Address,isNum1Bigger_Address,SetInt_Address,BitsLength_Address,IsBitSet_Address,SetBit_Address:Integer):Integer;
    function Component_SumSubInt(const isPositive_Address,SubInt_Address,SumInt_Address,Shift_Address,CutSome_Address,SetInt_Address:Integer):Integer;

    function Component_MulIntBit(const CreateBitPosVar_Address,GetLastBit_Address,DecBitPos_Address,IsBitPosSet_Address,SetBitPosZero_Address,IsBitPosEqual_Address,IncBitPos_Address,CopyBitPos_Address,BitPosAddSetArr_Address:Integer):Integer;
    function Component_DivInt(const BitsLength_Address,IsBitSet_Address,isNum1BiggerAlign_Address,SubInt_Address,SetInt_Address,InitZeroToNine_Address,Shift_Address:Integer):Integer;
    function Component_MulDivInt(const isPositive_Address,isIntZero_Address,Shift_Address,MulIntBit_Address,DivInt_Address,CutSome_Address,SetInt_Address:Integer):Integer;

    function Component_StrToIntArr(const isIntNumber_Address,SumSubInt_Address,SetInt_Address,InitZeroToNine_Address,MulDivInt_Address:Integer):Integer;
    function Component_IntArrToStr(const CreateBitPosVar_Address,isPositiveIntAdvance_Address,Shift_Address,GetLastBit_Address,IsBitPosEqual_Address,IncBitPos_Address,IsBitPosSet_Address,SumSub_Address,RR_Str_Address:Integer):Integer;

    //StringMath

    function Component_IsIntegerArr(const RR_Address:Integer):Integer;
    function Component_LengthIntegerArr(const RR_Address:Integer):Integer;
    function Component_CreateIntegerArr:Integer;
    function Component_SetIntegerArr:Integer;
    function Component_GetIntegerArr:Integer;

    function Component_MoveDeciDiv(const getWholeDeci_Address:Integer):Integer;
    function Component_getWholeDeci:Integer;
    function Component_isPositiveAd_Str:Integer;
    function Component_isPositive_Str:Integer;
    function Component_CleanNum(const getWholeDeci_Address:Integer):Integer;
    function Component_GetAlign:Integer;
    function Component_isNum1Bigger_Str(const getWholeDeci_Address,GetAlign_Address:Integer):Integer;
    function Component_Carrying(const CreateIntegerArr_Address,LengthIntegerArr_Address,GetIntegerArr_Address,SetIntegerArr_Address:Integer):Integer;
    function Component_Reverse:Integer;
    function Component_RR_Str(const CleanNum_Address,isPositive_Str_Address,getWholeDeci_Address:Integer):Integer;
    function Component_RD_Str(const CleanNum_Address,isPositive_Str_Address,getWholeDeci_Address:Integer):Integer;
    function Component_RX_Str(const CleanNum_Address,isPositive_Str_Address,getWholeDeci_Address,SumSub_Address:Integer):Integer;
    function Component_GetDeciCountBaseOne(const getWholeDeci_Address:Integer):Integer;
    function Component_Sum(const getWholeDeci_Address,GetAlign_Address,Reverse_Address:Integer):Integer;
    function Component_Sub(const getWholeDeci_Address,GetAlign_Address,isNum1Bigger_Str_Address,Carrying_Address,LengthIntegerArr_Address,GetIntegerArr_Address,Reverse_Address:Integer):Integer;
    function Component_SumSub(const CleanNum_Address,isPositive_Str_Address,isNum1Bigger_Str_Address,Sum_Address,Sub_Address:Integer):Integer;
    function Component_Mul(const VarNameNum1Str,VarNameNum2Str,VarNameResultStr:String):Integer;
    function Component_DivA(const VarNameNum1Str,VarNameNum2Str,VarNameResultStr,VarNameIntDeciDigitCountBaseOne:String):Integer;
    function Component_MulDiv(const VarNameNum1Str,VarNameNum2Str,VarNameResultStr,VarNameIntADeciDigitCountBaseOne,VarNameBoolDoMul:String):Integer;
  end;

  { CodeBuild }

  CodeBuild = class(TObject)
  private
    TCodeComponentBasic:CodeComponentBasic;
    TCodeComponent:CodeComponent;
  public
    Build_Basic:^CodeComponentBasic;
    Build_Advance:^CodeComponent;
    constructor Create;
    constructor Create(const APtrCodeProperties:PtrCodeProperties);
    constructor Create(var ACodeBuild:CodeBuild);
    destructor Destroy; override;
    procedure changeTo(var ACodeBuild:CodeBuild);
  end;

  { ArrMath }

  ArrMath = class(TObject)
  public
    class function StrToNumber(const AStr:String):Number;
    class function NumberToStr(const Anum:Number):String;
    class function IntToNumber(const Int1:Integer):Number;
    class function NumberToInt(const num:Number):Integer;
    class function RealToNumber(const Real1:Real):Number;
    class function NumberToReal(const num:Number):Real;
    class function RR(const x:Real):Integer;
    class function unNum(const x:Integer):Integer;
    class function unNum(const x:Real):Real;
    class procedure SetBit(var B:Byte;const PosBaseZero:Byte);
    class procedure ClearBit(var B:Byte;const PosBaseZero:Byte);
    class procedure ReverseBit(var B:Byte;const PosBaseZero:Byte);
    class function IsBitSet(B:Byte;const PosBaseZero:Byte):Boolean;
    class procedure BitsToStr(const num:IntArr;var AStrBits:String);
    class function BitsLength(const num:IntArr):Integer;
    class procedure SetInt(const num:IntArr;var numResult:IntArr);
    class procedure ReverseInt(const num:IntArr;var numResult:IntArr);
    class function isIntZero(const num:IntArr):Boolean;
    class procedure MatchLength(const isLeft:Boolean;const num:IntArr;var numResult:IntArr);
    class procedure Shift(const isLeft,isSet:Boolean;var num:IntArr);
    class procedure Shift(const isLeft:Boolean;PaceBaseOne:Integer;var num:IntArr);
    class function isPositiveAd(var num:IntArr):Byte;
    class function isPositive(var num:IntArr):Boolean;
    class function isNum1Bigger(var num1,num2:IntArr):Byte;
    class function isNum1BiggerAlign(num1,num2:IntArr):Byte;
    class function isIntNumber(const Digit:String):Boolean;
    class function GetIntDigit(const Digit:Byte):String;
    class procedure InitZeroToNine(const isNeg:Boolean;const Digit:Byte;var num:IntArr);
    class procedure AlignNums(var num1,num2:IntArr);
    class procedure AssignIntNum(num:IntArr;var numResult:IntArr);
    class procedure CutSome(num:IntArr;var numResult:IntArr);
    class procedure SetBitPosZero(var num:TBitPos);
    class procedure CopyBitPos(const CopyNum:TBitPos;var ToNum:TBitPos);
    class procedure SetBitPos(var num:TBitPos;const ByteAtBaseZero,BitAtBaseZero:Integer);
    class procedure IncBitPos(var num:TBitPos);
    class procedure DecBitPos(var num:TBitPos);
    class procedure GetLastBit(var num:TBitPos;const numArr:IntArr);
    class function IsBitPosEqual(num1,num2:TBitPos):Boolean;
    class function IsBitPosSet(const num:TBitPos;const numArr:IntArr):Boolean;
    class procedure BitPosSetArr(const num:TBitPos;var numArr:IntArr);
    class procedure BitPosAddSetArr(const num:TBitPos;var numArr:IntArr);
    class procedure SumInt(num1,num2:IntArr;var numResult:IntArr);
    class function SumIntCores(num1,num2:IntArr;var numResult:IntArr):Boolean;
    class procedure SubInt(num1,num2:IntArr;var numResult:IntArr;out num1Bigger:Byte);
    class function SubIntCores(num1,num2:IntArr;var numResult:IntArr;out num1Bigger:Byte):Boolean;
    class procedure SumSubInt(num1,num2:IntArr;var numResult:IntArr);
    class function SumSubIntCores(num1,num2:IntArr;var numResult:IntArr):Boolean;
    class procedure MulInt(num1,num2:IntArr;var numResult:IntArr);
    class procedure MulIntSum(num1,num2:IntArr;var numResult:IntArr);
    class procedure MulIntBit(num1,num2:IntArr;var numResult:IntArr);
    class procedure DivInt(num1,num2:IntArr;var numResult:IntArr);
    class procedure MulDivInt(num1,num2:IntArr;var numResult:IntArr;const doMul:Boolean);
    class procedure xPowerIntArr(Base,Power:IntArr;var numResult:IntArr);
    class procedure StrToIntArr(AStr:String;var numResult:IntArr);
    class procedure IntArrToStr(num:IntArr;var AStr:String);
    class procedure IntArrToStr_Old1(num:IntArr;var AStr:String);
    class procedure IntArrMod(num1,num2:IntArr;var numResult:IntArr);
  end;

  { RealMath }

  RealMath = class(TObject)
  public
    class function CheckIntegrity(num:RealArr):Boolean;
    class function DigitStr(const AStr:String):Boolean;
    class procedure CombineArr(FromNum1,FromNum2:IntArr;var ToNum:RealArr;var NumAt:IntArr);
    class function SplitArr(var FromNum1,FromNum2:IntArr;const ToNum:RealArr;const NumAt:IntArr):Boolean;
    class procedure CombineIntToArr(FromNum:IntArr;var ToNum:RealArr);
    class procedure SplitIntToArr(var FromNum:IntArr;var ToNum:RealArr);
    class procedure StrToRealArr(AStr:String;var numResult:RealArr);
    class procedure RealArrToStr(num:RealArr;var AStr:String);
    class procedure IntArrToRealArrEqual(num:IntArr;var numResult:RealArr);
    class procedure RealArrToIntArrRound(num:RealArr;var numResult:IntArr);
    class procedure RRR(num:RealArr;var numResult:IntArr);
    class procedure RealArrRound(var num:RealArr;const ADeciDigitCountBaseOne:Integer);
    class function GetDeciCountBaseOne(num:RealArr):Integer;
    class procedure RealCutDeciCountBaseOne(var num:RealArr;CutAt:Integer);
    class procedure RealCutDeciCountBaseOneR(var num:RealArr;CutAt:Integer);
    class procedure AlignStr(var AStr1,AStr2:String;const APlace:String);
    class procedure AlignStrLeft(var AStr1,AStr2:String;const APlace:String);
    class procedure CutSomeR(var num:IntArr);
    class procedure CutSomeStr(var AStr:String);
    class function CutSomeStrLeft(AStr:String):String;
    class function ReverseStr(const AStr:String):String;
    class function isPositiveAd(num:RealArr):Byte;
    class function isPositive(num:RealArr):Boolean;
    class procedure SumReal(num1,num2:RealArr;var numResult:RealArr;ADeciDigitCountBaseOne:Integer);
    class procedure SubReal(num1,num2:RealArr;var numResult:RealArr;out NumBiggerMode:Byte;ADeciDigitCountBaseOne:Integer);
    class procedure SumSubReal(num1,num2:RealArr;var numResult:RealArr;ADeciDigitCountBaseOne:Integer);
    class procedure MulReal(num1,num2:RealArr;var numResult:RealArr;ADeciDigitCountBaseOne:Integer);
    class procedure DivReal(num1,num2:RealArr;var numResult:RealArr;ADeciDigitCountBaseOne:Integer);
    class procedure MulDivReal(num1,num2:RealArr;var numResult:RealArr;const doMul:Boolean;ADeciDigitCountBaseOne:Integer);
    class procedure RealArrMod(num1,num2:RealArr;var numResult:RealArr);
    class function RealXPowerInt(Abase,Apower:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class function RealXPowerIntStr(Abase,Apower:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class procedure lynReal(num:RealArr;var numResult:RealArr;const ADeciDigitCountBaseOne:Integer);
    class procedure lynRealR(num:RealArr;var numResult:RealArr;const ADeciDigitCountBaseOne:Integer);
    class procedure logaReal(num,base:RealArr;var numResult:RealArr;const ADeciDigitCountBaseOne:Integer);
    class procedure Root2Real(num:RealArr;var numResult:RealArr;const ADeciDigitCountBaseOne:Integer);
    class function SinReal(Degrees:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class function CosReal(Degrees:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class function TanReal(Degrees:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class function InSinReal(SinX:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class function InCosReal(CosX:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class function InTanReal(TanX:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class function RealFactorialIntStr(num:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class function ePower(num:RealArr;const ADeciDigitCountBaseOne:Integer):RealArr;
    class function ePowerX(num:RealArr;ADeciDigitCountBaseOne:Integer):RealArr;
    class function xPower(Abase,Apower:RealArr;ADeciDigitCountBaseOne:Integer):RealArr;
    class procedure xPowerDiv2(var Abase,Apower:RealArr;ADeciDigitCountBaseOne:Integer);
    class function xPowerX(Abase,Apower:RealArr;ADeciDigitCountBaseOne:Integer):RealArr;
  end;

  { StringMath }

  StringMath = class(TObject)
  public
    class function RR(const x:Real):Integer;
    class function unNum(const x:Integer):Integer;
    class procedure MoveDeciDiv(var Num1,Num2:String);
    class procedure getWholeDeci(const NumV:String;out AWhole,ADeci:String);
    class function isPositiveAd(const NumV:String):Byte;
    class function isPositive(const NumV:String):Boolean;
    class function CleanNum(const NumV:String):String;
    class procedure GetAlign(var num1,num2:String;const StrPlace:String;const isRight:Boolean);
    class function isNum1Bigger(const num1,num2:String):Byte;
    class procedure Carrying(const num1,num2:String;var TArr1,TArr2:TNumArr);
    class function Reverse(const Num1:String):String;
    class function RR(x:String;const WithDeci:Boolean = True):String;
    class function RD(x:String;const WithDeci:Boolean = True):String;
    class function RX(x:String;const WithDeci:Boolean = True):String;
    class function GetDeciCountBaseOne(num:String):Integer;
    class procedure RealCutDeciCountBaseOne(var num:String;CutAt:Integer);
    class procedure RealCutDeciCountBaseOneR(var num:String;CutAt:Integer);
    class function Sum(const num1,num2:String):String;
    class function Sub(const num1,num2:String):String;
    class function SumSub(const num1,num2:String):String;
    class function Mul(const num1,num2:String):String;
    class function DivA(const num1,num2:String;const DeciDigitCountBaseOne:Integer):String;
    class function MulDiv(const num1,num2:String;const ADeciDigitCountBaseOne:Integer;const doMul:Boolean = True):String;
    class function xPowerInt(Abase,Apower:String;const ADeciDigitCountBaseOne:Integer):String;
    class function lyn(x:String;const ADeciDigitCountBaseOne:Integer):String;
    class function lnx(x:String;ADeciDigitCountBaseOne:Integer):String;
    class function log(num,base:String;ADeciDigitCountBaseOne:Integer):String;
    class function SqrRoot(x:String;const ADeciDigitCountBaseOne:Integer):String;
    class function Sine(Degrees:String;const ADeciDigitCountBaseOne:Integer):String;
    class function Cosine(Degrees:String;const ADeciDigitCountBaseOne:Integer):String;
    class function Tangent(Degrees:String;const ADeciDigitCountBaseOne:Integer):String;
    class function InSine(SineX:String;const ADeciDigitCountBaseOne:Integer):String;
    class function InCosine(CosineX:String;const ADeciDigitCountBaseOne:Integer):String;
    class function InTangent(TangentX:String;const ADeciDigitCountBaseOne:Integer):String;
    class function FactorialInt(x:String;const ADeciDigitCountBaseOne:Integer):String;
    class function ePower(x:String;ADeciDigitCountBaseOne:Integer):String;
    class function ePowerX(x:String;ADeciDigitCountBaseOne:Integer):String;
    class function xPower(Abase,Apower:String;ADeciDigitCountBaseOne:Integer):String;
    class procedure xPowerDiv2(var Abase,Apower:String;ADeciDigitCountBaseOne:Integer);
    class function xPowerX(Abase,Apower:String;ADeciDigitCountBaseOne:Integer):String;
    class function xModX(num1,num2:String):String;
  end;

{ Extra-Math }

function isNaNNumber(const num: Number): Boolean;
begin
  Result:=True;
  if(Length(num)>0)then Result:=False;
end;

procedure Shift(isLeft, isSet: Boolean; var num: Number);
var
  i:Integer;
begin
  if(isLeft=True)then isLeft:=False else isLeft:=True;
  if(Length(num)=0)then Exit;
  i:=Length(num);
  ArrMath.Shift(isLeft,isSet,num);
  if(isLeft=False)then SetLength(num,i);
end;

procedure Shift(isLeft: Boolean; var num: Number);
var
  i:Integer;
begin
  if(isLeft=True)then isLeft:=False else isLeft:=True;
  if(Length(num)=0)then Exit;
  i:=Length(num);
  ArrMath.Shift(isLeft,False,num);
  if(isLeft=False)then SetLength(num,i);
end;

procedure ShiftPace(isLeft: Boolean; const PaceBaseOne: Integer; var num: Number
  );
var
  i:Integer;
begin
  if(isLeft=True)then isLeft:=False else isLeft:=True;
  if(Length(num)=0)then Exit;
  i:=Length(num);
  ArrMath.Shift(isLeft,PaceBaseOne,num);
  if(isLeft=False)then SetLength(num,i);
end;

procedure ShiftLeft(var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  ArrMath.Shift(False,False,num);
  SetLength(num,i);
end;

procedure ShiftRight(var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  ArrMath.Shift(True,False,num);
  SetLength(num,i);
end;

procedure ShiftPaceLeft(const PaceBaseOne: Integer; var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  ArrMath.Shift(False,PaceBaseOne,num);
  SetLength(num,i);
end;

procedure ShiftPaceRight(const PaceBaseOne: Integer; var num: Number);
var
  i:Integer;
begin
  if(Length(num)=0)then Exit;
  i:=Length(num);
  ArrMath.Shift(True,PaceBaseOne,num);
  SetLength(num,i);
end;

function AssignNum(const num: Number): Number;
begin
  Result:=nil;
  ArrMath.AssignIntNum(num,Result);
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
  ArrMath.BitsToStr(num,Result);
end;

function isIntZero(const num: IntArr): Boolean;
var
  TArr1:IntArr;
begin
  Result:=False;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  ArrMath.SetInt(num,TArr1);
  ArrMath.Shift(True,False,TArr1);
  Result:=ArrMath.isIntZero(TArr1);
  SetLength(TArr1,0);
end;

function isPositiveIntAdvance(const num: IntArr): Byte;
var
  TArr1:IntArr;
begin
  Result:=3;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  ArrMath.SetInt(num,TArr1);
  Result:=ArrMath.isPositiveAd(TArr1);
  SetLength(TArr1,0);
end;

function isPositiveInt(const num: IntArr): Boolean;
var
  TArr1:IntArr;
begin
  Result:=False;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  ArrMath.SetInt(num,TArr1);
  Result:=ArrMath.isPositive(TArr1);
  SetLength(TArr1,0);
end;

procedure SetZeroInt(var num: IntArr);
begin
  num:=InitInt('0');
end;

function SumSubInt(const num1, num2: IntArr): IntArr;
begin
  Result:=nil;
  //ArrMath.SumSubInt(num1,num2,Result);
  ArrMath.SumSubIntCores(num1,num2,Result);
end;

procedure SumSubInt(const num1, num2: IntArr; var AAnswer: IntArr);
begin
  //ArrMath.SumSubInt(num1,num2,AAnswer);
  ArrMath.SumSubIntCores(num1,num2,AAnswer);
end;

function MulDivInt(const num1, num2: IntArr; const doMul: Boolean): IntArr;
begin
  Result:=nil;
  ArrMath.MulDivInt(num1,num2,Result,doMul);
end;

procedure MulDivInt(const num1, num2: IntArr; var AAnswer: IntArr;
  const doMul: Boolean);
begin
  ArrMath.MulDivInt(num1,num2,AAnswer,doMul);
end;

function unNumInt(const num: IntArr): IntArr;
begin
  Result:=AssignNum(num);
  if(ConditionInt(Result,'<',InitInt('0'))=True)then
    Result:=MulDivInt(Result,InitInt('-1'));
end;

procedure unNumInt(const num: IntArr; var AAnswer: IntArr);
begin
  AAnswer:=AssignNum(num);
  if(ConditionInt(AAnswer,'<',InitInt('0'))=True)then
    AAnswer:=MulDivInt(AAnswer,InitInt('-1'));
end;

function xPowerInt(const Base, Power: IntArr): IntArr;
{var
  n1,n2,n3:RealArr;}
begin
  Result:=nil;
  ArrMath.xPowerIntArr(Base,Power,Result);
  {
  n1:=nil;
  n2:=nil;
  n3:=nil;
  n1:=IntReal(Base);
  n2:=IntReal(Power);
  n3:=RealMath.RealXPowerInt(n1,n2,3);
  Result:=StrMath.RoundRealR(n3);
  }
end;

procedure xPowerInt(const Base, Power: IntArr; var AAnswer: IntArr);
{var
  n1,n2,n3:RealArr;}
begin
  ArrMath.xPowerIntArr(Base,Power,AAnswer);
  {
  n1:=nil;
  n2:=nil;
  n3:=nil;
  n1:=IntReal(Base);
  n2:=IntReal(Power);
  n3:=RealMath.RealXPowerInt(n1,n2,3);
  AAnswer:=StrMath.RoundRealR(n3);
  }
end;

function InitInt(const num: String): IntArr;
begin
  Result:=nil;
  ArrMath.StrToIntArr(num,Result);
end;

function IntStr(const num: IntArr): String;
begin
  Result:='';
  ArrMath.IntArrToStr(num,Result);
end;

function IntMod(const num1, num2: IntArr): IntArr;
begin
  Result:=nil;
  ArrMath.IntArrMod(num1,num2,Result);
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
  RealMath.IntArrToRealArrEqual(num,Result);
end;

function RoundReal(const num: RealArr): IntArr;
begin
  Result:=nil;
  RealMath.RealArrToIntArrRound(num,Result);
end;

function RoundRealR(const num: RealArr): IntArr;
begin
  Result:=nil;
  RealMath.RRR(num,Result);
end;

function RealDeciCountBaseOne(const num: RealArr): Integer;
begin
  Result:=RealMath.GetDeciCountBaseOne(num);
end;

function CutRealDeciCountBaseOne(const num: RealArr; const CutAt: Integer
  ): RealArr;
begin
  Result:=AssignNum(num);
  RealMath.RealCutDeciCountBaseOne(Result,CutAt);
end;

function CutRealDeciCountBaseOneR(const num: RealArr; const CutAt: Integer
  ): RealArr;
begin
  Result:=AssignNum(num);
  RealMath.RealCutDeciCountBaseOneR(Result,CutAt);
end;

function isPositiveRealAdvance(const num: RealArr): Byte;
var
  TArr1:RealArr;
begin
  Result:=3;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  ArrMath.SetInt(num,TArr1);
  Result:=RealMath.isPositiveAd(TArr1);
  SetLength(TArr1,0);
end;

function isPositiveReal(const num: RealArr): Boolean;
var
  TArr1:RealArr;
begin
  Result:=False;
  TArr1:=nil;
  if(Length(num)=0)then Exit;
  ArrMath.SetInt(num,TArr1);
  Result:=RealMath.isPositive(TArr1);
  SetLength(TArr1,0);
end;

function SumSubRealO(const num1, num2: RealArr): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num1);
  Int2:=RealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  RealMath.SumSubReal(num1,num2,Result,Int3);
end;

procedure SumSubRealO(const num1, num2: RealArr; var AAnswer: RealArr);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num1);
  Int2:=RealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  RealMath.SumSubReal(num1,num2,AAnswer,Int3);
end;

function SumSubRealO(const num1, num2: RealArr; DeciCountBaseOne: Integer
  ): RealArr;
begin
  Result:=nil;
  RealMath.SumSubReal(num1,num2,Result,DeciCountBaseOne);
end;

procedure SumSubRealO(const num1, num2: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
begin
  RealMath.SumSubReal(num1,num2,AAnswer,DeciCountBaseOne);
end;

function MulDivRealO(const num1, num2: RealArr; const doMul: Boolean): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num1);
  Int2:=RealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  RealMath.MulDivReal(num1,num2,Result,doMul,Int3);
end;

procedure MulDivRealO(const num1, num2: RealArr; var AAnswer: RealArr;
  const doMul: Boolean);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num1);
  Int2:=RealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  RealMath.MulDivReal(num1,num2,AAnswer,doMul,Int3);
end;

function MulDivRealO(const num1, num2: RealArr; DeciCountBaseOne: Integer;
  const doMul: Boolean): RealArr;
begin
  Result:=nil;
  RealMath.MulDivReal(num1,num2,Result,doMul,DeciCountBaseOne);
end;

procedure MulDivRealO(const num1, num2: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer; const doMul: Boolean);
begin
  RealMath.MulDivReal(num1,num2,AAnswer,doMul,DeciCountBaseOne);
end;

function SumSubReal(const num1, num2: RealArr): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num1);
  Int2:=RealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  RealMath.SumSubReal(num1,num2,Result,Int3+1);
  RealMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

procedure SumSubReal(const num1, num2: RealArr; var AAnswer: RealArr);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num1);
  Int2:=RealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  RealMath.SumSubReal(num1,num2,AAnswer,Int3+1);
  RealMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
end;

function SumSubReal(const num1, num2: RealArr; DeciCountBaseOne: Integer
  ): RealArr;
begin
  Result:=nil;
  DeciCountBaseOne:=DeciCountBaseOne+1;
  RealMath.SumSubReal(num1,num2,Result,DeciCountBaseOne+1);
  RealMath.RealCutDeciCountBaseOneR(Result,DeciCountBaseOne);
end;

procedure SumSubReal(const num1, num2: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
begin
  DeciCountBaseOne:=DeciCountBaseOne+1;
  RealMath.SumSubReal(num1,num2,AAnswer,DeciCountBaseOne+1);
  RealMath.RealCutDeciCountBaseOneR(AAnswer,DeciCountBaseOne);
end;

function MulDivReal(const num1, num2: RealArr; const doMul: Boolean): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num1);
  Int2:=RealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  RealMath.MulDivReal(num1,num2,Result,doMul,Int3+1);
  RealMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

procedure MulDivReal(const num1, num2: RealArr; var AAnswer: RealArr;
  const doMul: Boolean);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num1);
  Int2:=RealMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  RealMath.MulDivReal(num1,num2,AAnswer,doMul,Int3+1);
  RealMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
end;

function MulDivReal(const num1, num2: RealArr; DeciCountBaseOne: Integer;
  const doMul: Boolean): RealArr;
begin
  Result:=nil;
  DeciCountBaseOne:=DeciCountBaseOne+1;
  RealMath.MulDivReal(num1,num2,Result,doMul,DeciCountBaseOne+1);
  RealMath.RealCutDeciCountBaseOneR(Result,DeciCountBaseOne);
end;

procedure MulDivReal(const num1, num2: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer; const doMul: Boolean);
begin
  DeciCountBaseOne:=DeciCountBaseOne+1;
  RealMath.MulDivReal(num1,num2,AAnswer,doMul,DeciCountBaseOne+1);
  RealMath.RealCutDeciCountBaseOneR(AAnswer,DeciCountBaseOne);
end;

function unNumReal(const num: RealArr): RealArr;
begin
  Result:=AssignNum(num);
  if(ConditionReal(Result,'<',InitReal('0'))=True)then
    Result:=MulDivReal(Result,InitReal('-1'));
end;

procedure unNumReal(const num: RealArr; var AAnswer: RealArr);
begin
  AAnswer:=AssignNum(num);
  if(ConditionReal(AAnswer,'<',InitReal('0'))=True)then
    AAnswer:=MulDivReal(AAnswer,InitReal('-1'));
end;

function lnReal(const num: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Int1:=Int1+5;
  RealMath.lynRealR(num,Result,Int1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1-5);
end;

procedure lnReal(const num: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Int1:=Int1+5;
  RealMath.lynRealR(num,AAnswer,Int1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1-5);
end;

function lnReal(const num: RealArr; DeciCountBaseOne: Integer): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Int1:=Int1+5;
  RealMath.lynRealR(num,Result,Int1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1-5);
end;

procedure lnReal(const num: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Int1:=Int1+5;
  RealMath.lynRealR(num,AAnswer,Int1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1-5);
end;

function logReal(const num: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  RealMath.logaReal(num,InitReal('10.0'),Result,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure logReal(const num: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  RealMath.logaReal(num,InitReal('10.0'),AAnswer,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function logReal(const num: RealArr; DeciCountBaseOne: Integer): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  RealMath.logaReal(num,InitReal('10.0'),Result,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure logReal(const num: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  RealMath.logaReal(num,InitReal('10.0'),AAnswer,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function logReal(const num, base: RealArr): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num);
  Int2:=RealMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  RealMath.logaReal(num,base,Result,Int3+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int3);
end;

procedure logReal(const num, base: RealArr; var AAnswer: RealArr);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num);
  Int2:=RealMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  RealMath.logaReal(num,base,AAnswer,Int3+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int3);
end;

function logReal(const num, base: RealArr; DeciCountBaseOne: Integer): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num);
  Int2:=RealMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Int3:=Int3+1;
  RealMath.logaReal(num,base,Result,Int3+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int3);
end;

procedure logReal(const num, base: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num);
  Int2:=RealMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Int3:=Int3+1;
  RealMath.logaReal(num,base,AAnswer,Int3+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int3);
end;

function SqrRootReal(const num: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  RealMath.Root2Real(num,Result,Int1+2);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure SqrRootReal(const num: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  RealMath.Root2Real(num,AAnswer,Int1+2);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function SqrRootReal(const num: RealArr; DeciCountBaseOne: Integer): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  RealMath.Root2Real(num,Result,Int1+2);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure SqrRootReal(const num: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  RealMath.Root2Real(num,AAnswer,Int1+2);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function SineReal(const Degrees: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=RealMath.SinReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure SineReal(const Degrees: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=RealMath.SinReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function SineReal(const Degrees: RealArr; DeciCountBaseOne: Integer): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=RealMath.SinReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure SineReal(const Degrees: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=RealMath.SinReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function CosineReal(const Degrees: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=RealMath.CosReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure CosineReal(const Degrees: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=RealMath.CosReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function CosineReal(const Degrees: RealArr; DeciCountBaseOne: Integer): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=RealMath.CosReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure CosineReal(const Degrees: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=RealMath.CosReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function TangentReal(const Degrees: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=RealMath.TanReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure TangentReal(const Degrees: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=RealMath.TanReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function TangentReal(const Degrees: RealArr; DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=RealMath.TanReal(Degrees,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure TangentReal(const Degrees: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=RealMath.TanReal(Degrees,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InSineReal(const SineX: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=RealMath.InSinReal(SineX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InSineReal(const SineX: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=RealMath.InSinReal(SineX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InSineReal(const SineX: RealArr; DeciCountBaseOne: Integer): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=RealMath.InSinReal(SineX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InSineReal(const SineX: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=RealMath.InSinReal(SineX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InCosineReal(const CosineX: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=RealMath.InCosReal(CosineX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InCosineReal(const CosineX: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=RealMath.InCosReal(CosineX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InCosineReal(const CosineX: RealArr; DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=RealMath.InCosReal(CosineX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InCosineReal(const CosineX: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=RealMath.InCosReal(CosineX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InTangentReal(const TangentX: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=RealMath.InTanReal(TangentX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InTangentReal(const TangentX: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=RealMath.InTanReal(TangentX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function InTangentReal(const TangentX: RealArr; DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=RealMath.InTanReal(TangentX,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure InTangentReal(const TangentX: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=RealMath.InTanReal(TangentX,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function ePowerReal(const Power: RealArr): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=RealMath.ePowerX(Power,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure ePowerReal(const Power: RealArr; var AAnswer: RealArr);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=RealMath.ePowerX(Power,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function ePowerReal(const Power: RealArr; DeciCountBaseOne: Integer): RealArr;
var
  Int1:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=RealMath.ePowerX(Power,Int1+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int1);
end;

procedure ePowerReal(const Power: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=RealMath.ePowerX(Power,Int1+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int1);
end;

function xPowerReal(const Base, Power: RealArr): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Base);
  Int2:=RealMath.GetDeciCountBaseOne(Power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  Result:=RealMath.xPowerX(base,power,Int3+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int3);
end;

procedure xPowerReal(const Base, Power: RealArr; var AAnswer: RealArr);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Base);
  Int2:=RealMath.GetDeciCountBaseOne(Power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  AAnswer:=RealMath.xPowerX(base,power,Int3+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int3);
end;

function xPowerReal(const Base, Power: RealArr; DeciCountBaseOne: Integer
  ): RealArr;
var
  Int1,Int2,Int3:Integer;
begin
  Result:=nil;
  Int1:=RealMath.GetDeciCountBaseOne(Base);
  Int2:=RealMath.GetDeciCountBaseOne(Power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Int3:=Int3+1;
  Result:=RealMath.xPowerX(base,power,Int3+1);
  Result:=CutRealDeciCountBaseOneR(Result,Int3);
end;

procedure xPowerReal(const Base, Power: RealArr; var AAnswer: RealArr;
  DeciCountBaseOne: Integer);
var
  Int1,Int2,Int3:Integer;
begin
  Int1:=RealMath.GetDeciCountBaseOne(Base);
  Int2:=RealMath.GetDeciCountBaseOne(Power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Int3:=Int3+1;
  AAnswer:=RealMath.xPowerX(base,power,Int3+1);
  AAnswer:=CutRealDeciCountBaseOneR(AAnswer,Int3);
end;

function InitReal(const num: String): RealArr;
begin
  Result:=nil;
  RealMath.StrToRealArr(num,Result);
end;

function RealStr(const num: RealArr): String;
begin
  Result:='';
  RealMath.RealArrToStr(num,Result);
end;

function RealMod(const num1, num2: RealArr): RealArr;
begin
  Result:=nil;
  RealMath.RealArrMod(num1,num2,Result);
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
  Num1:=StringMath.CleanNum(Num1);
  Num2:=StringMath.CleanNum(Num2);
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
  AMode:=StringMath.isPositiveAd(Cal);
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
  NV:=StringMath.CleanNum(NumV);
  if(NV='nan')then Result:=True
  else Result:=False;
end;

function CutDeciCount(const NumV: String; const DeciCountBaseOne: Integer
  ): String;
var
  N1:String;
  AWhole,ADeci:String;
begin
  N1:=StringMath.CleanNum(NumV);
  if(N1='nan')then begin
    Result:='nan';
    Exit;
  end;
  StringMath.getWholeDeci(N1,AWhole,ADeci);
  if(Length(ADeci)>DeciCountBaseOne)then begin
    Result:=AWhole+'.'+Copy(ADeci,1,DeciCountBaseOne);
  end else begin
    Result:=AWhole+'.'+ADeci;
  end;
  Result:=StringMath.CleanNum(Result);
end;

function isNumber(const NumV: String): Boolean;
var
  Cal:String;
begin
  Cal:=StringMath.CleanNum(NumV);
  if(Cal='nan')then Result:=False else Result:=True;
end;

function isInt(const NumV: String): boolean;
var
  Cal,AWhole,ADeci:String;
begin
  Result:=False;
  Cal:=StringMath.CleanNum(NumV);
  if(Cal='nan')then Exit;
  StringMath.getWholeDeci(Cal,AWhole,ADeci);
  if(ADeci='0')then Result:=True;
end;

function CleanNum(const NumV: String): String;
begin
  Result:=StringMath.CleanNum(NumV);
end;

function ToRound(const NumV: String; const WithDeci: Boolean): String;
begin
  Result:=StringMath.RX(NumV,WithDeci);
end;

function ToRound(const NumV: String; out AAnswer: String;
  const WithDeci: Boolean): Boolean;
begin
  AAnswer:=StringMath.RX(NumV,WithDeci);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ToInt(const NumV: String; const WithDeci: Boolean): String;
begin
  Result:=StringMath.RR(NumV,WithDeci);
end;

function ToInt(const NumV: String; out AAnswer: String; const WithDeci: Boolean
  ): Boolean;
begin
  AAnswer:=StringMath.RR(NumV,WithDeci);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ToDeci(const NumV: String; const WithDeci: Boolean): String;
begin
  Result:=StringMath.RD(NumV,WithDeci);
end;

function ToDeci(const NumV: String; out AAnswer: String; const WithDeci: Boolean
  ): Boolean;
begin
  AAnswer:=StringMath.RD(NumV,WithDeci);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function isPositiveAdvance(const NumV: String): Byte;
var
  NV:String;
begin
  Result:=3;
  NV:=StringMath.CleanNum(NumV);
  if(NV='nan')then Exit;
  Result:=StringMath.isPositiveAd(NV);
end;

function isPositive(const NumV: String): Boolean;
var
  NV:String;
begin
  Result:=False;
  NV:=StringMath.CleanNum(NumV);
  if(NV='nan')then Exit;
  Result:=StringMath.isPositive(NV);
end;

function Num1Bigger(const Num1, Num2: String): Byte;
var
  N1,N2:String;
  Cal:String;
begin
  Result:=3;
  N1:=StringMath.CleanNum(Num1);
  N2:=StringMath.CleanNum(Num2);
  if(N1='nan')then Exit;
  if(N2='nan')then Exit;
  Cal:=SumSub(N1,MulDiv('-1',N2));
  if(StringMath.isPositiveAd(Cal)=1)then Result:=1 else
  if(StringMath.isPositiveAd(Cal)=0)then Result:=0 else
  if(StringMath.isPositiveAd(Cal)=2)then Result:=2;
end;

function SumSub(const Num1, Num2: String): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(num1);
  Int2:=StringMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  Result:=StringMath.SumSub(Num1,Num2);
  StringMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function MulDiv(const Num1, Num2: String; const doMul: Boolean): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(num1);
  Int2:=StringMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  Result:=StringMath.MulDiv(Num1,Num2,Int3+1,doMul);
  StringMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function SumSub(const Num1, Num2: String; out AAnswer: String): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(num1);
  Int2:=StringMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  AAnswer:=StringMath.SumSub(Num1,Num2);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function MulDiv(const Num1, Num2: String; out AAnswer: String;
  const doMul: Boolean): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(num1);
  Int2:=StringMath.GetDeciCountBaseOne(num2);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  AAnswer:=StringMath.MulDiv(Num1,Num2,Int3+1,doMul);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function SumSub(const Num1, Num2: String; DeciCountBaseOne: Integer): String;
begin
  Result:='';
  DeciCountBaseOne:=DeciCountBaseOne+1;
  Result:=StringMath.SumSub(Num1,Num2);
  StringMath.RealCutDeciCountBaseOneR(Result,DeciCountBaseOne);
end;

function MulDiv(const Num1, Num2: String; DeciCountBaseOne: Integer;
  const doMul: Boolean): String;
begin
  Result:='';
  DeciCountBaseOne:=DeciCountBaseOne+1;
  Result:=StringMath.MulDiv(Num1,Num2,DeciCountBaseOne+1,doMul);
  StringMath.RealCutDeciCountBaseOneR(Result,DeciCountBaseOne);
end;

function SumSub(const Num1, Num2: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
begin
  AAnswer:='';
  DeciCountBaseOne:=DeciCountBaseOne+1;
  AAnswer:=StringMath.SumSub(Num1,Num2);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,DeciCountBaseOne);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function MulDiv(const Num1, Num2: String; out AAnswer: String;
  DeciCountBaseOne: Integer; const doMul: Boolean): Boolean;
begin
  AAnswer:='';
  DeciCountBaseOne:=DeciCountBaseOne+1;
  AAnswer:=StringMath.MulDiv(Num1,Num2,DeciCountBaseOne+1,doMul);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,DeciCountBaseOne);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function isBinary(const Num: String): Boolean;
var
  i:Integer;
  NV:String;
begin
  Result:=False;
  NV:=StringMath.CleanNum(Num);
  if(NV='nan')then Exit;
  for i:=1 to Length(Num)do if(((Num[i]='0')or(Num[i]='1'))=False)then Exit;
  if(StringMath.RR(Length(Num)/8)<>(Length(Num)/8))then Exit;
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
  While(StringMath.RR(Length(Result)/8)<>(Length(Result)/8))do Result:='0'+Result;
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
  While(StringMath.RR(Length(AAnswer)/8)<>(Length(AAnswer)/8))do AAnswer:='0'+AAnswer;
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

function unNum(const num: String): String;
begin
  Result:=num;
  if(Condition(Result,'<','0')=True)then Result:=MulDiv(Result,'-1');
end;

function unNum(const num: String; var AAnswer: String): Boolean;
begin
  AAnswer:=num;
  if(Condition(AAnswer,'<','0')=True)then AAnswer:=MulDiv(AAnswer,'-1');
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ln(const x: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.lnx(x,Int1+5);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function ln(const x: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.lnx(x,Int1+5);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ln(const x: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.lnx(x,Int1+5);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function ln(const x: String; out AAnswer: String; DeciCountBaseOne: Integer
  ): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.lnx(x,Int1+5);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.log(num,'10',Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function log(const num: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.log(num,'10',Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.log(num,'10',Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function log(const num: String; out AAnswer: String; DeciCountBaseOne: Integer
  ): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(num);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.log(num,'10',Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num, Base: String): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(num);
  Int2:=StringMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  Result:=StringMath.log(num,base,Int3+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function log(const num, Base: String; out AAnswer: String): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(num);
  Int2:=StringMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  AAnswer:=StringMath.log(num,Base,Int3+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function log(const num, Base: String; DeciCountBaseOne: Integer): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(num);
  Int2:=StringMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Int3:=Int3+1;
  Result:=StringMath.log(num,base,Int3+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function log(const num, Base: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(num);
  Int2:=StringMath.GetDeciCountBaseOne(base);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Int3:=Int3+1;
  AAnswer:=StringMath.log(num,Base,Int3+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function SqrRoot(const x: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.SqrRoot(x,Int1+2);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function SqrRoot(const x: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.SqrRoot(x,Int1+2);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function SqrRoot(const x: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.SqrRoot(x,Int1+2);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function SqrRoot(const x: String; out AAnswer: String; DeciCountBaseOne: Integer
  ): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(x);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.SqrRoot(x,Int1+2);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Sine(const Degrees: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.Sine(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Sine(const Degrees: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.Sine(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Sine(const Degrees: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.Sine(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Sine(const Degrees: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.Sine(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Cosine(const Degrees: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.Cosine(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Cosine(const Degrees: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.Cosine(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Cosine(const Degrees: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.Cosine(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Cosine(const Degrees: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.Cosine(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Tangent(const Degrees: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.Tangent(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Tangent(const Degrees: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.Tangent(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function Tangent(const Degrees: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.Tangent(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function Tangent(const Degrees: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(Degrees);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.Tangent(Degrees,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InSine(const SineX: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.InSine(SineX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InSine(const SineX: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.InSine(SineX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InSine(const SineX: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.InSine(SineX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InSine(const SineX: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(SineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.InSine(SineX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InCosine(const CosineX: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.InCosine(CosineX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InCosine(const CosineX: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.InCosine(CosineX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InCosine(const CosineX: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.InCosine(CosineX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InCosine(const CosineX: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(CosineX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.InCosine(CosineX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InTangent(const TangentX: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.InTangent(TangentX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InTangent(const TangentX: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.InTangent(TangentX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function InTangent(const TangentX: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.InTangent(TangentX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function InTangent(const TangentX: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(TangentX);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.InTangent(TangentX,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ePower(const Power: String): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  Result:=StringMath.ePowerX(Power,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function ePower(const Power: String; out AAnswer: String): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  Int1:=Int1+1;
  AAnswer:=StringMath.ePowerX(Power,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function ePower(const Power: String; DeciCountBaseOne: Integer): String;
var
  Int1:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  Result:=StringMath.ePowerX(Power,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int1);
end;

function ePower(const Power: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
var
  Int1:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(Power);
  if(Int1<RealDeciLength)then Int1:=RealDeciLength;
  if(Int1<DeciCountBaseOne)then Int1:=DeciCountBaseOne;
  Int1:=Int1+1;
  AAnswer:=StringMath.ePowerX(Power,Int1+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int1);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function xPower(const Base, Power: String): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(base);
  Int2:=StringMath.GetDeciCountBaseOne(power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  Result:=StringMath.xPowerX(Base,Power,Int3+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function xPower(const Base, Power: String; out AAnswer: String): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(base);
  Int2:=StringMath.GetDeciCountBaseOne(power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  Int3:=Int3+1;
  AAnswer:=StringMath.xPowerX(Base,Power,Int3+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function xPower(const Base, Power: String; DeciCountBaseOne: Integer): String;
var
  Int1,Int2,Int3:Integer;
begin
  Result:='';
  Int1:=StringMath.GetDeciCountBaseOne(base);
  Int2:=StringMath.GetDeciCountBaseOne(power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Int3:=Int3+1;
  Result:=StringMath.xPowerX(Base,Power,Int3+1);
  StringMath.RealCutDeciCountBaseOneR(Result,Int3);
end;

function xPower(const Base, Power: String; out AAnswer: String;
  DeciCountBaseOne: Integer): Boolean;
var
  Int1,Int2,Int3:Integer;
begin
  AAnswer:='';
  Int1:=StringMath.GetDeciCountBaseOne(base);
  Int2:=StringMath.GetDeciCountBaseOne(power);
  if(Int1>=Int2)then Int3:=Int1 else Int3:=Int2;
  if(Int3<RealDeciLength)then Int3:=RealDeciLength;
  if(Int3<DeciCountBaseOne)then Int3:=DeciCountBaseOne;
  Int3:=Int3+1;
  AAnswer:=StringMath.xPowerX(Base,Power,Int3+1);
  StringMath.RealCutDeciCountBaseOneR(AAnswer,Int3);
  if(AAnswer='nan')then Result:=False else Result:=True;
end;

function xMod(const num1, num2: String): String;
begin
  Result:=StringMath.xModX(num1,num2);
end;

{ CodeVariableArray }

constructor CodeVariableArray.Create;
begin
  self.TCodeVar:=nil;
  SetLength(self.TCodeVar,Length(self.TCodeVar)+1);
  self.TCodeVar[Length(self.TCodeVar)-1]:=CodeVariable.Create;

  self.Vars:=@self.TCodeVar;
  self.Vars_AtLast:=@self.TCodeVar[Length(self.TCodeVar)-1];
end;

constructor CodeVariableArray.Create(var ACodeVariableArray: CodeVariableArray);
begin
  self.TCodeVar:=nil;

  self.Vars:=@self.TCodeVar;
  self.Vars_AtLast:=nil;

  self.ChangeTo(ACodeVariableArray);
end;

destructor CodeVariableArray.Destroy;
var
  i:Integer;
begin
  inherited Destroy;

  self.Vars:=nil;
  self.Vars_AtLast:=nil;

  for i:=0 to (Length(self.TCodeVar)-1)do self.TCodeVar[i].Free;
  SetLength(self.TCodeVar,0);
end;

procedure CodeVariableArray.ChangeTo(var ACodeVariableArray: CodeVariableArray);
var
  i:Integer;
begin
  for i:=0 to (Length(self.TCodeVar)-1)do self.TCodeVar[i].Free;
  SetLength(self.TCodeVar,Length(ACodeVariableArray.TCodeVar));
  for i:=0 to (Length(self.TCodeVar)-1)do self.TCodeVar[i]:=CodeVariable.Create(ACodeVariableArray.TCodeVar[i]);

  self.Vars:=@self.TCodeVar;
  if(Length(self.TCodeVar)=0)then self.Vars_AtLast:=nil
  else self.Vars_AtLast:=@self.TCodeVar[Length(self.TCodeVar)-1];
end;

procedure CodeVariableArray.Vars_CreateLast;
begin
  SetLength(self.TCodeVar,Length(self.TCodeVar)+1);
  self.TCodeVar[Length(self.TCodeVar)-1]:=CodeVariable.Create;

  self.Vars_AtLast:=@self.TCodeVar[Length(self.TCodeVar)-1];
end;

procedure CodeVariableArray.Vars_DeleteLast;
begin
  if(Length(self.TCodeVar)=1)then Exit;

  self.TCodeVar[Length(self.TCodeVar)-1].Free;
  SetLength(self.TCodeVar,Length(self.TCodeVar)-1);

  self.Vars_AtLast:=@self.TCodeVar[Length(self.TCodeVar)-1];
end;

procedure CodeVariableArray.Vars_DeleteAllExceptFirst;
var
  i:Integer;
begin
  for i:=1 to (Length(self.TCodeVar)-1)do self.TCodeVar[i].Free;
  SetLength(self.TCodeVar,1);

  self.Vars:=@self.TCodeVar;
  self.Vars_AtLast:=@self.TCodeVar[Length(self.TCodeVar)-1];
end;

function CodeVariableArray.Vars_ArrLength: Integer;
begin
  Result:=Length(self.TCodeVar);
end;

{ CodeLog }

constructor CodeLog.Create;
begin
  self.TLogError:=nil;
  self.TLogWarning:=nil;
end;

destructor CodeLog.Destroy;
begin
  inherited Destroy;
  SetLength(self.TLogError,0);
  SetLength(self.TLogWarning,0);
end;

procedure CodeLog.ChangeTo(var ACodeLog: CodeLog);
var
  i:Integer;
begin
  SetLength(self.TLogError,Length(ACodeLog.TLogError));
  for i:=0 to (Length(self.TLogError)-1)do self.TLogError[i]:=ACodeLog.TLogError[i];

  SetLength(self.TLogWarning,Length(ACodeLog.TLogWarning));
  for i:=0 to (Length(self.TLogWarning)-1)do self.TLogWarning[i]:=ACodeLog.TLogWarning[i];
end;

procedure CodeLog.Error_CreateLastLog(const ALog: String);
begin
  SetLength(self.TLogError,Length(self.TLogError)+1);
  self.TLogError[Length(self.TLogError)-1]:=ALog;
end;

procedure CodeLog.Error_AppendLastLog(const ALog: String);
begin
  if(Length(self.TLogError)=0)then Exit;
  self.TLogError[Length(self.TLogError)-1]:=self.TLogError[Length(self.TLogError)-1]+ALog;
end;

function CodeLog.Error_LogToString: String;
var
  i:Integer;
begin
  Result:='';
  for i:=0 to (Length(self.TLogError)-1)do begin
    if(i=(Length(self.TLogError)-1))then Result:=Result+self.TLogError[i]
    else Result:=Result+self.TLogError[i]+System.LineEnding;
  end;
end;

function CodeLog.Error_ArrLength: Integer;
begin
  Result:=Length(self.TLogError);
end;

procedure CodeLog.Error_EraseLog;
begin
  SetLength(self.TLogError,0);
end;

procedure CodeLog.Warning_CreateLastLog(const ALog: String);
begin
  SetLength(self.TLogWarning,Length(self.TLogWarning)+1);
  self.TLogWarning[Length(self.TLogWarning)-1]:=ALog;
end;

procedure CodeLog.Warning_AppendLastLog(const ALog: String);
begin
  if(Length(self.TLogWarning)=0)then Exit;
  self.TLogWarning[Length(self.TLogWarning)-1]:=self.TLogWarning[Length(self.TLogWarning)-1]+ALog;
end;

function CodeLog.Warning_LogToString: String;
var
  i:Integer;
begin
  Result:='';
  for i:=0 to (Length(self.TLogWarning)-1)do begin
    if(i=(Length(self.TLogWarning)-1))then Result:=Result+self.TLogWarning[i]
    else Result:=Result+self.TLogWarning[i]+System.LineEnding;
  end;
end;

function CodeLog.Warning_ArrLength: Integer;
begin
  Result:=Length(self.TLogWarning);
end;

procedure CodeLog.Warning_EraseLog;
begin
  SetLength(self.TLogWarning,0);
end;

{ CodeComponent }

constructor CodeComponent.Create;
begin
  self.TPtrCComponent:=nil;
end;

constructor CodeComponent.Create(
  const APtrCodeComponentBasic: PtrCodeComponentBasic);
begin
  self.TPtrCComponent:=APtrCodeComponentBasic;
end;

constructor CodeComponent.Create(var ACodeComponent: CodeComponent);
begin
  self.TPtrCComponent:=nil;
  self.changeTo(ACodeComponent);
end;

destructor CodeComponent.Destroy;
begin
  inherited Destroy;
  self.TPtrCComponent:=nil;
end;

procedure CodeComponent.changeTo(var ACodeComponent: CodeComponent);
begin
  self.TPtrCComponent:=ACodeComponent.TPtrCComponent;
end;

procedure CodeComponent.UnComponent_SetCodeComponentBasic(
  const APtrCodeComponentBasic: PtrCodeComponentBasic);
begin
  self.TPtrCComponent:=APtrCodeComponentBasic;
end;

function CodeComponent.Component_isPositiveIntAdvance(const SetInt_Address,
  isPositiveAd_Address: Integer): Integer;
begin

  {
  function isPositiveIntAdvance(const num: IntArr): Byte;
  var
    TArr1:IntArr;
  begin
    Result:=3;
    TArr1:=nil;
    if(Length(num)=0)then Exit;
    ArrMath.SetInt(num,TArr1);
    Result:=ArrMath.isPositiveAd(TArr1);
    SetLength(TArr1,0);
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numIntArr;
  //Gv2 = ByteResult;

  self.TPtrCComponent^.Component_AllocateMem('numIntArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numIntArr');

  self.TPtrCComponent^.Component_AllocateMem('ByteResult',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ByteResult');

  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('TArr1',nil);

  self.TPtrCComponent^.Component_SetVarMem('ByteResult',3);
  self.TPtrCComponent^.Component_ArrayIndexGet('ByteResult','NumZero','ByteResult');

  self.TPtrCComponent^.Component_Length('numIntArr','numLength');
  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numIntArr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ByteResult');
  self.TPtrCComponent^.Component_Goto(isPositiveAd_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ByteResult');

  self.TPtrCComponent^.Component_AllocateMem('TArr1',nil);

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('ByteResult','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ByteResult');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SetLengthInc: Integer;
begin

  {
  SetLength(ArrayVarName,Length(ArrayVarName)+1);
  ArrayVarName[Length(ArrayVarName)-1]:=ValueVarName;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = ArrayVarName;
  //GV2 = ValueVarName;

  self.TPtrCComponent^.Component_AllocateMem('ArrayVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ArrayVarName');

  self.TPtrCComponent^.Component_AllocateMem('ValueVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ValueVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumNegOne',-1);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Length1',0);
  self.TPtrCComponent^.Component_AllocateMem('Length2',0);

  self.TPtrCComponent^.Component_Length('ArrayVarName','Length1');
  self.TPtrCComponent^.Component_SumSubInteger('Length1','NumOne','Length1');

  self.TPtrCComponent^.Component_Length('ArrayVarName','Length2');
  self.TPtrCComponent^.Component_SumSubInteger('Length2','NumNegOne','Length2');

  self.TPtrCComponent^.Component_SetLength('ArrayVarName','Length1');
  self.TPtrCComponent^.Component_ArrayIndexSet('ArrayVarName','Length2','ValueVarName');

  self.TPtrCComponent^.Component_SetValueMode('ArrayVarName','number');
  self.TPtrCComponent^.Component_SetValueMode('ValueVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ArrayVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ValueVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SetLengthToLength: Integer;
begin

  {
  SetLength(ArrayVarName,Length(ArrayLengthVarName));
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = ArrayVarName;
  //GV2 = ArrayLengthVarName;

  self.TPtrCComponent^.Component_AllocateMem('ArrayVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ArrayVarName');

  self.TPtrCComponent^.Component_AllocateMem('ArrayLengthVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ArrayLengthVarName');

  self.TPtrCComponent^.Component_AllocateMem('Length1',0);
  self.TPtrCComponent^.Component_Length('ArrayLengthVarName','Length1');
  self.TPtrCComponent^.Component_SetLength('ArrayVarName','Length1');

  self.TPtrCComponent^.Component_SetValueMode('ArrayVarName','number');
  self.TPtrCComponent^.Component_SetValueMode('ArrayLengthVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ArrayVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ArrayLengthVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_RR: Integer;
begin

  {
  Result:=Round(x);
  if(Round(x)>x)then Result:=Round(x)-1;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = RealVarName;
  //GV2 = ResultIntVarName;

  self.TPtrCComponent^.Component_AllocateMem('RealVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('RealVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultIntVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultIntVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);

  self.TPtrCComponent^.Component_Round('RealVarName','ResultIntVarName');

  self.TPtrCComponent^.Component_V1GTV2('ResultIntVarName','RealVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_SubInteger('ResultIntVarName','NumOne','ResultIntVarName');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_SetValueMode('RealVarName','real');
  self.TPtrCComponent^.Component_SetValueMode('ResultIntVarName','integer');

  self.TPtrCComponent^.Component_MoveV2ToGV1('RealVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultIntVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_unNumInteger: Integer;
begin

  {
  Result:=x;
  if(x<0)then Result:=Result*(-1);
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = ResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultVarName');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultVarName','numVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumNegOne',-1);
  self.TPtrCComponent^.Component_AllocateMem('isMulV',1);

  self.TPtrCComponent^.Component_JumpTo('JumpMul1');

  self.TPtrCComponent^.Component_Port('GotoMul1');
  self.TPtrCComponent^.Component_MulDivInteger('ResultVarName','NumNegOne','ResultVarName','isMulV');
  self.TPtrCComponent^.Component_Exit;

  self.TPtrCComponent^.Component_Port('JumpMul1');
  self.TPtrCComponent^.Component_AllocateMem('ConditionA',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);

  self.TPtrCComponent^.Component_V1LTV2('numVarName','NumZero','ConditionA');
  self.TPtrCComponent^.Component_IfV1True_Goto('ConditionA','GotoMul1');

  self.TPtrCComponent^.Component_SetValueMode('ResultVarName','integer');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_unNumReal: Integer;
begin

  {
  Result:=x;
  if(x<0)then Result:=Result*(-1);
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = ResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultVarName');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultVarName','numVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumNegOne',-1);
  self.TPtrCComponent^.Component_AllocateMem('isMulV',1);

  self.TPtrCComponent^.Component_JumpTo('JumpMul1');

  self.TPtrCComponent^.Component_Port('GotoMul1');
  self.TPtrCComponent^.Component_MulDivReal('ResultVarName','NumNegOne','ResultVarName','isMulV');
  self.TPtrCComponent^.Component_Exit;

  self.TPtrCComponent^.Component_Port('JumpMul1');
  self.TPtrCComponent^.Component_AllocateMem('ConditionA',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);

  self.TPtrCComponent^.Component_V1LTV2('numVarName','NumZero','ConditionA');
  self.TPtrCComponent^.Component_IfV1True_Goto('ConditionA','GotoMul1');

  self.TPtrCComponent^.Component_SetValueMode('ResultVarName','real');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SetBit: Integer;
begin

  {
  B:=B or (1 shl PosBaseZero);
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = ByteVarName;
  //GV2 = PosBaseZeroVarName;
  //GV3 = ResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('ByteVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteVarName');

  self.TPtrCComponent^.Component_AllocateMem('PosBaseZeroVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('PosBaseZeroVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);

  self.TPtrCComponent^.Component_V1SHLV2('NumOne','PosBaseZeroVarName','ResultVarName');
  self.TPtrCComponent^.Component_V1OrV2('ByteVarName','ResultVarName','ResultVarName');

  self.TPtrCComponent^.Component_SubInteger('NumOne','NumOne','NumOne');
  self.TPtrCComponent^.Component_ArrayIndexGet('ResultVarName','NumOne','ResultVarName');

  self.TPtrCComponent^.Component_SetValueMode('ResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('PosBaseZeroVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_ClearBit: Integer;
begin

  {
  B:=B and not (1 shl PosBaseZero);
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = ByteVarName;
  //GV2 = PosBaseZeroVarName;
  //GV3 = ResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('ByteVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteVarName');

  self.TPtrCComponent^.Component_AllocateMem('PosBaseZeroVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('PosBaseZeroVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);

  self.TPtrCComponent^.Component_V1SHLV2('NumOne','PosBaseZeroVarName','ResultVarName');
  self.TPtrCComponent^.Component_NotV1('ResultVarName','ResultVarName');
  self.TPtrCComponent^.Component_V1AndV2('ByteVarName','ResultVarName','ResultVarName');

  self.TPtrCComponent^.Component_SubInteger('NumOne','NumOne','NumOne');
  self.TPtrCComponent^.Component_ArrayIndexGet('ResultVarName','NumOne','ResultVarName');

  self.TPtrCComponent^.Component_SetValueMode('ResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('PosBaseZeroVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_ReverseBit: Integer;
begin

  {
  B:=B xor (1 shl PosBaseZero);
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = ByteVarName;
  //GV2 = PosBaseZeroVarName;
  //GV3 = ResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('ByteVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteVarName');

  self.TPtrCComponent^.Component_AllocateMem('PosBaseZeroVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('PosBaseZeroVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);

  self.TPtrCComponent^.Component_V1SHLV2('NumOne','PosBaseZeroVarName','ResultVarName');
  self.TPtrCComponent^.Component_V1XORV2('ByteVarName','ResultVarName','ResultVarName');

  self.TPtrCComponent^.Component_SubInteger('NumOne','NumOne','NumOne');
  self.TPtrCComponent^.Component_ArrayIndexGet('ResultVarName','NumOne','ResultVarName');

  self.TPtrCComponent^.Component_SetValueMode('ResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('PosBaseZeroVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_IsBitSet: Integer;
begin

  {
  Result:=(B and (1 shl PosBaseZero)) <> 0;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = ByteVarName;
  //GV2 = PosBaseZeroVarName;
  //GV3 = ResultBoolVarName;

  self.TPtrCComponent^.Component_AllocateMem('ByteVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteVarName');

  self.TPtrCComponent^.Component_AllocateMem('PosBaseZeroVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('PosBaseZeroVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);

  self.TPtrCComponent^.Component_V1SHLV2('NumOne','PosBaseZeroVarName','ResultBoolVarName');
  self.TPtrCComponent^.Component_V1AndV2('ByteVarName','ResultBoolVarName','ResultBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_V1NotEqV2('ResultBoolVarName','NumZero','ResultBoolVarName');

  self.TPtrCComponent^.Component_SetValueMode('ResultBoolVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('PosBaseZeroVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultBoolVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_BitsToStr: Integer;
begin

  {
  procedure ArrMath.BitsToStr(const num: IntArr; var AStrBits: String);
  var
    i:Integer;
  begin
    AStrBits:='';
    for i:=0 to (Length(num)-1)do AStrBits:=BinStr(num[i],8)+' '+AStrBits;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = ResultStrBitsVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultStrBitsVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultStrBitsVarName');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_SetVarMem('ResultStrBitsVarName','');

  self.TPtrCComponent^.Component_AllocateMem('NumNegOne',-1);
  self.TPtrCComponent^.Component_AllocateMem('LengthResult',0);
  self.TPtrCComponent^.Component_Length('numVarName','LengthResult');
  self.TPtrCComponent^.Component_SumSubInteger('LengthResult','NumNegOne','LengthResult');

  self.TPtrCComponent^.Component_AllocateMem('Str1','');
  self.TPtrCComponent^.Component_AllocateMem('Str2',' ');
  self.TPtrCComponent^.Component_AllocateMem('num1',SizeOf(Byte));   //8
  self.TPtrCComponent^.Component_AllocateMem('num2',0);
  self.TPtrCComponent^.Component_AllocateMem('num3',1);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','LengthResult','num2');
  self.TPtrCComponent^.Component_IfV1True('num2','iForEnd');

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','i','ByteA');
  self.TPtrCComponent^.Component_BinStr('ByteA','num1','Str1');
  self.TPtrCComponent^.Component_CombineV2ToV1('Str1','Str2','Str1');
  self.TPtrCComponent^.Component_CombineV2ToV1('Str1','ResultStrBitsVarName','ResultStrBitsVarName');

  self.TPtrCComponent^.Component_SumSubInteger('i','num3','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetValueMode('ResultStrBitsVarName','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultStrBitsVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_BitsLength: Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = ResultLengthVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultLengthVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultLengthVarName');

  self.TPtrCComponent^.Component_AllocateMem('num1',8);
  self.TPtrCComponent^.Component_AllocateMem('LengthResult',0);

  self.TPtrCComponent^.Component_Length('numVarName','LengthResult');
  self.TPtrCComponent^.Component_AllocateMem('isMulV',1);

  self.TPtrCComponent^.Component_MulDivInteger('num1','LengthResult','ResultLengthVarName','isMulV');

  self.TPtrCComponent^.Component_SetValueMode('ResultLengthVarName','integer');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultLengthVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SetInt: Integer;
begin

  {
  procedure ArrMath.SetInt(const num: IntArr; var numResult: IntArr);
  var
    i:Integer;
  begin
    SetLength(numResult,Length(num));
    for i:=0 to (Length(num)-1)do numResult[i]:=num[i];
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = numResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('numResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('LengthResult',0);

  self.TPtrCComponent^.Component_Length('numVarName','LengthResult');
  self.TPtrCComponent^.Component_SetLength('numResultVarName','LengthResult');

  self.TPtrCComponent^.Component_AllocateMem('NumNegOne',-1);
  self.TPtrCComponent^.Component_SumSubInteger('LengthResult','NumNegOne','LengthResult');

  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',1);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','LengthResult','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','iForEnd');

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','i','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexSet('numResultVarName','i','ByteA');

  self.TPtrCComponent^.Component_SumSubInteger('i','num2','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_ReverseInt(const IsBitSet_Address,
  SetBit_Address: Integer): Integer;
begin

  {
  procedure ArrMath.ReverseInt(const num: IntArr; var numResult: IntArr);
  var
    i,j:Integer;
  begin
    SetLength(numResult,0);
    SetLength(numResult,Length(num));
    for i:=0 to (Length(num)-1)do
      for j:=0 to 7 do if(self.IsBitSet(num[i],j)=True)then self.SetBit(numResult[(Length(numResult)-1)-i],7-j);
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = numResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('numResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('j',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('LengthResult',0);
  self.TPtrCComponent^.Component_AllocateMem('LengthResult_numResult',0);

  self.TPtrCComponent^.Component_SetLength('numResultVarName','NumZero');
  self.TPtrCComponent^.Component_Length('numVarName','LengthResult');
  self.TPtrCComponent^.Component_SetLength('numResultVarName','LengthResult');

  self.TPtrCComponent^.Component_AllocateMem('NumNegOne',-1);
  self.TPtrCComponent^.Component_SumSubInteger('LengthResult','NumNegOne','LengthResult');

  self.TPtrCComponent^.Component_Length('numResultVarName','LengthResult_numResult');
  self.TPtrCComponent^.Component_SumSubInteger('LengthResult_numResult','NumNegOne','LengthResult_numResult');

  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',1);
  self.TPtrCComponent^.Component_AllocateMem('num3',SizeOf(Byte)-1);     //7
  self.TPtrCComponent^.Component_AllocateMem('num4',0);
  self.TPtrCComponent^.Component_AllocateMem('num5',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('isMulV',1);

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','LengthResult','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_AllocateMem('j',0);
  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('j','num3','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','i','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('j');
  self.TPtrCComponent^.Component_MoveV2ToGV3('num1');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('j');
  self.TPtrCComponent^.Component_MoveGV3ToV1('num1');

  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse');

  self.TPtrCComponent^.Component_MulDivInteger('i','NumNegOne','num4','isMulV');
  self.TPtrCComponent^.Component_MulDivInteger('j','NumNegOne','num5','isMulV');

  self.TPtrCComponent^.Component_SumSubInteger('LengthResult_numResult','num4','num4');
  self.TPtrCComponent^.Component_SumSubInteger('num3','num5','num5');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultVarName','num4','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num5');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num5');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultVarName','num4','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('j','num2','j');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('i','num2','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_isIntZero: Integer;
begin

  {
  function ArrMath.isIntZero(const num: IntArr): Boolean;
  var
    i:Integer;
  begin
    Result:=True;
    for i:=0 to (Length(num)-1)do if(num[i]<>0)then begin Result:=False; Exit; end;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = boolResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('boolResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('boolResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('LengthResult',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');
  self.TPtrCComponent^.Component_MoveV2ToV1('boolResultVarName','True');

  self.TPtrCComponent^.Component_Length('numVarName','LengthResult');
  self.TPtrCComponent^.Component_AllocateMem('NumNegOne',-1);
  self.TPtrCComponent^.Component_SumSubInteger('LengthResult','NumNegOne','LengthResult');

  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',1);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','LengthResult','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','i','ByteA');
  self.TPtrCComponent^.Component_V1NotEqV2('ByteA','False','num1');

  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse');

  self.TPtrCComponent^.Component_MoveV2ToV1('boolResultVarName','False');
  self.TPtrCComponent^.Component_JumpTo('iForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('i','num2','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetValueMode('boolResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('boolResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_MatchLength(const BitsLength_Address,
  IsBitSet_Address: Integer): Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = isLeftBoolVarName;
  //GV2 = numVarName;
  //GV3 = numResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('isLeftBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('isLeftBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('numResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV3toV1('numResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('LengthResult',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_SetLength('numResultVarName','NumZero');

  self.TPtrCComponent^.Component_Length('numVarName','LengthResult');
  self.TPtrCComponent^.Component_AllocateMem('NumNegOne',-1);
  self.TPtrCComponent^.Component_SumSubInteger('LengthResult','NumNegOne','LengthResult');

  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',1);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','LengthResult','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','i','ByteA');
  self.TPtrCComponent^.Component_V1NotEqV2('ByteA','False','num1');

  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');
  self.TPtrCComponent^.Component_JumpTo('iForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('i','num2','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse3');

  self.TPtrCComponent^.Component_SetLength('numResultVarName','num2');
  self.TPtrCComponent^.Component_JumpTo('jForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_AllocateMem('num3',0);

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num3');
  self.TPtrCComponent^.Component_Goto(BitsLength_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num3');

  self.TPtrCComponent^.Component_SumSubInteger('num3','NumNegOne','num3');
  self.TPtrCComponent^.Component_MoveV2ToV1('i','num3');

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumZero','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_AllocateMem('num4',8);
  self.TPtrCComponent^.Component_AllocateMem('isMulV',0);
  self.TPtrCComponent^.Component_MulDivInteger('i','num4','num4','isMulV');

  self.TPtrCComponent^.Component_AllocateMem('num5',8);
  self.TPtrCComponent^.Component_AllocateMem('isMulV',1);
  self.TPtrCComponent^.Component_MulDivInteger('num4','num5','num5','isMulV');
  self.TPtrCComponent^.Component_MulDivInteger('NumNegOne','num5','num5','isMulV');
  self.TPtrCComponent^.Component_SumSubInteger('i','num5','num5');

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','num4','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num5');
  self.TPtrCComponent^.Component_MoveV2ToGV3('num1');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num5');
  self.TPtrCComponent^.Component_MoveGV3ToV1('num1');

  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse2');

  self.TPtrCComponent^.Component_AllocateMem('num3',8);
  self.TPtrCComponent^.Component_AllocateMem('num4',1);
  self.TPtrCComponent^.Component_SumSubInteger('num4','i','num4');
  self.TPtrCComponent^.Component_AllocateMem('isMulV',0);
  self.TPtrCComponent^.Component_MulDivInteger('num4','num3','num4','isMulV');
  self.TPtrCComponent^.Component_SumSubInteger('num4','num2','num4');

  self.TPtrCComponent^.Component_AllocateMem('num5',-1);
  self.TPtrCComponent^.Component_SumSubInteger('num5','i','num5');
  self.TPtrCComponent^.Component_AllocateMem('isMulV',0);
  self.TPtrCComponent^.Component_MulDivInteger('num5','num3','num5','isMulV');
  self.TPtrCComponent^.Component_SumSubInteger('num5','num2','num5');

  self.TPtrCComponent^.Component_IfV1('isLeftBoolVarName','JumpTrue1','JumpFalse1');

  self.TPtrCComponent^.Component_Port('JumpFalse1');
  self.TPtrCComponent^.Component_SetLength('numResultVarName','num4');
  self.TPtrCComponent^.Component_JumpTo('jForEnd');

  self.TPtrCComponent^.Component_Port('JumpTrue1');
  self.TPtrCComponent^.Component_SetLength('numResultVarName','num5');
  self.TPtrCComponent^.Component_JumpTo('jForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('i','NumNegOne','i');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('isLeftBoolVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_Shift(const SetLengthInc_Address,
  MatchLength_Address, AlignNums_Address, IsBitSet_Address, SetBit_Address,
  SetLengthToLength_Address: Integer): Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = isLeftBoolVarName;
  //GV2 = isSetBoolVarName;
  //GV3 = numVarName;

  self.TPtrCComponent^.Component_AllocateMem('isLeftBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('isLeftBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('isSetBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('isSetBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV3toV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('TArr1',nil);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',SizeOf(Byte)-1);    //7
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_AllocateMem('boolAnd1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd3',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd4',0);

  self.TPtrCComponent^.Component_V1EqV2('isLeftBoolVarName','False','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpIsLeftNotFalse');

  self.TPtrCComponent^.Component_MoveV2ToGV1('isLeftBoolVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr1');
  self.TPtrCComponent^.Component_Goto(MatchLength_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('isLeftBoolVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numVarName');
  self.TPtrCComponent^.Component_MoveGV3toV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(AlignNums_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_Length('numVarName','numLength');
  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse1');

  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','i','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3toV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('TArr1','i','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse1');
  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_AllocateMem('j',0);

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('j','num2','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','i','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('j');
  self.TPtrCComponent^.Component_MoveV2ToGV3('boolAnd2');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('j');
  self.TPtrCComponent^.Component_MoveGV3toV1('boolAnd2');

  self.TPtrCComponent^.Component_V1LTV2('j','num2','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('boolAnd2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');

  self.TPtrCComponent^.Component_V1EqV2('j','num2','boolAnd1');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd4');

  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse2');

  self.TPtrCComponent^.Component_SumInteger('j','NumOne','boolAnd1');
  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','i','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('boolAnd1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('boolAnd1');
  self.TPtrCComponent^.Component_MoveGV3toV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('TArr1','i','ByteA');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_IfV1False('boolAnd4','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('j','NumOne','j');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_Goto(SetLengthInc_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');

  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_Length('TArr1','numLength');
  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','numLength','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('TArr1','numLength','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_V1EqV2('isSetBoolVarName','True','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse5');

  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','NumZero','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('TArr1','NumZero','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');
  self.TPtrCComponent^.Component_JumpTo('JumpIsLeftNotTrue');

  self.TPtrCComponent^.Component_Port('JumpIsLeftNotFalse');

  self.TPtrCComponent^.Component_V1EqV2('isLeftBoolVarName','True','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpIsLeftNotTrue');

  self.TPtrCComponent^.Component_MoveV2ToGV1('isLeftBoolVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr1');
  self.TPtrCComponent^.Component_Goto(MatchLength_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('isLeftBoolVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numVarName');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(AlignNums_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_AllocateMem('i',0);

  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_Length('numVarName','numLength');
  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_Port('kForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','kForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_AllocateMem('j',0);

  self.TPtrCComponent^.Component_Port('lForBegin');

  self.TPtrCComponent^.Component_V1GTV2('j','num2','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','lForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','i','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('j');
  self.TPtrCComponent^.Component_MoveV2ToGV3('boolAnd2');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('j');
  self.TPtrCComponent^.Component_MoveGV3ToV1('boolAnd2');

  self.TPtrCComponent^.Component_V1GTV2('j','NumZero','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('boolAnd2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');

  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse6');

  self.TPtrCComponent^.Component_SubInteger('j','NumOne','boolAnd1');
  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','i','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('boolAnd1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('boolAnd1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('TArr1','i','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('j','NumOne','j');
  self.TPtrCComponent^.Component_JumpTo('lForBegin');

  self.TPtrCComponent^.Component_Port('lForEnd');

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','boolAnd1');

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','boolAnd1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('boolAnd2');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('boolAnd2');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd2','True','boolAnd2');

  self.TPtrCComponent^.Component_V1LTEqV2('boolAnd1','numLength','boolAnd1');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');

  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse7');

  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','i','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('TArr1','i','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('kForBegin');

  self.TPtrCComponent^.Component_Port('kForEnd');

  self.TPtrCComponent^.Component_V1EqV2('isSetBoolVarName','True','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse8');

  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_Length('TArr1','numLength');
  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','numLength','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('TArr1','numLength','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('JumpIsLeftNotTrue');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse9');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(SetLengthToLength_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_Length('TArr1','numLength');
  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_AllocateMem('i',0);

  self.TPtrCComponent^.Component_Port('oForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','oForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','i','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexSet('numVarName','i','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('oForBegin');

  self.TPtrCComponent^.Component_Port('oForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  self.TPtrCComponent^.Component_SetValueMode('numVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('isLeftBoolVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('isSetBoolVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_ShiftPace(const unNumInteger_Address,
  RR_Address, SetLengthInc_Address, IsBitSet_Address, SetBit_Address: Integer
  ): Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = isLeftBoolVarName;
  //GV2 = PaceBaseOneIntVarName;
  //GV3 = numVarName;

  self.TPtrCComponent^.Component_AllocateMem('isLeftBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('isLeftBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('PaceBaseOneIntVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('PaceBaseOneIntVarName');

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV3toV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NegOne',-1);
  self.TPtrCComponent^.Component_AllocateMem('Num7',SizeOf(Byte)-1);
  self.TPtrCComponent^.Component_AllocateMem('Num8',SizeOf(Byte));

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('TArr1',nil);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_AllocateMem('nCount',0);
  self.TPtrCComponent^.Component_AllocateMem('nCountr',0.0);

  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('TArrLength',0);
  self.TPtrCComponent^.Component_AllocateMem('nCountrInt',0);
  self.TPtrCComponent^.Component_AllocateMem('Andbool1',0);
  self.TPtrCComponent^.Component_AllocateMem('Andbool2',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('PaceBaseOne',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('PaceBaseOne','PaceBaseOneIntVarName');

  self.TPtrCComponent^.Component_Length('numVarName','numLength');
  self.TPtrCComponent^.Component_MulInteger('numLength','Num8','numLength');
  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_V1LTV2('PaceBaseOne','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse1');

  self.TPtrCComponent^.Component_MulInteger('PaceBaseOne','NegOne','PaceBaseOne');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1EqV2('isLeftBoolVarName','True','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','LeftIsNotTrue');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','PaceBaseOne','nCount');

  self.TPtrCComponent^.Component_V1GTV2('nCount','NegOne','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse2');

  self.TPtrCComponent^.Component_DivReal('i','Num7','nCountr');

  self.TPtrCComponent^.Component_Length('TArr1','TArrLength');
  self.TPtrCComponent^.Component_V1EqV2('TArrLength','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_Goto(SetLengthInc_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('nCountr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('nCountrInt');
  self.TPtrCComponent^.Component_Goto(RR_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('nCountr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('nCountrInt');

  self.TPtrCComponent^.Component_V1EqV2('nCountrInt','nCountr','Andbool1');
  self.TPtrCComponent^.Component_V1NotEqV2('NumZero','nCountr','Andbool2');
  self.TPtrCComponent^.Component_V1AndV2('Andbool1','Andbool2','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_DivInteger('i','Num8','nCountrInt');
  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','nCountrInt','ByteA');
  self.TPtrCComponent^.Component_MulInteger('nCountrInt','Num8','nCountrInt');
  self.TPtrCComponent^.Component_SubInteger('i','nCountrInt','nCountrInt');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('nCountrInt');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool2');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('nCountrInt');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool2');

  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse2');

  self.TPtrCComponent^.Component_DivInteger('nCount','Num8','nCountrInt');
  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','nCountrInt','ByteA');
  self.TPtrCComponent^.Component_MulInteger('nCountrInt','Num8','nCountrInt');
  self.TPtrCComponent^.Component_SubInteger('nCount','nCountrInt','nCountrInt');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('nCountrInt');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('nCountrInt');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_DivInteger('nCount','Num8','nCountrInt');
  self.TPtrCComponent^.Component_ArrayIndexSet('TArr1','nCountrInt','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_Goto(SetLengthInc_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');
  self.TPtrCComponent^.Component_JumpTo('LeftIsNotFalse');

  self.TPtrCComponent^.Component_Port('LeftIsNotTrue');

  self.TPtrCComponent^.Component_V1EqV2('isLeftBoolVarName','False','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','LeftIsNotFalse');

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','PaceBaseOne','nCount');
  self.TPtrCComponent^.Component_DivReal('nCount','Num7','nCountr');

  self.TPtrCComponent^.Component_Length('TArr1','TArrLength');
  self.TPtrCComponent^.Component_V1EqV2('TArrLength','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse6');

  self.TPtrCComponent^.Component_SubInteger('PaceBaseOne','NumOne','nCountrInt');

  self.TPtrCComponent^.Component_MoveV2ToGV1('nCountrInt');
  self.TPtrCComponent^.Component_MoveV2ToGV2('nCountrInt');
  self.TPtrCComponent^.Component_Goto(unNumInteger_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('nCountrInt');
  self.TPtrCComponent^.Component_MoveGV2ToV1('nCountrInt');

  self.TPtrCComponent^.Component_DivInteger('nCountrInt','Num7','nCountrInt');
  self.TPtrCComponent^.Component_SumInteger('nCountrInt','NumOne','nCountrInt');
  self.TPtrCComponent^.Component_SetLength('TArr1','nCountrInt');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_MoveV2ToGV1('nCountr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('nCountrInt');
  self.TPtrCComponent^.Component_Goto(RR_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('nCountr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('nCountrInt');

  self.TPtrCComponent^.Component_V1EqV2('nCountrInt','nCountr','Andbool1');
  self.TPtrCComponent^.Component_V1NotEqV2('NumZero','nCountr','Andbool2');
  self.TPtrCComponent^.Component_V1AndV2('Andbool1','Andbool2','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse7');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_Goto(SetLengthInc_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');

  self.TPtrCComponent^.Component_DivInteger('i','Num8','nCountrInt');
  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','nCountrInt','ByteA');
  self.TPtrCComponent^.Component_MulInteger('nCountrInt','Num8','nCountrInt');
  self.TPtrCComponent^.Component_SubInteger('i','nCountrInt','nCountrInt');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('nCountrInt');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool2');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('nCountrInt');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool2');

  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse9');

  self.TPtrCComponent^.Component_DivInteger('nCount','Num8','nCountrInt');
  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','nCountrInt','ByteA');
  self.TPtrCComponent^.Component_MulInteger('nCountrInt','Num8','nCountrInt');
  self.TPtrCComponent^.Component_SubInteger('nCount','nCountrInt','nCountrInt');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('nCountrInt');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('nCountrInt');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_DivInteger('nCount','Num8','nCountrInt');
  self.TPtrCComponent^.Component_ArrayIndexSet('TArr1','nCountrInt','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('LeftIsNotFalse');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','lForEnd');

  self.TPtrCComponent^.Component_Length('TArr1','i');
  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');

  self.TPtrCComponent^.Component_Port('kForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','kForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','i','ByteA');
  self.TPtrCComponent^.Component_V1NotEqV2('ByteA','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','kForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('kForBegin');

  self.TPtrCComponent^.Component_Port('kForEnd');

  self.TPtrCComponent^.Component_SetLength('TArr1','i');

  self.TPtrCComponent^.Component_Length('TArr1','TArrLength');
  self.TPtrCComponent^.Component_V1EqV2('TArrLength','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse10');

  self.TPtrCComponent^.Component_SetLength('TArr1','NumOne');

  self.TPtrCComponent^.Component_Port('JumpFalse10');

  self.TPtrCComponent^.Component_Length('TArr1','TArrLength');
  self.TPtrCComponent^.Component_SetLength('numVarName','TArrLength');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_Length('TArr1','TArrLength');
  self.TPtrCComponent^.Component_SubInteger('TArrLength','NumOne','TArrLength');

  self.TPtrCComponent^.Component_Port('lForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','TArrLength','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','lForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','i','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexSet('numVarName','i','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('lForBegin');

  self.TPtrCComponent^.Component_Port('lForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('isLeftBoolVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('PaceBaseOneIntVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_isPositiveAd(const IsBitSet_Address,
  Shift_Address, isIntZero_Address: Integer): Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = numResultByteVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('numResultByteVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultByteVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('True2',2);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');
  self.TPtrCComponent^.Component_ArrayIndexGet('True2','NumZero','True2');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');

  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','NumZero','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool2');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool2');

  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('True');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numVarName');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('True');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numVarName');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('bool2');
  self.TPtrCComponent^.Component_Goto(isIntZero_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('bool2');

  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('numResultByteVarName','True2');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('numResultByteVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('numResultByteVarName','False');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_SetValueMode('numVarName','number');
  self.TPtrCComponent^.Component_SetValueMode('numResultByteVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultByteVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_isPositive(const isPositiveAd_Address: Integer
  ): Integer;
begin

  {
  function ArrMath.isPositive(var num: IntArr): Boolean;
  var
    ByteA:Byte;
  begin
    ByteA:=self.isPositiveAd(num);
    if(ByteA=1)then Result:=True else
    if(ByteA=0)then Result:=False else Result:=False;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = ResultBoolVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ByteA');
  self.TPtrCComponent^.Component_Goto(isPositiveAd_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ByteA');

  self.TPtrCComponent^.Component_V1EqV2('ByteA','True','ByteA');

  self.TPtrCComponent^.Component_IfV1False('ByteA','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','False');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_SetValueMode('numVarName','number');
  self.TPtrCComponent^.Component_SetValueMode('ResultBoolVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultBoolVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_isNum1Bigger(const IsBitSet_Address: Integer
  ): Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1VarName;
  //GV2 = num2VarName;
  //GV3 = ResultByteVarName;

  self.TPtrCComponent^.Component_AllocateMem('num1VarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1VarName');

  self.TPtrCComponent^.Component_AllocateMem('num2VarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2VarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultByteVarName',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultByteVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('True2',2);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('True2','NumZero','True2');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('j',7);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',-1);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteB',0);
  self.TPtrCComponent^.Component_AllocateMem('booln1',0);
  self.TPtrCComponent^.Component_AllocateMem('booln2',0);
  self.TPtrCComponent^.Component_AllocateMem('booln3',0);
  self.TPtrCComponent^.Component_AllocateMem('booln4',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd2',0);

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_Length('num1VarName','i');
  self.TPtrCComponent^.Component_SumSubInteger('i','num2','i');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumZero','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1LTV2('j','NumZero','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_MoveV2ToV1('bool2','False');

  self.TPtrCComponent^.Component_ArrayIndexGet('num1VarName','i','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexGet('num2VarName','i','ByteB');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('j');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('j');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteB');
  self.TPtrCComponent^.Component_MoveV2ToGV2('j');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteB');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteB');
  self.TPtrCComponent^.Component_MoveGV2ToV1('j');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteB');

  self.TPtrCComponent^.Component_IfV1False('ByteA','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_IfV1False('ByteB','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool2','True');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','booln1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','booln2');
  self.TPtrCComponent^.Component_V1AndV2('booln1','booln2','boolAnd1');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','booln3');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','booln4');
  self.TPtrCComponent^.Component_V1AndV2('booln3','booln4','boolAnd2');

  self.TPtrCComponent^.Component_IfV1False('boolAnd1','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultByteVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_IfV1False('boolAnd2','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultByteVarName','False');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('j','num2','j');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('i','num2','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultByteVarName','True2');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('num1VarName','number');
  self.TPtrCComponent^.Component_SetValueMode('num2VarName','number');
  self.TPtrCComponent^.Component_SetValueMode('ResultByteVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1VarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2VarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultByteVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_isNum1BiggerAlign(const AlignNums_Address,
  isNum1Bigger_Address: Integer): Integer;
begin

  {
  function ArrMath.isNum1BiggerAlign(num1, num2: IntArr): Byte;
  begin
    self.AlignNums(num1,num2);
    Result:=self.isNum1Bigger(num1,num2);
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1VarName;
  //GV2 = num2VarName;
  //GV3 = ResultByteVarName;

  self.TPtrCComponent^.Component_AllocateMem('num1VarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1VarName');

  self.TPtrCComponent^.Component_AllocateMem('num2VarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2VarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultByteVarName',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultByteVarName');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1VarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2VarName');
  self.TPtrCComponent^.Component_Goto(AlignNums_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1VarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2VarName');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1VarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2VarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultByteVarName');
  self.TPtrCComponent^.Component_Goto(isNum1Bigger_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1VarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2VarName');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultByteVarName');

  self.TPtrCComponent^.Component_SetValueMode('ResultByteVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1VarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2VarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultByteVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_isIntNumber: Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = DigitStrVarName;
  //GV2 = ResultBoolVarName;

  self.TPtrCComponent^.Component_AllocateMem('DigitStrVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('DigitStrVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('StrLength',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',0);
  self.TPtrCComponent^.Component_AllocateMem('StrDigit','');

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','False');
  self.TPtrCComponent^.Component_StrLength('DigitStrVarName','StrLength');

  self.TPtrCComponent^.Component_V1EqV2('StrLength','False','num1');
  self.TPtrCComponent^.Component_V1GTV2('StrLength','True','num2');

  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse1');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_IfV1False('num2','JumpFalse2');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','0');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','1');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','2');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','3');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse6');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','4');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse7');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','5');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','6');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse9');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','7');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse10');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse10');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','8');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse11');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse12');

  self.TPtrCComponent^.Component_Port('JumpFalse11');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','9');
  self.TPtrCComponent^.Component_V1EqV2('StrDigit','DigitStrVarName','num1');
  self.TPtrCComponent^.Component_IfV1False('num1','JumpFalse12');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');

  self.TPtrCComponent^.Component_Port('JumpFalse12');

  self.TPtrCComponent^.Component_SetValueMode('ResultBoolVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('DigitStrVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultBoolVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_GetIntDigit: Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = DigitByteVarName;
  //GV2 = ResultStrVarName;

  self.TPtrCComponent^.Component_AllocateMem('DigitByteVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('DigitByteVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultStrVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultStrVarName');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','');
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_SetLength('DigitByteVarName','True');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','0');
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','1');
  self.TPtrCComponent^.Component_AllocateMem('num1',1);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','2');
  self.TPtrCComponent^.Component_AllocateMem('num1',2);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','3');
  self.TPtrCComponent^.Component_AllocateMem('num1',3);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','4');
  self.TPtrCComponent^.Component_AllocateMem('num1',4);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','5');
  self.TPtrCComponent^.Component_AllocateMem('num1',5);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse6');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','6');
  self.TPtrCComponent^.Component_AllocateMem('num1',6);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse7');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','7');
  self.TPtrCComponent^.Component_AllocateMem('num1',7);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','8');
  self.TPtrCComponent^.Component_AllocateMem('num1',8);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse9');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  self.TPtrCComponent^.Component_AllocateMem('StrDigit','9');
  self.TPtrCComponent^.Component_AllocateMem('num1',9);
  self.TPtrCComponent^.Component_SetLength('num1','True');
  self.TPtrCComponent^.Component_V1EqV2('num1','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse10');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultStrVarName','StrDigit');

  self.TPtrCComponent^.Component_Port('JumpFalse10');

  self.TPtrCComponent^.Component_SetValueMode('ResultStrVarName','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('DigitByteVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultStrVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_InitZeroToNine(const SetBit_Address,
  Shift_Address: Integer): Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = isNegBoolVarName;
  //GV2 = DigitByteVarName;
  //GV3 = numVarName;

  self.TPtrCComponent^.Component_AllocateMem('isNegBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('isNegBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('DigitByteVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('DigitByteVarName');

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumTwo',2);
  self.TPtrCComponent^.Component_AllocateMem('NumThree',3);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_SetLength('numVarName','NumOne');
  self.TPtrCComponent^.Component_ArrayIndexSet('numVarName','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarName','NumZero','ByteA');

  self.TPtrCComponent^.Component_AllocateMem('DigitByte',1);
  self.TPtrCComponent^.Component_V1EqV2('DigitByte','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse9');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_AllocateMem('DigitByte',2);
  self.TPtrCComponent^.Component_V1EqV2('DigitByte','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumOne');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumOne');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse9');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_AllocateMem('DigitByte',3);
  self.TPtrCComponent^.Component_V1EqV2('DigitByte','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumOne');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumOne');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse9');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_AllocateMem('DigitByte',4);
  self.TPtrCComponent^.Component_V1EqV2('DigitByte','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumTwo');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumTwo');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse9');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_AllocateMem('DigitByte',5);
  self.TPtrCComponent^.Component_V1EqV2('DigitByte','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumTwo');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumTwo');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse9');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_AllocateMem('DigitByte',6);
  self.TPtrCComponent^.Component_V1EqV2('DigitByte','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse6');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumOne');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumOne');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumTwo');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumTwo');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse9');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_AllocateMem('DigitByte',7);
  self.TPtrCComponent^.Component_V1EqV2('DigitByte','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse7');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumOne');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumOne');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumTwo');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumTwo');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse9');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_AllocateMem('DigitByte',8);
  self.TPtrCComponent^.Component_V1EqV2('DigitByte','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumThree');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumThree');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse9');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_AllocateMem('DigitByte',9);
  self.TPtrCComponent^.Component_V1EqV2('DigitByte','DigitByteVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse9');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumThree');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumThree');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  self.TPtrCComponent^.Component_ArrayIndexSet('numVarName','NumZero','ByteA');

  self.TPtrCComponent^.Component_V1EqV2('False','isNegBoolVarName','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse10');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numVarName');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numVarName');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse11');

  self.TPtrCComponent^.Component_Port('JumpFalse10');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numVarName');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numVarName');

  self.TPtrCComponent^.Component_Port('JumpFalse11');

  self.TPtrCComponent^.Component_SetValueMode('numVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('isNegBoolVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('DigitByteVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_AlignNums: Integer;
begin

  {
  procedure ArrMath.AlignNums(var num1, num2: IntArr);
  begin
    if(Length(num1)>Length(num2))then SetLength(num2,Length(num1)) else
    if(Length(num2)>Length(num1))then SetLength(num1,Length(num2));
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1VarName;
  //GV2 = num2VarName;

  self.TPtrCComponent^.Component_AllocateMem('num1VarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1VarName');

  self.TPtrCComponent^.Component_AllocateMem('num2VarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2VarName');

  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);

  self.TPtrCComponent^.Component_Length('num1VarName','num1');
  self.TPtrCComponent^.Component_Length('num2VarName','num2');

  self.TPtrCComponent^.Component_V1GTV2('num1','num2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_SetLength('num2VarName','num1');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1GTV2('num2','num1','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_SetLength('num1VarName','num2');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_SetValueMode('num1VarName','number');
  self.TPtrCComponent^.Component_SetValueMode('num2VarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1VarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2VarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_AssignIntNum(const SetInt_Address: Integer
  ): Integer;
begin

  {
  procedure ArrMath.AssignIntNum(num: IntArr; var numResult: IntArr);
  begin
    self.SetInt(num,numResult);
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = numResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('numResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultVarName');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultVarName');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultVarName');

  self.TPtrCComponent^.Component_SetValueMode('numResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_CutSome(const SetLengthInc_Address,
  SetLengthToLength_Address: Integer): Integer;
begin

  {
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = numResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('numResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('True2',2);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('True2','NumZero','True2');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',-1);
  self.TPtrCComponent^.Component_AllocateMem('num3',1);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd3',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd4',0);

  self.TPtrCComponent^.Component_AllocateMem('num',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('num','numVarName');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_SetLength('numResultVarName','NumZero');

  self.TPtrCComponent^.Component_Length('num','i');
  self.TPtrCComponent^.Component_SumSubInteger('i','num2','i');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumZero','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('num','i','ByteA');

  self.TPtrCComponent^.Component_V1NotEqV2('ByteA','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool1','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_V1EqV2('bool1','True','boolAnd4');

  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ByteA');
  self.TPtrCComponent^.Component_Goto(SetLengthInc_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ByteA');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_IfV1False('boolAnd4','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ByteA');
  self.TPtrCComponent^.Component_Goto(SetLengthInc_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultVarName');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('i','num2','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultVarName');
  self.TPtrCComponent^.Component_Goto(SetLengthToLength_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('i',0);

  self.TPtrCComponent^.Component_AllocateMem('Length1',0);
  self.TPtrCComponent^.Component_Length('num','Length1');
  self.TPtrCComponent^.Component_SumSubInteger('Length1','num2','Length1');

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','Length1','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('Length1','i','num1');
  self.TPtrCComponent^.Component_ArrayIndexGet('numResultVarName','i','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexSet('num','num1','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('i','num3','i');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_AllocateMem('i',0);

  self.TPtrCComponent^.Component_AllocateMem('Length1',0);
  self.TPtrCComponent^.Component_Length('num','Length1');
  self.TPtrCComponent^.Component_SumSubInteger('Length1','num2','Length1');

  self.TPtrCComponent^.Component_Port('kForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','Length1','num1');
  self.TPtrCComponent^.Component_IfV1True('num1','kForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('num','i','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexSet('numResultVarName','i','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumSubInteger('i','num3','i');
  self.TPtrCComponent^.Component_JumpTo('kForBegin');

  self.TPtrCComponent^.Component_Port('kForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_IsBitPosVar: Integer;
begin

  {
  Result:=False;
  if(Length(num)=8)then Result:=True;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarName;
  //GV2 = ResultBoolVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarName');

  self.TPtrCComponent^.Component_AllocateMem('ResultBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('Num8',SizeOf(Integer)*2);
  self.TPtrCComponent^.Component_AllocateMem('NumLength',0);

  self.TPtrCComponent^.Component_SetVarMem('ResultBoolVarName',0);

  self.TPtrCComponent^.Component_Length('numVarName','NumLength');
  self.TPtrCComponent^.Component_V1EqV2('NumLength','Num8','ResultBoolVarName');

  self.TPtrCComponent^.Component_SetValueMode('ResultBoolVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarName');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultBoolVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_CreateBitPosVar: Integer;
begin

  {
  TBitPos = Record
    ByteAtBaseZero:Integer;
    BitAtBaseZero:Integer;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numResultVarName;

  self.TPtrCComponent^.Component_AllocateMem('numResultVarName',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('Num8',SizeOf(Integer)*2);

  self.TPtrCComponent^.Component_SetLength('numResultVarName','NumZero');
  self.TPtrCComponent^.Component_SetLength('numResultVarName','Num8');

  self.TPtrCComponent^.Component_SetValueMode('numResultVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_GetBitPos(const IsBitPosVar_Address: Integer
  ): Integer;
begin

  {
  TBitPos = Record
    ByteAtBaseZero:Integer;
    BitAtBaseZero:Integer;
  end;
  }

  {
  ResultIntByteAtBaseZero:=numBitPos[0];
  ResultIntBitAtBaseZero:=numBitPos[1];
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numBitPos;
  //GV2 = ResultIntByteAtBaseZero;
  //GV3 = ResultIntBitAtBaseZero;

  self.TPtrCComponent^.Component_AllocateMem('numBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBitPos');

  self.TPtrCComponent^.Component_AllocateMem('ResultIntByteAtBaseZero',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultIntByteAtBaseZero');

  self.TPtrCComponent^.Component_AllocateMem('ResultIntBitAtBaseZero',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultIntBitAtBaseZero');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Num4',SizeOf(Integer));
  self.TPtrCComponent^.Component_AllocateMem('Num3',SizeOf(Integer)-1);
  self.TPtrCComponent^.Component_AllocateMem('Num7',(SizeOf(Integer)*2)-1);
  self.TPtrCComponent^.Component_AllocateMem('NumCal',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_AllocateMem('numBP1',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('numBP1','numBitPos');

  self.TPtrCComponent^.Component_SetVarMem('ResultIntByteAtBaseZero',-1);
  self.TPtrCComponent^.Component_SetVarMem('ResultIntBitAtBaseZero',-1);

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBP1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('bool1');
  self.TPtrCComponent^.Component_Goto(IsBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBP1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('bool1');

  self.TPtrCComponent^.Component_IfV1False('bool1','jForEnd');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','Num3','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('numBP1','i','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexSet('ResultIntByteAtBaseZero','i','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','Num7','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('numBP1','i','ByteA');
  self.TPtrCComponent^.Component_SubInteger('i','Num4','NumCal');
  self.TPtrCComponent^.Component_ArrayIndexSet('ResultIntBitAtBaseZero','NumCal','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_SetValueMode('ResultIntByteAtBaseZero','integer');
  self.TPtrCComponent^.Component_SetValueMode('ResultIntBitAtBaseZero','integer');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultIntByteAtBaseZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultIntBitAtBaseZero');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SetBitPosZero(
  const IsBitPosVar_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.SetBitPosZero(var num: TBitPos);
  begin
    num.ByteAtBaseZero:=0;
    num.BitAtBaseZero:=0;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numResultBitPos;

  self.TPtrCComponent^.Component_AllocateMem('numResultBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');

  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('Num8',SizeOf(Integer)*2);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('bool1');
  self.TPtrCComponent^.Component_Goto(IsBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('bool1');

  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_SetLength('numResultBitPos','NumZero');
  self.TPtrCComponent^.Component_SetLength('numResultBitPos','Num8');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_SetValueMode('numResultBitPos','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_CopyBitPos(const GetBitPos_Address,
  SetBitPos_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.CopyBitPos(const CopyNum: TBitPos; var ToNum: TBitPos);
  begin
    ToNum.ByteAtBaseZero:=CopyNum.ByteAtBaseZero;
    ToNum.BitAtBaseZero:=CopyNum.BitAtBaseZero;

    if(ToNum.BitAtBaseZero<0)then ToNum.BitAtBaseZero:=7 else
    if(ToNum.BitAtBaseZero>7)then ToNum.BitAtBaseZero:=0;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = CopyNumBitPos;
  //GV2 = ToNumResultBitPos;

  self.TPtrCComponent^.Component_AllocateMem('CopyNumBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('CopyNumBitPos');

  self.TPtrCComponent^.Component_AllocateMem('ToNumResultBitPos',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ToNumResultBitPos');

  self.TPtrCComponent^.Component_AllocateMem('NumByte',0);
  self.TPtrCComponent^.Component_AllocateMem('NumBit',0);

  self.TPtrCComponent^.Component_MoveV2ToGV1('CopyNumBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumByte');
  self.TPtrCComponent^.Component_MoveV2ToGV3('NumBit');
  self.TPtrCComponent^.Component_Goto(GetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('CopyNumBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumByte');
  self.TPtrCComponent^.Component_MoveGV3ToV1('NumBit');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ToNumResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumByte');
  self.TPtrCComponent^.Component_MoveV2ToGV3('NumBit');
  self.TPtrCComponent^.Component_Goto(SetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ToNumResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumByte');
  self.TPtrCComponent^.Component_MoveGV3ToV1('NumBit');

  self.TPtrCComponent^.Component_SetValueMode('CopyNumBitPos','number');
  self.TPtrCComponent^.Component_SetValueMode('ToNumResultBitPos','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('CopyNumBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ToNumResultBitPos');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SetBitPos(const IsBitPosVar_Address: Integer
  ): Integer;
begin

  {
  class procedure ArrMath.SetBitPos(var num: TBitPos; const ByteAtBaseZero,
    BitAtBaseZero: Integer);
  begin
    num.ByteAtBaseZero:=ByteAtBaseZero;
    if(num.ByteAtBaseZero<0)then num.ByteAtBaseZero:=0;
    if(BitAtBaseZero<0)then num.BitAtBaseZero:=7 else
    if(BitAtBaseZero>7)then num.BitAtBaseZero:=0 else num.BitAtBaseZero:=BitAtBaseZero;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numResultBitPos;
  //GV2 = IntByteAtBaseZero;
  //GV3 = IntBitAtBaseZero;

  self.TPtrCComponent^.Component_AllocateMem('numResultBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');

  self.TPtrCComponent^.Component_AllocateMem('IntByteAtBaseZero',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('IntByteAtBaseZero');

  self.TPtrCComponent^.Component_AllocateMem('IntBitAtBaseZero',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('IntBitAtBaseZero');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Num4',SizeOf(Integer));
  self.TPtrCComponent^.Component_AllocateMem('Num3',SizeOf(Integer)-1);
  self.TPtrCComponent^.Component_AllocateMem('Num7',(SizeOf(Integer)*2)-1);
  self.TPtrCComponent^.Component_AllocateMem('Num7B',SizeOf(Byte)-1);
  self.TPtrCComponent^.Component_AllocateMem('NumCal',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_AllocateMem('NumByte',0);
  self.TPtrCComponent^.Component_AllocateMem('NumBit',0);

  //============================================================================

  self.TPtrCComponent^.Component_V1LTV2('IntByteAtBaseZero','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('NumByte','NumZero');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse5');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('NumByte','IntByteAtBaseZero');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  //============================================================================

  self.TPtrCComponent^.Component_V1LTV2('IntBitAtBaseZero','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('NumBit','Num7B');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1GTV2('IntBitAtBaseZero','Num7B','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('NumBit','NumZero');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('NumBit','IntBitAtBaseZero');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('bool1');
  self.TPtrCComponent^.Component_Goto(IsBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('bool1');

  self.TPtrCComponent^.Component_IfV1False('bool1','jForEnd');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','Num3','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('NumByte','i','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexSet('numResultBitPos','i','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','Num7','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','Num4','NumCal');
  self.TPtrCComponent^.Component_ArrayIndexGet('NumBit','NumCal','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexSet('numResultBitPos','i','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numResultBitPos','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('IntByteAtBaseZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('IntBitAtBaseZero');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_IncBitPos(const GetBitPos_Address,
  SetBitPos_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.IncBitPos(var num: TBitPos);
  begin
    if(num.BitAtBaseZero<0)then num.BitAtBaseZero:=7 else
    if(num.BitAtBaseZero>7)then num.BitAtBaseZero:=0;

    num.BitAtBaseZero:=num.BitAtBaseZero+1;
    if(num.BitAtBaseZero>7)then begin
      num.BitAtBaseZero:=0;
      num.ByteAtBaseZero:=num.ByteAtBaseZero+1;
    end;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numResultBitPos;

  self.TPtrCComponent^.Component_AllocateMem('numResultBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');

  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Num7',SizeOf(Byte)-1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);

  self.TPtrCComponent^.Component_AllocateMem('NumByte',0);
  self.TPtrCComponent^.Component_AllocateMem('NumBit',0);

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumByte');
  self.TPtrCComponent^.Component_MoveV2ToGV3('NumBit');
  self.TPtrCComponent^.Component_Goto(GetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumByte');
  self.TPtrCComponent^.Component_MoveGV3ToV1('NumBit');

  self.TPtrCComponent^.Component_SumInteger('NumBit','NumOne','NumBit');
  self.TPtrCComponent^.Component_V1GTV2('NumBit','Num7','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('NumBit','NumZero');
  self.TPtrCComponent^.Component_SumInteger('NumByte','NumOne','NumByte');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumByte');
  self.TPtrCComponent^.Component_MoveV2ToGV3('NumBit');
  self.TPtrCComponent^.Component_Goto(SetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumByte');
  self.TPtrCComponent^.Component_MoveGV3ToV1('NumBit');

  self.TPtrCComponent^.Component_SetValueMode('numResultBitPos','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_DecBitPos(const GetBitPos_Address,
  SetBitPos_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.DecBitPos(var num: TBitPos);
  begin
    if(num.BitAtBaseZero<0)then num.BitAtBaseZero:=7 else
    if(num.BitAtBaseZero>7)then num.BitAtBaseZero:=0;

    num.BitAtBaseZero:=num.BitAtBaseZero-1;
    if(num.BitAtBaseZero<0)then begin
      num.BitAtBaseZero:=7;
      num.ByteAtBaseZero:=num.ByteAtBaseZero-1;
    end;
    if(num.ByteAtBaseZero<0)then num.ByteAtBaseZero:=0;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numResultBitPos;

  self.TPtrCComponent^.Component_AllocateMem('numResultBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');

  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Num7',SizeOf(Byte)-1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);

  self.TPtrCComponent^.Component_AllocateMem('NumByte',0);
  self.TPtrCComponent^.Component_AllocateMem('NumBit',0);

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumByte');
  self.TPtrCComponent^.Component_MoveV2ToGV3('NumBit');
  self.TPtrCComponent^.Component_Goto(GetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumByte');
  self.TPtrCComponent^.Component_MoveGV3ToV1('NumBit');

  self.TPtrCComponent^.Component_SubInteger('NumBit','NumOne','NumBit');
  self.TPtrCComponent^.Component_V1LTV2('NumBit','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('NumBit','Num7');
  self.TPtrCComponent^.Component_SubInteger('NumByte','NumOne','NumByte');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumByte');
  self.TPtrCComponent^.Component_MoveV2ToGV3('NumBit');
  self.TPtrCComponent^.Component_Goto(SetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumByte');
  self.TPtrCComponent^.Component_MoveGV3ToV1('NumBit');

  self.TPtrCComponent^.Component_SetValueMode('numResultBitPos','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_GetLastBit(const CreateBitPosVar_Address,
  SetBitPos_Address, SetBitPosZero_Address, IsBitPosEqual_Address,
  IsBitPosSet_Address, DecBitPos_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.GetLastBit(var num: TBitPos; const numArr: IntArr);
  var
    i:Integer;
    bool1:Boolean;
    n1PosZero:TBitPos;
  begin
    if(Length(numArr)=0)then Exit;
    bool1:=False;
    for i:=0 to (Length(numArr)-1)do if(numArr[i]<>0)then begin bool1:=True;break;end;
    if(bool1=False)then begin
      num.ByteAtBaseZero:=0;
      num.BitAtBaseZero:=0;
      Exit;
    end;
    self.SetBitPos(num,Length(numArr)-1,7);
    self.SetBitPosZero(n1PosZero);
    While(self.IsBitPosEqual(num,n1PosZero)=False)do begin
      if(self.IsBitPosSet(num,numArr)=True)then Exit
      else self.DecBitPos(num);
    end;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numResultBitPos;
  //GV2 = numIntArr;

  self.TPtrCComponent^.Component_AllocateMem('numResultBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');

  self.TPtrCComponent^.Component_AllocateMem('numIntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numIntArr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Num7',SizeOf(Byte)-1);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('numArr',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('numArr','numIntArr');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('n1PosZero',0);

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosZero');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosZero');

  self.TPtrCComponent^.Component_Length('numArr','numLength');

  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','jForEnd');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('numArr','i','ByteA');
  self.TPtrCComponent^.Component_V1NotEqV2('ByteA','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');
  self.TPtrCComponent^.Component_JumpTo('iForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('NumZero');
  self.TPtrCComponent^.Component_Goto(SetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('NumZero');

  self.TPtrCComponent^.Component_JumpTo('jForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numLength');
  self.TPtrCComponent^.Component_MoveV2ToGV3('Num7');
  self.TPtrCComponent^.Component_Goto(SetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numLength');
  self.TPtrCComponent^.Component_MoveGV3ToV1('Num7');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosZero');
  self.TPtrCComponent^.Component_Goto(SetBitPosZero_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosZero');

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n1PosZero');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool2');
  self.TPtrCComponent^.Component_Goto(IsBitPosEqual_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n1PosZero');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool2');

  self.TPtrCComponent^.Component_V1EqV2('bool2','False','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numArr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool2');
  self.TPtrCComponent^.Component_Goto(IsBitPosSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numArr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool2');

  self.TPtrCComponent^.Component_V1EqV2('bool2','True','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','jForEnd');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_Goto(DecBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultBitPos');

  //============================================================================

  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numResultBitPos','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numIntArr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_IsBitPosEqual(const GetBitPos_Address: Integer
  ): Integer;
begin

  {
  class function ArrMath.IsBitPosEqual(num1, num2: TBitPos): Boolean;
  begin
    Result:=False;

    if(num1.BitAtBaseZero<0)then num1.BitAtBaseZero:=7 else
    if(num1.BitAtBaseZero>7)then num1.BitAtBaseZero:=0;

    if(num2.BitAtBaseZero<0)then num2.BitAtBaseZero:=7 else
    if(num2.BitAtBaseZero>7)then num2.BitAtBaseZero:=0;

    if(num1.ByteAtBaseZero<0)then num1.ByteAtBaseZero:=0;
    if(num2.ByteAtBaseZero<0)then num2.ByteAtBaseZero:=0;

    if(num1.ByteAtBaseZero<>num2.ByteAtBaseZero)or
    (num1.BitAtBaseZero<>num2.BitAtBaseZero)then Exit;

    Result:=True;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1BitPos;
  //GV2 = num2BitPos;
  //GV3 = ResultBoolVarName;

  self.TPtrCComponent^.Component_AllocateMem('num1BitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1BitPos');

  self.TPtrCComponent^.Component_AllocateMem('num2BitPos',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2BitPos');

  self.TPtrCComponent^.Component_AllocateMem('ResultBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('numBP1',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('numBP1','num1BitPos');

  self.TPtrCComponent^.Component_AllocateMem('numBP2',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('numBP2','num2BitPos');

  self.TPtrCComponent^.Component_AllocateMem('numByte1',0);
  self.TPtrCComponent^.Component_AllocateMem('numBit1',0);
  self.TPtrCComponent^.Component_AllocateMem('numByte2',0);
  self.TPtrCComponent^.Component_AllocateMem('numBit2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr2',0);

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','False');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBP1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numByte1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numBit1');
  self.TPtrCComponent^.Component_Goto(GetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBP1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numByte1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numBit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBP2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numByte2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numBit2');
  self.TPtrCComponent^.Component_Goto(GetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBP2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numByte2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numBit2');

  self.TPtrCComponent^.Component_V1NotEqV2('numByte1','numByte2','boolOr1');
  self.TPtrCComponent^.Component_V1NotEqV2('numBit1','numBit2','boolOr2');
  self.TPtrCComponent^.Component_V1OrV2('boolOr1','boolOr2','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('ResultBoolVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1BitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2BitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultBoolVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_IsBitPosSet(const GetBitPos_Address,
  IsBitSet_Address: Integer): Integer;
begin

  {
  class function ArrMath.IsBitPosSet(const num: TBitPos; const numArr: IntArr
    ): Boolean;
  begin
    Result:=False;

    if(Length(numArr)=0)then Exit;
    if(num.ByteAtBaseZero<0)or(num.ByteAtBaseZero>(Length(numArr)-1))then Exit;

    Result:=self.IsBitSet(numArr[num.ByteAtBaseZero],Byte(num.BitAtBaseZero));
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numBitPos;
  //GV2 = numIntArr;
  //GV3 = ResultBoolVarName;

  self.TPtrCComponent^.Component_AllocateMem('numBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBitPos');

  self.TPtrCComponent^.Component_AllocateMem('numIntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numIntArr');

  self.TPtrCComponent^.Component_AllocateMem('ResultBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteB',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('numBP',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('numBP','numBitPos');

  self.TPtrCComponent^.Component_AllocateMem('num1IntArr',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('num1IntArr','numIntArr');

  self.TPtrCComponent^.Component_AllocateMem('numByte',0);
  self.TPtrCComponent^.Component_AllocateMem('numBit',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr2',0);

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','False');
  self.TPtrCComponent^.Component_Length('num1IntArr','numLength');

  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBP');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numByte');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numBit');
  self.TPtrCComponent^.Component_Goto(GetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBP');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numByte');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numBit');

  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_V1LTV2('numByte','NumZero','boolOr1');
  self.TPtrCComponent^.Component_V1GTV2('numByte','numLength','boolOr2');
  self.TPtrCComponent^.Component_V1OrV2('boolOr1','boolOr2','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_ArrayIndexGet('num1IntArr','numByte','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexGet('numBit','NumZero','ByteB');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ByteB');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultBoolVarName');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ByteB');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ResultBoolVarName');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('ResultBoolVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ResultBoolVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_BitPosSetArr(const GetBitPos_Address,
  SetBit_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.BitPosSetArr(const num: TBitPos; var numArr: IntArr);
  begin
    if(Length(numArr)=0)then Exit;
    if(num.ByteAtBaseZero<0)or(num.ByteAtBaseZero>(Length(numArr)-1))then Exit;

    self.SetBit(numArr[num.ByteAtBaseZero],Byte(num.BitAtBaseZero));
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numBitPos;
  //GV2 = numResultIntArr;

  self.TPtrCComponent^.Component_AllocateMem('numBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBitPos');

  self.TPtrCComponent^.Component_AllocateMem('numResultIntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteB',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('numBP',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('numBP','numBitPos');

  self.TPtrCComponent^.Component_AllocateMem('numByte',0);
  self.TPtrCComponent^.Component_AllocateMem('numBit',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr2',0);

  self.TPtrCComponent^.Component_Length('numResultIntArr','numLength');

  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBP');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numByte');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numBit');
  self.TPtrCComponent^.Component_Goto(GetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBP');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numByte');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numBit');

  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_V1LTV2('numByte','NumZero','boolOr1');
  self.TPtrCComponent^.Component_V1GTV2('numByte','numLength','boolOr2');
  self.TPtrCComponent^.Component_V1OrV2('boolOr1','boolOr2','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','numByte','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexGet('numBit','NumZero','ByteB');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ByteB');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ByteB');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','numByte','ByteA');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('numResultIntArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultIntArr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_BitPosAddSetArr(const GetBitPos_Address,
  SetBit_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.BitPosAddSetArr(const num: TBitPos; var numArr: IntArr);
  begin
    if(num.ByteAtBaseZero>(Length(numArr)-1))then SetLength(numArr,num.ByteAtBaseZero+1);
    self.SetBit(numArr[num.ByteAtBaseZero],Byte(num.BitAtBaseZero));
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numBitPos;
  //GV2 = numResultIntArr;

  self.TPtrCComponent^.Component_AllocateMem('numBitPos',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBitPos');

  self.TPtrCComponent^.Component_AllocateMem('numResultIntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteB',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('numBP',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('numBP','numBitPos');

  self.TPtrCComponent^.Component_AllocateMem('numByte',0);
  self.TPtrCComponent^.Component_AllocateMem('numBit',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',0);

  self.TPtrCComponent^.Component_Length('numResultIntArr','numLength');
  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBP');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numByte');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numBit');
  self.TPtrCComponent^.Component_Goto(GetBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numBP');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numByte');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numBit');

  self.TPtrCComponent^.Component_V1GTV2('numByte','numLength','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_SumInteger('numByte','NumOne','num1');
  self.TPtrCComponent^.Component_SetLength('numResultIntArr','num1');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','numByte','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexGet('numBit','NumZero','ByteB');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ByteB');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ByteB');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','numByte','ByteA');

  self.TPtrCComponent^.Component_SetValueMode('numResultIntArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numBitPos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultIntArr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SumInt(const AlignNums_Address,
  BitsLength_Address, IsBitSet_Address, SetLengthInc_Address,
  SetBit_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.SumInt(num1, num2: IntArr; var numResult: IntArr);
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1IntArr;
  //GV2 = num2IntArr;
  //GV3 = numResultIntArr;

  self.TPtrCComponent^.Component_AllocateMem('num1IntArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1IntArr');

  self.TPtrCComponent^.Component_AllocateMem('num2IntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2IntArr');

  self.TPtrCComponent^.Component_AllocateMem('numResultIntArr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Num8',8);
  self.TPtrCComponent^.Component_AllocateMem('bool4',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteB',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd3',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('bool3',0);

  self.TPtrCComponent^.Component_AllocateMem('num1Arr',0);
  self.TPtrCComponent^.Component_AllocateMem('num2Arr',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('num1Arr','num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToV1('num2Arr','num2IntArr');

  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumZero');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_Goto(AlignNums_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');

  self.TPtrCComponent^.Component_Length('num1Arr','numLength');
  self.TPtrCComponent^.Component_SetLength('numResultIntArr','numLength');
  self.TPtrCComponent^.Component_MoveV2ToV1('bool3','False');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numLength');
  self.TPtrCComponent^.Component_Goto(BitsLength_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numLength');

  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','bool4');
  self.TPtrCComponent^.Component_IfV1True('bool4','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_MoveV2ToV1('bool2','False');

  self.TPtrCComponent^.Component_DivInteger('i','Num8','num1');
  self.TPtrCComponent^.Component_MulInteger('num1','Num8','num2');
  self.TPtrCComponent^.Component_SubInteger('i','num2','num2');

  self.TPtrCComponent^.Component_ArrayIndexGet('num1Arr','num1','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexGet('num2Arr','num1','ByteB');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool4');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool4');

  self.TPtrCComponent^.Component_V1EqV2('bool4','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteB');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool4');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteB');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool4');

  self.TPtrCComponent^.Component_V1EqV2('bool4','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool2','True');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse3');

  self.TPtrCComponent^.Component_V1EqV2('bool3','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse4');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool3','False');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('bool3','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse5');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse6');

  self.TPtrCComponent^.Component_V1EqV2('bool3','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse6');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse7');

  self.TPtrCComponent^.Component_V1EqV2('bool3','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse8');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool3','True');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_V1EqV2('bool3','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse9');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_Goto(SetLengthInc_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');

  self.TPtrCComponent^.Component_DivInteger('i','Num8','num1');
  self.TPtrCComponent^.Component_MulInteger('num1','Num8','num2');
  self.TPtrCComponent^.Component_SubInteger('i','num2','num2');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  self.TPtrCComponent^.Component_SetValueMode('numResultIntArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SubInt(const AlignNums_Address,
  isNum1Bigger_Address, SetInt_Address, BitsLength_Address, IsBitSet_Address,
  SetBit_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.SubInt(num1, num2: IntArr; var numResult: IntArr; out
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1IntArr;
  //GV2 = num2IntArr;
  //GV3 = numResultIntArr;
  //GV4 = num1BiggerByteResult;

  self.TPtrCComponent^.Component_AllocateMem('num1IntArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1IntArr');

  self.TPtrCComponent^.Component_AllocateMem('num2IntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2IntArr');

  self.TPtrCComponent^.Component_AllocateMem('numResultIntArr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_AllocateMem('num1BiggerByteResult',0);
  self.TPtrCComponent^.Component_MoveGV4ToV1('num1BiggerByteResult');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Num8',8);
  self.TPtrCComponent^.Component_AllocateMem('bool4',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteB',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd3',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('bool3',0);
  self.TPtrCComponent^.Component_AllocateMem('TArr1',nil);
  self.TPtrCComponent^.Component_AllocateMem('TArr2',nil);

  self.TPtrCComponent^.Component_AllocateMem('num1Arr',0);
  self.TPtrCComponent^.Component_AllocateMem('num2Arr',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('num1Arr','num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToV1('num2Arr','num2IntArr');

  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumZero');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_Goto(AlignNums_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');

  self.TPtrCComponent^.Component_Length('num1Arr','numLength');
  self.TPtrCComponent^.Component_SetLength('numResultIntArr','numLength');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('num1BiggerByteResult');
  self.TPtrCComponent^.Component_Goto(isNum1Bigger_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('num1BiggerByteResult');

  self.TPtrCComponent^.Component_V1EqV2('num1BiggerByteResult','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr2');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr2');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_V1EqV2('num1BiggerByteResult','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse9');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr2');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr2');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumZero');
  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumOne');
  self.TPtrCComponent^.Component_JumpTo('iForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse10');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool3','False');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numLength');
  self.TPtrCComponent^.Component_Goto(BitsLength_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numLength');

  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','bool4');
  self.TPtrCComponent^.Component_IfV1True('bool4','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_MoveV2ToV1('bool2','False');

  self.TPtrCComponent^.Component_DivInteger('i','Num8','num1');
  self.TPtrCComponent^.Component_MulInteger('num1','Num8','num2');
  self.TPtrCComponent^.Component_SubInteger('i','num2','num2');

  self.TPtrCComponent^.Component_ArrayIndexGet('TArr1','num1','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexGet('TArr2','num1','ByteB');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool4');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool4');

  self.TPtrCComponent^.Component_V1EqV2('bool4','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteB');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool4');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteB');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool4');

  self.TPtrCComponent^.Component_V1EqV2('bool4','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool2','True');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse3');

  self.TPtrCComponent^.Component_V1EqV2('bool3','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse3');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('bool3','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool3','False');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse5');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_V1EqV2('bool3','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse5');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse6');

  self.TPtrCComponent^.Component_V1EqV2('bool3','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse6');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool3','True');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse7');

  self.TPtrCComponent^.Component_V1EqV2('bool3','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse7');

  self.TPtrCComponent^.Component_ArrayIndexGet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ByteA');
  self.TPtrCComponent^.Component_Goto(SetBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ByteA');

  self.TPtrCComponent^.Component_ArrayIndexSet('numResultIntArr','num1','ByteA');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numResultIntArr','number');
  self.TPtrCComponent^.Component_SetValueMode('num1BiggerByteResult','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('num1BiggerByteResult');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SumSubInt(const isPositive_Address,
  SubInt_Address, SumInt_Address, Shift_Address, CutSome_Address,
  SetInt_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.SumSubInt(num1, num2: IntArr; var numResult: IntArr);
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1IntArr;
  //GV2 = num2IntArr;
  //GV3 = numResultIntArr;

  self.TPtrCComponent^.Component_AllocateMem('num1IntArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1IntArr');

  self.TPtrCComponent^.Component_AllocateMem('num2IntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2IntArr');

  self.TPtrCComponent^.Component_AllocateMem('numResultIntArr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('True2',2);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool4',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',nil);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd3',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('True2','NumZero','True2');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('AByte',0);

  self.TPtrCComponent^.Component_AllocateMem('num1Arr',0);
  self.TPtrCComponent^.Component_AllocateMem('num2Arr',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('num1Arr','num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToV1('num2Arr','num2IntArr');

  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumZero');

  self.TPtrCComponent^.Component_Length('num1Arr','numLength');
  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool4');
  self.TPtrCComponent^.Component_IfV1True('bool4','JumpExit1');

  self.TPtrCComponent^.Component_Length('num2Arr','numLength');
  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool4');
  self.TPtrCComponent^.Component_IfV1True('bool4','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('bool1');
  self.TPtrCComponent^.Component_Goto(isPositive_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('bool1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('bool2');
  self.TPtrCComponent^.Component_Goto(isPositive_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('bool2');

  //============================================================================

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(SumInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  //============================================================================

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('AByte');
  self.TPtrCComponent^.Component_Goto(SubInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV4ToV1('AByte');

  self.TPtrCComponent^.Component_V1EqV2('AByte','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_V1EqV2('AByte','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('AByte','True2','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse6');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  //============================================================================

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse10');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('AByte');
  self.TPtrCComponent^.Component_Goto(SubInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV4ToV1('AByte');

  self.TPtrCComponent^.Component_V1EqV2('AByte','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse7');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_V1EqV2('AByte','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_V1EqV2('AByte','True2','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse9');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse10');

  //============================================================================

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(SumInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  //============================================================================

  self.TPtrCComponent^.Component_Length('numResultIntArr','numLength');
  self.TPtrCComponent^.Component_V1GTV2('numLength','NumOne','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num1');
  self.TPtrCComponent^.Component_Goto(CutSome_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('numResultIntArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_MulIntBit(const CreateBitPosVar_Address,
  GetLastBit_Address, DecBitPos_Address, IsBitPosSet_Address,
  SetBitPosZero_Address, IsBitPosEqual_Address, IncBitPos_Address,
  CopyBitPos_Address, BitPosAddSetArr_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.MulIntBit(num1, num2: IntArr; var numResult: IntArr);
  var
    i:Integer;
    n1PosCount:TBitPos;
    n1Pos,n1PosF1,n2Pos,n2PosF1,n2PosF3:TBitPos;
    n1PosF2,n2PosF2:TBitPos;
    bool1,bool2,bool3:Boolean;
    AData:Byte;
    CData0,CData1:Integer;
  begin
    SetLength(numResult,0);
    self.SetBitPosZero(n1PosCount);

    self.SetBitPosZero(n1Pos);
    self.SetBitPosZero(n1PosF1);
    self.GetLastBit(n1PosF2,num1);

    self.SetBitPosZero(n2Pos);
    self.SetBitPosZero(n2PosF1);
    self.GetLastBit(n2PosF2,num2);
    self.SetBitPosZero(n2PosF3);

    CData0:=0;
    CData1:=0;
    bool2:=False;
    bool3:=False;
    While(bool3=False)do begin
      bool1:=False;
      AData:=0;
      CData1:=0;
      repeat
        if(bool1=True)then begin self.DecBitPos(n1Pos);self.IncBitPos(n2Pos);end;
        if(self.IsBitPosSet(n1Pos,num1)=True)and
        (self.IsBitPosSet(n2Pos,num2)=True)then begin
          if(CData0>0)then begin CData0:=CData0-1;AData:=AData+2;end else AData:=AData+1;
          if(AData=2)then begin AData:=0;CData1:=CData1+1;end else
          if(AData=3)then begin AData:=1;CData1:=CData1+1;end;
        end else
        if(CData0>0)then begin
          CData0:=CData0-1;AData:=AData+1;
          if(AData=2)then begin AData:=0;CData1:=CData1+1;end else
          if(AData=3)then begin AData:=1;CData1:=CData1+1;end;
        end;
        if(self.IsBitPosEqual(n1Pos,n1PosF2)=True)and(bool2=False)then bool2:=True;
        if(bool1=False)then bool1:=True;
        if(self.IsBitPosEqual(n1Pos,n1PosF2)=True)and
        (self.IsBitPosEqual(n2Pos,n2PosF2)=True)then bool3:=True;
      until(self.IsBitPosEqual(n2Pos,n2PosF1)=True);

      for i:=1 to CData0 do begin
        if(CData0>0)then begin
          CData0:=CData0-1;AData:=AData+1;
          if(AData=2)then begin AData:=0;CData1:=CData1+1;end else
          if(AData=3)then begin AData:=1;CData1:=CData1+1;end;
        end;
      end;

      CData0:=CData0+CData1;
      if(AData=1)then self.BitPosAddSetArr(n1PosCount,numResult);
      self.IncBitPos(n1PosCount);
      if(self.IsBitPosEqual(n1PosF1,n1PosF2)=False)then self.IncBitPos(n1PosF1);
      if(self.IsBitPosEqual(n2PosF1,n2PosF2)=False)then self.IncBitPos(n2PosF1);
      self.CopyBitPos(n1PosF1,n1Pos);
      if(bool2=False)then self.SetBitPosZero(n2Pos)else
      if(bool2=True)and(self.IsBitPosEqual(n2PosF3,n2PosF2)=False)then begin
        self.IncBitPos(n2PosF3);
        self.CopyBitPos(n2PosF3,n2Pos);
      end;
    end;

    if(CData0=1)then self.BitPosAddSetArr(n1PosCount,numResult);
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1IntArr;
  //GV2 = num2IntArr;
  //GV3 = numResultIntArr;

  self.TPtrCComponent^.Component_AllocateMem('num1IntArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1IntArr');

  self.TPtrCComponent^.Component_AllocateMem('num2IntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2IntArr');

  self.TPtrCComponent^.Component_AllocateMem('numResultIntArr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Num2',2);
  self.TPtrCComponent^.Component_AllocateMem('Num3',3);
  self.TPtrCComponent^.Component_AllocateMem('bool4',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd3',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('num1Arr',0);
  self.TPtrCComponent^.Component_AllocateMem('num2Arr',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('num1Arr','num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToV1('num2Arr','num2IntArr');

  //============================================================================

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('n1PosCount',nil);

  self.TPtrCComponent^.Component_AllocateMem('n1Pos',nil);
  self.TPtrCComponent^.Component_AllocateMem('n1PosF1',nil);
  self.TPtrCComponent^.Component_AllocateMem('n2Pos',nil);
  self.TPtrCComponent^.Component_AllocateMem('n2PosF1',nil);
  self.TPtrCComponent^.Component_AllocateMem('n2PosF3',nil);

  self.TPtrCComponent^.Component_AllocateMem('n1PosF2',nil);
  self.TPtrCComponent^.Component_AllocateMem('n2PosF2',nil);

  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('bool3',0);

  self.TPtrCComponent^.Component_AllocateMem('AData',0);

  self.TPtrCComponent^.Component_AllocateMem('CData0',0);
  self.TPtrCComponent^.Component_AllocateMem('CData1',0);

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosCount');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosCount');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosF1');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosF1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2Pos');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2Pos');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2PosF1');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2PosF1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2PosF3');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2PosF3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosF2');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosF2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2PosF2');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2PosF2');

  //============================================================================

  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumZero');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosF2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num1Arr');
  self.TPtrCComponent^.Component_Goto(GetLastBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosF2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num1Arr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2PosF2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_Goto(GetLastBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2PosF2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool2','False');
  self.TPtrCComponent^.Component_MoveV2ToV1('bool3','False');

  self.TPtrCComponent^.Component_Port('WhileBegin1');

  self.TPtrCComponent^.Component_V1EqV2('bool3','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','WhileEnd1');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_AllocateMem('AData',0);
  self.TPtrCComponent^.Component_AllocateMem('CData1',0);

  self.TPtrCComponent^.Component_Port('RepeatBegin1');

  //============================================================================

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_Goto(DecBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2Pos');
  self.TPtrCComponent^.Component_Goto(IncBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2Pos');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('boolAnd1');
  self.TPtrCComponent^.Component_Goto(IsBitPosSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('boolAnd1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2Pos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('boolAnd2');
  self.TPtrCComponent^.Component_Goto(IsBitPosSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2Pos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('boolAnd2');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('boolAnd2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse2');

  self.TPtrCComponent^.Component_V1GTV2('CData0','NumZero','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse4');

  self.TPtrCComponent^.Component_SubInteger('CData0','NumOne','CData0');
  self.TPtrCComponent^.Component_SumInteger('AData','Num2','AData');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse5');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_SumInteger('AData','NumOne','AData');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('AData','Num2','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse6');

  self.TPtrCComponent^.Component_AllocateMem('AData',0);
  self.TPtrCComponent^.Component_SumInteger('CData1','NumOne','CData1');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse7');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_V1EqV2('AData','Num3','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse7');

  self.TPtrCComponent^.Component_AllocateMem('AData',1);
  self.TPtrCComponent^.Component_SumInteger('CData1','NumOne','CData1');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1GTV2('CData0','NumZero','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse3');

  self.TPtrCComponent^.Component_SubInteger('CData0','NumOne','CData0');
  self.TPtrCComponent^.Component_SumInteger('AData','NumOne','AData');

  self.TPtrCComponent^.Component_V1EqV2('AData','Num2','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse8');

  self.TPtrCComponent^.Component_AllocateMem('AData',0);
  self.TPtrCComponent^.Component_SumInteger('CData1','NumOne','CData1');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_V1EqV2('AData','Num3','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse3');

  self.TPtrCComponent^.Component_AllocateMem('AData',1);
  self.TPtrCComponent^.Component_SumInteger('CData1','NumOne','CData1');

  self.TPtrCComponent^.Component_Port('JumpFalse3');
  self.TPtrCComponent^.Component_Exit;

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n1PosF2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('boolAnd1');
  self.TPtrCComponent^.Component_Goto(IsBitPosEqual_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n1PosF2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('boolAnd1');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse9');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool2','True');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse10');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_Port('JumpFalse10');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n1PosF2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('boolAnd1');
  self.TPtrCComponent^.Component_Goto(IsBitPosEqual_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n1PosF2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('boolAnd1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2Pos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2PosF2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('boolAnd2');
  self.TPtrCComponent^.Component_Goto(IsBitPosEqual_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2Pos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2PosF2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('boolAnd2');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('boolAnd2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse11');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool3','True');

  self.TPtrCComponent^.Component_Port('JumpFalse11');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2Pos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2PosF1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool4');
  self.TPtrCComponent^.Component_Goto(IsBitPosEqual_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2Pos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2PosF1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool4');

  self.TPtrCComponent^.Component_V1EqV2('bool4','True','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','RepeatBegin1');

  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','CData0','bool4');
  self.TPtrCComponent^.Component_IfV1True('bool4','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_Goto('JumpFalse2');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SumInteger('CData0','CData1','CData0');

  self.TPtrCComponent^.Component_V1EqV2('AData','NumOne','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse12');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosCount');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(BitPosAddSetArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosCount');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_Port('JumpFalse12');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosCount');
  self.TPtrCComponent^.Component_Goto(IncBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosCount');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosF1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n1PosF2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool4');
  self.TPtrCComponent^.Component_Goto(IsBitPosEqual_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosF1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n1PosF2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool4');

  self.TPtrCComponent^.Component_V1EqV2('bool4','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse13');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosF1');
  self.TPtrCComponent^.Component_Goto(IncBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosF1');

  self.TPtrCComponent^.Component_Port('JumpFalse13');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2PosF1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2PosF2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool4');
  self.TPtrCComponent^.Component_Goto(IsBitPosEqual_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2PosF1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2PosF2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool4');

  self.TPtrCComponent^.Component_V1EqV2('bool4','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse14');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2PosF1');
  self.TPtrCComponent^.Component_Goto(IncBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2PosF1');

  self.TPtrCComponent^.Component_Port('JumpFalse14');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosF1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n1Pos');
  self.TPtrCComponent^.Component_Goto(CopyBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosF1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n1Pos');

  self.TPtrCComponent^.Component_V1EqV2('bool2','False','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse15');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2Pos');
  self.TPtrCComponent^.Component_Goto(SetBitPosZero_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2Pos');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse16');

  self.TPtrCComponent^.Component_Port('JumpFalse15');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2PosF3');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2PosF2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('boolAnd1');
  self.TPtrCComponent^.Component_Goto(IsBitPosEqual_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2PosF3');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2PosF2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('boolAnd1');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd1','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse16');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2PosF3');
  self.TPtrCComponent^.Component_Goto(IncBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2PosF3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2PosF3');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2Pos');
  self.TPtrCComponent^.Component_Goto(CopyBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2PosF3');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2Pos');

  self.TPtrCComponent^.Component_Port('JumpFalse16');

  //============================================================================

  self.TPtrCComponent^.Component_JumpTo('WhileBegin1');

  self.TPtrCComponent^.Component_Port('WhileEnd1');

  self.TPtrCComponent^.Component_V1EqV2('CData0','NumOne','bool4');
  self.TPtrCComponent^.Component_IfV1False('bool4','JumpFalse17');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosCount');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(BitPosAddSetArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosCount');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_Port('JumpFalse17');

  self.TPtrCComponent^.Component_SetValueMode('numResultIntArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_DivInt(const BitsLength_Address,
  IsBitSet_Address, isNum1BiggerAlign_Address, SubInt_Address, SetInt_Address,
  InitZeroToNine_Address, Shift_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.DivInt(num1, num2: IntArr; var numResult: IntArr);
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1IntArr;
  //GV2 = num2IntArr;
  //GV3 = numResultIntArr;

  self.TPtrCComponent^.Component_AllocateMem('num1IntArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1IntArr');

  self.TPtrCComponent^.Component_AllocateMem('num2IntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2IntArr');

  self.TPtrCComponent^.Component_AllocateMem('numResultIntArr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('Num2',2);
  self.TPtrCComponent^.Component_AllocateMem('Num8',8);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numC1',0);
  self.TPtrCComponent^.Component_AllocateMem('numC2',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('TArr2',nil);
  self.TPtrCComponent^.Component_AllocateMem('TArr3',nil);
  self.TPtrCComponent^.Component_AllocateMem('AMode',0);
  self.TPtrCComponent^.Component_AllocateMem('Num1Big',0);

  self.TPtrCComponent^.Component_AllocateMem('num1Arr',0);
  self.TPtrCComponent^.Component_AllocateMem('num2Arr',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('num1Arr','num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToV1('num2Arr','num2IntArr');

  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumZero');
  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumOne');

  self.TPtrCComponent^.Component_SetLength('TArr2','NumZero');
  self.TPtrCComponent^.Component_SetLength('TArr2','NumOne');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_Goto(BitsLength_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_DivInteger('i','Num8','numC1');
  self.TPtrCComponent^.Component_ArrayIndexGet('num1Arr','numC1','ByteA');

  self.TPtrCComponent^.Component_MulInteger('numC1','Num8','numC2');
  self.TPtrCComponent^.Component_SubInteger('i','numC2','numC2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ByteA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numC2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool1');
  self.TPtrCComponent^.Component_Goto(IsBitSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ByteA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numC2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool1');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr2');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr2');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr2');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr2');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('AMode');
  self.TPtrCComponent^.Component_Goto(isNum1BiggerAlign_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('AMode');

  self.TPtrCComponent^.Component_V1EqV2('AMode','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr3');
  self.TPtrCComponent^.Component_MoveV2ToGV4('Num1Big');
  self.TPtrCComponent^.Component_Goto(SubInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr3');
  self.TPtrCComponent^.Component_MoveGV4ToV1('Num1Big');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr3');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr2');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr3');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr2');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse5');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_V1EqV2('AMode','NumOne','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse5');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_V1EqV2('AMode','Num2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr2');
  self.TPtrCComponent^.Component_Goto(InitZeroToNine_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('True');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr2');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('True');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr2');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numResultIntArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_MulDivInt(const isPositive_Address,
  isIntZero_Address, Shift_Address, MulIntBit_Address, DivInt_Address,
  CutSome_Address, SetInt_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.MulDivInt(num1, num2: IntArr; var numResult: IntArr;
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
      //if(doMul=True)then self.MulInt(num1,num2,numResult) else
      if(doMul=True)then self.MulIntBit(num1,num2,numResult) else
      //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
      if(doMul=False)then self.DivInt(num1,num2,numResult);
      self.Shift(False,True,numResult);
    end else
    if(bool1=True)and(bool2=False)then begin
      //if(doMul=True)then self.MulInt(num1,num2,numResult) else
      if(doMul=True)then self.MulIntBit(num1,num2,numResult) else
      //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
      if(doMul=False)then self.DivInt(num1,num2,numResult);
      self.Shift(False,False,numResult);
    end else
    if(bool1=False)and(bool2=True)then begin
      //if(doMul=True)then self.MulInt(num1,num2,numResult) else
      if(doMul=True)then self.MulIntBit(num1,num2,numResult) else
      //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
      if(doMul=False)then self.DivInt(num1,num2,numResult);
      self.Shift(False,False,numResult);
    end else
    if(bool1=True)and(bool2=True)then begin
      //if(doMul=True)then self.MulInt(num1,num2,numResult) else
      if(doMul=True)then self.MulIntBit(num1,num2,numResult) else
      //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
      if(doMul=False)then self.DivInt(num1,num2,numResult);
      self.Shift(False,True,numResult);
    end;
    if(Length(numResult)>1)then begin
      self.CutSome(numResult,num1);
      self.SetInt(num1,numResult);
    end;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = num1IntArr;
  //GV2 = num2IntArr;
  //GV3 = numResultIntArr;
  //GV4 = doMulBool;

  self.TPtrCComponent^.Component_AllocateMem('num1IntArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1IntArr');

  self.TPtrCComponent^.Component_AllocateMem('num2IntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2IntArr');

  self.TPtrCComponent^.Component_AllocateMem('numResultIntArr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_AllocateMem('doMulBool',0);
  self.TPtrCComponent^.Component_MoveGV4ToV1('doMulBool');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd3',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',nil);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);

  self.TPtrCComponent^.Component_AllocateMem('num1Arr',0);
  self.TPtrCComponent^.Component_AllocateMem('num2Arr',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('num1Arr','num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToV1('num2Arr','num2IntArr');

  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumZero');

  self.TPtrCComponent^.Component_Length('num1Arr','numLength');
  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','numLength');
  self.TPtrCComponent^.Component_IfV1True('numLength','JumpExit1');

  self.TPtrCComponent^.Component_Length('num2Arr','numLength');
  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','numLength');
  self.TPtrCComponent^.Component_IfV1True('numLength','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('bool1');
  self.TPtrCComponent^.Component_Goto(isPositive_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('bool1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('bool2');
  self.TPtrCComponent^.Component_Goto(isPositive_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('bool2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('boolAnd1');
  self.TPtrCComponent^.Component_Goto(isIntZero_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('boolAnd1');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('doMulBool','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1True('boolAnd3','JumpExit1');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse1');

  self.TPtrCComponent^.Component_Goto('JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','False','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse2');

  self.TPtrCComponent^.Component_Goto('JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse3');

  self.TPtrCComponent^.Component_Goto('JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','boolAnd1');
  self.TPtrCComponent^.Component_V1EqV2('bool2','True','boolAnd2');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd1','boolAnd2','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse4');

  self.TPtrCComponent^.Component_Goto('JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('True');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('True');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse6');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('doMulBool','True','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse7');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(MulIntBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse8');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_V1EqV2('doMulBool','False','boolAnd3');
  self.TPtrCComponent^.Component_IfV1False('boolAnd3','JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2Arr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(DivInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1Arr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num2Arr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_Exit;

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_Length('num1Arr','numLength');
  self.TPtrCComponent^.Component_V1GTV2('numLength','NumOne','numLength');
  self.TPtrCComponent^.Component_IfV1False('numLength','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num1');
  self.TPtrCComponent^.Component_Goto(CutSome_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('numResultIntArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num1IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num2IntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('doMulBool');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_StrToIntArr(const isIntNumber_Address,
  SumSubInt_Address, SetInt_Address, InitZeroToNine_Address,
  MulDivInt_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.StrToIntArr(AStr: String; var numResult: IntArr);
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = AStr;
  //GV2 = numResultIntArr;

  self.TPtrCComponent^.Component_AllocateMem('AStr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('AStr');

  self.TPtrCComponent^.Component_AllocateMem('numResultIntArr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumTwo',2);
  self.TPtrCComponent^.Component_AllocateMem('NumFive',5);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('CharA','');
  self.TPtrCComponent^.Component_AllocateMem('StrPlus','+');
  self.TPtrCComponent^.Component_AllocateMem('StrMinus','-');
  self.TPtrCComponent^.Component_AllocateMem('IntA',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('StrA','');
  self.TPtrCComponent^.Component_MoveV2ToV1('StrA','AStr');

  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('i',1);
  self.TPtrCComponent^.Component_AllocateMem('TArr1',nil);
  self.TPtrCComponent^.Component_AllocateMem('TArr2',nil);
  self.TPtrCComponent^.Component_AllocateMem('TArr3',nil);
  self.TPtrCComponent^.Component_AllocateMem('TArr4',nil);
  self.TPtrCComponent^.Component_AllocateMem('TArr5',nil);

  self.TPtrCComponent^.Component_SetLength('numResultIntArr','NumZero');

  self.TPtrCComponent^.Component_StrLength('StrA','numLength');
  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');

  self.TPtrCComponent^.Component_StrIndexGet('StrA','NumOne','CharA');
  self.TPtrCComponent^.Component_V1EqV2('CharA','StrMinus','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');
  self.TPtrCComponent^.Component_CopyStr('StrA','NumTwo','numLength','StrA');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_StrIndexGet('StrA','NumOne','CharA');
  self.TPtrCComponent^.Component_V1EqV2('CharA','StrPlus','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse2');

  self.TPtrCComponent^.Component_CopyStr('StrA','NumTwo','numLength','StrA');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_StrLength('StrA','numLength');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('StrA','i','CharA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('CharA');
  self.TPtrCComponent^.Component_MoveV2ToGV2('bool2');
  self.TPtrCComponent^.Component_Goto(isIntNumber_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('CharA');
  self.TPtrCComponent^.Component_MoveGV2ToV1('bool2');

  self.TPtrCComponent^.Component_V1EqV2('bool2','False','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','JumpExit1');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_V1EqV2('numLength','NumOne','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse3');

  self.TPtrCComponent^.Component_StrToInt('StrA','IntA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('bool1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('IntA');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(InitZeroToNine_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('bool1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('IntA');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_V1GTV2('numLength','NumOne','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpExit1');

  //============================================================================

  self.TPtrCComponent^.Component_StrLength('StrA','numLength');
  self.TPtrCComponent^.Component_StrIndexGet('StrA','numLength','CharA');
  self.TPtrCComponent^.Component_StrToInt('CharA','IntA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('IntA');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(InitZeroToNine_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('IntA');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_SubInteger('numLength','NumOne','numLength');
  self.TPtrCComponent^.Component_CopyStr('StrA','NumOne','numLength','StrA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumFive');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr1');
  self.TPtrCComponent^.Component_Goto(InitZeroToNine_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumFive');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumFive');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr2');
  self.TPtrCComponent^.Component_Goto(InitZeroToNine_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumFive');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr3');
  self.TPtrCComponent^.Component_Goto(SumSubInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr3');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr4');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr3');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr4');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr3');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr5');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr3');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr5');

  self.TPtrCComponent^.Component_AllocateMem('i',1);
  self.TPtrCComponent^.Component_StrLength('StrA','numLength');

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr5');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr5');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr4');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr5');
  self.TPtrCComponent^.Component_MoveV2ToGV4('True');
  self.TPtrCComponent^.Component_Goto(MulDivInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr4');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr5');
  self.TPtrCComponent^.Component_MoveGV4ToV1('True');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr5');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(SumSubInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr5');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_StrLength('StrA','i');

  self.TPtrCComponent^.Component_Port('kForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumOne','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','kForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('StrA','i','CharA');
  self.TPtrCComponent^.Component_StrToInt('CharA','IntA');

  self.TPtrCComponent^.Component_MoveV2ToGV1('False');
  self.TPtrCComponent^.Component_MoveV2ToGV2('IntA');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr1');
  self.TPtrCComponent^.Component_Goto(InitZeroToNine_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('False');
  self.TPtrCComponent^.Component_MoveGV2ToV1('IntA');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr3');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr2');
  self.TPtrCComponent^.Component_MoveV2ToGV4('True');
  self.TPtrCComponent^.Component_Goto(MulDivInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr3');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr2');
  self.TPtrCComponent^.Component_MoveGV4ToV1('True');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(SumSubInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr3');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr2');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr3');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr4');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr3');
  self.TPtrCComponent^.Component_MoveV2ToGV4('True');
  self.TPtrCComponent^.Component_Goto(MulDivInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr4');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr3');
  self.TPtrCComponent^.Component_MoveGV4ToV1('True');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('kForBegin');

  self.TPtrCComponent^.Component_Port('kForEnd');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('True');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumOne');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr2');
  self.TPtrCComponent^.Component_Goto(InitZeroToNine_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('True');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumOne');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr5');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr4');
  self.TPtrCComponent^.Component_MoveV2ToGV4('True');
  self.TPtrCComponent^.Component_Goto(MulDivInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr5');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr4');
  self.TPtrCComponent^.Component_MoveGV4ToV1('True');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr4');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_Goto(SumSubInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr4');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr1');
  self.TPtrCComponent^.Component_Goto(SetInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('True');
  self.TPtrCComponent^.Component_MoveV2ToGV2('NumOne');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr2');
  self.TPtrCComponent^.Component_Goto(InitZeroToNine_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('True');
  self.TPtrCComponent^.Component_MoveGV2ToV1('NumOne');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('TArr2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('numResultIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('True');
  self.TPtrCComponent^.Component_Goto(MulDivInt_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('TArr2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('numResultIntArr');
  self.TPtrCComponent^.Component_MoveGV4ToV1('True');

  //============================================================================

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('numResultIntArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('AStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numResultIntArr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_IntArrToStr(const CreateBitPosVar_Address,
  isPositiveIntAdvance_Address, Shift_Address, GetLastBit_Address,
  IsBitPosEqual_Address, IncBitPos_Address, IsBitPosSet_Address,
  SumSub_Address, RR_Str_Address: Integer): Integer;
begin

  {
  class procedure ArrMath.IntArrToStr(num: IntArr; var AStr: String);
  var
    n1Str,n2Str:String;
    n1Pos,n1PosF1:TBitPos;
    ByteA:Byte;
  begin
    AStr:='nil';
    if(Length(num)=0)then Exit;
    ByteA:=isPositiveIntAdvance(num);  // 0 = False, 1 = True, 2 = Zero, 3 = Error
    if(ByteA=3)then Exit;
    self.Shift(True,False,num);

    AStr:='0.0';
    n1Str:='1';
    n2Str:='0';

    self.SetBitPosZero(n1Pos);
    self.GetLastBit(n1PosF1,num);

    While(self.IsBitPosEqual(n1Pos,n1PosF1)=False)do begin
      n1Str:=StringMath.SumSub(n1Str,n2Str);
      if(self.IsBitPosSet(n1Pos,num)=True)then AStr:=StringMath.SumSub(AStr,n1Str);
      n2Str:=n1Str;
      self.IncBitPos(n1Pos);
    end;
    if(self.IsBitPosSet(n1Pos,num)=True)then begin
      n1Str:=StringMath.SumSub(n1Str,n2Str);
      AStr:=StringMath.SumSub(AStr,n1Str);
    end;

    AStr:=StringMath.RR(AStr,False);
    if(ByteA=0)then AStr:='-'+AStr;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numIntArr;
  //GV2 = AStrResult;

  self.TPtrCComponent^.Component_AllocateMem('numIntArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numIntArr');

  self.TPtrCComponent^.Component_AllocateMem('AStrResult',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('AStrResult');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumThree',3);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('StrMinus','-');

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('num',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('num','numIntArr');

  self.TPtrCComponent^.Component_AllocateMem('n1Str','1');
  self.TPtrCComponent^.Component_AllocateMem('n2Str','0');

  self.TPtrCComponent^.Component_AllocateMem('n1Pos',nil);
  self.TPtrCComponent^.Component_AllocateMem('n1PosF1',nil);

  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosF1');
  self.TPtrCComponent^.Component_Goto(CreateBitPosVar_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosF1');

  self.TPtrCComponent^.Component_SetVarMem('AStrResult','nil');
  self.TPtrCComponent^.Component_Length('num','numLength');

  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('num');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ByteA');
  self.TPtrCComponent^.Component_Goto(isPositiveIntAdvance_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('num');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ByteA');

  self.TPtrCComponent^.Component_V1EqV2('ByteA','NumThree','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('True');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('num');
  self.TPtrCComponent^.Component_Goto(Shift_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('True');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('num');

  self.TPtrCComponent^.Component_SetVarMem('AStrResult','0.0');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1PosF1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num');
  self.TPtrCComponent^.Component_Goto(GetLastBit_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1PosF1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num');

  self.TPtrCComponent^.Component_Port('WhileBegin1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n1PosF1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool1');
  self.TPtrCComponent^.Component_Goto(IsBitPosEqual_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n1PosF1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool1');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','WhileEnd1');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('n1Str');
  self.TPtrCComponent^.Component_Goto(SumSub_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2Str');
  self.TPtrCComponent^.Component_MoveGV3ToV1('n1Str');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool1');
  self.TPtrCComponent^.Component_Goto(IsBitPosSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool1');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('AStrResult');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('AStrResult');
  self.TPtrCComponent^.Component_Goto(SumSub_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('AStrResult');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n1Str');
  self.TPtrCComponent^.Component_MoveGV3ToV1('AStrResult');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('n2Str','n1Str');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_Goto(IncBitPos_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');

  //============================================================================

  self.TPtrCComponent^.Component_JumpTo('WhileBegin1');
  self.TPtrCComponent^.Component_Port('WhileEnd1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Pos');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num');
  self.TPtrCComponent^.Component_MoveV2ToGV3('bool1');
  self.TPtrCComponent^.Component_Goto(IsBitPosSet_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Pos');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num');
  self.TPtrCComponent^.Component_MoveGV3ToV1('bool1');

  self.TPtrCComponent^.Component_V1EqV2('bool1','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('n1Str');
  self.TPtrCComponent^.Component_Goto(SumSub_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2Str');
  self.TPtrCComponent^.Component_MoveGV3ToV1('n1Str');

  self.TPtrCComponent^.Component_MoveV2ToGV1('AStrResult');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('AStrResult');
  self.TPtrCComponent^.Component_Goto(SumSub_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('AStrResult');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n1Str');
  self.TPtrCComponent^.Component_MoveGV3ToV1('AStrResult');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('AStrResult');
  self.TPtrCComponent^.Component_MoveV2ToGV2('False');
  self.TPtrCComponent^.Component_MoveV2ToGV3('AStrResult');
  self.TPtrCComponent^.Component_Goto(RR_Str_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('AStrResult');
  self.TPtrCComponent^.Component_MoveGV2ToV1('False');
  self.TPtrCComponent^.Component_MoveGV3ToV1('AStrResult');

  self.TPtrCComponent^.Component_V1EqV2('ByteA','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpExit1');

  self.TPtrCComponent^.Component_CombineV2ToV1('StrMinus','AStrResult','AStrResult');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('AStrResult','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numIntArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AStrResult');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_IsIntegerArr(const RR_Address: Integer
  ): Integer;
begin

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarNameArr;
  //GV2 = ResultBoolVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarNameArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarNameArr');

  self.TPtrCComponent^.Component_AllocateMem('ResultBoolVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultBoolVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumFour',SizeOf(Integer));
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('num1',0);

  self.TPtrCComponent^.Component_Length('numVarNameArr','numLength');
  self.TPtrCComponent^.Component_DivReal('numLength','NumFour','numLength');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numLength');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num1');
  self.TPtrCComponent^.Component_Goto(RR_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numLength');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num1');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','True');

  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','False');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse2');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1NotEqV2('numLength','num1','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultBoolVarName','False');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_SetValueMode('ResultBoolVarName','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarNameArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultBoolVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_LengthIntegerArr(const RR_Address: Integer
  ): Integer;
begin

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarNameArr;
  //GV2 = ResultIntVarName;

  self.TPtrCComponent^.Component_AllocateMem('numVarNameArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarNameArr');

  self.TPtrCComponent^.Component_AllocateMem('ResultIntVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ResultIntVarName');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NegNumOne',-1);
  self.TPtrCComponent^.Component_AllocateMem('NumFour',SizeOf(Integer));
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('num1',0);

  self.TPtrCComponent^.Component_Length('numVarNameArr','numLength');
  self.TPtrCComponent^.Component_DivReal('numLength','NumFour','numLength');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numLength');
  self.TPtrCComponent^.Component_MoveV2ToGV2('num1');
  self.TPtrCComponent^.Component_Goto(RR_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numLength');
  self.TPtrCComponent^.Component_MoveGV2ToV1('num1');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultIntVarName','NegNumOne');

  self.TPtrCComponent^.Component_V1EqV2('numLength','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultIntVarName','NumZero');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1LTV2('numLength','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1EqV2('numLength','num1','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('ResultIntVarName','num1');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_SetValueMode('ResultIntVarName','integer');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarNameArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ResultIntVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_CreateIntegerArr: Integer;
begin

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numResultVarNameArr;
  //GV2 = ArrayLengthVarName;

  self.TPtrCComponent^.Component_AllocateMem('numResultVarNameArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numResultVarNameArr');

  self.TPtrCComponent^.Component_AllocateMem('ArrayLengthVarName',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('ArrayLengthVarName');

  self.TPtrCComponent^.Component_AllocateMem('NumFour',SizeOf(Integer));
  self.TPtrCComponent^.Component_AllocateMem('num1',0);

  self.TPtrCComponent^.Component_MulInteger('ArrayLengthVarName','NumFour','num1');
  self.TPtrCComponent^.Component_SetLength('numResultVarNameArr','num1');

  self.TPtrCComponent^.Component_SetValueMode('numResultVarNameArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numResultVarNameArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ArrayLengthVarName');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SetIntegerArr: Integer;
begin

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarNameArr;
  //GV2 = IndexVarNameInt;
  //GV3 = SetIntValue;

  self.TPtrCComponent^.Component_AllocateMem('numVarNameArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarNameArr');

  self.TPtrCComponent^.Component_AllocateMem('IndexVarNameInt',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('IndexVarNameInt');

  self.TPtrCComponent^.Component_AllocateMem('SetIntValue',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('SetIntValue');

  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumFour',SizeOf(Integer));
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',0);
  self.TPtrCComponent^.Component_AllocateMem('num3',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_AllocateMem('IntValue','');
  self.TPtrCComponent^.Component_MoveV2ToV1('IntValue','SetIntValue');
  self.TPtrCComponent^.Component_SetLength('IntValue','NumFour');

  self.TPtrCComponent^.Component_MulInteger('IndexVarNameInt','NumFour','num1');
  self.TPtrCComponent^.Component_SubInteger('NumFour','NumOne','num2');
  self.TPtrCComponent^.Component_SumInteger('num2','num1','num2');

  self.TPtrCComponent^.Component_MoveV2ToV1('i','num1');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','num2','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','num1','num3');
  self.TPtrCComponent^.Component_ArrayIndexGet('IntValue','num3','ByteA');
  self.TPtrCComponent^.Component_ArrayIndexSet('numVarNameArr','i','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetValueMode('numVarNameArr','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarNameArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('IndexVarNameInt');
  self.TPtrCComponent^.Component_MoveV2ToGV3('SetIntValue');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_GetIntegerArr: Integer;
begin

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = numVarNameArr;
  //GV2 = IndexVarNameInt;
  //GV3 = GetIntValue;

  self.TPtrCComponent^.Component_AllocateMem('numVarNameArr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('numVarNameArr');

  self.TPtrCComponent^.Component_AllocateMem('IndexVarNameInt',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('IndexVarNameInt');

  self.TPtrCComponent^.Component_AllocateMem('GetIntValue',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('GetIntValue');

  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumFour',SizeOf(Integer));
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('num1',0);
  self.TPtrCComponent^.Component_AllocateMem('num2',0);
  self.TPtrCComponent^.Component_AllocateMem('num3',0);
  self.TPtrCComponent^.Component_AllocateMem('ByteA',0);

  self.TPtrCComponent^.Component_SetLength('GetIntValue','NumZero');
  self.TPtrCComponent^.Component_SetLength('GetIntValue','NumFour');

  self.TPtrCComponent^.Component_MulInteger('IndexVarNameInt','NumFour','num1');
  self.TPtrCComponent^.Component_SubInteger('NumFour','NumOne','num2');
  self.TPtrCComponent^.Component_SumInteger('num2','num1','num2');

  self.TPtrCComponent^.Component_MoveV2ToV1('i','num1');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','num2','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_ArrayIndexGet('numVarNameArr','i','ByteA');
  self.TPtrCComponent^.Component_SubInteger('i','num1','num3');
  self.TPtrCComponent^.Component_ArrayIndexSet('GetIntValue','num3','ByteA');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetValueMode('GetIntValue','integer');

  self.TPtrCComponent^.Component_MoveV2ToGV1('numVarNameArr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('IndexVarNameInt');
  self.TPtrCComponent^.Component_MoveV2ToGV3('GetIntValue');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_MoveDeciDiv(const getWholeDeci_Address: Integer
  ): Integer;
begin

  {
  class procedure StringMath.MoveDeciDiv(var Num1, Num2: String);
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameResultNum1Str;
  //GV2 = VarNameResultNum2Str;

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultNum1Str',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultNum1Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultNum2Str',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultNum2Str');

  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength2',0);
  self.TPtrCComponent^.Component_AllocateMem('dot','.');
  self.TPtrCComponent^.Component_AllocateMem('ZeroStr','0');
  self.TPtrCComponent^.Component_AllocateMem('StrA1','');
  self.TPtrCComponent^.Component_AllocateMem('StrA2','');

  self.TPtrCComponent^.Component_AllocateMem('AWhole1','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci1','');
  self.TPtrCComponent^.Component_AllocateMem('AWhole2','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci2','');
  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci1');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultNum1Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci2');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultNum2Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci2');

  self.TPtrCComponent^.Component_StrLength('ADeci1','numLength1');
  self.TPtrCComponent^.Component_StrLength('ADeci2','numLength2');

  self.TPtrCComponent^.Component_V1EqV2('numLength1','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole1','ADeci1','VarNameResultNum1Str');
  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole2','ADeci2','VarNameResultNum2Str');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1GTV2('numLength1','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole2','ADeci2','VarNameResultNum2Str');

  self.TPtrCComponent^.Component_CopyStr('ADeci1','NumOne','numLength2','StrA1');
  self.TPtrCComponent^.Component_SumInteger('numLength2','NumOne','numLength2');
  self.TPtrCComponent^.Component_CopyStr('ADeci1','numLength2','numLength1','StrA2');

  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole1','StrA1','VarNameResultNum1Str');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultNum1Str','dot','VarNameResultNum1Str');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultNum1Str','StrA2','VarNameResultNum1Str');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1LTV2('numLength1','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole2','ADeci2','VarNameResultNum2Str');
  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole1','ADeci1','VarNameResultNum1Str');

  self.TPtrCComponent^.Component_SubInteger('numLength2','numLength1','numLength2');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultNum1Str','ZeroStr','VarNameResultNum1Str');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultNum1Str','string');
  self.TPtrCComponent^.Component_SetValueMode('VarNameResultNum2Str','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultNum2Str');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_getWholeDeci: Integer;
begin

  {
  class procedure StringMath.getWholeDeci(const NumV: String; out AWhole,
    ADeci: String);
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNumVStr;
  //GV2 = OutStrAWhole;
  //GV3 = OutStrADeci;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNumVStr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNumVStr');

  self.TPtrCComponent^.Component_AllocateMem('OutStrAWhole',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('OutStrAWhole');

  self.TPtrCComponent^.Component_AllocateMem('OutStrADeci',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('OutStrADeci');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength2',0);
  self.TPtrCComponent^.Component_AllocateMem('dot','.');
  self.TPtrCComponent^.Component_AllocateMem('StrA','');

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('NumV','');
  self.TPtrCComponent^.Component_MoveV2ToV1('NumV','VarNameNumVStr');

  self.TPtrCComponent^.Component_AllocateMem('i',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);

  self.TPtrCComponent^.Component_SetVarMem('OutStrAWhole','0');
  self.TPtrCComponent^.Component_SetVarMem('OutStrADeci','0');

  self.TPtrCComponent^.Component_StrLength('NumV','numLength1');
  self.TPtrCComponent^.Component_V1EqV2('numLength1','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength1','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('NumV','i','StrA');

  self.TPtrCComponent^.Component_V1EqV2('StrA','dot','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','numLength2');
  self.TPtrCComponent^.Component_CopyStr('NumV','NumOne','numLength2','OutStrAWhole');

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','numLength2');
  self.TPtrCComponent^.Component_CopyStr('NumV','numLength2','numLength1','OutStrADeci');

  self.TPtrCComponent^.Component_JumpTo('iForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToV1('OutStrAWhole','NumV');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('OutStrAWhole','string');
  self.TPtrCComponent^.Component_SetValueMode('OutStrADeci','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNumVStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('OutStrAWhole');
  self.TPtrCComponent^.Component_MoveV2ToGV3('OutStrADeci');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_isPositiveAd_Str: Integer;
begin

  {
  class function StringMath.isPositiveAd(const NumV: String): Byte;
  begin
    Result:=2;
    if(NumV='0')or(NumV='0.0')then Exit;
    if(Copy(NumV,1,1)='-')then Result:=0
    else Result:=1;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNumVStr;
  //GV2 = VarNameResultByte;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNumVStr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNumVStr');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultByte',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultByte');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('True2',2);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr2',0);
  self.TPtrCComponent^.Component_AllocateMem('ZeroInt','0');
  self.TPtrCComponent^.Component_AllocateMem('ZeroReal','0.0');
  self.TPtrCComponent^.Component_AllocateMem('StrMinus','-');
  self.TPtrCComponent^.Component_AllocateMem('StrA','');

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('True2','NumZero','True2');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('NumV','');
  self.TPtrCComponent^.Component_MoveV2ToV1('NumV','VarNameNumVStr');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultByte','True2');

  self.TPtrCComponent^.Component_V1EqV2('NumV','ZeroInt','boolOr1');
  self.TPtrCComponent^.Component_V1EqV2('NumV','ZeroReal','boolOr2');
  self.TPtrCComponent^.Component_V1OrV2('boolOr1','boolOr2','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_CopyStr('NumV','NumOne','NumOne','StrA');
  self.TPtrCComponent^.Component_V1EqV2('StrA','StrMinus','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultByte','False');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultByte','True');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultByte','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNumVStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultByte');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_isPositive_Str: Integer;
begin

  {
  class function StringMath.isPositive(const NumV: String): Boolean;
  begin
    if(Copy(NumV,1,1)='-')then Result:=False
    else Result:=True;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNumVStr;
  //GV2 = VarNameResultBool;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNumVStr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNumVStr');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultBool',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultBool');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('StrMinus','-');
  self.TPtrCComponent^.Component_AllocateMem('StrA','');

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_CopyStr('VarNameNumVStr','NumOne','NumOne','StrA');
  self.TPtrCComponent^.Component_V1EqV2('StrA','StrMinus','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultBool','False');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultBool','True');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultBool','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNumVStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultBool');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_CleanNum(const getWholeDeci_Address: Integer
  ): Integer;
begin

  {
  class function StringMath.CleanNum(const NumV: String): String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNumVStr;
  //GV2 = VarNameResultStr;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNumVStr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNumVStr');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultStr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumTwo',2);
  self.TPtrCComponent^.Component_AllocateMem('NumNine',9);
  self.TPtrCComponent^.Component_AllocateMem('NumFourtyEight',48);
  self.TPtrCComponent^.Component_AllocateMem('bool2',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength1',0);
  self.TPtrCComponent^.Component_AllocateMem('nanStr','nan');
  self.TPtrCComponent^.Component_AllocateMem('PlusStr','+');
  self.TPtrCComponent^.Component_AllocateMem('MinusStr','-');
  self.TPtrCComponent^.Component_AllocateMem('ZeroStr','0');
  self.TPtrCComponent^.Component_AllocateMem('DotStr','.');
  self.TPtrCComponent^.Component_AllocateMem('StrA','');
  self.TPtrCComponent^.Component_AllocateMem('Calcu1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolOr2',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('AWhole','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci','');
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('ASign',0);

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','nan');

  self.TPtrCComponent^.Component_V1EqV2('VarNameNumVStr','nanStr','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','JumpExit1');

  self.TPtrCComponent^.Component_StrLength('VarNameNumVStr','numLength1');

  self.TPtrCComponent^.Component_V1EqV2('numLength1','NumZero','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNumVStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNumVStr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci');

  self.TPtrCComponent^.Component_StrLength('AWhole','numLength1');
  self.TPtrCComponent^.Component_StrIndexGet('AWhole','NumOne','StrA');

  self.TPtrCComponent^.Component_V1EqV2('StrA','PlusStr','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse1');

  self.TPtrCComponent^.Component_AllocateMem('ASign',1);
  self.TPtrCComponent^.Component_CopyStr('AWhole','NumTwo','numLength1','AWhole');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1EqV2('StrA','MinusStr','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse2');

  self.TPtrCComponent^.Component_AllocateMem('ASign',0);
  self.TPtrCComponent^.Component_CopyStr('AWhole','NumTwo','numLength1','AWhole');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_AllocateMem('ASign',1);

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_StrLength('ADeci','i');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumOne','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('ADeci','i','StrA');

  self.TPtrCComponent^.Component_V1NotEqV2('StrA','ZeroStr','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse4');

  self.TPtrCComponent^.Component_CopyStr('ADeci','NumOne','i','ADeci');
  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');
  self.TPtrCComponent^.Component_JumpTo('iForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToV1('ADeci','ZeroStr');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','False');
  self.TPtrCComponent^.Component_StrLength('AWhole','numLength1');
  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength1','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('AWhole','i','StrA');

  self.TPtrCComponent^.Component_V1NotEqV2('StrA','ZeroStr','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse6');

  self.TPtrCComponent^.Component_CopyStr('AWhole','i','numLength1','AWhole');
  self.TPtrCComponent^.Component_MoveV2ToV1('bool1','True');
  self.TPtrCComponent^.Component_JumpTo('jForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_V1EqV2('bool1','False','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse7');

  self.TPtrCComponent^.Component_MoveV2ToV1('AWhole','ZeroStr');

  self.TPtrCComponent^.Component_V1EqV2('ADeci','ZeroStr','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse7');

  self.TPtrCComponent^.Component_AllocateMem('ASign',1);

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_StrLength('AWhole','numLength1');
  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_Port('kForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength1','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','kForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('AWhole','i','StrA');
  self.TPtrCComponent^.Component_SubInteger('StrA','NumFourtyEight','Calcu1');

  self.TPtrCComponent^.Component_V1LTV2('Calcu1','NumZero','boolOr1');
  self.TPtrCComponent^.Component_V1GTV2('Calcu1','NumNine','boolOr2');
  self.TPtrCComponent^.Component_V1OrV2('boolOr1','boolOr2','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse8');

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','nan');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('kForBegin');

  self.TPtrCComponent^.Component_Port('kForEnd');

  self.TPtrCComponent^.Component_StrLength('ADeci','numLength1');
  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_Port('lForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength1','bool2');
  self.TPtrCComponent^.Component_IfV1True('bool2','lForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('ADeci','i','StrA');
  self.TPtrCComponent^.Component_SubInteger('StrA','NumFourtyEight','Calcu1');

  self.TPtrCComponent^.Component_V1LTV2('Calcu1','NumZero','boolOr1');
  self.TPtrCComponent^.Component_V1GTV2('Calcu1','NumNine','boolOr2');
  self.TPtrCComponent^.Component_V1OrV2('boolOr1','boolOr2','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse9');

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','nan');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('lForBegin');

  self.TPtrCComponent^.Component_Port('lForEnd');

  self.TPtrCComponent^.Component_V1EqV2('ASign','NumOne','bool2');
  self.TPtrCComponent^.Component_IfV1False('bool2','JumpFalse10');

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','AWhole','VarNameResultStr');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','DotStr','VarNameResultStr');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','ADeci','VarNameResultStr');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse10');

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','MinusStr','VarNameResultStr');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','AWhole','VarNameResultStr');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','DotStr','VarNameResultStr');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','ADeci','VarNameResultStr');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultStr','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNumVStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultStr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_GetAlign: Integer;
begin

  {
  class procedure StringMath.GetAlign(var num1, num2: String;
   const StrPlace: String; const isRight: Boolean);
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameResultNum1Str;
  //GV2 = VarNameResultNum2Str;
  //GV3 = VarNameStrPlace;
  //GV4 = VarNameBoolisRight;

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultNum1Str',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultNum1Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultNum2Str',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultNum2Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameStrPlace',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameStrPlace');

  self.TPtrCComponent^.Component_AllocateMem('VarNameBoolisRight',0);
  self.TPtrCComponent^.Component_MoveGV4ToV1('VarNameBoolisRight');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength2',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength3',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('StrPlace','');
  self.TPtrCComponent^.Component_MoveV2ToV1('StrPlace','VarNameStrPlace');

  self.TPtrCComponent^.Component_AllocateMem('isRight','');
  self.TPtrCComponent^.Component_MoveV2ToV1('isRight','VarNameBoolisRight');

  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_StrLength('VarNameResultNum1Str','numLength1');
  self.TPtrCComponent^.Component_StrLength('VarNameResultNum2Str','numLength2');

  self.TPtrCComponent^.Component_V1EqV2('numLength1','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_V1EqV2('isRight','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_V1GTV2('numLength1','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_SubInteger('numLength1','numLength2','numLength3');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength3','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultNum2Str','StrPlace','VarNameResultNum2Str');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_JumpTo('jForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_SubInteger('numLength2','numLength1','numLength3');

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength3','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultNum1Str','StrPlace','VarNameResultNum1Str');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1EqV2('isRight','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpExit1');

  self.TPtrCComponent^.Component_V1GTV2('numLength1','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_SubInteger('numLength1','numLength2','numLength3');

  self.TPtrCComponent^.Component_Port('kForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength3','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','kForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_CombineV2ToV1('StrPlace','VarNameResultNum2Str','VarNameResultNum2Str');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('kForBegin');

  self.TPtrCComponent^.Component_Port('kForEnd');

  self.TPtrCComponent^.Component_JumpTo('lForEnd');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_SubInteger('numLength2','numLength1','numLength3');

  self.TPtrCComponent^.Component_Port('lForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength3','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','lForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_CombineV2ToV1('StrPlace','VarNameResultNum1Str','VarNameResultNum1Str');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('lForBegin');

  self.TPtrCComponent^.Component_Port('lForEnd');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultNum1Str','string');
  self.TPtrCComponent^.Component_SetValueMode('VarNameResultNum2Str','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameStrPlace');
  self.TPtrCComponent^.Component_MoveV2ToGV4('VarNameBoolisRight');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_isNum1Bigger_Str(const getWholeDeci_Address,
  GetAlign_Address: Integer): Integer;
begin

  {
  class function StringMath.isNum1Bigger(const num1, num2: String): Byte;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNum1Str;
  //GV2 = VarNameNum2Str;
  //GV3 = VarNameResultByte;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum1Str',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum2Str',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameNum2Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultByte',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultByte');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('True2',2);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('ZeroStr','0');
  self.TPtrCComponent^.Component_AllocateMem('numLength1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength2',0);
  self.TPtrCComponent^.Component_AllocateMem('StrA1','');
  self.TPtrCComponent^.Component_AllocateMem('StrA2','');
  self.TPtrCComponent^.Component_AllocateMem('Int1',0);
  self.TPtrCComponent^.Component_AllocateMem('Int2',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('True2','NumZero','True2');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('AWhole1','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci1','');
  self.TPtrCComponent^.Component_AllocateMem('AWhole2','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci2','');
  self.TPtrCComponent^.Component_AllocateMem('n1','');
  self.TPtrCComponent^.Component_AllocateMem('n2','');
  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci1');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci2');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ADeci1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ADeci2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ZeroStr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('True');
  self.TPtrCComponent^.Component_Goto(GetAlign_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ADeci1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ADeci2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ZeroStr');
  self.TPtrCComponent^.Component_MoveGV4ToV1('True');

  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole1','ADeci1','n1');
  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole2','ADeci2','n2');
  self.TPtrCComponent^.Component_StrLength('n1','numLength1');
  self.TPtrCComponent^.Component_StrLength('n2','numLength2');

  self.TPtrCComponent^.Component_V1GTV2('numLength1','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultByte','True');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1LTV2('numLength1','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultByte','False');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1EqV2('numLength1','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpExit1');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength1','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('n1','i','StrA1');
  self.TPtrCComponent^.Component_StrIndexGet('n2','i','StrA2');
  self.TPtrCComponent^.Component_StrToInt('StrA1','Int1');
  self.TPtrCComponent^.Component_StrToInt('StrA2','Int2');

  self.TPtrCComponent^.Component_V1GTV2('Int1','Int2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultByte','True');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_V1LTV2('Int1','Int2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultByte','False');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultByte','True2');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultByte','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultByte');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_Carrying(const CreateIntegerArr_Address,
  LengthIntegerArr_Address, GetIntegerArr_Address,
  SetIntegerArr_Address: Integer): Integer;
begin

  {
  class procedure StringMath.Carrying(const num1, num2: String; var TArr1,
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNum1Str;
  //GV2 = VarNameNum2Str;
  //GV3 = VarNameResultArrInt1;
  //GV4 = VarNameResultArrInt2;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum1Str',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum2Str',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameNum2Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultArrInt1',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultArrInt1');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultArrInt2',0);
  self.TPtrCComponent^.Component_MoveGV4ToV1('VarNameResultArrInt2');

  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumTen',10);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength2',0);
  self.TPtrCComponent^.Component_AllocateMem('numInt3',0);
  self.TPtrCComponent^.Component_AllocateMem('StrA','');
  self.TPtrCComponent^.Component_AllocateMem('Int1',0);
  self.TPtrCComponent^.Component_AllocateMem('Int2',0);

  self.TPtrCComponent^.Component_AllocateMem('StrNum1','');
  self.TPtrCComponent^.Component_MoveV2ToV1('StrNum1','VarNameNum1Str');

  self.TPtrCComponent^.Component_AllocateMem('StrNum2','');
  self.TPtrCComponent^.Component_MoveV2ToV1('StrNum2','VarNameNum2Str');

  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('Cr',0);

  self.TPtrCComponent^.Component_StrLength('StrNum1','numLength1');
  self.TPtrCComponent^.Component_StrLength('StrNum2','numLength2');

  self.TPtrCComponent^.Component_V1NotEqV2('numLength1','numLength1','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','kForEnd');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numLength1');
  self.TPtrCComponent^.Component_Goto(CreateIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numLength1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numLength2');
  self.TPtrCComponent^.Component_Goto(CreateIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numLength2');

  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength1','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','numInt3');
  self.TPtrCComponent^.Component_StrIndexGet('StrNum1','i','StrA');
  self.TPtrCComponent^.Component_StrToInt('StrA','Int1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numInt3');
  self.TPtrCComponent^.Component_MoveV2ToGV3('Int1');
  self.TPtrCComponent^.Component_Goto(SetIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numInt3');
  self.TPtrCComponent^.Component_MoveGV3ToV1('Int1');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_Port('jForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength2','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','jForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','numInt3');
  self.TPtrCComponent^.Component_StrIndexGet('StrNum2','i','StrA');
  self.TPtrCComponent^.Component_StrToInt('StrA','Int1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('numInt3');
  self.TPtrCComponent^.Component_MoveV2ToGV3('Int1');
  self.TPtrCComponent^.Component_Goto(SetIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('numInt3');
  self.TPtrCComponent^.Component_MoveGV3ToV1('Int1');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('jForBegin');

  self.TPtrCComponent^.Component_Port('jForEnd');

  self.TPtrCComponent^.Component_AllocateMem('Cr',0);

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_Goto(LengthIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');

  self.TPtrCComponent^.Component_Port('kForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','kForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_MoveV2ToGV3('Int1');
  self.TPtrCComponent^.Component_Goto(GetIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');
  self.TPtrCComponent^.Component_MoveGV3ToV1('Int1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_MoveV2ToGV3('Int2');
  self.TPtrCComponent^.Component_Goto(GetIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');
  self.TPtrCComponent^.Component_MoveGV3ToV1('Int2');

  self.TPtrCComponent^.Component_V1GTV2('Int1','Int2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_SubInteger('Int1','Cr','Cr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_MoveV2ToGV3('Cr');
  self.TPtrCComponent^.Component_Goto(SetIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');
  self.TPtrCComponent^.Component_MoveGV3ToV1('Cr');

  self.TPtrCComponent^.Component_AllocateMem('Cr',0);

  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1LTV2('Int1','Int2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_SumInteger('NumTen','Int1','numInt3');
  self.TPtrCComponent^.Component_SubInteger('numInt3','Cr','Cr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_MoveV2ToGV3('Cr');
  self.TPtrCComponent^.Component_Goto(SetIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');
  self.TPtrCComponent^.Component_MoveGV3ToV1('Cr');

  self.TPtrCComponent^.Component_AllocateMem('Cr',1);

  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1EqV2('Int1','Int2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_SubInteger('Int1','Cr','Int1');

  self.TPtrCComponent^.Component_V1LTV2('Int1','Int2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse4');

  self.TPtrCComponent^.Component_SumInteger('Int1','NumTen','Int1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_MoveV2ToGV3('Int1');
  self.TPtrCComponent^.Component_Goto(SetIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');
  self.TPtrCComponent^.Component_MoveGV3ToV1('Int1');

  self.TPtrCComponent^.Component_AllocateMem('Cr',1);

  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_AllocateMem('Cr',0);

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('kForBegin');

  self.TPtrCComponent^.Component_Port('kForEnd');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultArrInt1','number');
  self.TPtrCComponent^.Component_SetValueMode('VarNameResultArrInt2','number');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultArrInt1');
  self.TPtrCComponent^.Component_MoveV2ToGV4('VarNameResultArrInt2');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_Reverse: Integer;
begin

  {
  class function StringMath.Reverse(const Num1: String): String;
  var
   i:Integer;
  begin
   Result:='';
   for i:=1 to Length(Num1)do Result:=Num1[i]+Result;
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNum1Str;
  //GV2 = VarNameResultStr;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum1Str',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultStr',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('StrA','');
  self.TPtrCComponent^.Component_AllocateMem('i',1);

  self.TPtrCComponent^.Component_AllocateMem('StrNum1','');
  self.TPtrCComponent^.Component_MoveV2ToV1('StrNum1','VarNameNum1Str');

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','');
  self.TPtrCComponent^.Component_StrLength('StrNum1','numLength');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1GTV2('i','numLength','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('StrNum1','i','StrA');
  self.TPtrCComponent^.Component_CombineV2ToV1('StrA','VarNameResultStr','VarNameResultStr');

  //============================================================================

  self.TPtrCComponent^.Component_SumInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultStr','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultStr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_RR_Str(const CleanNum_Address,
  isPositive_Str_Address, getWholeDeci_Address: Integer): Integer;
begin

  {
  class function StringMath.RR(x: String; const WithDeci: Boolean): String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameXStr;
  //GV2 = VarNameBoolWithDeci;
  //GV3 = VarNameResultStr;

  self.TPtrCComponent^.Component_AllocateMem('VarNameXStr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameXStr');

  self.TPtrCComponent^.Component_AllocateMem('VarNameBoolWithDeci',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameBoolWithDeci');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultStr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumTwo',2);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('nanStr','nan');
  self.TPtrCComponent^.Component_AllocateMem('DotZeroStr','.0');
  self.TPtrCComponent^.Component_AllocateMem('MinusStr','-');
  self.TPtrCComponent^.Component_AllocateMem('isPositiveBool',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('AWhole','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci','');
  self.TPtrCComponent^.Component_AllocateMem('ASign',0);

  self.TPtrCComponent^.Component_AllocateMem('x',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('x','VarNameXStr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('x');
  self.TPtrCComponent^.Component_MoveV2ToGV2('x');
  self.TPtrCComponent^.Component_Goto(CleanNum_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('x');
  self.TPtrCComponent^.Component_MoveGV2ToV1('x');

  self.TPtrCComponent^.Component_V1EqV2('x','nanStr','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultStr','nanStr');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('x');
  self.TPtrCComponent^.Component_MoveV2ToGV2('isPositiveBool');
  self.TPtrCComponent^.Component_Goto(isPositive_Str_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('x');
  self.TPtrCComponent^.Component_MoveGV2ToV1('isPositiveBool');

  self.TPtrCComponent^.Component_V1EqV2('isPositiveBool','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_StrLength('x','numLength');
  self.TPtrCComponent^.Component_CopyStr('x','NumTwo','numLength','x');
  self.TPtrCComponent^.Component_MoveV2ToV1('ASign','False');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('ASign','True');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('x');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('x');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci');

  self.TPtrCComponent^.Component_V1EqV2('VarNameBoolWithDeci','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse4');

  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole','DotZeroStr','VarNameResultStr');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse5');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultStr','AWhole');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('ASign','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpExit1');

  self.TPtrCComponent^.Component_CombineV2ToV1('MinusStr','VarNameResultStr','VarNameResultStr');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultStr','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameXStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameBoolWithDeci');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_RD_Str(const CleanNum_Address,
  isPositive_Str_Address, getWholeDeci_Address: Integer): Integer;
begin

  {
  class function StringMath.RD(x: String; const WithDeci: Boolean): String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameXStr;
  //GV2 = VarNameBoolWithDeci;
  //GV3 = VarNameResultStr;

  self.TPtrCComponent^.Component_AllocateMem('VarNameXStr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameXStr');

  self.TPtrCComponent^.Component_AllocateMem('VarNameBoolWithDeci',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameBoolWithDeci');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultStr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumTwo',2);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('nanStr','nan');
  self.TPtrCComponent^.Component_AllocateMem('DotZeroStr','.0');
  self.TPtrCComponent^.Component_AllocateMem('MinusStr','-');
  self.TPtrCComponent^.Component_AllocateMem('isPositiveBool',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('AWhole','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci','');
  self.TPtrCComponent^.Component_AllocateMem('ASign',0);

  self.TPtrCComponent^.Component_AllocateMem('x',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('x','VarNameXStr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('x');
  self.TPtrCComponent^.Component_MoveV2ToGV2('x');
  self.TPtrCComponent^.Component_Goto(CleanNum_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('x');
  self.TPtrCComponent^.Component_MoveGV2ToV1('x');

  self.TPtrCComponent^.Component_V1EqV2('x','nanStr','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultStr','nanStr');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('x');
  self.TPtrCComponent^.Component_MoveV2ToGV2('isPositiveBool');
  self.TPtrCComponent^.Component_Goto(isPositive_Str_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('x');
  self.TPtrCComponent^.Component_MoveGV2ToV1('isPositiveBool');

  self.TPtrCComponent^.Component_V1EqV2('isPositiveBool','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_StrLength('x','numLength');
  self.TPtrCComponent^.Component_CopyStr('x','NumTwo','numLength','x');
  self.TPtrCComponent^.Component_MoveV2ToV1('ASign','False');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('ASign','True');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('x');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('x');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci');

  self.TPtrCComponent^.Component_V1EqV2('VarNameBoolWithDeci','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse4');

  self.TPtrCComponent^.Component_CombineV2ToV1('ADeci','DotZeroStr','VarNameResultStr');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse5');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultStr','ADeci');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('ASign','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpExit1');

  self.TPtrCComponent^.Component_CombineV2ToV1('MinusStr','VarNameResultStr','VarNameResultStr');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultStr','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameXStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameBoolWithDeci');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_RX_Str(const CleanNum_Address,
  isPositive_Str_Address, getWholeDeci_Address, SumSub_Address: Integer
  ): Integer;
begin

  {
  class function StringMath.RX(x: String; const WithDeci: Boolean): String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameXStr;
  //GV2 = VarNameBoolWithDeci;
  //GV3 = VarNameResultStr;

  self.TPtrCComponent^.Component_AllocateMem('VarNameXStr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameXStr');

  self.TPtrCComponent^.Component_AllocateMem('VarNameBoolWithDeci',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameBoolWithDeci');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultStr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumTwo',2);
  self.TPtrCComponent^.Component_AllocateMem('NumFive',5);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength',0);
  self.TPtrCComponent^.Component_AllocateMem('nanStr','nan');
  self.TPtrCComponent^.Component_AllocateMem('oneStr','1');
  self.TPtrCComponent^.Component_AllocateMem('DotZeroStr','.0');
  self.TPtrCComponent^.Component_AllocateMem('MinusStr','-');
  self.TPtrCComponent^.Component_AllocateMem('isPositiveBool',0);
  self.TPtrCComponent^.Component_AllocateMem('StrA','');

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('AWhole','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci','');
  self.TPtrCComponent^.Component_AllocateMem('ASign',0);

  self.TPtrCComponent^.Component_AllocateMem('x',0);
  self.TPtrCComponent^.Component_MoveV2ToV1('x','VarNameXStr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('x');
  self.TPtrCComponent^.Component_MoveV2ToGV2('x');
  self.TPtrCComponent^.Component_Goto(CleanNum_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('x');
  self.TPtrCComponent^.Component_MoveGV2ToV1('x');

  self.TPtrCComponent^.Component_V1EqV2('x','nanStr','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultStr','nanStr');
  self.TPtrCComponent^.Component_JumpTo('JumpExit1');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('x');
  self.TPtrCComponent^.Component_MoveV2ToGV2('isPositiveBool');
  self.TPtrCComponent^.Component_Goto(isPositive_Str_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('x');
  self.TPtrCComponent^.Component_MoveGV2ToV1('isPositiveBool');

  self.TPtrCComponent^.Component_V1EqV2('isPositiveBool','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_StrLength('x','numLength');
  self.TPtrCComponent^.Component_CopyStr('x','NumTwo','numLength','x');
  self.TPtrCComponent^.Component_MoveV2ToV1('ASign','False');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('ASign','True');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('x');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('x');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci');

  self.TPtrCComponent^.Component_StrIndexGet('ADeci','NumOne','StrA');
  self.TPtrCComponent^.Component_StrToInt('StrA','StrA');

  self.TPtrCComponent^.Component_V1LTEqV2('StrA','NumFive','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse4');

  self.TPtrCComponent^.Component_Port('GotoFalse1');

  self.TPtrCComponent^.Component_V1EqV2('VarNameBoolWithDeci','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse5');

  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole','DotZeroStr','VarNameResultStr');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse6');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToV1('VarNameResultStr','AWhole');

  self.TPtrCComponent^.Component_Port('JumpFalse6');
  self.TPtrCComponent^.Component_Exit;

  self.TPtrCComponent^.Component_JumpTo('JumpFalse7');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_V1GTV2('StrA','NumFive','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse7');

  self.TPtrCComponent^.Component_MoveV2ToGV1('AWhole');
  self.TPtrCComponent^.Component_MoveV2ToGV2('oneStr');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(SumSub_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('AWhole');
  self.TPtrCComponent^.Component_MoveGV2ToV1('oneStr');
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultStr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci');

  self.TPtrCComponent^.Component_Goto('GotoFalse1');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_V1EqV2('ASign','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpExit1');

  self.TPtrCComponent^.Component_CombineV2ToV1('MinusStr','VarNameResultStr','VarNameResultStr');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultStr','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameXStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameBoolWithDeci');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_GetDeciCountBaseOne(
  const getWholeDeci_Address: Integer): Integer;
begin

  {
  class function StringMath.GetDeciCountBaseOne(num: String): Integer;
  var
   Str1,Str2:String;
  begin
   Str1:='';
   Str2:='';
   self.getWholeDeci(num,Str1,Str2);
   Result:=Length(Str2);
  end;
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNumStr;
  //GV2 = VarNameResultInt;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNumStr',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNumStr');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultInt',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultInt');

  self.TPtrCComponent^.Component_AllocateMem('Str1','');
  self.TPtrCComponent^.Component_AllocateMem('Str2','');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNumStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('Str1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('Str2');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNumStr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('Str1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('Str2');

  self.TPtrCComponent^.Component_StrLength('Str2','VarNameResultInt');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultInt','integer');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNumStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultInt');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_Sum(const getWholeDeci_Address,
  GetAlign_Address, Reverse_Address: Integer): Integer;
begin

  {
  class function StringMath.Sum(const num1, num2: String): String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNum1Str;
  //GV2 = VarNameNum2Str;
  //GV3 = VarNameResultStr;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum1Str',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum2Str',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameNum2Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultStr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('NumTen',10);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength2',0);
  self.TPtrCComponent^.Component_AllocateMem('ZeroStr','0');
  self.TPtrCComponent^.Component_AllocateMem('DotStr','.');
  self.TPtrCComponent^.Component_AllocateMem('StrA1','');
  self.TPtrCComponent^.Component_AllocateMem('StrA2','');
  self.TPtrCComponent^.Component_AllocateMem('StrResult1','');
  self.TPtrCComponent^.Component_AllocateMem('StrResult2','');

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('AWhole1','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci1','');
  self.TPtrCComponent^.Component_AllocateMem('AWhole2','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci2','');
  self.TPtrCComponent^.Component_AllocateMem('n1','');
  self.TPtrCComponent^.Component_AllocateMem('n2','');
  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('Cr',0);
  self.TPtrCComponent^.Component_AllocateMem('nf1',0);
  self.TPtrCComponent^.Component_AllocateMem('nf2',0);

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci1');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci2');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('AWhole1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ZeroStr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('False');
  self.TPtrCComponent^.Component_Goto(GetAlign_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('AWhole1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ZeroStr');
  self.TPtrCComponent^.Component_MoveGV4ToV1('False');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ADeci1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ADeci2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ZeroStr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('True');
  self.TPtrCComponent^.Component_Goto(GetAlign_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ADeci1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ADeci2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ZeroStr');
  self.TPtrCComponent^.Component_MoveGV4ToV1('True');

  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole1','ADeci1','n1');
  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole2','ADeci2','n2');
  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','');

  self.TPtrCComponent^.Component_StrLength('n1','i');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumOne','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_StrIndexGet('n1','i','StrA1');
  self.TPtrCComponent^.Component_StrIndexGet('n2','i','StrA2');

  self.TPtrCComponent^.Component_StrToInt('StrA1','StrA1');
  self.TPtrCComponent^.Component_StrToInt('StrA2','StrA2');

  self.TPtrCComponent^.Component_SumSubInteger('StrA1','StrA2','nf1');
  self.TPtrCComponent^.Component_SumSubInteger('nf1','Cr','nf1');

  self.TPtrCComponent^.Component_DivInteger('nf1','NumTen','nf2');
  self.TPtrCComponent^.Component_MulInteger('nf2','NumTen','nf2');
  self.TPtrCComponent^.Component_SubInteger('nf1','nf2','nf2');

  self.TPtrCComponent^.Component_IntToStr('nf2','nf2');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','nf2','VarNameResultStr');

  self.TPtrCComponent^.Component_DivInteger('nf1','NumTen','Cr');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_V1NotEqV2('Cr','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_IntToStr('Cr','Cr');
  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','Cr','VarNameResultStr');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_StrLength('ADeci1','numLength1');
  self.TPtrCComponent^.Component_CopyStr('VarNameResultStr','NumOne','numLength1','StrResult1');
  self.TPtrCComponent^.Component_CombineV2ToV1('StrResult1','DotStr','StrResult1');

  self.TPtrCComponent^.Component_SumInteger('numLength1','NumOne','numLength1');
  self.TPtrCComponent^.Component_StrLength('VarNameResultStr','numLength2');
  self.TPtrCComponent^.Component_CopyStr('VarNameResultStr','numLength1','numLength2','StrResult2');

  self.TPtrCComponent^.Component_CombineV2ToV1('StrResult1','StrResult2','VarNameResultStr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(Reverse_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultStr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultStr','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_Sub(const getWholeDeci_Address,
  GetAlign_Address, isNum1Bigger_Str_Address, Carrying_Address,
  LengthIntegerArr_Address, GetIntegerArr_Address, Reverse_Address: Integer
  ): Integer;
begin

  {
  class function StringMath.Sub(const num1, num2: String): String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNum1Str;
  //GV2 = VarNameNum2Str;
  //GV3 = VarNameResultStr;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum1Str',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum2Str',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameNum2Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultStr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumOne',1);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength2',0);
  self.TPtrCComponent^.Component_AllocateMem('ZeroStr','0');
  self.TPtrCComponent^.Component_AllocateMem('DotStr','.');
  self.TPtrCComponent^.Component_AllocateMem('StrA1','');
  self.TPtrCComponent^.Component_AllocateMem('StrA2','');
  self.TPtrCComponent^.Component_AllocateMem('StrResult1','');
  self.TPtrCComponent^.Component_AllocateMem('StrResult2','');

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('AWhole1','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci1','');
  self.TPtrCComponent^.Component_AllocateMem('AWhole2','');
  self.TPtrCComponent^.Component_AllocateMem('ADeci2','');
  self.TPtrCComponent^.Component_AllocateMem('n1','');
  self.TPtrCComponent^.Component_AllocateMem('n2','');
  self.TPtrCComponent^.Component_AllocateMem('BB','');
  self.TPtrCComponent^.Component_AllocateMem('SS','');
  self.TPtrCComponent^.Component_AllocateMem('i',0);
  self.TPtrCComponent^.Component_AllocateMem('iNB',0);
  self.TPtrCComponent^.Component_AllocateMem('TArr1',nil);
  self.TPtrCComponent^.Component_AllocateMem('TArr2',nil);

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole1');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci1');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole1');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ADeci2');
  self.TPtrCComponent^.Component_Goto(getWholeDeci_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ADeci2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('AWhole1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('AWhole2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ZeroStr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('False');
  self.TPtrCComponent^.Component_Goto(GetAlign_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('AWhole1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('AWhole2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ZeroStr');
  self.TPtrCComponent^.Component_MoveGV4ToV1('False');

  self.TPtrCComponent^.Component_MoveV2ToGV1('ADeci1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('ADeci2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('ZeroStr');
  self.TPtrCComponent^.Component_MoveV2ToGV4('True');
  self.TPtrCComponent^.Component_Goto(GetAlign_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('ADeci1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('ADeci2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('ZeroStr');
  self.TPtrCComponent^.Component_MoveGV4ToV1('True');

  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole1','ADeci1','n1');
  self.TPtrCComponent^.Component_CombineV2ToV1('AWhole2','ADeci2','n2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('iNB');
  self.TPtrCComponent^.Component_Goto(isNum1Bigger_Str_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('iNB');

  self.TPtrCComponent^.Component_V1EqV2('iNB','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToV1('BB','n2');
  self.TPtrCComponent^.Component_MoveV2ToV1('SS','n1');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1EqV2('iNB','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('BB','n1');
  self.TPtrCComponent^.Component_MoveV2ToV1('SS','n2');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse3');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_MoveV2ToV1('BB','n1');
  self.TPtrCComponent^.Component_MoveV2ToV1('SS','n2');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_MoveV2ToGV1('BB');
  self.TPtrCComponent^.Component_MoveV2ToGV2('SS');
  self.TPtrCComponent^.Component_MoveV2ToGV3('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV4('TArr2');
  self.TPtrCComponent^.Component_Goto(Carrying_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('BB');
  self.TPtrCComponent^.Component_MoveGV2ToV1('SS');
  self.TPtrCComponent^.Component_MoveGV3ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV4ToV1('TArr2');

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_Goto(LengthIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');

  self.TPtrCComponent^.Component_Port('iForBegin');

  self.TPtrCComponent^.Component_V1LTV2('i','NumZero','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','iForEnd');

  //============================================================================

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_MoveV2ToGV3('StrA1');
  self.TPtrCComponent^.Component_Goto(GetIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');
  self.TPtrCComponent^.Component_MoveGV3ToV1('StrA1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('TArr2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('i');
  self.TPtrCComponent^.Component_MoveV2ToGV3('StrA2');
  self.TPtrCComponent^.Component_Goto(GetIntegerArr_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('TArr2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('i');
  self.TPtrCComponent^.Component_MoveGV3ToV1('StrA2');

  self.TPtrCComponent^.Component_SubInteger('StrA1','StrA2','StrA1');
  self.TPtrCComponent^.Component_IntToStr('StrA1','StrA1');

  self.TPtrCComponent^.Component_CombineV2ToV1('VarNameResultStr','StrA1','VarNameResultStr');

  //============================================================================

  self.TPtrCComponent^.Component_SubInteger('i','NumOne','i');
  self.TPtrCComponent^.Component_JumpTo('iForBegin');

  self.TPtrCComponent^.Component_Port('iForEnd');

  self.TPtrCComponent^.Component_SetLength('TArr1','NumZero');
  self.TPtrCComponent^.Component_SetLength('TArr2','NumZero');

  self.TPtrCComponent^.Component_StrLength('ADeci1','numLength1');
  self.TPtrCComponent^.Component_CopyStr('VarNameResultStr','NumOne','numLength1','StrResult1');
  self.TPtrCComponent^.Component_CombineV2ToV1('StrResult1','DotStr','StrResult1');

  self.TPtrCComponent^.Component_SumInteger('numLength1','NumOne','numLength1');
  self.TPtrCComponent^.Component_StrLength('VarNameResultStr','numLength2');
  self.TPtrCComponent^.Component_CopyStr('VarNameResultStr','numLength1','numLength2','StrResult2');

  self.TPtrCComponent^.Component_CombineV2ToV1('StrResult1','StrResult2','VarNameResultStr');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(Reverse_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultStr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultStr','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_SumSub(const CleanNum_Address,
  isPositive_Str_Address, isNum1Bigger_Str_Address, Sum_Address,
  Sub_Address: Integer): Integer;
begin

  {
  class function StringMath.SumSub(const num1, num2: String): String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  //GV1 = VarNameNum1Str;
  //GV2 = VarNameNum2Str;
  //GV3 = VarNameResultStr;

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum1Str',0);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameNum2Str',0);
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameNum2Str');

  self.TPtrCComponent^.Component_AllocateMem('VarNameResultStr',0);
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_AllocateMem('True',1);
  self.TPtrCComponent^.Component_AllocateMem('True2',2);
  self.TPtrCComponent^.Component_AllocateMem('False',0);
  self.TPtrCComponent^.Component_AllocateMem('NumZero',0);
  self.TPtrCComponent^.Component_AllocateMem('NumTwo',2);
  self.TPtrCComponent^.Component_AllocateMem('bool1',0);
  self.TPtrCComponent^.Component_AllocateMem('numLength1',0);
  self.TPtrCComponent^.Component_AllocateMem('nanStr','nan');
  self.TPtrCComponent^.Component_AllocateMem('MinusStr','-');
  self.TPtrCComponent^.Component_AllocateMem('boolAnd1',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd2',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd3',0);
  self.TPtrCComponent^.Component_AllocateMem('boolAnd4',0);

  self.TPtrCComponent^.Component_ArrayIndexGet('True','NumZero','True');
  self.TPtrCComponent^.Component_ArrayIndexGet('True2','NumZero','True2');
  self.TPtrCComponent^.Component_ArrayIndexGet('False','NumZero','False');

  self.TPtrCComponent^.Component_AllocateMem('n1','');
  self.TPtrCComponent^.Component_AllocateMem('n2','');
  self.TPtrCComponent^.Component_AllocateMem('iNB',0);

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','nan');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n1');
  self.TPtrCComponent^.Component_Goto(CleanNum_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_Goto(CleanNum_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');

  self.TPtrCComponent^.Component_V1EqV2('n1','nanStr','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_V1EqV2('n2','nanStr','bool1');
  self.TPtrCComponent^.Component_IfV1True('bool1','JumpExit1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('boolAnd1');
  self.TPtrCComponent^.Component_Goto(isPositive_Str_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('boolAnd1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV2('boolAnd2');
  self.TPtrCComponent^.Component_Goto(isPositive_Str_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV2ToV1('boolAnd2');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd1','True','boolAnd3');
  self.TPtrCComponent^.Component_V1EqV2('boolAnd2','True','boolAnd4');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd3','boolAnd4','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(Sum_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse1');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd1','False','boolAnd3');
  self.TPtrCComponent^.Component_V1EqV2('boolAnd2','True','boolAnd4');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd3','boolAnd4','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse2');

  self.TPtrCComponent^.Component_StrLength('n1','numLength1');
  self.TPtrCComponent^.Component_CopyStr('n1','NumTwo','numLength1','n1');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('iNB');
  self.TPtrCComponent^.Component_Goto(isNum1Bigger_Str_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('iNB');

  self.TPtrCComponent^.Component_V1EqV2('iNB','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse5');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(Sub_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse7');

  self.TPtrCComponent^.Component_Port('JumpFalse5');

  self.TPtrCComponent^.Component_V1EqV2('iNB','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse6');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(Sub_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_CombineV2ToV1('MinusStr','VarNameResultStr','VarNameResultStr');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse7');

  self.TPtrCComponent^.Component_Port('JumpFalse6');

  self.TPtrCComponent^.Component_V1EqV2('iNB','True2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse7');

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','0');

  self.TPtrCComponent^.Component_Port('JumpFalse7');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse2');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd1','True','boolAnd3');
  self.TPtrCComponent^.Component_V1EqV2('boolAnd2','False','boolAnd4');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd3','boolAnd4','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse3');

  self.TPtrCComponent^.Component_StrLength('n2','numLength1');
  self.TPtrCComponent^.Component_CopyStr('n2','NumTwo','numLength1','n2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('iNB');
  self.TPtrCComponent^.Component_Goto(isNum1Bigger_Str_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('iNB');

  self.TPtrCComponent^.Component_V1EqV2('iNB','False','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse8');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(Sub_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_CombineV2ToV1('MinusStr','VarNameResultStr','VarNameResultStr');
  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse8');

  self.TPtrCComponent^.Component_V1EqV2('iNB','True','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse9');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(Sub_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse10');

  self.TPtrCComponent^.Component_Port('JumpFalse9');

  self.TPtrCComponent^.Component_V1EqV2('iNB','True2','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse10');

  self.TPtrCComponent^.Component_SetVarMem('VarNameResultStr','0');

  self.TPtrCComponent^.Component_Port('JumpFalse10');

  self.TPtrCComponent^.Component_JumpTo('JumpFalse4');

  self.TPtrCComponent^.Component_Port('JumpFalse3');

  self.TPtrCComponent^.Component_V1EqV2('boolAnd1','False','boolAnd3');
  self.TPtrCComponent^.Component_V1EqV2('boolAnd2','False','boolAnd4');
  self.TPtrCComponent^.Component_V1AndV2('boolAnd3','boolAnd4','bool1');
  self.TPtrCComponent^.Component_IfV1False('bool1','JumpFalse4');

  self.TPtrCComponent^.Component_StrLength('n1','numLength1');
  self.TPtrCComponent^.Component_CopyStr('n1','NumTwo','numLength1','n1');

  self.TPtrCComponent^.Component_StrLength('n2','numLength1');
  self.TPtrCComponent^.Component_CopyStr('n2','NumTwo','numLength1','n2');

  self.TPtrCComponent^.Component_MoveV2ToGV1('n1');
  self.TPtrCComponent^.Component_MoveV2ToGV2('n2');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(Sum_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('n1');
  self.TPtrCComponent^.Component_MoveGV2ToV1('n2');
  self.TPtrCComponent^.Component_MoveGV3ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_CombineV2ToV1('MinusStr','VarNameResultStr','VarNameResultStr');

  self.TPtrCComponent^.Component_Port('JumpFalse4');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameResultStr');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameResultStr');
  self.TPtrCComponent^.Component_Goto(CleanNum_Address);
  self.TPtrCComponent^.Component_MoveGV1ToV1('VarNameResultStr');
  self.TPtrCComponent^.Component_MoveGV2ToV1('VarNameResultStr');

  self.TPtrCComponent^.Component_Port('JumpExit1');

  self.TPtrCComponent^.Component_SetValueMode('VarNameResultStr','string');

  self.TPtrCComponent^.Component_MoveV2ToGV1('VarNameNum1Str');
  self.TPtrCComponent^.Component_MoveV2ToGV2('VarNameNum2Str');
  self.TPtrCComponent^.Component_MoveV2ToGV3('VarNameResultStr');

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_Mul(const VarNameNum1Str, VarNameNum2Str,
  VarNameResultStr: String): Integer;
begin

  {
  class function StringMath.Mul(const num1, num2: String): String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_DivA(const VarNameNum1Str, VarNameNum2Str,
  VarNameResultStr, VarNameIntDeciDigitCountBaseOne: String): Integer;
begin

  {
  class function StringMath.DivA(const num1, num2: String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

function CodeComponent.Component_MulDiv(const VarNameNum1Str, VarNameNum2Str,
  VarNameResultStr, VarNameIntADeciDigitCountBaseOne, VarNameBoolDoMul: String
  ): Integer;
begin

  {
  class function StringMath.MulDiv(const num1, num2: String;
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
  }

  Result:=self.TPtrCComponent^.Component_StartMem;

  self.TPtrCComponent^.Component_EndMem;
  self.TPtrCComponent^.Component_Exit;

end;

{ CodeComponentBasic }

function CodeComponentBasic.isVarNameValid(const VarName: String): Boolean;
var
  i:Integer;
begin
  Result:=False;
  for i:=1 to Length(VarName)do begin
    if(VarName[i]='')then Exit else
    if(VarName[i]='/')then Exit else
    if(VarName[i]='\')then Exit else
    if(VarName[i]='[')then Exit else
    if(VarName[i]=']')then Exit else
    if(VarName[i]='|')then Exit else
    if(VarName[i]='(')then Exit else
    if(VarName[i]=')')then Exit else
    if(VarName[i]='=')then Exit else
    if(VarName[i]=':')then Exit else
    if(VarName[i]=';')then Exit else
    if(VarName[i]='"')then Exit else
    if(VarName[i]='''')then Exit else
    if(VarName[i]='+')then Exit else
    if(VarName[i]='-')then Exit else
    if(VarName[i]='*')then Exit else
    if(VarName[i]='$')then Exit else
    if(VarName[i]='#')then Exit else
    if(VarName[i]='@')then Exit else
    if(VarName[i]='!')then Exit else
    if(VarName[i]='%')then Exit else
    if(VarName[i]='^')then Exit else
    if(VarName[i]='&')then Exit else
    if(VarName[i]='>')then Exit else
    if(VarName[i]='<')then Exit else
    if(VarName[i]='?')then Exit else
    if(VarName[i]='{')then Exit else
    if(VarName[i]='}')then Exit else
    if(VarName[i]='~')then Exit else
    if(VarName[i]='`')then Exit else
    if(VarName[i]=',')then Exit;
  end;
  Result:=True;
end;

constructor CodeComponentBasic.Create;
begin
  self.TCProperty:=nil;
  self.TCNumStartRec:=0;
  self.TCNumEndRec:=0;
  self.TCNumPresent:=0;
end;

constructor CodeComponentBasic.Create(
  const APtrCodeProperties: PtrCodeProperties);
begin
  self.TCProperty:=APtrCodeProperties;
  self.TCNumStartRec:=0;
  self.TCNumEndRec:=0;
  self.TCNumPresent:=0;
end;

constructor CodeComponentBasic.Create(
  var ACodeComponentBasic: CodeComponentBasic);
begin
  self.TCProperty:=nil;
  self.TCNumStartRec:=0;
  self.TCNumEndRec:=0;
  self.TCNumPresent:=0;
  self.changeTo(ACodeComponentBasic);
end;

destructor CodeComponentBasic.Destroy;
begin
  inherited Destroy;
  self.TCProperty:=nil;
  self.TCNumStartRec:=0;
  self.TCNumEndRec:=0;
  self.TCNumPresent:=0;
end;

procedure CodeComponentBasic.changeTo(
  var ACodeComponentBasic: CodeComponentBasic);
begin
  self.TCProperty:=ACodeComponentBasic.TCProperty;
  self.TCNumStartRec:=ACodeComponentBasic.TCNumStartRec;
  self.TCNumEndRec:=ACodeComponentBasic.TCNumEndRec;
  self.TCNumPresent:=ACodeComponentBasic.TCNumPresent;
end;

procedure CodeComponentBasic.UnComponent_SetProperty(
  const APtrCodeProperties: PtrCodeProperties);
begin
  self.TCProperty:=APtrCodeProperties;
end;

function CodeComponentBasic.UnComponent_CodeLength: Integer;
begin
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength;
end;

function CodeComponentBasic.UnComponent_AppendVariable(const VarName: String
  ): Integer;
begin
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName);
  if(Result<>-1)then begin
    if(self.isVarNameValid(VarName)=False)then Exit;
  end else Result:=self.UnComponent_CreateVariable(VarName);
end;

function CodeComponentBasic.UnComponent_AppendVariable(const VarName: String;
  const AValue: Number): Integer;
begin
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName);
  if(Result<>-1)then begin
    if(self.isVarNameValid(VarName)=False)then Exit;
    self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarName,AValue);
  end else Result:=self.UnComponent_CreateVariable(VarName,AValue);
end;

function CodeComponentBasic.UnComponent_AppendVariable(const VarName: String;
  const AValue: Integer): Integer;
begin
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName);
  if(Result<>-1)then begin
    if(self.isVarNameValid(VarName)=False)then Exit;
    self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarName,AValue);
  end else Result:=self.UnComponent_CreateVariable(VarName,AValue);
end;

function CodeComponentBasic.UnComponent_AppendVariable(const VarName: String;
  const AValue: Real): Integer;
begin
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName);
  if(Result<>-1)then begin
    if(self.isVarNameValid(VarName)=False)then Exit;
    self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarName,AValue);
  end else Result:=self.UnComponent_CreateVariable(VarName,AValue);
end;

function CodeComponentBasic.UnComponent_AppendVariable(const VarName: String;
  const AValue: String): Integer;
begin
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName);
  if(Result<>-1)then begin
    if(self.isVarNameValid(VarName)=False)then Exit;
    self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarName,AValue);
  end else Result:=self.UnComponent_CreateVariable(VarName,AValue);
end;

function CodeComponentBasic.UnComponent_CreateVariable(const VarName: String
  ): Integer;
begin
  Result:=-1;
  if(self.isVarNameValid(VarName)=False)then Exit;
  if(self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_AddVariable(VarName)=False)then Exit;
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_ArrLength-1;
end;

function CodeComponentBasic.UnComponent_CreateVariable(const VarName: String;
  const AValue: Number): Integer;
begin
  Result:=-1;
  if(self.isVarNameValid(VarName)=False)then Exit;
  if(self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_AddVariable(VarName,AValue)=False)then Exit;
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_ArrLength-1;
end;

function CodeComponentBasic.UnComponent_CreateVariable(const VarName: String;
  const AValue: Integer): Integer;
begin
  Result:=-1;
  if(self.isVarNameValid(VarName)=False)then Exit;
  if(self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_AddVariableInt(VarName,AValue)=False)then Exit;
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_ArrLength-1;
end;

function CodeComponentBasic.UnComponent_CreateVariable(const VarName: String;
  const AValue: Real): Integer;
begin
  Result:=-1;
  if(self.isVarNameValid(VarName)=False)then Exit;
  if(self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_AddVariableReal(VarName,AValue)=False)then Exit;
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_ArrLength-1;
end;

function CodeComponentBasic.UnComponent_CreateVariable(const VarName: String;
  const AValue: String): Integer;
begin
  Result:=-1;
  if(self.isVarNameValid(VarName)=False)then Exit;
  if(self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_AddVariableStr(VarName,AValue)=False)then Exit;
  Result:=self.TCProperty^.Property_CodeVariable^.Vars_AtLast^.Var_ArrLength-1;
end;

function CodeComponentBasic.Component_DebugPoint: Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(43));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.DebugPoint_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_DebugPointCoreAt(const CoreIndex: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(43));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(CoreIndex);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.DebugPointCoreAt_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_DebugPointIf(const num1VarName: String;
  const AValue: Number): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(43));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.DebugPointIf_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_DebugPointIf(const num1VarName: String;
  const AValue: Integer): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(43));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.DebugPointIf_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_DebugPointIf(const num1VarName: String;
  const AValue: Real): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(43));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.DebugPointIf_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_DebugPointIf(const num1VarName: String;
  const AValue: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(43));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.DebugPointIf_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SumSubInteger(const num1VarName,
  num2VarName, ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(20));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SumSubInteger_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MulDivInteger(const num1VarName,
  num2VarName, ResultVarName, isMulVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(11));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(isMulVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MulDivInteger_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SumInteger(const num1VarName,
  num2VarName, ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(202));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SumInteger_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SubInteger(const num1VarName,
  num2VarName, ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(200));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SubInteger_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MulInteger(const num1VarName,
  num2VarName, ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(118));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MulInteger_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_DivInteger(const num1VarName,
  num2VarName, ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(112));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.DivInteger_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SumSubReal(const num1VarName,
  num2VarName, ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(20));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SumSubReal_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MulDivReal(const num1VarName,
  num2VarName, ResultVarName, isMulVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(11));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(isMulVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MulDivReal_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SumReal(const num1VarName, num2VarName,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(202));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SumReal_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SubReal(const num1VarName, num2VarName,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(200));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SubReal_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MulReal(const num1VarName, num2VarName,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(118));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MulReal_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_DivReal(const num1VarName, num2VarName,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(112));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num1VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(num2VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.DivReal_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_ArrayIndexGet(const ArrayVarName,
  IndexVarName, ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(12));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ArrayVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(IndexVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.ArrayIndexGet_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_ArrayIndexSet(const ArrayVarName,
  IndexVarName, ValueVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(21));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ArrayVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(IndexVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ValueVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.ArrayIndexSet_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_StrIndexGet(const StrVarName,
  IndexVarName, ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(32));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(StrVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(IndexVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.StrIndexGet_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_StrIndexSet(const StrVarName,
  IndexVarName, ValueVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(23));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(StrVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(IndexVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ValueVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.StrIndexSet_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SetLength(const ArrayVarName,
  ArrayLengthVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(17));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ArrayVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ArrayLengthVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SetLength_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_Length(const ArrayVarName,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(1));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ArrayVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Length_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_StrLength(const StrVarName,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(31));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(StrVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.StrLength_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_JumpTo(const JumpToPortName: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(2));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(JumpToPortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.JumpTo_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_JumpTo(const JumpToPortAddress: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(2));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(JumpToPortAddress);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.JumpTo_Address_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_Goto(const GotoPortName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(22));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(GotoPortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Goto_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_Goto(const GotoPortAddress: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(22));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(GotoPortAddress);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Goto_Address_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_Exit: Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(10));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Exit_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveV2ToV1(const VarName1,
  VarName2: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToV1(const VarName: String;
  const AValue: Number): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToV1_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToV1(const VarName: String;
  const AValue: Integer): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToV1_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToV1(const VarName: String;
  const AValue: Real): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToV1_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToV1(const VarName: String;
  const AValue: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToV1_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveV2ToGV1(const VarName2: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveGV1ToV1(const VarName1: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveGV1ToV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV1(const C2AValue: Number
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV1_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV1(const C2AValue: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV1_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV1(const C2AValue: Real
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV1_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV1(const C2AValue: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV1_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveV2ToGV2(const VarName2: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveGV2ToV1(const VarName1: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveGV2ToV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV2(const C2AValue: Number
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV2_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV2(const C2AValue: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV2_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV2(const C2AValue: Real
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV2_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV2(const C2AValue: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV2_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveV2ToGV3(const VarName2: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV3_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveGV3ToV1(const VarName1: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveGV3ToV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV3(const C2AValue: Number
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV3_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV3(const C2AValue: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV3_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV3(const C2AValue: Real
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV3_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV3(const C2AValue: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV3_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveV2ToGV4(const VarName2: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV4_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveGV4ToV1(const VarName1: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveGV4ToV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV4(const C2AValue: Number
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV4_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV4(const C2AValue: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV4_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV4(const C2AValue: Real
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV4_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV4(const C2AValue: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV4_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveV2ToGV5(const VarName2: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV5_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveGV5ToV1(const VarName1: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveGV5ToV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV5(const C2AValue: Number
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV5_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV5(const C2AValue: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV5_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV5(const C2AValue: Real
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV5_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV5(const C2AValue: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV5_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveV2ToGV6(const VarName2: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV6_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveGV6ToV1(const VarName1: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveGV6ToV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV6(const C2AValue: Number
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV6_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV6(const C2AValue: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV6_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV6(const C2AValue: Real
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV6_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV6(const C2AValue: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV6_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveV2ToGV7(const VarName2: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV7_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveGV7ToV1(const VarName1: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveGV7ToV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV7(const C2AValue: Number
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV7_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV7(const C2AValue: Integer
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV7_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV7(const C2AValue: Real
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV7_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_MoveC2ToGV7(const C2AValue: String
  ): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(50));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(C2AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.MoveV2ToGV7_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1AndV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(55));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1AndV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1OrV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(77));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1OrV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_NotV1(const VarName1,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(24));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.NotV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1XORV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(57));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1XORV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1SHLV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(48));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1SHLV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1SHRV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(84));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1SHRV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1EqV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(100));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1EqV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1NotEqV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(150));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1NotEqV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1GTV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(177));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1GTV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1GTEqV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(170));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1GTEqV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1LTV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(111));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1LTV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_V1LTEqV2(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(110));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.V1LTEqV2_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_CombineV2ToV1(const VarName1, VarName2,
  ResultVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(88));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.CombineV2ToV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_IfV1(const VarName1, JumpToTruePortName,
  JumpToFalsePortName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(36));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(JumpToTruePortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(JumpToFalsePortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.IfV1_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_IfV1True(const VarName1,
  JumpToTruePortName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(13));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(JumpToTruePortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.IfV1True_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_IfV1False(const VarName1,
  JumpToFalsePortName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(60));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(JumpToFalsePortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.IfV1False_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_IfV1_Goto(const VarName1,
  GotoTruePortName, GotoFalsePortName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(96));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(GotoTruePortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(GotoFalsePortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.IfV1_Goto_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_IfV1True_Goto(const VarName1,
  GotoTruePortName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(19));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(GotoTruePortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.IfV1True_Goto_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_IfV1False_Goto(const VarName1,
  GotoFalsePortName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(91));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(GotoFalsePortName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.IfV1False_Goto_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_AllocateMem(const VarName: String;
  const AValue: Number): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(88));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.AllocateMem_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_AllocateMem(const VarName: String;
  const AValue: Integer): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(88));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.AllocateMem_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_AllocateMem(const VarName: String;
  const AValue: Real): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(88));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.AllocateMem_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_AllocateMem(const VarName: String;
  const AValue: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(88));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.AllocateMem_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_BinStr(const VarName, CountVarName,
  ResultStrVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(30));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(CountVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultStrVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.BinStr_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_StartMem: Integer;
begin
  self.TCNumStartRec:=self.TCNumStartRec+1;
  self.TCNumPresent:=self.TCNumEndRec+self.TCNumStartRec;
  self.TCProperty^.Property_CodePorts^.Vars_CreateLast;

  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(18));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(self.TCProperty^.Property_CodePorts^.Vars_ArrLength-1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.StartMem_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_EndMem: Integer;
begin
  self.TCNumEndRec:=self.TCNumEndRec+1;
  self.TCNumStartRec:=self.TCNumStartRec-1;
  self.TCNumPresent:=self.TCNumPresent-self.TCNumEndRec;

  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(81));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.EndMem_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_Port(const PortName: String): Integer;
var
  AIndex:Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(80));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Port_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;

  if(self.isVarNameValid(PortName)=False)then Exit;

  AIndex:=self.TCProperty^.Property_CodePorts^.Vars^[self.TCNumPresent].Var_GetValueInt_Index(PortName);
  if(AIndex=-1)then self.TCProperty^.Property_CodePorts^.Vars^[self.TCNumPresent].Var_AddVariableInt(PortName,Result);
end;

function CodeComponentBasic.Component_SetVarMem(const VarName: String;
  const AValue: Number): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(188));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamData(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SetVarMem_Number_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SetVarMem(const VarName: String;
  const AValue: Integer): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(188));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataInt(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SetVarMem_Integer_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SetVarMem(const VarName: String;
  const AValue: Real): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(188));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataReal(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SetVarMem_Real_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SetVarMem(const VarName: String;
  const AValue: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(188));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(AValue);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SetVarMem_String_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_Round(const VarNameReal,
  ResultIntVarName: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(40));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarNameReal);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ResultIntVarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Round_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_CopyStr(const VarNameStr, VarNameIntPos1,
  VarNameIntPos2, VarNameResultStr: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(65));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarNameStr);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarNameIntPos1);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarNameIntPos2);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarNameResultStr);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.CopyStr_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_StrToInt(const VarNameStr,
  VarNameResultInt: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(92));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarNameStr);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarNameResultInt);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.StrToInt_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_IntToStr(const VarNameInt,
  VarNameResultStr: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(94));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarNameInt);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarNameResultStr);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.IntToStr_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

function CodeComponentBasic.Component_SetValueMode(const VarName,
  ValueMode: String): Integer;
begin
  self.TCProperty^.Property_CodeArray^.Lines_CreateLast;
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetCodeData(ArrMath.IntToNumber(128));
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(VarName);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_AddParamDataStr(ValueMode);
  self.TCProperty^.Property_CodeArray^.Lines_AtLast^.Code_SetFuncData(@self.TCProperty^.Property_CodeArray^.Lines_AtLast^.SetValueMode_Proc);
  Result:=self.TCProperty^.Property_CodeArray^.Lines_ArrLength-1;
end;

{ CodeCores }

procedure CodeCores.SetProperties;
var
  i:Integer;
begin
  for i:=0 to (Length(self.TCPropertyArr)-1)do begin
    self.TCPropertyArr[i].TCMemCapNum:=self.TCoreIndex;
    self.TCPropertyArr[i].Property_CodeArray^.TCCodeProperties:=@self.TCPropertyArr[i];
    self.TCPropertyArr[i].Property_CodeArray^.SetPtrCodeProperties;
  end;
end;

procedure CodeCores.AddProperty(var ACodeProperties: CodeProperties);
begin
  SetLength(self.TCPropertyArr,Length(self.TCPropertyArr)+1);
  self.TCPropertyArr[Length(self.TCPropertyArr)-1]:=CodeProperties.Create(ACodeProperties);
  self.TCPropertyArr[Length(self.TCPropertyArr)-1].TCPoint.Point_AddLast(0);
  self.TCPropertyArr[Length(self.TCPropertyArr)-1].TCPoint.Point_StartMem_AddLast;
  self.TCPropertyArr[Length(self.TCPropertyArr)-1].TCLogs:=@self.TCLogs;

  SetLength(self.TCPropertyIndexDoneArr,Length(self.TCPropertyIndexDoneArr)+1);
  self.TCPropertyIndexDoneArr[Length(self.TCPropertyIndexDoneArr)-1]:=0;

  SetLength(self.TCPropertyDoneBoolArr,Length(self.TCPropertyDoneBoolArr)+1);
  self.TCPropertyDoneBoolArr[Length(self.TCPropertyDoneBoolArr)-1]:=False;

  SetLength(self.TCPropertyOutBoundBoolArr,Length(self.TCPropertyOutBoundBoolArr)+1);
  self.TCPropertyOutBoundBoolArr[Length(self.TCPropertyOutBoundBoolArr)-1]:=False;
end;

constructor CodeCores.Create;
begin
  self.TCoreIndex:=-1;
  self.TCPropertyArr:=nil;
  self.TCPropertyIndexDoneArr:=nil;
  self.TCPropertyDoneBoolArr:=nil;
  self.TCPropertyOutBoundBoolArr:=nil;
  self.TCLogs:=CodeLog.Create;
end;

constructor CodeCores.Create(var ACodeCores: CodeCores);
begin
  self.TCoreIndex:=-1;
  self.TCPropertyArr:=nil;
  self.TCPropertyIndexDoneArr:=nil;
  self.TCPropertyDoneBoolArr:=nil;
  self.TCPropertyOutBoundBoolArr:=nil;
  self.TCLogs:=CodeLog.Create;
  self.ChangeTo(ACodeCores);
end;

destructor CodeCores.Destroy;
var
  i:Integer;
begin
  inherited Destroy;
  self.TCoreIndex:=-1;
  for i:=0 to (Length(self.TCPropertyArr)-1)do self.TCPropertyArr[i].Free;
  SetLength(self.TCPropertyArr,0);
  SetLength(self.TCPropertyIndexDoneArr,0);
  SetLength(self.TCPropertyDoneBoolArr,0);
  SetLength(self.TCPropertyOutBoundBoolArr,0);
  self.TCLogs.Free;
end;

procedure CodeCores.ChangeTo(var ACodeCores: CodeCores);
var
  i:Integer;
begin
  self.TCoreIndex:=ACodeCores.TCoreIndex;
  for i:=0 to (Length(self.TCPropertyArr)-1)do self.TCPropertyArr[i].Free;
  SetLength(self.TCPropertyArr,Length(ACodeCores.TCPropertyArr));
  for i:=0 to (Length(self.TCPropertyArr)-1)do self.TCPropertyArr[i]:=CodeProperties.Create(ACodeCores.TCPropertyArr[i]);
  self.TCLogs.ChangeTo(ACodeCores.TCLogs);

  SetLength(self.TCPropertyIndexDoneArr,Length(ACodeCores.TCPropertyIndexDoneArr));
  for i:=0 to (Length(self.TCPropertyIndexDoneArr)-1)do self.TCPropertyIndexDoneArr[i]:=ACodeCores.TCPropertyIndexDoneArr[i];

  SetLength(self.TCPropertyDoneBoolArr,Length(ACodeCores.TCPropertyDoneBoolArr));
  for i:=0 to (Length(self.TCPropertyDoneBoolArr)-1)do self.TCPropertyDoneBoolArr[i]:=ACodeCores.TCPropertyDoneBoolArr[i];

  SetLength(self.TCPropertyOutBoundBoolArr,Length(ACodeCores.TCPropertyOutBoundBoolArr));
  for i:=0 to (Length(self.TCPropertyOutBoundBoolArr)-1)do self.TCPropertyOutBoundBoolArr[i]:=ACodeCores.TCPropertyOutBoundBoolArr[i];

end;

procedure CodeCores.Cores_AddProperty(var ACodeProperties: CodeProperties;
  ATimes: Integer);
var
  i:Integer;
begin
  if(ATimes<0)then ATimes:=0;
  for i:=1 to ATimes do self.AddProperty(ACodeProperties);
end;

procedure CodeCores.Cores_AddProperty(var ACodeProperties: CodeProperties);
begin
  self.AddProperty(ACodeProperties);
end;

procedure CodeCores.Cores_DeleteProperties;
var
  i:Integer;
begin
  self.TCoreIndex:=-1;
  for i:=0 to (Length(self.TCPropertyArr)-1)do self.TCPropertyArr[i].Free;
  SetLength(self.TCPropertyArr,0);
  SetLength(self.TCPropertyIndexDoneArr,0);
  SetLength(self.TCPropertyDoneBoolArr,0);
  SetLength(self.TCPropertyOutBoundBoolArr,0);
  self.TCLogs.Error_EraseLog;
  self.TCLogs.Warning_EraseLog;
end;

procedure CodeCores.Cores_ResetIndex;
begin
  self.TCoreIndex:=-1;
end;

procedure CodeCores.Cores_ResetCores;
var
  i:Integer;
begin
  self.TCoreIndex:=-1;
  for i:=0 to (Length(self.TCPropertyArr)-1)do self.TCPropertyArr[i].Property_ResetAll;
  for i:=0 to (Length(self.TCPropertyIndexDoneArr)-1)do self.TCPropertyIndexDoneArr[i]:=0;
  for i:=0 to (Length(self.TCPropertyOutBoundBoolArr)-1)do self.TCPropertyOutBoundBoolArr[i]:=False;
  for i:=0 to (Length(self.TCPropertyDoneBoolArr)-1)do self.TCPropertyDoneBoolArr[i]:=False;
end;

procedure CodeCores.Cores_Continue;
begin
  self.TCoreIndex:=self.TCoreIndex+1;
  if(self.TCoreIndex>(Length(self.TCPropertyArr)-1))then self.TCoreIndex:=0;
end;

function CodeCores.Cores_GetPropertyVar_Number(const CoreIndexAt: Integer;
  const VarName: String): Number;
begin
  Result:=nil;
  if(CoreIndexAt<0)or(CoreIndexAt>(self.Cores_ArrLength-1))then Exit;
  Result:=StrMath.AssignNum(self.TCPropertyArr[CoreIndexAt].Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName));
end;

function CodeCores.Cores_GetPropertyVar_Integer(const CoreIndexAt: Integer;
  const VarName: String): Integer;
begin
  Result:=0;
  if(CoreIndexAt<0)or(CoreIndexAt>(self.Cores_ArrLength-1))then Exit;
  Result:=self.TCPropertyArr[CoreIndexAt].Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName);
end;

function CodeCores.Cores_GetPropertyVar_Real(const CoreIndexAt: Integer;
  const VarName: String): Real;
begin
  Result:=0.0;
  if(CoreIndexAt<0)or(CoreIndexAt>(self.Cores_ArrLength-1))then Exit;
  Result:=self.TCPropertyArr[CoreIndexAt].Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName);
end;

function CodeCores.Cores_GetPropertyVar_String(const CoreIndexAt: Integer;
  const VarName: String): String;
begin
  Result:='';
  if(CoreIndexAt<0)or(CoreIndexAt>(self.Cores_ArrLength-1))then Exit;
  Result:=self.TCPropertyArr[CoreIndexAt].Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarName);
end;

function CodeCores.Cores_ErrorLogs: String;
begin
  Result:=self.TCLogs.Error_LogToString;
end;

function CodeCores.Cores_ErrorLength: Integer;
begin
  Result:=self.TCLogs.Error_ArrLength;
end;

function CodeCores.Cores_WarningLogs: String;
begin
  Result:=self.TCLogs.Warning_LogToString;
end;

function CodeCores.Cores_WarningLength: Integer;
begin
  Result:=self.TCLogs.Warning_ArrLength;
end;

function CodeCores.Cores_GetCoreIndexAt: Integer;
begin
  Result:=self.TCoreIndex;
end;

function CodeCores.Cores_GetPropertyIndexAt: Integer;
begin
  Result:=self.TCPropertyArr[self.TCoreIndex].Property_CodePoint^.Point_GetPoint;
end;

function CodeCores.Cores_RunProperty: Boolean;
var
  AIndex:Integer;
begin
  Result:=False;
  self.SetProperties;
  if(self.TCoreIndex<0)or(self.TCoreIndex>(self.Cores_ArrLength-1))then Exit;
  if(self.TCLogs.Error_ArrLength>0)then Exit;

  AIndex:=self.TCPropertyArr[self.TCoreIndex].Property_CodePoint^.Point_GetPoint;

  if(((AIndex=(self.TCPropertyArr[self.TCoreIndex].Property_CodeArray^.Lines_ArrLength-1))and
  (self.TCPropertyOutBoundBoolArr[self.TCoreIndex]=True))=False)and
  (self.TCPropertyIndexDoneArr[self.TCoreIndex]<2)then begin
    Result:=self.TCPropertyArr[self.TCoreIndex].Property_CodeArray^.Lines^[AIndex].Code_RunFuncData;
    if(self.TCPropertyIndexDoneArr[self.TCoreIndex]=1)and
    (AIndex=(self.TCPropertyArr[self.TCoreIndex].Property_CodeArray^.Lines_ArrLength-1))then self.TCPropertyIndexDoneArr[self.TCoreIndex]:=2;
  end else
    Result:=True;

  self.TCPropertyArr[self.TCoreIndex].Property_CodePoint^.Point_Continue;
  AIndex:=self.TCPropertyArr[self.TCoreIndex].Property_CodePoint^.Point_GetPoint;

  if(AIndex>(self.TCPropertyArr[self.TCoreIndex].Property_CodeArray^.Lines_ArrLength-1))then self.TCPropertyOutBoundBoolArr[self.TCoreIndex]:=True;
  if(AIndex=(self.TCPropertyArr[self.TCoreIndex].Property_CodeArray^.Lines_ArrLength-1))then self.TCPropertyDoneBoolArr[self.TCoreIndex]:=True;

  if(AIndex>(self.TCPropertyArr[self.TCoreIndex].Property_CodeArray^.Lines_ArrLength-1))then self.TCPropertyArr[self.TCoreIndex].Property_CodePoint^.Point_ToPrevious;

  if((AIndex=(self.TCPropertyArr[self.TCoreIndex].Property_CodeArray^.Lines_ArrLength-2))or
  ((self.TCPropertyArr[self.TCoreIndex].Property_CodeArray^.Lines_ArrLength-2)<0))and
  (self.TCPropertyIndexDoneArr[self.TCoreIndex]=0)then self.TCPropertyIndexDoneArr[self.TCoreIndex]:=1;

  if(self.TCLogs.Error_ArrLength>0)then self.TCLogs.Error_AppendLastLog(' | At-Core: '+IntToStr(self.TCoreIndex));
end;

function CodeCores.Cores_RunPropertyUntilOutBound: Boolean;
begin
  Result:=False;
  self.Cores_ResetCores;
  While(self.Cores_ArePropertiesOutBound=False)do begin
    if(self.Cores_ErrorLength>0)then Exit;
    if(self.Cores_RunProperty=False)then begin
      self.TCLogs.Warning_CreateLastLog('Warning: RunProperty returned False'+' | At-Core: '+IntToStr(self.TCoreIndex));
      self.TCLogs.Warning_CreateLastLog('Warning: must be because CoreIndex is out of bound?'+' | At-Core: '+IntToStr(self.TCoreIndex));
      self.TCLogs.Warning_CreateLastLog('Warning: must be because has Error messages?'+' | At-Core: '+IntToStr(self.TCoreIndex));
    end;
    self.Cores_Continue;
  end;
  Result:=True;
end;

function CodeCores.Cores_RunPropertyUntilDone: Boolean;
begin
  Result:=False;
  self.Cores_ResetCores;
  While(self.Cores_ArePropertiesDone=False)do begin
    if(self.Cores_ErrorLength>0)then Exit;
    if(self.Cores_RunProperty=False)then begin
      self.TCLogs.Warning_CreateLastLog('Warning: RunProperty returned False'+' | At-Core: '+IntToStr(self.TCoreIndex));
      self.TCLogs.Warning_CreateLastLog('Warning: must be because CoreIndex is out of bound?'+' | At-Core: '+IntToStr(self.TCoreIndex));
      self.TCLogs.Warning_CreateLastLog('Warning: must be because has Error messages?'+' | At-Core: '+IntToStr(self.TCoreIndex));
    end;
    self.Cores_Continue;
  end;
  Result:=True;
end;

function CodeCores.Cores_isPropertyOutBound: Boolean;
begin
  Result:=False;
  if(self.TCoreIndex<0)or(self.TCoreIndex>(self.Cores_ArrLength-1))then Exit;
  Result:=self.TCPropertyOutBoundBoolArr[self.TCoreIndex];
end;

function CodeCores.Cores_isPropertyDone: Boolean;
begin
  Result:=False;
  if(self.TCoreIndex<0)or(self.TCoreIndex>(self.Cores_ArrLength-1))then Exit;
  Result:=self.TCPropertyDoneBoolArr[self.TCoreIndex];
end;

function CodeCores.Cores_ArePropertiesOutBound: Boolean;
var
  i:Integer;
  nCount:Integer;
begin
  Result:=False;
  nCount:=0;
  for i:=0 to (Length(self.TCPropertyOutBoundBoolArr)-1)do
    if(self.TCPropertyOutBoundBoolArr[i]=True)then nCount:=nCount+1;

  if(nCount=Length(self.TCPropertyOutBoundBoolArr))then Result:=True;
end;

function CodeCores.Cores_ArePropertiesDone: Boolean;
var
  i:Integer;
  nCount:Integer;
begin
  Result:=False;
  nCount:=0;
  for i:=0 to (Length(self.TCPropertyDoneBoolArr)-1)do
    if(self.TCPropertyDoneBoolArr[i]=True)then nCount:=nCount+1;

  if(nCount=Length(self.TCPropertyDoneBoolArr))then Result:=True;
end;

function CodeCores.Cores_ArrLength: Integer;
begin
  Result:=Length(self.TCPropertyArr);
end;

{ CodePoint }

constructor CodePoint.Create;
begin
  self.TPointArr:=nil;
  self.TStartMemArr:=nil;
end;

constructor CodePoint.Create(const APoint: Integer);
begin
  self.TPointArr:=nil;
  self.TStartMemArr:=nil;
  self.Point_SetPoint(APoint);
end;

constructor CodePoint.Create(var ACodePoint: CodePoint);
begin
  self.TPointArr:=nil;
  self.TStartMemArr:=nil;
  self.ChangeTo(ACodePoint);
end;

destructor CodePoint.Destroy;
begin
  inherited Destroy;
  SetLength(self.TPointArr,0);
  SetLength(self.TStartMemArr,0);
end;

procedure CodePoint.ChangeTo(var ACodePoint: CodePoint);
var
  i:Integer;
begin
  SetLength(self.TPointArr,Length(ACodePoint.TPointArr));
  for i:=0 to (Length(self.TPointArr)-1)do self.TPointArr[i]:=ACodePoint.TPointArr[i];

  SetLength(self.TStartMemArr,Length(ACodePoint.TStartMemArr));
  for i:=0 to (Length(self.TStartMemArr)-1)do self.TStartMemArr[i]:=ACodePoint.TStartMemArr[i];
end;

procedure CodePoint.Point_ResetAll;
begin
  SetLength(self.TPointArr,0);
  SetLength(self.TStartMemArr,0);
end;

procedure CodePoint.Point_Continue;
begin
  if(Length(self.TPointArr)>0)then self.TPointArr[Length(self.TPointArr)-1]:=self.TPointArr[Length(self.TPointArr)-1]+1;
end;

procedure CodePoint.Point_ToPrevious;
begin
  if(Length(self.TPointArr)>0)then self.TPointArr[Length(self.TPointArr)-1]:=self.TPointArr[Length(self.TPointArr)-1]-1;
end;

procedure CodePoint.Point_SetPoint(const APoint: Integer);
begin
  if(Length(self.TPointArr)>0)then self.TPointArr[Length(self.TPointArr)-1]:=APoint;
end;

procedure CodePoint.Point_AddLast;
begin
  SetLength(self.TPointArr,Length(self.TPointArr)+1);
  self.TPointArr[Length(self.TPointArr)-1]:=0;
end;

procedure CodePoint.Point_AddLast(const APoint: Integer);
begin
  SetLength(self.TPointArr,Length(self.TPointArr)+1);
  self.TPointArr[Length(self.TPointArr)-1]:=APoint;
end;

procedure CodePoint.Point_DeleteLast;
begin
  if(Length(self.TPointArr)>1)then SetLength(self.TPointArr,Length(self.TPointArr)-1);
end;

function CodePoint.Point_GetPoint: Integer;
begin
  Result:=self.TPointArr[Length(self.TPointArr)-1];
end;

procedure CodePoint.Point_StartMem_SetPoint(const AStartMem: Integer);
begin
  if(Length(self.TStartMemArr)>0)then self.TStartMemArr[Length(self.TStartMemArr)-1]:=AStartMem;
end;

procedure CodePoint.Point_StartMem_AddLast;
begin
  SetLength(self.TStartMemArr,Length(self.TStartMemArr)+1);
  self.TStartMemArr[Length(self.TStartMemArr)-1]:=0;
end;

procedure CodePoint.Point_StartMem_AddLast(const AStartMem: Integer);
begin
  SetLength(self.TStartMemArr,Length(self.TStartMemArr)+1);
  self.TStartMemArr[Length(self.TStartMemArr)-1]:=AStartMem;
end;

procedure CodePoint.Point_StartMem_DeleteLast;
begin
  if(Length(self.TStartMemArr)>1)then SetLength(self.TStartMemArr,Length(self.TStartMemArr)-1);
end;

function CodePoint.Point_StartMem_GetPoint: Integer;
begin
  Result:=self.TStartMemArr[Length(self.TStartMemArr)-1];
end;

{ CodeVariable }

function CodeVariable.isVarNameExist(const AVarName: String; out AIndex: Integer
  ): Boolean;
var
  i:Integer;
begin
  Result:=False;
  AIndex:=-1;
  for i:=0 to (Length(self.TVarName)-1)do
    if(self.TVarName[i]=AVarName)then begin
      AIndex:=i;
      Result:=True;
      Exit;
    end;
end;

function CodeVariable.isVarNamePart(const AVarName, AVarNamePart: String
  ): Boolean;
var
  AStr:String;
begin
  Result:=False;
  if(Length(AVarName)<Length(AVarNamePart))then Exit;
  AStr:=Copy(AVarName,1,Length(AVarNamePart));
  if(AStr<>AVarNamePart)then Exit;
  Result:=True;
end;

constructor CodeVariable.Create;
begin
  self.TVarArr:=nil;
  self.TVarMode:=nil;
  self.TVarName:=nil;
end;

constructor CodeVariable.Create(var ACodeVariable: CodeVariable);
begin
  self.TVarArr:=nil;
  self.TVarMode:=nil;
  self.TVarName:=nil;
  self.changeTo(ACodeVariable);
end;

destructor CodeVariable.Destroy;
var
  i:Integer;
begin
  inherited Destroy;
  for i:=0 to (Length(self.TVarArr)-1)do SetLength(self.TVarArr[i],0);
  SetLength(self.TVarArr,0);
  SetLength(self.TVarMode,0);
  SetLength(self.TVarName,0);
end;

procedure CodeVariable.changeTo(var ACodeVariable: CodeVariable);
var
  i:Integer;
begin
  for i:=0 to (Length(self.TVarArr)-1)do SetLength(self.TVarArr[i],0);
  SetLength(self.TVarArr,Length(ACodeVariable.TVarArr));
  for i:=0 to (Length(self.TVarArr)-1)do self.TVarArr[i]:=StrMath.AssignNum(ACodeVariable.TVarArr[i]);

  SetLength(self.TVarMode,Length(ACodeVariable.TVarMode));
  for i:=0 to (Length(self.TVarMode)-1)do self.TVarMode[i]:=ACodeVariable.TVarMode[i];

  SetLength(self.TVarName,Length(ACodeVariable.TVarName));
  for i:=0 to (Length(self.TVarName)-1)do self.TVarName[i]:=ACodeVariable.TVarName[i];
end;

procedure CodeVariable.Var_ResetAll;
var
  i:Integer;
begin
  for i:=0 to (Length(self.TVarArr)-1)do SetLength(self.TVarArr[i],0);
  SetLength(self.TVarArr,0);
  SetLength(self.TVarMode,0);
  SetLength(self.TVarName,0);
end;

procedure CodeVariable.Var_GetVarNameParts(const AVarNamePart: String; out
  ANumArr: TNumArr);
var
  i:Integer;
begin
  ANumArr:=nil;
  if(AVarNamePart='')then Exit;
  for i:=0 to (Length(self.TVarName)-1)do begin
    if(self.isVarNamePart(self.TVarName[i],AVarNamePart)=True)then begin
      SetLength(ANumArr,Length(ANumArr)+1);
      ANumArr[Length(ANumArr)-1]:=i;
    end;
  end;
  //End...
end;

procedure CodeVariable.Var_DeleteVarNames(const ANumArr: TNumArr);
var
  i,j:Integer;
  TArr1:Array of Number;
  TArr3:Array of Byte;
  TArr2:Array of String;
  bool1:Boolean;
begin
  if(Length(ANumArr)=0)then Exit;
  TArr1:=nil;
  TArr3:=nil;
  TArr2:=nil;
  bool1:=False;
  for i:=(Length(self.TVarName)-1) downto 0 do begin
    bool1:=False;
    for j:=0 to (Length(ANumArr)-1)do if(i=ANumArr[j])then begin bool1:=True; break; end;
    if(bool1=False)then begin
      SetLength(TArr1,Length(TArr1)+1);
      TArr1[Length(TArr1)-1]:=StrMath.AssignNum(self.TVarArr[i]);

      SetLength(TArr3,Length(TArr3)+1);
      TArr3[Length(TArr3)-1]:=self.TVarMode[i];

      SetLength(TArr2,Length(TArr2)+1);
      TArr2[Length(TArr2)-1]:=self.TVarName[i];
    end;
  end;
  for i:=0 to (Length(self.TVarArr)-1)do SetLength(self.TVarArr[i],0);
  SetLength(self.TVarArr,Length(TArr1));
  SetLength(self.TVarMode,Length(TArr3));
  SetLength(self.TVarName,Length(TArr2));
  for i:=0 to (Length(TArr1)-1)do begin
    self.TVarArr[i]:=StrMath.AssignNum(TArr1[i]);
    self.TVarMode[i]:=TArr3[i];
    self.TVarName[i]:=TArr2[i];
  end;
  for i:=0 to (Length(TArr1)-1)do SetLength(TArr1[i],0);
  SetLength(TArr1,0);
  SetLength(TArr3,0);
  SetLength(TArr2,0);
end;

procedure CodeVariable.Var_SetVarDataType(const AIndex: Integer;
  const AMode: String);
begin
  if(AIndex<0)or(AIndex>(Length(self.TVarName)-1))then Exit;
  if(AMode.ToLower='number')then self.TVarMode[AIndex]:=1 else
  if(AMode.ToLower='string')then self.TVarMode[AIndex]:=2 else
  if(AMode.ToLower='integer')then self.TVarMode[AIndex]:=3 else
  if(AMode.ToLower='real')then self.TVarMode[AIndex]:=4;
end;

function CodeVariable.Var_GetVarDataType(const AIndex: Integer): String;
begin
  Result:='';
  if(AIndex<0)or(AIndex>(Length(self.TVarName)-1))then Exit;
  if(self.TVarMode[AIndex]=1)then Result:='number' else
  if(self.TVarMode[AIndex]=2)then Result:='string' else
  if(self.TVarMode[AIndex]=3)then Result:='integer' else
  if(self.TVarMode[AIndex]=4)then Result:='real';
end;

function CodeVariable.Var_AddVariable(const AVarName: String): Boolean;
var
  AIndex:Integer;
begin
  AIndex:=-1;
  Result:=self.isVarNameExist(AVarName,AIndex);
  if(Result=False)and(AIndex=-1)then begin
    SetLength(self.TVarArr,Length(self.TVarArr)+1);
    self.TVarArr[Length(self.TVarArr)-1]:=nil;

    SetLength(self.TVarMode,Length(self.TVarMode)+1);
    self.TVarMode[Length(self.TVarMode)-1]:=0;

    SetLength(self.TVarName,Length(self.TVarName)+1);
    self.TVarName[Length(self.TVarName)-1]:=AVarName;

    Result:=True;
  end else Result:=False;
end;

function CodeVariable.Var_AddVariable(const AVarName: String;
  const AValue: Number): Boolean;
var
  AIndex:Integer;
begin
  AIndex:=-1;
  Result:=self.isVarNameExist(AVarName,AIndex);
  if(Result=False)and(AIndex=-1)then begin
    SetLength(self.TVarArr,Length(self.TVarArr)+1);
    self.TVarArr[Length(self.TVarArr)-1]:=StrMath.AssignNum(AValue);

    SetLength(self.TVarMode,Length(self.TVarMode)+1);
    self.TVarMode[Length(self.TVarMode)-1]:=1;

    SetLength(self.TVarName,Length(self.TVarName)+1);
    self.TVarName[Length(self.TVarName)-1]:=AVarName;

    Result:=True;
  end else Result:=False;
end;

function CodeVariable.Var_AddVariableInt(const AVarName: String; AValue: Integer
  ): Boolean;
var
  AIndex:Integer;
begin
  AIndex:=-1;
  Result:=self.isVarNameExist(AVarName,AIndex);
  if(Result=False)and(AIndex=-1)then begin
    SetLength(self.TVarArr,Length(self.TVarArr)+1);
    self.TVarArr[Length(self.TVarArr)-1]:=ArrMath.IntToNumber(AValue);

    SetLength(self.TVarMode,Length(self.TVarMode)+1);
    self.TVarMode[Length(self.TVarMode)-1]:=3;

    SetLength(self.TVarName,Length(self.TVarName)+1);
    self.TVarName[Length(self.TVarName)-1]:=AVarName;

    Result:=True;
  end else Result:=False;
end;

function CodeVariable.Var_AddVariableReal(const AVarName: String; AValue: Real
  ): Boolean;
var
  AIndex:Integer;
begin
  AIndex:=-1;
  Result:=self.isVarNameExist(AVarName,AIndex);
  if(Result=False)and(AIndex=-1)then begin
    SetLength(self.TVarArr,Length(self.TVarArr)+1);
    self.TVarArr[Length(self.TVarArr)-1]:=ArrMath.RealToNumber(AValue);

    SetLength(self.TVarMode,Length(self.TVarMode)+1);
    self.TVarMode[Length(self.TVarMode)-1]:=4;

    SetLength(self.TVarName,Length(self.TVarName)+1);
    self.TVarName[Length(self.TVarName)-1]:=AVarName;

    Result:=True;
  end else Result:=False;
end;

function CodeVariable.Var_AddVariableStr(const AVarName: String; AValue: String
  ): Boolean;
var
  AIndex:Integer;
begin
  AIndex:=-1;
  Result:=self.isVarNameExist(AVarName,AIndex);
  if(Result=False)and(AIndex=-1)then begin
    SetLength(self.TVarArr,Length(self.TVarArr)+1);
    self.TVarArr[Length(self.TVarArr)-1]:=ArrMath.StrToNumber(AValue);

    SetLength(self.TVarMode,Length(self.TVarMode)+1);
    self.TVarMode[Length(self.TVarMode)-1]:=2;

    SetLength(self.TVarName,Length(self.TVarName)+1);
    self.TVarName[Length(self.TVarName)-1]:=AVarName;

    Result:=True;
  end else Result:=False;
end;

function CodeVariable.Var_ArrLength: Integer;
begin
  Result:=Length(self.TVarName);
end;

procedure CodeVariable.Var_SetValue(const AVarName: String; const AValue: Number
  );
var
  AIndex:Integer;
begin
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then begin
    self.TVarMode[AIndex]:=1;
    self.TVarArr[AIndex]:=StrMath.AssignNum(AValue);
  end;
end;

procedure CodeVariable.Var_SetValueInt(const AVarName: String; AValue: Integer);
var
  AIndex:Integer;
begin
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then begin
    self.TVarMode[AIndex]:=3;
    self.TVarArr[AIndex]:=ArrMath.IntToNumber(AValue);
  end;
end;

procedure CodeVariable.Var_SetValueReal(const AVarName: String; AValue: Real);
var
  AIndex:Integer;
begin
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then begin
    self.TVarMode[AIndex]:=4;
    self.TVarArr[AIndex]:=ArrMath.RealToNumber(AValue);
  end;
end;

procedure CodeVariable.Var_SetValueStr(const AVarName: String; AValue: String);
var
  AIndex:Integer;
begin
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then begin
    self.TVarMode[AIndex]:=2;
    self.TVarArr[AIndex]:=ArrMath.StrToNumber(AValue);
  end;
end;

procedure CodeVariable.Var_SetValue(const AIndex: Integer; const AValue: Number
  );
begin
  if(AIndex<0)or(AIndex>(Length(self.TVarArr)-1))then Exit;
  self.TVarMode[AIndex]:=1;
  self.TVarArr[AIndex]:=StrMath.AssignNum(AValue);
end;

procedure CodeVariable.Var_SetValueInt(const AIndex: Integer; AValue: Integer);
begin
  if(AIndex<0)or(AIndex>(Length(self.TVarArr)-1))then Exit;
  self.TVarMode[AIndex]:=3;
  self.TVarArr[AIndex]:=ArrMath.IntToNumber(AValue);
end;

procedure CodeVariable.Var_SetValueReal(const AIndex: Integer; AValue: Real);
begin
  if(AIndex<0)or(AIndex>(Length(self.TVarArr)-1))then Exit;
  self.TVarMode[AIndex]:=4;
  self.TVarArr[AIndex]:=ArrMath.RealToNumber(AValue);
end;

procedure CodeVariable.Var_SetValueStr(const AIndex: Integer; AValue: String);
begin
  if(AIndex<0)or(AIndex>(Length(self.TVarArr)-1))then Exit;
  self.TVarMode[AIndex]:=2;
  self.TVarArr[AIndex]:=ArrMath.StrToNumber(AValue);
end;

function CodeVariable.Var_GetVar(const AVarName: String): TPtrNumber;
var
  AIndex:Integer;
begin
  Result:=nil;
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then
    Result:=@self.TVarArr[AIndex];
end;

function CodeVariable.Var_GetVar(const AIndex: Integer): TPtrNumber;
begin
  Result:=nil;
  if(AIndex<0)or(AIndex>(Length(self.TVarArr)-1))then Exit;
  Result:=@self.TVarArr[AIndex];
end;

function CodeVariable.Var_GetValue(const AVarName: String): Number;
var
  AIndex:Integer;
begin
  Result:=nil;
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then
    Result:=StrMath.AssignNum(self.TVarArr[AIndex]);
end;

function CodeVariable.Var_GetValueInt(const AVarName: String): Integer;
var
  AIndex:Integer;
begin
  Result:=0;
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then
    Result:=ArrMath.NumberToInt(self.TVarArr[AIndex]);
end;

function CodeVariable.Var_GetValueReal(const AVarName: String): Real;
var
  AIndex:Integer;
begin
  Result:=0;
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then
    Result:=ArrMath.NumberToReal(self.TVarArr[AIndex]);
end;

function CodeVariable.Var_GetValueStr(const AVarName: String): String;
var
  AIndex:Integer;
begin
  Result:='';
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then
    Result:=ArrMath.NumberToStr(self.TVarArr[AIndex]);
end;

function CodeVariable.Var_GetValue(const AIndex: Integer): Number;
begin
  Result:=nil;
  if(AIndex<0)or(AIndex>(Length(self.TVarArr)-1))then Exit;
  Result:=StrMath.AssignNum(self.TVarArr[AIndex]);
end;

function CodeVariable.Var_GetValueInt(const AIndex: Integer): Integer;
begin
  Result:=0;
  if(AIndex<0)or(AIndex>(Length(self.TVarArr)-1))then Exit;
  Result:=ArrMath.NumberToInt(self.TVarArr[AIndex]);
end;

function CodeVariable.Var_GetValueReal(const AIndex: Integer): Real;
begin
  Result:=0;
  if(AIndex<0)or(AIndex>(Length(self.TVarArr)-1))then Exit;
  Result:=ArrMath.NumberToReal(self.TVarArr[AIndex]);
end;

function CodeVariable.Var_GetValueStr(const AIndex: Integer): String;
begin
  Result:='';
  if(AIndex<0)or(AIndex>(Length(self.TVarArr)-1))then Exit;
  Result:=ArrMath.NumberToStr(self.TVarArr[AIndex]);
end;

function CodeVariable.Var_GetValueInt_Index(const AVarName: String): Integer;
var
  AIndex:Integer;
begin
  Result:=-1;
  AIndex:=-1;
  if(self.isVarNameExist(AVarName,AIndex)=True)and(AIndex>-1)then Result:=AIndex;
end;

{ CodeProperties }

constructor CodeProperties.Create;
begin
  self.TCPoint:=CodePoint.Create;
  self.TPortArr:=CodeVariableArray.Create;
  self.TParaArr:=CodeVariable.Create;
  self.TVarArr:=CodeVariableArray.Create;
  self.TCodeArr:=CodeArray.Create;

  self.TCMemCapNum:=0;

  self.Property_CodePoint:=@self.TCPoint;
  self.Property_CodePorts:=@self.TPortArr;
  self.Property_CodeParams:=@self.TParaArr;
  self.Property_CodeVariable:=@self.TVarArr;
  self.Property_CodeArray:=@self.TCodeArr;

  self.TCodeArr.TCCodeProperties:=@self;
  self.TCLogs:=nil;
end;

constructor CodeProperties.Create(var ACodeProperties: CodeProperties);
begin
  self.TCPoint:=CodePoint.Create;
  self.TPortArr:=CodeVariableArray.Create;
  self.TParaArr:=CodeVariable.Create;
  self.TVarArr:=CodeVariableArray.Create;
  self.TCodeArr:=CodeArray.Create;

  self.TCMemCapNum:=0;

  self.Property_CodePoint:=@self.TCPoint;
  self.Property_CodePorts:=@self.TPortArr;
  self.Property_CodeParams:=@self.TParaArr;
  self.Property_CodeVariable:=@self.TVarArr;
  self.Property_CodeArray:=@self.TCodeArr;

  self.TCodeArr.TCCodeProperties:=@self;
  self.TCLogs:=nil;

  self.ChangeTo(ACodeProperties);
end;

destructor CodeProperties.Destroy;
begin
  inherited Destroy;

  self.TCLogs:=nil;

  self.Property_CodePoint:=nil;
  self.Property_CodePorts:=nil;
  self.Property_CodeParams:=nil;
  self.Property_CodeVariable:=nil;
  self.Property_CodeArray:=nil;

  self.TCPoint.Free;
  self.TPortArr.Free;
  self.TParaArr.Free;
  self.TVarArr.Free;
  self.TCodeArr.Free;

  self.TCMemCapNum:=0;
end;

procedure CodeProperties.ChangeTo(var ACodeProperties: CodeProperties);
begin
  self.TCPoint.ChangeTo(ACodeProperties.TCPoint);
  self.TPortArr.changeTo(ACodeProperties.TPortArr);
  self.TParaArr.changeTo(ACodeProperties.TParaArr);
  self.TVarArr.ChangeTo(ACodeProperties.TVarArr);
  self.TCodeArr.ChangeTo(ACodeProperties.TCodeArr);
  self.TCLogs:=ACodeProperties.TCLogs;

  self.TCodeArr.TCCodeProperties:=@self;
  self.TCodeArr.SetPtrCodeProperties;
end;

procedure CodeProperties.Property_ResetAll;
begin
  self.TVarArr.Vars_DeleteAllExceptFirst;

  self.TCPoint.Point_ResetAll;
  self.TParaArr.Var_ResetAll;

  self.TCPoint.Point_AddLast;
  self.TCPoint.Point_StartMem_AddLast;

  self.TCMemCapNum:=0;

  self.Property_CodePoint:=@self.TCPoint;
  self.Property_CodePorts:=@self.TPortArr;
  self.Property_CodeParams:=@self.TParaArr;
  self.Property_CodeVariable:=@self.TVarArr;
  self.Property_CodeArray:=@self.TCodeArr;

  self.TCodeArr.TCCodeProperties:=@self;
  self.TCodeArr.SetPtrCodeProperties;
end;

{ CodeBuild }

constructor CodeBuild.Create;
begin
  self.TCodeComponentBasic:=CodeComponentBasic.Create;
  self.TCodeComponent:=CodeComponent.Create(@self.TCodeComponentBasic);

  self.Build_Basic:=@self.TCodeComponentBasic;
  self.Build_Advance:=@self.TCodeComponent;
end;

constructor CodeBuild.Create(const APtrCodeProperties: PtrCodeProperties);
begin
  self.TCodeComponentBasic:=CodeComponentBasic.Create(APtrCodeProperties);
  self.TCodeComponent:=CodeComponent.Create(@self.TCodeComponentBasic);

  self.Build_Basic:=@self.TCodeComponentBasic;
  self.Build_Advance:=@self.TCodeComponent;
end;

constructor CodeBuild.Create(var ACodeBuild: CodeBuild);
begin
  self.TCodeComponentBasic:=CodeComponentBasic.Create;
  self.TCodeComponent:=CodeComponent.Create(@self.TCodeComponentBasic);

  self.Build_Basic:=@self.TCodeComponentBasic;
  self.Build_Advance:=@self.TCodeComponent;

  self.changeTo(ACodeBuild);
end;

destructor CodeBuild.Destroy;
begin
  inherited Destroy;

  self.Build_Basic:=nil;
  self.Build_Advance:=nil;

  self.TCodeComponentBasic.Free;
  self.TCodeComponent.Free;
end;

procedure CodeBuild.changeTo(var ACodeBuild: CodeBuild);
begin
  self.TCodeComponentBasic.changeTo(ACodeBuild.TCodeComponentBasic);
  self.TCodeComponent.changeTo(ACodeBuild.TCodeComponent);
end;

{ CodeArray }

procedure CodeArray.SetPtrCodeProperties;
var
  i:Integer;
begin
  for i:=0 to (Length(self.TCodeLn)-1)do self.TCodeLn[i].TCCodeProperties:=self.TCCodeProperties;
end;

constructor CodeArray.Create;
begin
  self.TCodeLn:=nil;
  self.TCCodeProperties:=nil;

  self.Lines:=@self.TCodeLn;
  self.Lines_AtLast:=nil;
end;

constructor CodeArray.Create(var ACodeArray: CodeArray);
begin
  self.TCodeLn:=nil;
  self.TCCodeProperties:=nil;

  self.Lines:=@self.TCodeLn;
  self.Lines_AtLast:=nil;

  self.ChangeTo(ACodeArray);
end;

destructor CodeArray.Destroy;
var
  i:Integer;
begin
  inherited Destroy;
  self.TCCodeProperties:=nil;

  self.Lines:=nil;
  self.Lines_AtLast:=nil;

  for i:=0 to (Length(self.TCodeLn)-1)do self.TCodeLn[i].Free;
  SetLength(self.TCodeLn,0);
end;

procedure CodeArray.ChangeTo(var ACodeArray: CodeArray);
var
  i:Integer;
begin
  for i:=0 to (Length(self.TCodeLn)-1)do self.TCodeLn[i].Free;
  SetLength(self.TCodeLn,Length(ACodeArray.TCodeLn));
  for i:=0 to (Length(self.TCodeLn)-1)do self.TCodeLn[i]:=CodeLine.Create(ACodeArray.TCodeLn[i]);

  self.Lines_AtLast:=@self.TCodeLn[Length(self.TCodeLn)-1];
end;

procedure CodeArray.Lines_CreateLast;
begin
  SetLength(self.TCodeLn,Length(self.TCodeLn)+1);
  self.TCodeLn[Length(self.TCodeLn)-1]:=CodeLine.Create;
  self.TCodeLn[Length(self.TCodeLn)-1].TCCodeProperties:=self.TCCodeProperties;

  self.Lines_AtLast:=@self.TCodeLn[Length(self.TCodeLn)-1];
end;

function CodeArray.Lines_ArrLength: Integer;
begin
  Result:=Length(self.TCodeLn);
end;

{ CodeLine }

function CodeLine.isVarNameValid(const VarName: String): Boolean;
var
  i:Integer;
begin
  Result:=False;
  for i:=1 to Length(VarName)do begin
    if(VarName[i]='')then Exit else
    if(VarName[i]='/')then Exit else
    if(VarName[i]='\')then Exit else
    if(VarName[i]='[')then Exit else
    if(VarName[i]=']')then Exit else
    if(VarName[i]='|')then Exit else
    if(VarName[i]='(')then Exit else
    if(VarName[i]=')')then Exit else
    if(VarName[i]='=')then Exit else
    if(VarName[i]=':')then Exit else
    if(VarName[i]=';')then Exit else
    if(VarName[i]='"')then Exit else
    if(VarName[i]='''')then Exit else
    if(VarName[i]='+')then Exit else
    if(VarName[i]='-')then Exit else
    if(VarName[i]='*')then Exit else
    if(VarName[i]='$')then Exit else
    if(VarName[i]='#')then Exit else
    if(VarName[i]='@')then Exit else
    if(VarName[i]='!')then Exit else
    if(VarName[i]='%')then Exit else
    if(VarName[i]='^')then Exit else
    if(VarName[i]='&')then Exit else
    if(VarName[i]='>')then Exit else
    if(VarName[i]='<')then Exit else
    if(VarName[i]='?')then Exit else
    if(VarName[i]='{')then Exit else
    if(VarName[i]='}')then Exit else
    if(VarName[i]='~')then Exit else
    if(VarName[i]='`')then Exit else
    if(VarName[i]=',')then Exit;
  end;
  Result:=True;
end;

function CodeLine.GetAnd(num1, num2: Number): Number;
var
  TBPosMin,TBPosMax:TBitPos;
  bool1,bool2:Boolean;
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);ByteA[Length(ByteA)-1]:=0;
  if(Length(num1)=0)and(Length(num2)=0)then begin
    Result:=StrMath.AssignNum(ByteA);
    SetLength(ByteA,0);
    Exit;
  end;
  if(Length(num1)>Length(num2))then SetLength(num2,Length(num1)) else
  if(Length(num1)<Length(num2))then SetLength(num1,Length(num2));
  SetLength(ByteA,Length(num1));

  bool1:=False;
  bool2:=False;
  ArrMath.SetBitPosZero(TBPosMin);
  ArrMath.SetBitPosZero(TBPosMax);
  ArrMath.GetLastBit(TBPosMax,ByteA);
  if(TBPosMax.ByteAtBaseZero=0)and(TBPosMax.BitAtBaseZero=0)then ArrMath.SetBitPos(TBPosMax,Length(ByteA)-1,7);
  while(ArrMath.IsBitPosEqual(TBPosMin,TBPosMax)=False)do begin
    bool1:=ArrMath.IsBitPosSet(TBPosMin,num1);
    bool2:=ArrMath.IsBitPosSet(TBPosMin,num2);
    if(bool1=True)and(bool2=True)then ArrMath.BitPosAddSetArr(TBPosMin,ByteA);
    ArrMath.IncBitPos(TBPosMin);
  end;
  bool1:=ArrMath.IsBitPosSet(TBPosMin,num1);
  bool2:=ArrMath.IsBitPosSet(TBPosMin,num2);
  if(bool1=True)and(bool2=True)then ArrMath.BitPosAddSetArr(TBPosMin,ByteA);
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetOr(num1, num2: Number): Number;
var
  TBPosMin,TBPosMax:TBitPos;
  bool1,bool2:Boolean;
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);ByteA[Length(ByteA)-1]:=0;
  if(Length(num1)=0)and(Length(num2)=0)then begin
    Result:=StrMath.AssignNum(ByteA);
    SetLength(ByteA,0);
    Exit;
  end;
  if(Length(num1)>Length(num2))then SetLength(num2,Length(num1)) else
  if(Length(num1)<Length(num2))then SetLength(num1,Length(num2));
  SetLength(ByteA,Length(num1));

  bool1:=False;
  bool2:=False;
  ArrMath.SetBitPosZero(TBPosMin);
  ArrMath.SetBitPosZero(TBPosMax);
  ArrMath.GetLastBit(TBPosMax,ByteA);
  if(TBPosMax.ByteAtBaseZero=0)and(TBPosMax.BitAtBaseZero=0)then ArrMath.SetBitPos(TBPosMax,Length(ByteA)-1,7);
  while(ArrMath.IsBitPosEqual(TBPosMin,TBPosMax)=False)do begin
    bool1:=ArrMath.IsBitPosSet(TBPosMin,num1);
    bool2:=ArrMath.IsBitPosSet(TBPosMin,num2);
    if(bool1=True)or(bool2=True)then ArrMath.BitPosAddSetArr(TBPosMin,ByteA);
    ArrMath.IncBitPos(TBPosMin);
  end;
  bool1:=ArrMath.IsBitPosSet(TBPosMin,num1);
  bool2:=ArrMath.IsBitPosSet(TBPosMin,num2);
  if(bool1=True)or(bool2=True)then ArrMath.BitPosAddSetArr(TBPosMin,ByteA);
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetNot(const num1: Number): Number;
var
  TBPosMin,TBPosMax:TBitPos;
  bool1:Boolean;
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);ByteA[Length(ByteA)-1]:=0;
  if(Length(num1)=0)then begin
    Result:=StrMath.AssignNum(ByteA);
    SetLength(ByteA,0);
    Exit;
  end;
  SetLength(ByteA,Length(num1));

  bool1:=False;
  ArrMath.SetBitPosZero(TBPosMin);
  ArrMath.SetBitPosZero(TBPosMax);
  ArrMath.GetLastBit(TBPosMax,ByteA);
  if(TBPosMax.ByteAtBaseZero=0)and(TBPosMax.BitAtBaseZero=0)then ArrMath.SetBitPos(TBPosMax,Length(ByteA)-1,7);
  while(ArrMath.IsBitPosEqual(TBPosMin,TBPosMax)=False)do begin
    bool1:=ArrMath.IsBitPosSet(TBPosMin,num1);
    if(bool1=False)then ArrMath.BitPosAddSetArr(TBPosMin,ByteA);
    ArrMath.IncBitPos(TBPosMin);
  end;
  bool1:=ArrMath.IsBitPosSet(TBPosMin,num1);
  if(bool1=False)then ArrMath.BitPosAddSetArr(TBPosMin,ByteA);
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetXOR(const num1, num2: Number): Number;
var
  N1,N2,N3,N4:Number;
begin
  N1:=nil;
  N2:=nil;
  N3:=nil;
  N4:=nil;
  Result:=nil;
  N1:=StrMath.AssignNum(self.GetNot(num1));
  N2:=StrMath.AssignNum(self.GetAnd(N1,num2));
  N3:=StrMath.AssignNum(self.GetNot(num2));
  N4:=StrMath.AssignNum(self.GetAnd(num1,N3));
  Result:=StrMath.AssignNum(self.GetOr(N4,N2));
  SetLength(N1,0);
  SetLength(N2,0);
  SetLength(N3,0);
  SetLength(N4,0);
end;

function CodeLine.GetEqual(num1, num2: Number): Number;
var
  i:Integer;
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);ByteA[Length(ByteA)-1]:=0;
  if(Length(num1)=0)and(Length(num2)=0)then begin
    Result:=StrMath.AssignNum(ByteA);
    SetLength(ByteA,0);
    Exit;
  end;
  if(Length(num1)>Length(num2))then SetLength(num2,Length(num1)) else
  if(Length(num1)<Length(num2))then SetLength(num1,Length(num2));

  for i:=0 to (Length(num1)-1)do if(num1[i]<>num2[i])then begin
    Result:=StrMath.AssignNum(ByteA);
    SetLength(ByteA,0);
    Exit;
  end;
  ByteA[Length(ByteA)-1]:=1;
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetEqual(const num1, num2: Real): Number;
var
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);ByteA[Length(ByteA)-1]:=0;
  if(num1=num2)then ByteA[Length(ByteA)-1]:=1;
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetNotEqual(const num1, num2: Number): Number;
begin
  Result:=StrMath.AssignNum(self.GetEqual(num1,num2));
  if(Result[0]=1)then Result[0]:=0 else Result[0]:=1;
end;

function CodeLine.GetNotEqual(const num1, num2: Real): Number;
var
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);ByteA[Length(ByteA)-1]:=0;
  if(num1<>num2)then ByteA[Length(ByteA)-1]:=1;
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetIf(const num1: Number): Number;
var
  i:Integer;
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);ByteA[Length(ByteA)-1]:=0;
  if(Length(num1)=0)then begin
    Result:=StrMath.AssignNum(ByteA);
    SetLength(ByteA,0);
    Exit;
  end;

  for i:=0 to (Length(num1)-1)do
    if(num1[i]>0)then begin
      ByteA[Length(ByteA)-1]:=1;
      Break;
    end;

  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetGreaterThan(const num1, num2: Real): Number;
var
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);
  ByteA[Length(ByteA)-1]:=0;
  if(num1>num2)then ByteA[Length(ByteA)-1]:=1;
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetGreaterThanOrEqualTo(const num1, num2: Real
  ): Number;
var
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);
  ByteA[Length(ByteA)-1]:=0;
  if(num1>=num2)then ByteA[Length(ByteA)-1]:=1;
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetLessThan(const num1, num2: Real): Number;
var
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);
  ByteA[Length(ByteA)-1]:=0;
  if(num1<num2)then ByteA[Length(ByteA)-1]:=1;
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

function CodeLine.GetLessThanOrEqualTo(const num1, num2: Real
  ): Number;
var
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,Length(ByteA)+1);
  ByteA[Length(ByteA)-1]:=0;
  if(num1<=num2)then ByteA[Length(ByteA)-1]:=1;
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

procedure CodeLine.DebugPoint_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1:Integer;
begin
  num1:=1;
  num1:=num1+1;
end;

procedure CodeLine.DebugPointCoreAt_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  numValue:Integer;
  num1:Integer;
begin
  numValue:=ArrMath.NumberToInt(AParamArr[0]);
  num1:=0;
  if(ATCCodeProperties^.TCMemCapNum=numValue)then begin
    num1:=num1+1;
    num1:=num1+1;
    num1:=num1+1;
  end;
  num1:=0;
end;

procedure CodeLine.DebugPointIf_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str:String;
  num1AIndex:Integer;
  num1V:Number;
  numValue:Number;

  num1:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  numValue:=StrMath.AssignNum(AParamArr[1]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(num1AIndex);

  num1:=0;
  if(self.GetEqual(num1V,numValue)[0]=1)then begin
    num1:=num1+1;
    num1:=num1+1;
    num1:=num1+1;
  end;
  num1:=0;

end;

procedure CodeLine.DebugPointIf_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str:String;
  num1AIndex:Integer;
  num1V:Integer;
  numValue:Integer;

  num1:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  numValue:=ArrMath.NumberToInt(AParamArr[1]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);

  num1:=0;
  if(num1V=numValue)then begin
    num1:=num1+1;
    num1:=num1+1;
    num1:=num1+1;
  end;
  num1:=0;

end;

procedure CodeLine.DebugPointIf_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str:String;
  num1AIndex:Integer;
  num1V:Real;
  numValue:Real;

  num1:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  numValue:=ArrMath.NumberToReal(AParamArr[1]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);

  num1:=0;
  if(num1V=numValue)then begin
    num1:=num1+1;
    num1:=num1+1;
    num1:=num1+1;
  end;
  num1:=0;

end;

procedure CodeLine.DebugPointIf_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str:String;
  num1AIndex:Integer;
  num1V:String;
  numValue:String;

  num1:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  numValue:=ArrMath.NumberToStr(AParamArr[1]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(num1AIndex);

  num1:=0;
  if(num1V=numValue)then begin
    num1:=num1+1;
    num1:=num1+1;
    num1:=num1+1;
  end;
  num1:=0;

end;

procedure CodeLine.SumSubInteger_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  num1V,num2V:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
  num2V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultAIndex,num1V+num2V);
end;

procedure CodeLine.MulDivInteger_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr,isMulStr:String;
  num1AIndex,num2AIndex,ResultAIndex,isMulAIndex:Integer;
  num1V,num2V,isMulV:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);
  isMulStr:=ArrMath.NumberToStr(AParamArr[3]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);
  isMulAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(isMulStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end else
  if(isMulAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+isMulStr+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
  num2V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
  isMulV:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(isMulAIndex);

  if(isMulV>0)then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultAIndex,num1V*num2V)
  else ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultAIndex,ArrMath.RR(num1V/num2V));
end;

procedure CodeLine.SumInteger_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  num1V,num2V:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
  num2V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultAIndex,num1V+num2V);
end;

procedure CodeLine.SubInteger_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  num1V,num2V:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
  num2V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultAIndex,num1V-num2V);
end;

procedure CodeLine.MulInteger_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  num1V,num2V:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
  num2V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultAIndex,num1V*num2V);
end;

procedure CodeLine.DivInteger_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  num1V,num2V:Integer;
begin
  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  num1V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
  num2V:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultAIndex,ArrMath.RR(num1V/num2V));
end;

procedure CodeLine.SumSubReal_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
    AReal1:=AInt1+0.0;
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(ResultAIndex,AReal1+AReal2);
end;

procedure CodeLine.MulDivReal_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr,isMulStr:String;
  num1AIndex,num2AIndex,ResultAIndex,isMulAIndex:Integer;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
  isMulV:Integer;
begin
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);
  isMulStr:=ArrMath.NumberToStr(AParamArr[3]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);
  isMulAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(isMulStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end else
  if(isMulAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+isMulStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
    AReal1:=AInt1+0.0;
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end;

  isMulV:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(isMulAIndex);

  if(isMulV>0)then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(ResultAIndex,AReal1*AReal2)
  else ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(ResultAIndex,AReal1/AReal2);
end;

procedure CodeLine.SumReal_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
    AReal1:=AInt1+0.0;
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(ResultAIndex,AReal1+AReal2);
end;

procedure CodeLine.SubReal_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
    AReal1:=AInt1+0.0;
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(ResultAIndex,AReal1-AReal2);
end;

procedure CodeLine.MulReal_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
    AReal1:=AInt1+0.0;
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(ResultAIndex,AReal1*AReal2);
end;

procedure CodeLine.DivReal_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  num1Str,num2Str,ResultStr:String;
  num1AIndex,num2AIndex,ResultAIndex:Integer;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  num1Str:=ArrMath.NumberToStr(AParamArr[0]);
  num2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[2]);

  num1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num1Str);
  num2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(num2Str);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(num1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num1Str+'" does not Exists');
    Exit;
  end else
  if(num2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+num2Str+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(num2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal2:=AInt2+0.0;
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
    AReal1:=AInt1+0.0;
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(num2AIndex);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(num2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(ResultAIndex,AReal1/AReal2);
end;

procedure CodeLine.ArrayIndexGet_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  ArrayStr,IndexStr,ResultVarStr:String;
  ArrayAIndex,IndexAIndex,ResultVarAIndex:Integer;
  Anum1,Anum3:Number;
  Anum2:Integer;
begin
  Anum1:=nil;
  Anum2:=0;
  Anum3:=nil;

  ArrayStr:=ArrMath.NumberToStr(AParamArr[0]);
  IndexStr:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  ArrayAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ArrayStr);
  IndexAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(IndexStr);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(ArrayAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ArrayStr+'" does not Exists');
    Exit;
  end else
  if(IndexAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+IndexStr+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(ArrayAIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(IndexAIndex);

  SetLength(Anum3,SizeOf(Anum1[Anum2]));
  Move(Anum1[Anum2],Anum3[0],SizeOf(Anum1[Anum2]));

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum1,0);
  SetLength(Anum3,0);
end;

procedure CodeLine.ArrayIndexSet_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  ArrayStr,IndexStr,ValueVarStr:String;
  ArrayAIndex,IndexAIndex,ValueVarAIndex:Integer;
  Anum1:TPtrNumber;
  Anum3:Number;
  Anum2:Integer;
begin
  Anum1:=nil;
  Anum2:=0;
  Anum3:=nil;

  ArrayStr:=ArrMath.NumberToStr(AParamArr[0]);
  IndexStr:=ArrMath.NumberToStr(AParamArr[1]);
  ValueVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  ArrayAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ArrayStr);
  IndexAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(IndexStr);
  ValueVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ValueVarStr);

  if(ArrayAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ArrayStr+'" does not Exists');
    Exit;
  end else
  if(IndexAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+IndexStr+'" does not Exists');
    Exit;
  end else
  if(ValueVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ValueVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVar(ArrayAIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(IndexAIndex);
  Anum3:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(ValueVarAIndex);

  SetLength(Anum3,SizeOf(Anum1^[Anum2]));
  Move(Anum3[0],Anum1^[Anum2],SizeOf(Anum3));

  Anum1:=nil;
  SetLength(Anum3,0);
end;

procedure CodeLine.StrIndexGet_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  StrStr,IndexStr,ResultVarStr:String;
  StrAIndex,IndexAIndex,ResultVarAIndex:Integer;
  Anum1:String;
  Anum3:String;
  Anum2:Integer;
begin
  Anum1:='';
  Anum2:=0;
  Anum3:='';

  StrStr:=ArrMath.NumberToStr(AParamArr[0]);
  IndexStr:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  StrAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(StrStr);
  IndexAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(IndexStr);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(StrAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+StrStr+'" does not Exists');
    Exit;
  end else
  if(IndexAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+IndexStr+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(StrAIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(IndexAIndex);

  if(Anum2<1)or(Anum2>Length(Anum1))then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: func StrIndexGet() Index is out of bound');
    Exit;
  end;
  Anum3:=Anum1[Anum2];

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(ResultVarAIndex,Anum3);
end;

procedure CodeLine.StrIndexSet_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  StrStr,IndexStr,ValueVarStr:String;
  StrAIndex,IndexAIndex,ValueVarAIndex:Integer;
  Anum1:String;
  Anum3:Number;
  Anum2:Integer;
begin
  Anum1:='';
  Anum2:=0;
  Anum3:=nil;

  StrStr:=ArrMath.NumberToStr(AParamArr[0]);
  IndexStr:=ArrMath.NumberToStr(AParamArr[1]);
  ValueVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  StrAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(StrStr);
  IndexAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(IndexStr);
  ValueVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ValueVarStr);

  if(StrAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+StrStr+'" does not Exists');
    Exit;
  end else
  if(IndexAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+IndexStr+'" does not Exists');
    Exit;
  end else
  if(ValueVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ValueVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(StrAIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(IndexAIndex);
  Anum3:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(ValueVarAIndex);

  if(Anum2<1)or(Anum2>Length(Anum1))then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: func StrIndexSet() Index is out of bound');
    Exit;
  end;
  SetLength(Anum3,1);
  Anum1[Anum2]:=Char(Anum3[0]);

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(StrAIndex,Anum1);

  SetLength(Anum3,0);
end;

procedure CodeLine.SetLength_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  ArrayVarStr,ArrayLengthVarStr:String;
  ArrayAIndex,ArrayLengthVarAIndex:Integer;
  ArrayLengthVarV:Integer;
  PtrNum:TPtrNumber;
begin
  PtrNum:=nil;

  ArrayVarStr:=ArrMath.NumberToStr(AParamArr[0]);
  ArrayLengthVarStr:=ArrMath.NumberToStr(AParamArr[1]);

  ArrayAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ArrayVarStr);
  ArrayLengthVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ArrayLengthVarStr);

  if(ArrayAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ArrayVarStr+'" does not Exists');
    Exit;
  end else
  if(ArrayLengthVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ArrayLengthVarStr+'" does not Exists');
    Exit;
  end;

  ArrayLengthVarV:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(ArrayLengthVarAIndex);

  PtrNum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVar(ArrayAIndex);
  SetLength(PtrNum^,ArrayLengthVarV);
  PtrNum:=nil;
end;

procedure CodeLine.Length_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  ArrayVarStr,ResultStr:String;
  ArrayVarAIndex,ResultAIndex:Integer;
  ResultV:Integer;
  PtrNum:TPtrNumber;
begin
  PtrNum:=nil;

  ArrayVarStr:=ArrMath.NumberToStr(AParamArr[0]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[1]);

  ArrayVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ArrayVarStr);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(ArrayVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ArrayVarStr+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  PtrNum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVar(ArrayVarAIndex);
  ResultV:=Length(PtrNum^);

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultAIndex,ResultV);
  PtrNum:=nil;
end;

procedure CodeLine.StrLength_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  StrVarStr,ResultStr:String;
  StrVarAIndex,ResultAIndex:Integer;
  ResultV:Integer;
  StrA:String;
begin
  StrA:='';

  StrVarStr:=ArrMath.NumberToStr(AParamArr[0]);
  ResultStr:=ArrMath.NumberToStr(AParamArr[1]);

  StrVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(StrVarStr);
  ResultAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStr);

  if(StrVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+StrVarStr+'" does not Exists');
    Exit;
  end else
  if(ResultAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStr+'" does not Exists');
    Exit;
  end;

  StrA:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(StrVarAIndex);
  ResultV:=Length(StrA);

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultAIndex,ResultV);
  StrA:='';
end;

procedure CodeLine.JumpTo_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  JumpToStr:String;
  JumpToAIndex:Integer;
  JumpToV:Integer;
begin
  JumpToStr:=ArrMath.NumberToStr(AParamArr[0]);

  JumpToAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(JumpToStr);

  if(JumpToAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+JumpToStr+'" does not Exists');
    Exit;
  end;

  JumpToV:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(JumpToAIndex);

  ATCCodeProperties^.Property_CodePoint^.Point_SetPoint(JumpToV);
end;

procedure CodeLine.JumpTo_Address_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  JumpToInt:Integer;
begin
  JumpToInt:=ArrMath.NumberToInt(AParamArr[0])-1;

  if(JumpToInt<0)or(JumpToInt>(ATCCodeProperties^.Property_CodeArray^.Lines_ArrLength-1))then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: JumpTo Address is out of bound');
    Exit;
  end;

  ATCCodeProperties^.Property_CodePoint^.Point_SetPoint(JumpToInt);
end;

procedure CodeLine.Goto_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  GotoStr:String;
  GotoAIndex:Integer;
  GotoV:Integer;
begin
  GotoStr:=ArrMath.NumberToStr(AParamArr[0]);

  GotoAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(GotoStr);

  if(GotoAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+GotoStr+'" does not Exists');
    Exit;
  end;

  GotoV:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(GotoAIndex);

  ATCCodeProperties^.Property_CodePoint^.Point_AddLast(GotoV);
end;

procedure CodeLine.Goto_Address_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  GotoInt:Integer;
begin
  GotoInt:=ArrMath.NumberToInt(AParamArr[0])-1;

  if(GotoInt<0)or(GotoInt>(ATCCodeProperties^.Property_CodeArray^.Lines_ArrLength-1))then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Goto Address is out of bound');
    Exit;
  end;

  ATCCodeProperties^.Property_CodePoint^.Point_AddLast(GotoInt);
end;

procedure CodeLine.Exit_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
begin
  ATCCodeProperties^.Property_CodePoint^.Point_DeleteLast;
end;

procedure CodeLine.MoveV2ToV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);

  VarName1Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end;

  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveV2ToV1_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=StrMath.AssignNum(AParamArr[1]);

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToV1_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=ArrMath.NumberToInt(AParamArr[1]);

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToV1_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=ArrMath.NumberToReal(AParamArr[1]);

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToV1_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=ArrMath.NumberToStr(AParamArr[1]);

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:='$GV1';
  VarName2Str:=ArrMath.NumberToStr(AParamArr[0]);

  VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName1Str);
    VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end;

  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeParams^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveGV1ToV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:='$GV1';

  VarName1Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName2Str);
    VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);
  end;

  AMode:=ATCCodeProperties^.Property_CodeParams^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeParams^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveV2ToGV1_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:='$GV1';
  AValue:=StrMath.AssignNum(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValue(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV1_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:='$GV1';
  AValue:=ArrMath.NumberToInt(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV1_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:='$GV1';
  AValue:=ArrMath.NumberToReal(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV1_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:='$GV1';
  AValue:=ArrMath.NumberToStr(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:='$GV2';
  VarName2Str:=ArrMath.NumberToStr(AParamArr[0]);

  VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName1Str);
    VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end;

  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeParams^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveGV2ToV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:='$GV2';

  VarName1Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName2Str);
    VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);
  end;

  AMode:=ATCCodeProperties^.Property_CodeParams^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeParams^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveV2ToGV2_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:='$GV2';
  AValue:=StrMath.AssignNum(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValue(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV2_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:='$GV2';
  AValue:=ArrMath.NumberToInt(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV2_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:='$GV2';
  AValue:=ArrMath.NumberToReal(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV2_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:='$GV2';
  AValue:=ArrMath.NumberToStr(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV3_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:='$GV3';
  VarName2Str:=ArrMath.NumberToStr(AParamArr[0]);

  VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName1Str);
    VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end;

  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeParams^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveGV3ToV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:='$GV3';

  VarName1Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName2Str);
    VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);
  end;

  AMode:=ATCCodeProperties^.Property_CodeParams^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeParams^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveV2ToGV3_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:='$GV3';
  AValue:=StrMath.AssignNum(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValue(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV3_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:='$GV3';
  AValue:=ArrMath.NumberToInt(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV3_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:='$GV3';
  AValue:=ArrMath.NumberToReal(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV3_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:='$GV3';
  AValue:=ArrMath.NumberToStr(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV4_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:='$GV4';
  VarName2Str:=ArrMath.NumberToStr(AParamArr[0]);

  VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName1Str);
    VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end;

  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeParams^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveGV4ToV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:='$GV4';

  VarName1Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName2Str);
    VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);
  end;

  AMode:=ATCCodeProperties^.Property_CodeParams^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeParams^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveV2ToGV4_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:='$GV4';
  AValue:=StrMath.AssignNum(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValue(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV4_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:='$GV4';
  AValue:=ArrMath.NumberToInt(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV4_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:='$GV4';
  AValue:=ArrMath.NumberToReal(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV4_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:='$GV4';
  AValue:=ArrMath.NumberToStr(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV5_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:='$GV5';
  VarName2Str:=ArrMath.NumberToStr(AParamArr[0]);

  VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName1Str);
    VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end;

  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeParams^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveGV5ToV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:='$GV5';

  VarName1Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName2Str);
    VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);
  end;

  AMode:=ATCCodeProperties^.Property_CodeParams^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeParams^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveV2ToGV5_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:='$GV5';
  AValue:=StrMath.AssignNum(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValue(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV5_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:='$GV5';
  AValue:=ArrMath.NumberToInt(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV5_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:='$GV5';
  AValue:=ArrMath.NumberToReal(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV5_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:='$GV5';
  AValue:=ArrMath.NumberToStr(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV6_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:='$GV6';
  VarName2Str:=ArrMath.NumberToStr(AParamArr[0]);

  VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName1Str);
    VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end;

  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeParams^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveGV6ToV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:='$GV6';

  VarName1Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName2Str);
    VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);
  end;

  AMode:=ATCCodeProperties^.Property_CodeParams^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeParams^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveV2ToGV6_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:='$GV6';
  AValue:=StrMath.AssignNum(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValue(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV6_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:='$GV6';
  AValue:=ArrMath.NumberToInt(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV6_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:='$GV6';
  AValue:=ArrMath.NumberToReal(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV6_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:='$GV6';
  AValue:=ArrMath.NumberToStr(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV7_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:='$GV7';
  VarName2Str:=ArrMath.NumberToStr(AParamArr[0]);

  VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName1Str);
    VarName1Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName1Str);
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end;

  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeParams^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveGV7ToV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str:String;
  VarName1Index,VarName2Index:Integer;
  Anum:Number;
  AStr:String;
  AInt:Integer;
  AReal:Real;
  AMode:String;
begin
  Anum:=nil;
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:='$GV7';

  VarName1Index:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);

  if(VarName1Index=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end;
  if(VarName2Index=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarName2Str);
    VarName2Index:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarName2Str);
  end;

  AMode:=ATCCodeProperties^.Property_CodeParams^.Var_GetVarDataType(VarName2Index);

  if(AMode='number')then Anum:=ATCCodeProperties^.Property_CodeParams^.Var_GetValue(VarName2Index) else
  if(AMode='string')then AStr:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueStr(VarName2Index) else
  if(AMode='integer')then AInt:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt(VarName2Index) else
  if(AMode='real')then AReal:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueReal(VarName2Index);

  if(AMode='number')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarName1Index,Anum) else
  if(AMode='string')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarName1Index,AStr) else
  if(AMode='integer')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarName1Index,AInt) else
  if(AMode='real')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarName1Index,AReal);

  SetLength(Anum,0);
  AStr:='';
  AInt:=0;
  AReal:=0.0;
  AMode:='';
end;

procedure CodeLine.MoveV2ToGV7_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:='$GV7';
  AValue:=StrMath.AssignNum(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValue(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV7_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:='$GV7';
  AValue:=ArrMath.NumberToInt(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueInt(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV7_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:='$GV7';
  AValue:=ArrMath.NumberToReal(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueReal(AIndex,AValue);
end;

procedure CodeLine.MoveV2ToGV7_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:='$GV7';
  AValue:=ArrMath.NumberToStr(AParamArr[0]);

  AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.Property_CodeParams^.Var_AddVariable(VarNameStr);
    AIndex:=ATCCodeProperties^.Property_CodeParams^.Var_GetValueInt_Index(VarNameStr);
  end;

  ATCCodeProperties^.Property_CodeParams^.Var_SetValueStr(AIndex,AValue);
end;

procedure CodeLine.V1AndV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum1,Anum2,Anum3:Number;
begin
  Anum1:=nil;
  Anum2:=nil;
  Anum3:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2AIndex);
  Anum3:=self.GetAnd(Anum1,Anum2);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum1,0);
  SetLength(Anum2,0);
  SetLength(Anum3,0);
end;

procedure CodeLine.V1OrV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum1,Anum2,Anum3:Number;
begin
  Anum1:=nil;
  Anum2:=nil;
  Anum3:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2AIndex);
  Anum3:=self.GetOr(Anum1,Anum2);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum1,0);
  SetLength(Anum2,0);
  SetLength(Anum3,0);
end;

procedure CodeLine.NotV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,ResultVarStr:String;
  VarName1AIndex,ResultVarAIndex:Integer;
  Anum1,Anum3:Number;
begin
  Anum1:=nil;
  Anum3:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[1]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  Anum3:=self.GetNot(Anum1);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum1,0);
  SetLength(Anum3,0);
end;

procedure CodeLine.V1XORV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum1,Anum2,Anum3:Number;
begin
  Anum1:=nil;
  Anum2:=nil;
  Anum3:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2AIndex);
  Anum3:=self.GetXOR(Anum1,Anum2);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum1,0);
  SetLength(Anum2,0);
  SetLength(Anum3,0);
end;

procedure CodeLine.V1SHLV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum1,Anum2,Anum3:Integer;
begin
  Anum1:=0;
  Anum2:=0;
  Anum3:=0;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
  Anum3:=(Anum1 SHL Anum2);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultVarAIndex,Anum3);
end;

procedure CodeLine.V1SHRV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum1,Anum2,Anum3:Integer;
begin
  Anum1:=0;
  Anum2:=0;
  Anum3:=0;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
  Anum3:=(Anum1 SHR Anum2);
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(ResultVarAIndex,Anum3);
end;

procedure CodeLine.V1EqV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum1,Anum2,Anum3:Number;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  Anum1:=nil;
  Anum2:=nil;
  Anum3:=nil;
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    Anum3:=self.GetEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode1='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else begin
    Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
    Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2AIndex);
    Anum3:=self.GetEqual(Anum1,Anum2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end;

  SetLength(Anum1,0);
  SetLength(Anum2,0);
  SetLength(Anum3,0);
end;

procedure CodeLine.V1NotEqV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum1,Anum2,Anum3:Number;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  Anum1:=nil;
  Anum2:=nil;
  Anum3:=nil;
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetNotEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetNotEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetNotEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    Anum3:=self.GetNotEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode1='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetNotEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else
  if(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetNotEqual(AReal1,AReal2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end else begin
    Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
    Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2AIndex);
    Anum3:=self.GetNotEqual(Anum1,Anum2);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);
  end;

  SetLength(Anum1,0);
  SetLength(Anum2,0);
  SetLength(Anum3,0);
end;

procedure CodeLine.V1GTV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum3:Number;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  Anum3:=nil;
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetGreaterThan(AReal1,AReal2);
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetGreaterThan(AReal1,AReal2);
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetGreaterThan(AReal1,AReal2);
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    Anum3:=self.GetGreaterThan(AReal1,AReal2);
  end else
  if(AMode1='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetGreaterThan(AReal1,AReal2);
  end else
  if(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetGreaterThan(AReal1,AReal2);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetGreaterThan(AReal1,AReal2);
  end;
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum3,0);
end;

procedure CodeLine.V1GTEqV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum3:Number;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  Anum3:=nil;
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetGreaterThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetGreaterThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetGreaterThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    Anum3:=self.GetGreaterThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode1='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetGreaterThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetGreaterThanOrEqualTo(AReal1,AReal2);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetGreaterThanOrEqualTo(AReal1,AReal2);
  end;
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum3,0);
end;

procedure CodeLine.V1LTV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum3:Number;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  Anum3:=nil;
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetLessThan(AReal1,AReal2);
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetLessThan(AReal1,AReal2);
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetLessThan(AReal1,AReal2);
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    Anum3:=self.GetLessThan(AReal1,AReal2);
  end else
  if(AMode1='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetLessThan(AReal1,AReal2);
  end else
  if(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetLessThan(AReal1,AReal2);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetLessThan(AReal1,AReal2);
  end;
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum3,0);
end;

procedure CodeLine.V1LTEqV2_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum3:Number;
  AInt1,AInt2:Integer;
  AReal1,AReal2:Real;
  AMode1,AMode2:String;
begin
  Anum3:=nil;
  AInt1:=0;
  AInt2:=0;
  AReal1:=0.0;
  AReal2:=0.0;
  AMode1:='';
  AMode2:='';

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  AMode1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName1AIndex);
  AMode2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(VarName2AIndex);

  if(AMode1='integer')and(AMode2='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetLessThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode1='real')and(AMode2='integer')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetLessThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode1='integer')and(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetLessThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode1='real')and(AMode2='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    Anum3:=self.GetLessThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode1='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal2:=AInt2+0.0;
    Anum3:=self.GetLessThanOrEqualTo(AReal1,AReal2);
  end else
  if(AMode2='real')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AReal2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarName2AIndex);
    AReal1:=AInt1+0.0;
    Anum3:=self.GetLessThanOrEqualTo(AReal1,AReal2);
  end else begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName1AIndex);
    AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarName2AIndex);
    AReal1:=AInt1+0.0;
    AReal2:=AInt2+0.0;
    Anum3:=self.GetLessThanOrEqualTo(AReal1,AReal2);
  end;
  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum3,0);
end;

procedure CodeLine.CombineV2ToV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,VarName2Str,ResultVarStr:String;
  VarName1AIndex,VarName2AIndex,ResultVarAIndex:Integer;
  Anum1,Anum2,Anum3:Number;
  AMode:String;
  i:Integer;
begin
  Anum1:=nil;
  Anum2:=nil;
  Anum3:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  VarName2Str:=ArrMath.NumberToStr(AParamArr[1]);
  ResultVarStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  VarName2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName2Str);
  ResultVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultVarStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(VarName2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName2Str+'" does not Exists');
    Exit;
  end else
  if(ResultVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultVarStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName2AIndex);
  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(ResultVarAIndex);

  for i:=0 to (Length(Anum1)-1)do begin
    SetLength(Anum3,Length(Anum3)+1);
    Anum3[Length(Anum3)-1]:=Anum1[i];
  end;

  for i:=0 to (Length(Anum2)-1)do begin
    SetLength(Anum3,Length(Anum3)+1);
    Anum3[Length(Anum3)-1]:=Anum2[i];
  end;

  if(AMode='string')then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(ResultVarAIndex,ArrMath.NumberToStr(Anum3))
  else ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(ResultVarAIndex,Anum3);

  SetLength(Anum1,0);
  SetLength(Anum2,0);
  SetLength(Anum3,0);
end;

procedure CodeLine.IfV1_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,JumpToTrueStr,JumpToFalseStr:String;
  VarName1AIndex,JumpToTrueAIndex,JumpToFalseAIndex:Integer;
  JumpToTrueNum,JumpToFalseNum:Integer;
  Anum1:Number;
begin
  Anum1:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  JumpToTrueStr:=ArrMath.NumberToStr(AParamArr[1]);
  JumpToFalseStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  JumpToTrueAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(JumpToTrueStr);
  JumpToFalseAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(JumpToFalseStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(JumpToTrueAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+JumpToTrueStr+'" does not Exists');
    Exit;
  end else
  if(JumpToFalseAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+JumpToFalseStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  JumpToTrueNum:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(JumpToTrueAIndex);
  JumpToFalseNum:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(JumpToFalseAIndex);

  if(self.GetIf(Anum1)[0]=1)then ATCCodeProperties^.Property_CodePoint^.Point_SetPoint(JumpToTrueNum)
  else ATCCodeProperties^.Property_CodePoint^.Point_SetPoint(JumpToFalseNum);

  SetLength(Anum1,0);
end;

procedure CodeLine.IfV1True_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,JumpToTrueStr:String;
  VarName1AIndex,JumpToTrueAIndex:Integer;
  JumpToTrueNum:Integer;
  Anum1:Number;
begin
  Anum1:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  JumpToTrueStr:=ArrMath.NumberToStr(AParamArr[1]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  JumpToTrueAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(JumpToTrueStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(JumpToTrueAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+JumpToTrueStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  JumpToTrueNum:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(JumpToTrueAIndex);

  if(self.GetIf(Anum1)[0]=1)then ATCCodeProperties^.Property_CodePoint^.Point_SetPoint(JumpToTrueNum);

  SetLength(Anum1,0);
end;

procedure CodeLine.IfV1False_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,JumpToFalseStr:String;
  VarName1AIndex,JumpToFalseAIndex:Integer;
  JumpToFalseNum:Integer;
  Anum1:Number;
begin
  Anum1:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  JumpToFalseStr:=ArrMath.NumberToStr(AParamArr[1]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  JumpToFalseAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(JumpToFalseStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(JumpToFalseAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+JumpToFalseStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  JumpToFalseNum:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(JumpToFalseAIndex);

  if(self.GetIf(Anum1)[0]=0)then ATCCodeProperties^.Property_CodePoint^.Point_SetPoint(JumpToFalseNum);

  SetLength(Anum1,0);
end;

procedure CodeLine.IfV1_Goto_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,GotoTrueStr,GotoFalseStr:String;
  VarName1AIndex,GotoTrueAIndex,GotoFalseAIndex:Integer;
  GotoTrueNum,GotoFalseNum:Integer;
  Anum1:Number;
begin
  Anum1:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  GotoTrueStr:=ArrMath.NumberToStr(AParamArr[1]);
  GotoFalseStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  GotoTrueAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(GotoTrueStr);
  GotoFalseAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(GotoFalseStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(GotoTrueAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+GotoTrueStr+'" does not Exists');
    Exit;
  end else
  if(GotoFalseAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+GotoFalseStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  GotoTrueNum:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(GotoTrueAIndex);
  GotoFalseNum:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(GotoFalseAIndex);

  if(self.GetIf(Anum1)[0]=1)then ATCCodeProperties^.Property_CodePoint^.Point_AddLast(GotoTrueNum)
  else ATCCodeProperties^.Property_CodePoint^.Point_AddLast(GotoFalseNum);

  SetLength(Anum1,0);
end;

procedure CodeLine.IfV1True_Goto_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,GotoTrueStr:String;
  VarName1AIndex,GotoTrueAIndex:Integer;
  GotoTrueNum:Integer;
  Anum1:Number;
begin
  Anum1:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  GotoTrueStr:=ArrMath.NumberToStr(AParamArr[1]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  GotoTrueAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(GotoTrueStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(GotoTrueAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+GotoTrueStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  GotoTrueNum:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(GotoTrueAIndex);

  if(self.GetIf(Anum1)[0]=1)then ATCCodeProperties^.Property_CodePoint^.Point_AddLast(GotoTrueNum);

  SetLength(Anum1,0);
end;

procedure CodeLine.IfV1False_Goto_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarName1Str,GotoFalseStr:String;
  VarName1AIndex,GotoFalseAIndex:Integer;
  GotoFalseNum:Integer;
  Anum1:Number;
begin
  Anum1:=nil;

  VarName1Str:=ArrMath.NumberToStr(AParamArr[0]);
  GotoFalseStr:=ArrMath.NumberToStr(AParamArr[1]);

  VarName1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarName1Str);
  GotoFalseAIndex:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt_Index(GotoFalseStr);

  if(VarName1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarName1Str+'" does not Exists');
    Exit;
  end else
  if(GotoFalseAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+GotoFalseStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarName1AIndex);
  GotoFalseNum:=ATCCodeProperties^.Property_CodePorts^.Vars^[ATCCodeProperties^.Property_CodePoint^.Point_StartMem_GetPoint].Var_GetValueInt(GotoFalseAIndex);

  if(self.GetIf(Anum1)[0]=0)then ATCCodeProperties^.Property_CodePoint^.Point_AddLast(GotoFalseNum);

  SetLength(Anum1,0);
end;

procedure CodeLine.AllocateMem_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=StrMath.AssignNum(AParamArr[1]);

  if(self.isVarNameValid(VarNameStr)=False)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var Name"'+VarNameStr+'" is invalid');
    Exit;
  end;

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Var "'+VarNameStr+'" does not Exists');
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Will create Var "'+VarNameStr+'" now');
  end;

  if(AIndex<>-1)then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(AIndex,AValue)
  else ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_AddVariable(VarNameStr,AValue);
end;

procedure CodeLine.AllocateMem_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=ArrMath.NumberToInt(AParamArr[1]);

  if(self.isVarNameValid(VarNameStr)=False)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var Name"'+VarNameStr+'" is invalid');
    Exit;
  end;

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Var "'+VarNameStr+'" does not Exists');
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Will create Var "'+VarNameStr+'" now');
  end;

  if(AIndex<>-1)then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(AIndex,AValue)
  else ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_AddVariableInt(VarNameStr,AValue);
end;

procedure CodeLine.AllocateMem_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=ArrMath.NumberToReal(AParamArr[1]);

  if(self.isVarNameValid(VarNameStr)=False)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var Name"'+VarNameStr+'" is invalid');
    Exit;
  end;

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Var "'+VarNameStr+'" does not Exists');
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Will create Var "'+VarNameStr+'" now');
  end;

  if(AIndex<>-1)then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(AIndex,AValue)
  else ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_AddVariableReal(VarNameStr,AValue);
end;

procedure CodeLine.AllocateMem_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=ArrMath.NumberToStr(AParamArr[1]);

  if(self.isVarNameValid(VarNameStr)=False)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var Name"'+VarNameStr+'" is invalid');
    Exit;
  end;

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Var "'+VarNameStr+'" does not Exists');
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Will create Var "'+VarNameStr+'" now');
  end;

  if(AIndex<>-1)then ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(AIndex,AValue)
  else ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_AddVariableStr(VarNameStr,AValue);
end;

procedure CodeLine.BinStr_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr,CountVarStr,ResultStrStr:String;
  VarNameAIndex,CountVarAIndex,ResultStrAIndex:Integer;
  Anum1,Anum2:Number;
  Anum3:String;
begin
  Anum1:=nil;
  Anum2:=nil;
  Anum3:='';

  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  CountVarStr:=ArrMath.NumberToStr(AParamArr[1]);
  ResultStrStr:=ArrMath.NumberToStr(AParamArr[2]);

  VarNameAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);
  CountVarAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(CountVarStr);
  ResultStrAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultStrStr);

  if(VarNameAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end else
  if(CountVarAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+CountVarStr+'" does not Exists');
    Exit;
  end else
  if(ResultStrAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultStrStr+'" does not Exists');
    Exit;
  end;

  Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarNameAIndex);
  Anum2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(CountVarAIndex);

  if(Length(Anum1)=0)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" value, is nil');
    Exit;
  end else
  if(Length(Anum2)=0)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+CountVarStr+'" value, is nil');
    Exit;
  end;

  Anum3:=BinStr(Anum1[0],Anum2[0]);

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(ResultStrAIndex,Anum3);

  SetLength(Anum1,0);
  SetLength(Anum2,0);
  Anum3:='';
end;

procedure CodeLine.StartMem_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
begin
  ATCCodeProperties^.Property_CodePoint^.Point_StartMem_AddLast(ArrMath.NumberToInt(AParamArr[0]));
  ATCCodeProperties^.Property_CodeVariable^.Vars_CreateLast;
end;

procedure CodeLine.EndMem_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
begin
  ATCCodeProperties^.Property_CodePoint^.Point_StartMem_DeleteLast;
  ATCCodeProperties^.Property_CodeVariable^.Vars_DeleteLast;
end;

procedure CodeLine.Port_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
begin
  ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Nothing: We are at Port');
end;

procedure CodeLine.SetVarMem_Number_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Number;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=StrMath.AssignNum(AParamArr[1]);

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(AIndex,AValue);
end;

procedure CodeLine.SetVarMem_Integer_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Integer;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=ArrMath.NumberToInt(AParamArr[1]);

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(AIndex,AValue);
end;

procedure CodeLine.SetVarMem_Real_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:Real;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=ArrMath.NumberToReal(AParamArr[1]);

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(AIndex,AValue);
end;

procedure CodeLine.SetVarMem_String_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr:String;
  AValue:String;
  AIndex:Integer;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  AValue:=ArrMath.NumberToStr(AParamArr[1]);

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(AIndex,AValue);
end;

procedure CodeLine.Round_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameRealStr,ResultIntVarNameStr:String;
  AValue1:Real;
  AValue2:Integer;
  AIndex:Integer;
  AMode:String;
begin
  VarNameRealStr:=ArrMath.NumberToStr(AParamArr[0]);
  ResultIntVarNameStr:=ArrMath.NumberToStr(AParamArr[1]);

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameRealStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameRealStr+'" does not Exists');
    Exit;
  end;

  AMode:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetVarDataType(AIndex);

  if(AMode='real')then begin
    AValue1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(AIndex);
    AValue2:=Round(AValue1);
  end else begin
    AValue2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(AIndex);
  end;

  AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(ResultIntVarNameStr);

  if(AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+ResultIntVarNameStr+'" does not Exists');
    Exit;
  end;

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(AIndex,AValue2);
end;

procedure CodeLine.CopyStr_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStrStr,VarNameIntPos1Str,VarNameIntPos2Str,VarNameResultStrStr:String;
  VarNameStrAIndex,VarNameIntPos1AIndex,VarNameIntPos2AIndex,VarNameResultStrAIndex:Integer;
  AStr1:String;
  AInt1,AInt2:Integer;
begin
  VarNameStrStr:=ArrMath.NumberToStr(AParamArr[0]);
  VarNameIntPos1Str:=ArrMath.NumberToStr(AParamArr[1]);
  VarNameIntPos2Str:=ArrMath.NumberToStr(AParamArr[2]);
  VarNameResultStrStr:=ArrMath.NumberToStr(AParamArr[3]);

  VarNameStrAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStrStr);
  VarNameIntPos1AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameIntPos1Str);
  VarNameIntPos2AIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameIntPos2Str);
  VarNameResultStrAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameResultStrStr);

  if(VarNameStrAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStrStr+'" does not Exists');
    Exit;
  end else
  if(VarNameIntPos1AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameIntPos1Str+'" does not Exists');
    Exit;
  end else
  if(VarNameIntPos2AIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameIntPos2Str+'" does not Exists');
    Exit;
  end else
  if(VarNameResultStrAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameResultStrStr+'" does not Exists');
    Exit;
  end;

  AStr1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarNameStrAIndex);
  AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarNameIntPos1AIndex);
  AInt2:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarNameIntPos2AIndex);

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarNameResultStrAIndex,Copy(AStr1,AInt1,AInt2));
end;

procedure CodeLine.StrToInt_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStrStr,VarNameResultIntStr:String;
  VarNameStrAIndex,VarNameResultIntAIndex:Integer;
  AStr1:String;
begin
  VarNameStrStr:=ArrMath.NumberToStr(AParamArr[0]);
  VarNameResultIntStr:=ArrMath.NumberToStr(AParamArr[1]);

  VarNameStrAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStrStr);
  VarNameResultIntAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameResultIntStr);

  if(VarNameStrAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStrStr+'" does not Exists');
    Exit;
  end else
  if(VarNameResultIntAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameResultIntStr+'" does not Exists');
    Exit;
  end;

  AStr1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarNameStrAIndex);

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarNameResultIntAIndex,StrToInt(AStr1));
end;

procedure CodeLine.IntToStr_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameIntStr,VarNameResultStrStr:String;
  VarNameIntAIndex,VarNameResultStrAIndex:Integer;
  AInt1:Integer;
begin
  VarNameIntStr:=ArrMath.NumberToStr(AParamArr[0]);
  VarNameResultStrStr:=ArrMath.NumberToStr(AParamArr[1]);

  VarNameIntAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameIntStr);
  VarNameResultStrAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameResultStrStr);

  if(VarNameIntAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameIntStr+'" does not Exists');
    Exit;
  end else
  if(VarNameResultStrAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameResultStrStr+'" does not Exists');
    Exit;
  end;

  AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarNameIntAIndex);

  ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarNameResultStrAIndex,IntToStr(AInt1));
end;

procedure CodeLine.SetValueMode_Proc(AParamArr: TParamArr;
  var ATCCodeProperties: PtrCodeProperties);
var
  VarNameStr,VarModeStr:String;
  VarNameAIndex:Integer;

  Anum1:Number;
  AInt1:Integer;
  AReal1:Real;
  AStr1:String;
begin
  VarNameStr:=ArrMath.NumberToStr(AParamArr[0]);
  VarModeStr:=ArrMath.NumberToStr(AParamArr[1]);

  VarNameAIndex:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt_Index(VarNameStr);

  if(VarNameAIndex=-1)then begin
    ATCCodeProperties^.TCLogs^.Error_CreateLastLog('Error: Var "'+VarNameStr+'" does not Exists');
    Exit;
  end;

  if(VarModeStr.ToLower='number')then begin
    Anum1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValue(VarNameAIndex);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValue(VarNameAIndex,Anum1);
  end else
  if(VarModeStr.ToLower='integer')then begin
    AInt1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueInt(VarNameAIndex);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueInt(VarNameAIndex,AInt1);
  end else
  if(VarModeStr.ToLower='real')then begin
    AReal1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueReal(VarNameAIndex);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueReal(VarNameAIndex,AReal1);
  end else
  if(VarModeStr.ToLower='string')then begin
    AStr1:=ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_GetValueStr(VarNameAIndex);
    ATCCodeProperties^.Property_CodeVariable^.Vars_AtLast^.Var_SetValueStr(VarNameAIndex,AStr1);
  end else begin
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Mode "'+VarModeStr+'" is not valid');
    ATCCodeProperties^.TCLogs^.Warning_CreateLastLog('Warning: Var "'+VarNameStr+'" will set to default');
  end;

end;

constructor CodeLine.Create;
begin
  self.TCodeArr:=nil;
  self.TParaArr:=nil;
  self.TFuncDataIsNor:=2;
  self.TFuncDataNor:=nil;
  self.TFuncDataObj:=nil;
  self.TCCodeProperties:=nil;
end;

constructor CodeLine.Create(var ACodeLine: CodeLine);
begin
  self.TCodeArr:=nil;
  self.TParaArr:=nil;
  self.TFuncDataIsNor:=2;
  self.TFuncDataNor:=nil;
  self.TFuncDataObj:=nil;
  self.TCCodeProperties:=nil;
  self.ChangeTo(ACodeLine);
end;

constructor CodeLine.Create(const CodeData: Number);
begin
  self.TCodeArr:=StrMath.AssignNum(CodeData);
  self.TParaArr:=nil;
  self.TFuncDataIsNor:=2;
  self.TFuncDataNor:=nil;
  self.TFuncDataObj:=nil;
  self.TCCodeProperties:=nil;
end;

destructor CodeLine.Destroy;
var
  i:Integer;
begin
  inherited Destroy;
  SetLength(self.TCodeArr,0);
  for i:=0 to (Length(self.TParaArr)-1)do SetLength(self.TParaArr[i],0);
  SetLength(self.TParaArr,0);
  self.TFuncDataIsNor:=2;
  self.TFuncDataNor:=nil;
  self.TFuncDataObj:=nil;
  self.TCCodeProperties:=nil;
end;

procedure CodeLine.ChangeTo(var ACodeLine: CodeLine);
var
  i:Integer;
begin
  self.TCodeArr:=StrMath.AssignNum(ACodeLine.TCodeArr);

  for i:=0 to (Length(self.TParaArr)-1)do SetLength(self.TParaArr[i],0);
  SetLength(self.TParaArr,Length(ACodeLine.TParaArr));
  for i:=0 to (Length(self.TParaArr)-1)do
    self.TParaArr[i]:=StrMath.AssignNum(ACodeLine.TParaArr[i]);

  self.TFuncDataIsNor:=ACodeLine.TFuncDataIsNor;
  self.TFuncDataNor:=ACodeLine.TFuncDataNor;
  self.TFuncDataObj:=ACodeLine.TFuncDataObj;
  self.TCCodeProperties:=ACodeLine.TCCodeProperties;
end;

procedure CodeLine.Code_SetCodeData(const CodeData: Number);
begin
  self.TCodeArr:=StrMath.AssignNum(CodeData);
end;

procedure CodeLine.Code_AddParamData(const ParamData: Number);
begin
  SetLength(self.TParaArr,Length(self.TParaArr)+1);
  self.TParaArr[Length(self.TParaArr)-1]:=StrMath.AssignNum(ParamData);
end;

procedure CodeLine.Code_AddParamDataInt(const ParamData: Integer);
begin
  SetLength(self.TParaArr,Length(self.TParaArr)+1);
  self.TParaArr[Length(self.TParaArr)-1]:=ArrMath.IntToNumber(ParamData);
end;

procedure CodeLine.Code_AddParamDataReal(const ParamData: Real);
begin
  SetLength(self.TParaArr,Length(self.TParaArr)+1);
  self.TParaArr[Length(self.TParaArr)-1]:=ArrMath.RealToNumber(ParamData);
end;

procedure CodeLine.Code_AddParamDataStr(const ParamData: String);
begin
  SetLength(self.TParaArr,Length(self.TParaArr)+1);
  self.TParaArr[Length(self.TParaArr)-1]:=ArrMath.StrToNumber(ParamData);
end;

procedure CodeLine.Code_SetFuncData(const FuncData: TProcNor);
begin
  self.TFuncDataIsNor:=1;
  self.TFuncDataNor:=FuncData;
end;

procedure CodeLine.Code_SetFuncData(const FuncData: TProcObj);
begin
  self.TFuncDataIsNor:=0;
  self.TFuncDataObj:=FuncData;
end;

function CodeLine.Code_ParamArrLength: Integer;
begin
  Result:=Length(self.TParaArr);
end;

function CodeLine.Code_GetParamData(const AIndexBaseZero: Integer): Number;
begin
  Result:=nil;
  if(AIndexBaseZero<0)or(AIndexBaseZero>(Length(self.TParaArr)-1))then Exit;
  Result:=StrMath.AssignNum(self.TParaArr[AIndexBaseZero]);
end;

function CodeLine.Code_GetParamDataInt(const AIndexBaseZero: Integer): Integer;
begin
  Result:=0;
  if(AIndexBaseZero<0)or(AIndexBaseZero>(Length(self.TParaArr)-1))then Exit;
  Result:=ArrMath.NumberToInt(self.TParaArr[AIndexBaseZero]);
end;

function CodeLine.Code_GetParamDataReal(const AIndexBaseZero: Integer): Real;
begin
  Result:=0.0;
  if(AIndexBaseZero<0)or(AIndexBaseZero>(Length(self.TParaArr)-1))then Exit;
  Result:=ArrMath.NumberToReal(self.TParaArr[AIndexBaseZero]);
end;

function CodeLine.Code_GetParamDataStr(const AIndexBaseZero: Integer): String;
begin
  Result:='';
  if(AIndexBaseZero<0)or(AIndexBaseZero>(Length(self.TParaArr)-1))then Exit;
  Result:=ArrMath.NumberToStr(self.TParaArr[AIndexBaseZero]);
end;

function CodeLine.Code_RunFuncData: Boolean;
begin
  Result:=False;
  if(self.TFuncDataIsNor=0)then begin
    self.TFuncDataObj(self.TParaArr,self.TCCodeProperties);
    Result:=True;
  end else
  if(self.TFuncDataIsNor=1)then begin
    self.TFuncDataNor(self.TParaArr,self.TCCodeProperties);
    Result:=True;
  end;
end;

{ RealMath }

class function RealMath.CheckIntegrity(num: RealArr): Boolean;
begin
  Result:=True;
  if(Length(num)<=4)then Result:=False else
  if(Length(num)<6)then Result:=False;
end;

class function RealMath.DigitStr(const AStr: String): Boolean;
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

class procedure RealMath.CombineArr(FromNum1, FromNum2: IntArr;
  var ToNum: RealArr; var NumAt: IntArr);
var
  i:Integer;
  TArr1:RealArr;
  TArr2,TArr3:IntArr;
begin
  TArr1:=nil;
  TArr2:=nil;
  TArr3:=nil;
  ArrMath.StrToIntArr('-1',NumAt);
  ArrMath.StrToIntArr('1',TArr3);
  for i:=0 to (Length(FromNum1)-1)do begin
    SetLength(TArr1,Length(TArr1)+1);
    TArr1[Length(TArr1)-1]:=FromNum1[i];

    ArrMath.SetInt(NumAt,TArr2);
    ArrMath.SumSubInt(TArr2,TArr3,NumAt);
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

class function RealMath.SplitArr(var FromNum1, FromNum2: IntArr;
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

  ArrMath.StrToIntArr(IntToStr(Length(ToNum)-1),TArr2);
  ArrMath.StrToIntArr('-1',TArr3);
  if(ConditionInt(NumAt,'<=',TArr3)=True)then Exit;
  if(ConditionInt(NumAt,'>=',TArr2)=True)then Exit;

  ArrMath.StrToIntArr('0',TArr2);
  ArrMath.StrToIntArr('0',TArr3);
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

class procedure RealMath.CombineIntToArr(FromNum: IntArr; var ToNum: RealArr);
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

class procedure RealMath.SplitIntToArr(var FromNum: IntArr; var ToNum: RealArr);
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

class procedure RealMath.StrToRealArr(AStr: String; var numResult: RealArr);
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
  ArrMath.StrToIntArr(WholeN,TArr1);
  ArrMath.StrToIntArr(DeciN,TArr2);

  self.CombineArr(TArr1,TArr2,numResult,TArr3);
  self.CombineIntToArr(TArr3,numResult);

  if(bool2=False)then begin
    if(bool1=False)then ArrMath.Shift(False,True,numResult) else
    if(bool1=True)then ArrMath.Shift(False,False,numResult);
  end else begin
    ArrMath.Shift(False,True,numResult);
  end;

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

class procedure RealMath.RealArrToStr(num: RealArr; var AStr: String);
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
  if(ArrMath.IsBitSet(num[0],0)=True)then bool1:=False else bool1:=True;
  ArrMath.Shift(True,False,num);

  if(self.CheckIntegrity(num)=False)then Exit;
  ArrMath.SetInt(num,TArr3);
  ArrMath.CutSome(TArr3,num);

  self.SplitIntToArr(TArr3,num);
  bool2:=self.SplitArr(TArr1,TArr2,num,TArr3);
  if(bool2=False)then Exit;
  AStr:='';

  ArrMath.IntArrToStr(TArr1,Str1);
  ArrMath.IntArrToStr(TArr2,Str2);

  Str2:=Copy(Str2,3,Length(Str2));
  AStr:=Str1+'.'+Str2;
  if(bool1=True)and(AStr<>'0.0')then AStr:='-'+AStr;

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
end;

class procedure RealMath.IntArrToRealArrEqual(num: IntArr;
  var numResult: RealArr);
var
  StrA:String;
begin
  SetLength(numResult,0);
  StrA:='';
  ArrMath.IntArrToStr(num,StrA);
  StrA:=StrA+'.0';
  self.StrToRealArr(StrA,numResult);
end;

class procedure RealMath.RealArrToIntArrRound(num: RealArr;
  var numResult: IntArr);
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
  ArrMath.StrToIntArr(StrA,numResult);
end;

class procedure RealMath.RRR(num: RealArr; var numResult: IntArr);
begin
  numResult:=RoundReal(num);
  if(ConditionReal(num,'<',IntReal(numResult))=True)then
    numResult:=SumSubInt(numResult,InitInt('-1'));
end;

class procedure RealMath.RealArrRound(var num: RealArr;
  const ADeciDigitCountBaseOne: Integer);
var
  TArr1,TArr2,TArr3:RealArr;
  StrA:String;
  Str1,Str2,Str4:String;
  i,j:Integer;
  Int1:Integer;
  bool1:Boolean;
begin
  if(self.CheckIntegrity(num)=False)then Exit;
  if(self.GetDeciCountBaseOne(num)<=RealDeciLength)then Exit;
  StrA:='';
  Int1:=0;
  TArr3:=nil;
  ArrMath.SetInt(num,TArr3);
  SetLength(num,0);
  self.RealArrToStr(TArr3,StrA);
  if(StrA='nil')then Exit;

  Str1:='';
  Str2:='';
  bool1:=False;
  for i:=1 to Length(StrA)do begin
    if(StrA[i]='-')then bool1:=True else
    if(StrA[i]='.')then begin
      Str1:=Copy(StrA,1,i-1);
      Str2:=Copy(StrA,i+1,Length(StrA));
      Int1:=ADeciDigitCountBaseOne;
      break;
    end;
  end;

  Str4:='';
  for i:=1 to ADeciDigitCountBaseOne do begin
    if(i=ADeciDigitCountBaseOne)then Str4:=Str4+'4'
    else Str4:=Str4+'0';
  end;

  TArr1:=nil;
  TArr2:=nil;
  if(bool1=False)then self.StrToRealArr('0.'+Str4,TArr2) else
  if(bool1=True)then self.StrToRealArr('-0.'+Str4,TArr2);
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

class function RealMath.GetDeciCountBaseOne(num: RealArr): Integer;
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

class procedure RealMath.RealCutDeciCountBaseOne(var num: RealArr;
  CutAt: Integer);
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

class procedure RealMath.RealCutDeciCountBaseOneR(var num: RealArr;
  CutAt: Integer);
begin
  if(Length(num)=0)then Exit;
  if(CutAt<1)then CutAt:=1;
  self.RealCutDeciCountBaseOne(num,CutAt+1);
  self.RealArrRound(num,CutAt);
end;

class procedure RealMath.AlignStr(var AStr1, AStr2: String; const APlace: String
  );
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

class procedure RealMath.AlignStrLeft(var AStr1, AStr2: String;
  const APlace: String);
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

class procedure RealMath.CutSomeR(var num: IntArr);
var
  TArr1:IntArr;
begin
  TArr1:=nil;
  ArrMath.SetInt(num,TArr1);
  ArrMath.CutSome(TArr1,num);
end;

class procedure RealMath.CutSomeStr(var AStr: String);
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

class function RealMath.CutSomeStrLeft(AStr: String): String;
begin
  AStr:=self.ReverseStr(AStr);
  self.CutSomeStr(AStr);
  Result:=self.ReverseStr(AStr);
end;

class function RealMath.ReverseStr(const AStr: String): String;
var
  i:Integer;
begin
  Result:='';
  for i:=Length(AStr)downto 1 do Result:=Result+AStr[i];
end;

class function RealMath.isPositiveAd(num: RealArr): Byte;
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

  if(ArrMath.IsBitSet(num[0],0)=True)then bool1:=False else bool1:=True;
  ArrMath.Shift(True,False,num);

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

class function RealMath.isPositive(num: RealArr): Boolean;
var
  AMode:Byte;
begin
  AMode:=self.isPositiveAd(num);
  if(AMode=0)then Result:=False else
  if(AMode=1)then Result:=True else Result:=False;
end;

class procedure RealMath.SumReal(num1, num2: RealArr; var numResult: RealArr;
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

  ArrMath.IntArrToStr(TArr2,Str1);
  ArrMath.IntArrToStr(TArr5,Str2);

  self.AlignStr(Str1,Str2,'0');
  ArrMath.StrToIntArr(Str1,TArr2);
  ArrMath.StrToIntArr(Str2,TArr5);

  ArrMath.SumSubInt(TArr2,TArr5,TArr6);
  ArrMath.IntArrToStr(TArr6,Str1);
  Str3:=Copy(Str1,3,Length(Str1));
  self.CutSomeStr(Str3);
  if(Length(Str3)>ADeciDigitCountBaseOne)then
    Str3:=Copy(Str3,1,ADeciDigitCountBaseOne);
  if(Str3='')then Str3:='0';
  Str3:='10'+Str3;
  Str1:=Copy(Str1,1,2);
  Str1:=Copy(Str1,2,Length(Str1));

  ArrMath.StrToIntArr(Str3,TArr6);
  ArrMath.StrToIntArr(Str1,TArr5);
  ArrMath.SumSubInt(TArr1,TArr5,TArr2);
  ArrMath.SumSubInt(TArr2,TArr4,TArr3);

  self.CombineArr(TArr3,TArr6,numResult,TArr1);
  self.CombineIntToArr(TArr1,numResult);

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

class procedure RealMath.SubReal(num1, num2: RealArr; var numResult: RealArr;
  out NumBiggerMode: Byte; ADeciDigitCountBaseOne: Integer);
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

  ArrMath.IntArrToStr(TArr1,Str4);
  ArrMath.IntArrToStr(TArr4,Str5);

  ArrMath.IntArrToStr(TArr2,Str1);
  ArrMath.IntArrToStr(TArr5,Str2);

  self.AlignStr(Str1,Str2,'0');
  Str7:=Copy(Str1,3,Length(Str1));
  Str8:=Copy(Str2,3,Length(Str2));
  Str7:=Str4+Str7;
  Str8:=Str5+Str8;
  self.AlignStrLeft(Str7,Str8,'0');
  Str7:='1'+Str7;
  Str8:='1'+Str8;
  ArrMath.StrToIntArr(Str7,TArr3);
  ArrMath.StrToIntArr(Str8,TArr6);

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
    ArrMath.StrToIntArr(Str1,TArr3);
    ArrMath.StrToIntArr(Str2,TArr6);

    ArrMath.StrToIntArr('-1',TArr1);
    ArrMath.MulDivInt(TArr6,TArr1,TArr4,True);
    ArrMath.SumSubInt(TArr3,TArr4,TArr1);
    ArrMath.IntArrToStr(TArr1,Str3);
  end else
  if(NumBiggerMode=0)then begin
    Str1:='1'+Str1;
    Str2:='2'+Str2;
    ArrMath.StrToIntArr(Str1,TArr3);
    ArrMath.StrToIntArr(Str2,TArr6);

    ArrMath.StrToIntArr('-1',TArr1);
    ArrMath.MulDivInt(TArr3,TArr1,TArr4,True);
    ArrMath.SumSubInt(TArr6,TArr4,TArr1);
    ArrMath.IntArrToStr(TArr1,Str3);
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

  ArrMath.StrToIntArr(Str3,TArr3);
  ArrMath.StrToIntArr(Str6,TArr6);
  self.CombineArr(TArr3,TArr6,numResult,TArr1);
  self.CombineIntToArr(TArr1,numResult);

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

class procedure RealMath.SumSubReal(num1, num2: RealArr;
  var numResult: RealArr; ADeciDigitCountBaseOne: Integer);
var
  bool1,bool2:Boolean;
  AMode:Byte;
begin
  SetLength(numResult,0);
  if(Length(num1)=0)then Exit;
  if(Length(num2)=0)then Exit;
  bool1:=self.isPositive(num1);
  bool2:=self.isPositive(num2);
  ArrMath.Shift(True,False,num1);
  ArrMath.Shift(True,False,num2);
  self.CutSomeR(num1);
  self.CutSomeR(num2);
  if(self.CheckIntegrity(num1)=False)then Exit;
  if(self.CheckIntegrity(num2)=False)then Exit;
  if(ADeciDigitCountBaseOne<1)then ADeciDigitCountBaseOne:=1;
  AMode:=0;
  if(bool1=False)and(bool2=False)then begin
    self.SumReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    ArrMath.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=False)then begin
    self.SubReal(num1,num2,numResult,AMode,ADeciDigitCountBaseOne);
    if(AMode=1)then ArrMath.Shift(False,True,numResult) else
    if(AMode=0)then ArrMath.Shift(False,False,numResult) else
    if(AMode=2)then ArrMath.Shift(False,True,numResult);
  end else
  if(bool1=False)and(bool2=True)then begin
    self.SubReal(num1,num2,numResult,AMode,ADeciDigitCountBaseOne);
    if(AMode=1)then ArrMath.Shift(False,False,numResult) else
    if(AMode=0)then ArrMath.Shift(False,True,numResult) else
    if(AMode=2)then ArrMath.Shift(False,True,numResult);
  end else
  if(bool1=True)and(bool2=True)then begin
    self.SumReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    ArrMath.Shift(False,True,numResult);
  end;
end;

class procedure RealMath.MulReal(num1, num2: RealArr; var numResult: RealArr;
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

  ArrMath.IntArrToStr(TArr2,Str1);
  ArrMath.IntArrToStr(TArr5,Str2);
  Str1:=Copy(Str1,3,Length(Str1));
  Str2:=Copy(Str2,3,Length(Str2));
  Int1:=Length(Str1);
  Int2:=Length(Str2);

  ArrMath.IntArrToStr(TArr1,Str3);
  Str1:=Str3+Str1;
  ArrMath.IntArrToStr(TArr4,Str3);
  Str2:=Str3+Str2;

  Int3:=0;
  for i:=1 to Length(Str1)do if(Str1[i]<>'0')then break else Int3:=Int3+1;
  for i:=1 to Length(Str2)do if(Str2[i]<>'0')then break else Int3:=Int3+1;

  ArrMath.StrToIntArr(Str1,TArr3);
  ArrMath.StrToIntArr(Str2,TArr6);

  ArrMath.MulDivInt(TArr3,TArr6,TArr1,True);
  ArrMath.IntArrToStr(TArr1,Str3);
  for i:=1 to Int3 do Str3:='0'+Str3;

  Str1:=Copy(Str3,1,Length(Str3)-(Int1+Int2));
  Str2:=Copy(Str3,(Length(Str3)-(Int1+Int2))+1,Length(Str3));
  self.CutSomeStr(Str2);
  if(Length(Str2)>ADeciDigitCountBaseOne)then
    Str2:=Copy(Str2,1,ADeciDigitCountBaseOne);
  if(Str1='')then Str1:='0';
  if(Str2='')then Str2:='0';
  Str2:='10'+Str2;

  ArrMath.StrToIntArr(Str1,TArr3);
  ArrMath.StrToIntArr(Str2,TArr6);

  ArrMath.IntArrToStr(TArr3,Str1);
  ArrMath.IntArrToStr(TArr6,Str2);

  self.CombineArr(TArr3,TArr6,numResult,TArr1);
  self.CombineIntToArr(TArr1,numResult);

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

class procedure RealMath.DivReal(num1, num2: RealArr; var numResult: RealArr;
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

  ArrMath.IntArrToStr(TArr1,Str1);
  ArrMath.IntArrToStr(TArr2,Str2);
  ArrMath.IntArrToStr(TArr4,Str4);
  ArrMath.IntArrToStr(TArr5,Str5);
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

  ArrMath.StrToIntArr(Str3,TArr3);
  ArrMath.StrToIntArr(Str6,TArr6);

  ArrMath.MulDivInt(TArr3,TArr6,TArr1,False);
  ArrMath.IntArrToStr(TArr1,Str5);
  if(Str5='nil')then Str5:='0';

  Int1:=0;
  TArr4:=InitInt('1');
  Str2:='1';
  for i:=1 to (ADeciDigitCountBaseOne+1) do begin
    ArrMath.MulDivInt(TArr4,TArr3,TArr2,True);
    ArrMath.MulDivInt(TArr2,TArr6,TArr1,False);
    ArrMath.IntArrToStr(TArr1,Str4);
    if(Str4='0')then begin
      Str2:=Str2+'0';
      ArrMath.StrToIntArr(Str2,TArr4);
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

  ArrMath.StrToIntArr(Str1,TArr1);
  ArrMath.StrToIntArr(Str3,TArr2);
  ArrMath.StrToIntArr(Str6,TArr4);
  ArrMath.MulDivInt(TArr1,TArr2,TArr5,True);
  ArrMath.MulDivInt(TArr5,TArr4,TArr1,False);
  ArrMath.IntArrToStr(TArr1,Str1);
  if(Str1='nil')then Str1:='0';

  for i:=1 to Int1 do Str1:='0'+Str1;
  Str1:=Copy(Str1,Length(Str5)+1,Length(Str1));

  self.CutSomeStr(Str1);
  if(Length(Str1)>ADeciDigitCountBaseOne)then
    Str1:=Copy(Str1,1,ADeciDigitCountBaseOne);
  if(Str1='')then Str1:='0';
  Str1:='10'+Str1;

  ArrMath.StrToIntArr(Str5,TArr3);
  ArrMath.StrToIntArr(Str1,TArr6);
  self.CombineArr(TArr3,TArr6,numResult,TArr1);
  self.CombineIntToArr(TArr1,numResult);

  SetLength(TArr1,0);
  SetLength(TArr2,0);
  SetLength(TArr3,0);
  SetLength(TArr4,0);
  SetLength(TArr5,0);
  SetLength(TArr6,0);
end;

class procedure RealMath.MulDivReal(num1, num2: RealArr;
  var numResult: RealArr; const doMul: Boolean; ADeciDigitCountBaseOne: Integer
  );
var
  bool1,bool2:Boolean;
begin
  SetLength(numResult,0);
  if(Length(num1)=0)then Exit;
  if(Length(num2)=0)then Exit;
  if(self.isPositiveAd(num2)=2)and(doMul=False)then Exit;
  bool1:=self.isPositive(num1);
  bool2:=self.isPositive(num2);
  ArrMath.Shift(True,False,num1);
  ArrMath.Shift(True,False,num2);
  self.CutSomeR(num1);
  self.CutSomeR(num2);
  if(self.CheckIntegrity(num1)=False)then Exit;
  if(self.CheckIntegrity(num2)=False)then Exit;
  if(ADeciDigitCountBaseOne<1)then ADeciDigitCountBaseOne:=1;
  if(bool1=False)and(bool2=False)then begin
    if(doMul=True)then self.MulReal(num1,num2,numResult,ADeciDigitCountBaseOne) else
    if(doMul=False)then self.DivReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    ArrMath.Shift(False,True,numResult);
  end else
  if(bool1=True)and(bool2=False)then begin
    if(doMul=True)then self.MulReal(num1,num2,numResult,ADeciDigitCountBaseOne) else
    if(doMul=False)then self.DivReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    ArrMath.Shift(False,False,numResult);
  end else
  if(bool1=False)and(bool2=True)then begin
    if(doMul=True)then self.MulReal(num1,num2,numResult,ADeciDigitCountBaseOne) else
    if(doMul=False)then self.DivReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    ArrMath.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=True)then begin
    if(doMul=True)then self.MulReal(num1,num2,numResult,ADeciDigitCountBaseOne) else
    if(doMul=False)then self.DivReal(num1,num2,numResult,ADeciDigitCountBaseOne);
    ArrMath.Shift(False,True,numResult);
  end;
  //End...
end;

class procedure RealMath.RealArrMod(num1, num2: RealArr; var numResult: RealArr
  );
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

class function RealMath.RealXPowerInt(Abase, Apower: RealArr;
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

class function RealMath.RealXPowerIntStr(Abase, Apower: RealArr;
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

class procedure RealMath.lynReal(num: RealArr; var numResult: RealArr;
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

  n3:=StrMath.AssignNum(n1);
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

class procedure RealMath.lynRealR(num: RealArr; var numResult: RealArr;
  const ADeciDigitCountBaseOne: Integer);
var
  n1,n2,n3:RealArr;
  Str1:String;
begin
  n1:=nil;
  n2:=nil;
  n3:=nil;
  Str1:='';
  n1:=StrMath.AssignNum(num);
  n2:=InitReal('0');
  while(ConditionReal(IntReal(RoundRealR(n1)),'<>',InitReal('1'))=True)do begin
    n1:=StrMath.MulDivReal(n1,InitReal('2'),ADeciDigitCountBaseOne,False);
    n2:=StrMath.SumSubReal(n2,InitReal('1'),ADeciDigitCountBaseOne);
  end;
  Str1:='0.693147180559945309417232121458176568075500134360255254120680009493393621969694715605863326996418687542001481';
  if(ADeciDigitCountBaseOne<=100)then Str1:=Copy(Str1,1,ADeciDigitCountBaseOne);
  n3:=StrMath.MulDivReal(n2,InitReal(Str1),ADeciDigitCountBaseOne,True);
  self.lynReal(n1,n2,ADeciDigitCountBaseOne);
  numResult:=StrMath.SumSubReal(n2,n3,ADeciDigitCountBaseOne);
end;

class procedure RealMath.logaReal(num, base: RealArr; var numResult: RealArr;
  const ADeciDigitCountBaseOne: Integer);
var
  n1,n2:RealArr;
begin
  numResult:=nil;
  if(Length(num)=0)or(Length(base)=0)then Exit else
  if(ConditionReal(num,'=',InitReal('0.0'))=True)or
  (ConditionReal(base,'=',InitReal('0.0'))=True)then Exit;
  n1:=StrMath.lnReal(num,ADeciDigitCountBaseOne);
  n2:=StrMath.lnReal(base,ADeciDigitCountBaseOne);
  numResult:=StrMath.MulDivReal(n1,n2,ADeciDigitCountBaseOne,False);
end;

class procedure RealMath.Root2Real(num: RealArr; var numResult: RealArr;
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
    numResult:=StrMath.AssignNum(num);
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

class function RealMath.SinReal(Degrees: RealArr;
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

class function RealMath.CosReal(Degrees: RealArr;
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

class function RealMath.TanReal(Degrees: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
begin
  Result:=nil;
  SetLength(Result,0);
  if(Length(Degrees)=0)then Exit;
  Result:=StrMath.MulDivReal(self.SinReal(Degrees,ADeciDigitCountBaseOne),
  self.CosReal(Degrees,ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False);
end;

class function RealMath.InSinReal(SinX: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
begin
  Result:=nil;
  SetLength(Result,0);
  if(Length(SinX)=0)then Exit;
  Result:=StrMath.MulDivReal(self.RealXPowerInt(SinX,InitReal('2.0'),
  ADeciDigitCountBaseOne),InitReal('90.0'),ADeciDigitCountBaseOne,True);
end;

class function RealMath.InCosReal(CosX: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
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

class function RealMath.InTanReal(TanX: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
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

class function RealMath.RealFactorialIntStr(num: RealArr;
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

class function RealMath.ePower(num: RealArr;
  const ADeciDigitCountBaseOne: Integer): RealArr;
var
  n1,n2,n3:RealArr;
  i:Integer;
  Str1:String;
begin
  Result:=nil;
  n1:=nil;
  n2:=nil;
  n3:=nil;
  Str1:='';
  Result:=InitReal('1');
  n1:=InitReal('1');
  n2:=InitReal('1');
  for i:=1 to ADeciDigitCountBaseOne do Str1:=Str1+'0';
  if(Str1='')then Str1:='0';
  Str1:='0.'+Str1+'1';
  n3:=InitReal(Str1);
  While(True)do begin
    if(ConditionReal(StrMath.unNumReal(n1),'<',n3)=True)then break;
    n1:=StrMath.MulDivReal(n1,StrMath.MulDivReal(num,n2,ADeciDigitCountBaseOne,False),ADeciDigitCountBaseOne);
    Result:=StrMath.SumSubReal(Result,n1,ADeciDigitCountBaseOne);
    n2:=StrMath.SumSubReal(n2,InitReal('1'),ADeciDigitCountBaseOne);
  end;
end;

class function RealMath.ePowerX(num: RealArr; ADeciDigitCountBaseOne: Integer
  ): RealArr;
var
  n1,n2,n3:RealArr;
begin
  Result:=nil;
  if(Length(num)=0)then Exit;
  n1:=nil;
  n2:=nil;
  n3:=nil;
  n1:=StrMath.MulDivReal(num,StrMath.lnReal(InitReal('2'),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False);
  n1:=StrMath.IntReal(StrMath.RoundReal(n1));
  n2:=StrMath.MulDivReal(n1,StrMath.lnReal(InitReal('2'),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);
  n2:=StrMath.SumSubReal(num,StrMath.MulDivReal(n2,InitReal('-1'),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);
  n3:=self.RealXPowerInt(InitReal('2'),n1,ADeciDigitCountBaseOne);
  Result:=StrMath.MulDivReal(n3,self.ePower(n2,ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);
end;

class function RealMath.xPower(Abase, Apower: RealArr;
  ADeciDigitCountBaseOne: Integer): RealArr;
var
  n1,n2:RealArr;
begin
  Result:=nil;
  n1:=nil;
  n2:=nil;

  n1:=StrMath.IntReal(StrMath.RoundRealR(Apower));
  n2:=StrMath.SumSubReal(Apower,StrMath.MulDivReal(n1,InitReal('-1'),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);

  n1:=self.RealXPowerInt(Abase,n1,ADeciDigitCountBaseOne);
  n2:=StrMath.ePowerReal(StrMath.MulDivReal(n2,StrMath.lnReal(Abase,ADeciDigitCountBaseOne),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);

  Result:=StrMath.MulDivReal(n1,n2,ADeciDigitCountBaseOne);
end;

class procedure RealMath.xPowerDiv2(var Abase, Apower: RealArr;
  ADeciDigitCountBaseOne: Integer);
var
  n1,n2,n3:RealArr;
begin
  n1:=nil;
  n2:=nil;
  n3:=nil;
  if(StrMath.isInt(RealStr(Apower))=False)then Exit;
  n1:=StrMath.AssignNum(Abase);
  n2:=StrMath.AssignNum(Apower);
  While(ConditionReal(Abase,'<=',Apower)=True)do begin
    n3:=StrMath.MulDivReal(n2,InitReal('2'),ADeciDigitCountBaseOne,False);
    if(ConditionReal(n3,'=',InitReal('0.0'))=True)then Exit else
    if(StrMath.isInt(RealStr(n3))=False)then Exit;
    n1:=self.RealXPowerInt(n1,InitReal('2'),ADeciDigitCountBaseOne);
    n2:=StrMath.AssignNum(n3);
    Abase:=StrMath.AssignNum(n1);
    Apower:=StrMath.AssignNum(n2);
  end;
  //End...
end;

class function RealMath.xPowerX(Abase, Apower: RealArr;
  ADeciDigitCountBaseOne: Integer): RealArr;
var
  AMode:Byte;
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
  self.xPowerDiv2(Abase,Apower,ADeciDigitCountBaseOne);
  Result:=self.xPower(Abase,Apower,ADeciDigitCountBaseOne);
end;

{ ArrMath }

class function ArrMath.StrToNumber(const AStr: String): Number;
var
  i:Integer;
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  for i:=1 to Length(AStr)do begin
    SetLength(ByteA,Length(ByteA)+1);
    ByteA[Length(ByteA)-1]:=Byte(AStr[i]);
  end;
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

class function ArrMath.NumberToStr(const Anum: Number): String;
var
  i:Integer;
  ByteA:Number;
begin
  Result:='';
  ByteA:=nil;
  ByteA:=StrMath.AssignNum(Anum);
  for i:=0 to (Length(ByteA)-1)do Result:=Result+Char(ByteA[i]);
  SetLength(ByteA,0);
end;

class function ArrMath.IntToNumber(const Int1: Integer): Number;
var
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,SizeOf(Int1));
  Move(Int1,ByteA[0],SizeOf(Int1));
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

class function ArrMath.NumberToInt(const num: Number): Integer;
var
  ByteA:Number;
begin
  Result:=0;
  ByteA:=nil;
  ByteA:=StrMath.AssignNum(num);
  if(Length(ByteA)<SizeOf(Integer))then SetLength(ByteA,SizeOf(Integer));
  Move(ByteA[0],Result,SizeOf(Integer));
  SetLength(ByteA,0);
end;

class function ArrMath.RealToNumber(const Real1: Real): Number;
var
  ByteA:Number;
begin
  Result:=nil;
  ByteA:=nil;
  SetLength(ByteA,SizeOf(Real1));
  Move(Real1,ByteA[0],SizeOf(Real1));
  Result:=StrMath.AssignNum(ByteA);
  SetLength(ByteA,0);
end;

class function ArrMath.NumberToReal(const num: Number): Real;
var
  ByteA:Number;
begin
  Result:=0;
  ByteA:=nil;
  ByteA:=StrMath.AssignNum(num);
  if(Length(ByteA)<SizeOf(Real))then SetLength(ByteA,SizeOf(Real));
  Move(ByteA[0],Result,SizeOf(Real));
  SetLength(ByteA,0);
end;

class function ArrMath.RR(const x: Real): Integer;
begin
  Result:=Round(x);
  if(Round(x)>x)then Result:=Round(x)-1;
end;

class function ArrMath.unNum(const x: Integer): Integer;
begin
  Result:=x;
  if(x<0)then Result:=Result*(-1);
end;

class function ArrMath.unNum(const x: Real): Real;
begin
  Result:=x;
  if(x<0)then Result:=Result*(-1);
end;

class procedure ArrMath.SetBit(var B: Byte; const PosBaseZero: Byte);
begin
  B:=B or (1 shl PosBaseZero);
end;

class procedure ArrMath.ClearBit(var B: Byte; const PosBaseZero: Byte);
begin
  B:=B and not (1 shl PosBaseZero);
end;

class procedure ArrMath.ReverseBit(var B: Byte; const PosBaseZero: Byte);
begin
  B:=B xor (1 shl PosBaseZero);
end;

class function ArrMath.IsBitSet(B: Byte; const PosBaseZero: Byte): Boolean;
begin
  Result:=(B and (1 shl PosBaseZero)) <> 0;
end;

class procedure ArrMath.BitsToStr(const num: IntArr; var AStrBits: String);
var
  i:Integer;
begin
  AStrBits:='';
  for i:=0 to (Length(num)-1)do AStrBits:=BinStr(num[i],8)+' '+AStrBits;
end;

class function ArrMath.BitsLength(const num: IntArr): Integer;
var
  i:Integer;
  AStr:String;
begin
  Result:=0;
  AStr:='';
  for i:=0 to (Length(num)-1)do AStr:=AStr+BinStr(num[i],8);
  Result:=Length(AStr);
end;

class procedure ArrMath.SetInt(const num: IntArr; var numResult: IntArr);
var
  i:Integer;
begin
  SetLength(numResult,Length(num));
  for i:=0 to (Length(num)-1)do numResult[i]:=num[i];
end;

class procedure ArrMath.ReverseInt(const num: IntArr; var numResult: IntArr);
var
  i,j:Integer;
begin
  SetLength(numResult,0);
  SetLength(numResult,Length(num));
  for i:=0 to (Length(num)-1)do
    for j:=0 to 7 do if(self.IsBitSet(num[i],j)=True)then self.SetBit(numResult[(Length(numResult)-1)-i],7-j);
end;

class function ArrMath.isIntZero(const num: IntArr): Boolean;
var
  i:Integer;
begin
  Result:=True;
  for i:=0 to (Length(num)-1)do if(num[i]<>0)then begin Result:=False; Exit; end;
end;

class procedure ArrMath.MatchLength(const isLeft: Boolean; const num: IntArr;
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

class procedure ArrMath.Shift(const isLeft, isSet: Boolean; var num: IntArr);
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

class procedure ArrMath.Shift(const isLeft: Boolean; PaceBaseOne: Integer;
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

class function ArrMath.isPositiveAd(var num: IntArr): Byte;
var
  bool1:Boolean;
begin
  bool1:=False;
  if(self.IsBitSet(num[0],0)=True)then bool1:=True;
  self.Shift(True,False,num);
  if(self.isIntZero(num)=True)then Result:=2 else
  if(bool1=True)then Result:=1 else Result:=0;
end;

class function ArrMath.isPositive(var num: IntArr): Boolean;
var
  ByteA:Byte;
begin
  ByteA:=self.isPositiveAd(num);
  if(ByteA=1)then Result:=True else
  if(ByteA=0)then Result:=False else Result:=False;
end;

class function ArrMath.isNum1Bigger(var num1, num2: IntArr): Byte;
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

class function ArrMath.isNum1BiggerAlign(num1, num2: IntArr): Byte;
begin
  self.AlignNums(num1,num2);
  Result:=self.isNum1Bigger(num1,num2);
end;

class function ArrMath.isIntNumber(const Digit: String): Boolean;
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

class function ArrMath.GetIntDigit(const Digit: Byte): String;
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

class procedure ArrMath.InitZeroToNine(const isNeg: Boolean; const Digit: Byte;
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

class procedure ArrMath.AlignNums(var num1, num2: IntArr);
begin
  if(Length(num1)>Length(num2))then SetLength(num2,Length(num1)) else
  if(Length(num2)>Length(num1))then SetLength(num1,Length(num2));
end;

class procedure ArrMath.AssignIntNum(num: IntArr; var numResult: IntArr);
begin
  self.SetInt(num,numResult);
end;

class procedure ArrMath.CutSome(num: IntArr; var numResult: IntArr);
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

class procedure ArrMath.SetBitPosZero(var num: TBitPos);
begin
  num.ByteAtBaseZero:=0;
  num.BitAtBaseZero:=0;
end;

class procedure ArrMath.CopyBitPos(const CopyNum: TBitPos; var ToNum: TBitPos);
begin
  ToNum.ByteAtBaseZero:=CopyNum.ByteAtBaseZero;
  ToNum.BitAtBaseZero:=CopyNum.BitAtBaseZero;

  if(ToNum.BitAtBaseZero<0)then ToNum.BitAtBaseZero:=7 else
  if(ToNum.BitAtBaseZero>7)then ToNum.BitAtBaseZero:=0;
end;

class procedure ArrMath.SetBitPos(var num: TBitPos; const ByteAtBaseZero,
  BitAtBaseZero: Integer);
begin
  num.ByteAtBaseZero:=ByteAtBaseZero;
  if(num.ByteAtBaseZero<0)then num.ByteAtBaseZero:=0;
  if(BitAtBaseZero<0)then num.BitAtBaseZero:=7 else
  if(BitAtBaseZero>7)then num.BitAtBaseZero:=0 else num.BitAtBaseZero:=BitAtBaseZero;
end;

class procedure ArrMath.IncBitPos(var num: TBitPos);
begin
  if(num.BitAtBaseZero<0)then num.BitAtBaseZero:=7 else
  if(num.BitAtBaseZero>7)then num.BitAtBaseZero:=0;

  num.BitAtBaseZero:=num.BitAtBaseZero+1;
  if(num.BitAtBaseZero>7)then begin
    num.BitAtBaseZero:=0;
    num.ByteAtBaseZero:=num.ByteAtBaseZero+1;
  end;
end;

class procedure ArrMath.DecBitPos(var num: TBitPos);
begin
  if(num.BitAtBaseZero<0)then num.BitAtBaseZero:=7 else
  if(num.BitAtBaseZero>7)then num.BitAtBaseZero:=0;

  num.BitAtBaseZero:=num.BitAtBaseZero-1;
  if(num.BitAtBaseZero<0)then begin
    num.BitAtBaseZero:=7;
    num.ByteAtBaseZero:=num.ByteAtBaseZero-1;
  end;
  if(num.ByteAtBaseZero<0)then num.ByteAtBaseZero:=0;
end;

class procedure ArrMath.GetLastBit(var num: TBitPos; const numArr: IntArr);
var
  i:Integer;
  bool1:Boolean;
  n1PosZero:TBitPos;
begin
  if(Length(numArr)=0)then Exit;
  bool1:=False;
  for i:=0 to (Length(numArr)-1)do if(numArr[i]<>0)then begin bool1:=True;break;end;
  if(bool1=False)then begin
    num.ByteAtBaseZero:=0;
    num.BitAtBaseZero:=0;
    Exit;
  end;
  self.SetBitPos(num,Length(numArr)-1,7);
  self.SetBitPosZero(n1PosZero);
  While(self.IsBitPosEqual(num,n1PosZero)=False)do begin
    if(self.IsBitPosSet(num,numArr)=True)then Exit
    else self.DecBitPos(num);
  end;
end;

class function ArrMath.IsBitPosEqual(num1, num2: TBitPos): Boolean;
begin
  Result:=False;

  if(num1.BitAtBaseZero<0)then num1.BitAtBaseZero:=7 else
  if(num1.BitAtBaseZero>7)then num1.BitAtBaseZero:=0;

  if(num2.BitAtBaseZero<0)then num2.BitAtBaseZero:=7 else
  if(num2.BitAtBaseZero>7)then num2.BitAtBaseZero:=0;

  if(num1.ByteAtBaseZero<0)then num1.ByteAtBaseZero:=0;
  if(num2.ByteAtBaseZero<0)then num2.ByteAtBaseZero:=0;

  if(num1.ByteAtBaseZero<>num2.ByteAtBaseZero)or
  (num1.BitAtBaseZero<>num2.BitAtBaseZero)then Exit;

  Result:=True;
end;

class function ArrMath.IsBitPosSet(const num: TBitPos; const numArr: IntArr
  ): Boolean;
begin
  Result:=False;

  if(Length(numArr)=0)then Exit;
  if(num.ByteAtBaseZero<0)or(num.ByteAtBaseZero>(Length(numArr)-1))then Exit;

  Result:=self.IsBitSet(numArr[num.ByteAtBaseZero],Byte(num.BitAtBaseZero));
end;

class procedure ArrMath.BitPosSetArr(const num: TBitPos; var numArr: IntArr);
begin
  if(Length(numArr)=0)then Exit;
  if(num.ByteAtBaseZero<0)or(num.ByteAtBaseZero>(Length(numArr)-1))then Exit;

  self.SetBit(numArr[num.ByteAtBaseZero],Byte(num.BitAtBaseZero));
end;

class procedure ArrMath.BitPosAddSetArr(const num: TBitPos; var numArr: IntArr);
begin
  if(num.ByteAtBaseZero>(Length(numArr)-1))then SetLength(numArr,num.ByteAtBaseZero+1);
  self.SetBit(numArr[num.ByteAtBaseZero],Byte(num.BitAtBaseZero));
end;

class procedure ArrMath.SumInt(num1, num2: IntArr; var numResult: IntArr);
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

class function ArrMath.SumIntCores(num1, num2: IntArr; var numResult: IntArr
  ): Boolean;
var
  TCProperty:CodeProperties;
  TCBuild:CodeBuild;
  TCCores:CodeCores;

  i:Integer;
  NumLength,nCount1:Integer;
  n1,n2,n3:IntArr;
  TArr1,TArr2:Array of IntArr;
  bool1,bool2:Boolean;
  AdNum1,AdNum2,AdNum3,AdNum4,AdNum5,AdNum6:Integer;
begin
  Result:=False;

  TCProperty:=CodeProperties.Create;
  TCBuild:=CodeBuild.Create(@TCProperty);
  TCCores:=CodeCores.Create;

  n1:=nil;
  n2:=nil;
  n3:=nil;
  TArr1:=nil;
  TArr2:=nil;
  bool1:=False;
  bool2:=False;

  SetLength(numResult,0);
  self.AlignNums(num1,num2);
  NumLength:=Length(num1);

  //Cores_Code_Vars

  TCBuild.Build_Basic^.UnComponent_CreateVariable('Num1',nil);
  TCBuild.Build_Basic^.UnComponent_CreateVariable('Num2',nil);
  TCBuild.Build_Basic^.UnComponent_CreateVariable('NumResult',nil);

  //Cores_Code_Start

  TCBuild.Build_Basic^.Component_JumpTo('JumpHere1');

  AdNum1:=TCBuild.Build_Advance^.Component_SetBit;
  AdNum2:=TCBuild.Build_Advance^.Component_IsBitSet;
  AdNum3:=TCBuild.Build_Advance^.Component_SetLengthInc;
  AdNum4:=TCBuild.Build_Advance^.Component_BitsLength;
  AdNum5:=TCBuild.Build_Advance^.Component_AlignNums;
  AdNum6:=TCBuild.Build_Advance^.Component_SumInt(AdNum5,AdNum4,AdNum2,AdNum3,AdNum1);

  TCBuild.Build_Basic^.Component_Port('JumpHere1');

  TCBuild.Build_Basic^.Component_MoveV2ToGV1('Num1');
  TCBuild.Build_Basic^.Component_MoveV2ToGV2('Num2');
  TCBuild.Build_Basic^.Component_Goto(AdNum6);
  TCBuild.Build_Basic^.Component_MoveGV3ToV1('NumResult');

  //Cores_Code_End

  SetLength(n1,1);
  SetLength(n2,1);

  for i:=0 to (NumLength-1)do begin
    n1[0]:=num1[i];
    n2[0]:=num2[i];

    TCBuild.Build_Basic^.UnComponent_AppendVariable('Num1',n1);
    TCBuild.Build_Basic^.UnComponent_AppendVariable('Num2',n2);

    TCCores.Cores_AddProperty(TCProperty);
  end;
  bool1:=TCCores.Cores_RunPropertyUntilOutBound;

  While(True)do begin
    SetLength(TArr1,0);
    SetLength(TArr2,0);
    for i:=0 to (TCCores.Cores_ArrLength-1)do begin
      SetLength(TArr1,Length(TArr1)+1);
      SetLength(TArr2,Length(TArr2)+1);

      TArr1[Length(TArr1)-1]:=StrMath.AssignNum(TCCores.Cores_GetPropertyVar_Number(i,'NumResult'));
      SetLength(TArr2[Length(TArr2)-1],1);
      if(Length(TArr1[Length(TArr1)-1])>1)then TArr2[Length(TArr2)-1][0]:=TArr1[Length(TArr1)-1][1];

      SetLength(TArr1[Length(TArr1)-1],1);
    end;
    TCCores.Cores_DeleteProperties;

    SetLength(TArr1,Length(TArr1)+1);
    SetLength(TArr1[Length(TArr1)-1],1);
    TArr1[Length(TArr1)-1][0]:=0;

    SetLength(TArr2,Length(TArr2)+1);
    SetLength(TArr2[Length(TArr2)-1],1);
    for i:=(Length(TArr2)-1) downto 1 do TArr2[i]:=StrMath.AssignNum(TArr2[i-1]);
    TArr2[0][0]:=0;

    for i:=0 to (Length(TArr1)-1)do begin
      n1:=StrMath.AssignNum(TArr1[i]);
      n2:=StrMath.AssignNum(TArr2[i]);

      TCBuild.Build_Basic^.UnComponent_AppendVariable('Num1',n1);
      TCBuild.Build_Basic^.UnComponent_AppendVariable('Num2',n2);

      TCCores.Cores_AddProperty(TCProperty);
    end;
    bool2:=TCCores.Cores_RunPropertyUntilOutBound;

    nCount1:=0;
    for i:=0 to (TCCores.Cores_ArrLength-1)do begin
      n3:=TCCores.Cores_GetPropertyVar_Number(i,'NumResult');
      if(Length(n3)=1)then nCount1:=nCount1+1;
    end;
    if(nCount1=TCCores.Cores_ArrLength)then break;
  end;

  SetLength(TArr1,0);
  for i:=0 to (TCCores.Cores_ArrLength-1)do begin
    SetLength(TArr1,Length(TArr1)+1);
    TArr1[Length(TArr1)-1]:=TCCores.Cores_GetPropertyVar_Number(i,'NumResult');
  end;

  SetLength(numResult,Length(TArr1));
  for i:=0 to (Length(numResult)-1)do numResult[i]:=TArr1[i][0];

  TCCores.Free;
  TCBuild.Free;
  TCProperty.Free;

  if(bool1=True)and(bool2=True)then Result:=True;
end;

class procedure ArrMath.SubInt(num1, num2: IntArr; var numResult: IntArr; out
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

class function ArrMath.SubIntCores(num1, num2: IntArr; var numResult: IntArr;
  out num1Bigger: Byte): Boolean;
var
  TCProperty:CodeProperties;
  TCBuild:CodeBuild;
  TCCores:CodeCores;

  i:Integer;
  NumLength,nCount1:Integer;
  n1,n2,n3:IntArr;
  TArr1,TArr2:Array of IntArr;
  bool1,bool2:Boolean;
  AdNum1,AdNum2,AdNum3,AdNum4,AdNum5,AdNum6,AdNum7:Integer;

  TArr3,TArr4:IntArr;
begin
  Result:=False;

  TCProperty:=CodeProperties.Create;
  TCBuild:=CodeBuild.Create(@TCProperty);
  TCCores:=CodeCores.Create;

  SetLength(numResult,0);
  self.AlignNums(num1,num2);
  SetLength(numResult,Length(num1));
  num1Bigger:=self.isNum1Bigger(num1,num2);
  TArr3:=nil;
  TArr4:=nil;
  if(num1Bigger=0)then begin
    self.SetInt(num2,TArr3);
    self.SetInt(num1,TArr4);
  end else
  if(num1Bigger=1)then begin
    self.SetInt(num1,TArr3);
    self.SetInt(num2,TArr4);
  end else begin
    SetLength(numResult,1);
    numResult[0]:=0;
    Exit;
  end;

  n1:=nil;
  n2:=nil;
  n3:=nil;
  TArr1:=nil;
  TArr2:=nil;
  bool1:=False;
  bool2:=False;
  NumLength:=Length(TArr3);

  //Cores_Code_Vars

  TCBuild.Build_Basic^.UnComponent_CreateVariable('Num1',nil);
  TCBuild.Build_Basic^.UnComponent_CreateVariable('Num2',nil);
  TCBuild.Build_Basic^.UnComponent_CreateVariable('NumResult',nil);

  //Cores_Code_Start

  TCBuild.Build_Basic^.Component_JumpTo('JumpHere1');

  AdNum1:=TCBuild.Build_Advance^.Component_SetBit;
  AdNum2:=TCBuild.Build_Advance^.Component_IsBitSet;
  AdNum3:=TCBuild.Build_Advance^.Component_BitsLength;
  AdNum4:=TCBuild.Build_Advance^.Component_isNum1Bigger(AdNum2);
  AdNum5:=TCBUild.Build_Advance^.Component_SetInt;
  AdNum6:=TCBuild.Build_Advance^.Component_AlignNums;
  AdNum7:=TCBuild.Build_Advance^.Component_SubInt(AdNum6,AdNum4,AdNum5,AdNum3,AdNum2,AdNum1);

  TCBuild.Build_Basic^.Component_Port('JumpHere1');

  TCBuild.Build_Basic^.Component_MoveV2ToGV1('Num1');
  TCBuild.Build_Basic^.Component_MoveV2ToGV2('Num2');
  TCBuild.Build_Basic^.Component_Goto(AdNum7);
  TCBuild.Build_Basic^.Component_MoveGV3ToV1('NumResult');

  //Cores_Code_End

  SetLength(n1,1);
  SetLength(n2,1);

  for i:=0 to (NumLength-1)do begin
    n1[0]:=TArr3[i];
    n2[0]:=TArr4[i];

    TCBuild.Build_Basic^.UnComponent_AppendVariable('Num1',n1);
    TCBuild.Build_Basic^.UnComponent_AppendVariable('Num2',n2);

    TCCores.Cores_AddProperty(TCProperty);
  end;
  bool1:=TCCores.Cores_RunPropertyUntilOutBound;

  While(True)do begin
    SetLength(TArr1,0);
    SetLength(TArr2,0);
    for i:=0 to (TCCores.Cores_ArrLength-1)do begin
      SetLength(TArr1,Length(TArr1)+1);
      SetLength(TArr2,Length(TArr2)+1);

      TArr1[Length(TArr1)-1]:=TCCores.Cores_GetPropertyVar_Number(i,'NumResult');
      SetLength(TArr2[Length(TArr2)-1],1);
      if(Length(TArr1[Length(TArr1)-1])>1)then TArr2[Length(TArr2)-1][0]:=TArr1[Length(TArr1)-1][1];
    end;
    TCCores.Cores_DeleteProperties;

    SetLength(TArr1,Length(TArr1)+1);
    SetLength(TArr1[Length(TArr1)-1],1);
    TArr1[Length(TArr1)-1][0]:=0;

    SetLength(TArr2,Length(TArr2)+1);
    SetLength(TArr2[Length(TArr2)-1],1);
    for i:=(Length(TArr2)-1) downto 1 do TArr2[i]:=TArr2[i-1];
    TArr2[0][0]:=0;

    for i:=0 to (Length(TArr1)-1)do begin
      n1:=TArr1[i];
      n2:=TArr2[i];

      TCBuild.Build_Basic^.UnComponent_AppendVariable('Num1',n1);
      TCBuild.Build_Basic^.UnComponent_AppendVariable('Num2',n2);

      TCCores.Cores_AddProperty(TCProperty);
    end;
    bool2:=TCCores.Cores_RunPropertyUntilOutBound;

    nCount1:=0;
    for i:=0 to (TCCores.Cores_ArrLength-1)do begin
      n3:=TCCores.Cores_GetPropertyVar_Number(i,'NumResult');
      if(Length(n3)=1)then nCount1:=nCount1+1;
    end;
    if(nCount1=TCCores.Cores_ArrLength)then break;
  end;

  SetLength(TArr1,0);
  for i:=0 to (TCCores.Cores_ArrLength-1)do begin
    SetLength(TArr1,Length(TArr1)+1);
    TArr1[Length(TArr1)-1]:=TCCores.Cores_GetPropertyVar_Number(i,'NumResult');
  end;

  SetLength(numResult,Length(TArr1));
  for i:=0 to (Length(numResult)-1)do numResult[i]:=TArr1[i][0];

  TCCores.Free;
  TCBuild.Free;
  TCProperty.Free;

  if(bool1=True)and(bool2=True)then Result:=True;
end;

class procedure ArrMath.SumSubInt(num1, num2: IntArr; var numResult: IntArr);
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

class function ArrMath.SumSubIntCores(num1, num2: IntArr; var numResult: IntArr
  ): Boolean;
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
    Result:=self.SumIntCores(num1,num2,numResult);
    self.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=False)then begin
    Result:=self.SubIntCores(num1,num2,numResult,ByteA);
    if(ByteA=0)then self.Shift(False,False,numResult) else
    if(ByteA=1)then self.Shift(False,True,numResult) else
    if(ByteA=2)then self.Shift(False,True,numResult);
  end else
  if(bool1=False)and(bool2=True)then begin
    Result:=self.SubIntCores(num1,num2,numResult,ByteA);
    if(ByteA=0)then self.Shift(False,True,numResult) else
    if(ByteA=1)then self.Shift(False,False,numResult) else
    if(ByteA=2)then self.Shift(False,True,numResult);
  end else
  if(bool1=True)and(bool2=True)then begin
    Result:=self.SumIntCores(num1,num2,numResult);
    self.Shift(False,True,numResult);
  end;
  if(Length(numResult)>1)then begin
    self.CutSome(numResult,num1);
    self.SetInt(num1,numResult);
  end;
end;

class procedure ArrMath.MulInt(num1, num2: IntArr; var numResult: IntArr);
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

class procedure ArrMath.MulIntSum(num1, num2: IntArr; var numResult: IntArr);
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

class procedure ArrMath.MulIntBit(num1, num2: IntArr; var numResult: IntArr);
var
  i:Integer;
  n1PosCount:TBitPos;
  n1Pos,n1PosF1,n2Pos,n2PosF1,n2PosF3:TBitPos;
  n1PosF2,n2PosF2:TBitPos;
  bool1,bool2,bool3:Boolean;
  AData:Byte;
  CData0,CData1:Integer;
begin
  SetLength(numResult,0);
  self.SetBitPosZero(n1PosCount);

  self.SetBitPosZero(n1Pos);
  self.SetBitPosZero(n1PosF1);
  self.GetLastBit(n1PosF2,num1);

  self.SetBitPosZero(n2Pos);
  self.SetBitPosZero(n2PosF1);
  self.GetLastBit(n2PosF2,num2);
  self.SetBitPosZero(n2PosF3);

  CData0:=0;
  CData1:=0;
  bool2:=False;
  bool3:=False;
  While(bool3=False)do begin
    bool1:=False;
    AData:=0;
    CData1:=0;
    repeat
      if(bool1=True)then begin self.DecBitPos(n1Pos);self.IncBitPos(n2Pos);end;
      if(self.IsBitPosSet(n1Pos,num1)=True)and
      (self.IsBitPosSet(n2Pos,num2)=True)then begin
        if(CData0>0)then begin CData0:=CData0-1;AData:=AData+2;end else AData:=AData+1;
        if(AData=2)then begin AData:=0;CData1:=CData1+1;end else
        if(AData=3)then begin AData:=1;CData1:=CData1+1;end;
      end else
      if(CData0>0)then begin
        CData0:=CData0-1;AData:=AData+1;
        if(AData=2)then begin AData:=0;CData1:=CData1+1;end else
        if(AData=3)then begin AData:=1;CData1:=CData1+1;end;
      end;
      if(self.IsBitPosEqual(n1Pos,n1PosF2)=True)and(bool2=False)then bool2:=True;
      if(bool1=False)then bool1:=True;
      if(self.IsBitPosEqual(n1Pos,n1PosF2)=True)and
      (self.IsBitPosEqual(n2Pos,n2PosF2)=True)then bool3:=True;
    until(self.IsBitPosEqual(n2Pos,n2PosF1)=True);

    for i:=1 to CData0 do begin
      if(CData0>0)then begin
        CData0:=CData0-1;AData:=AData+1;
        if(AData=2)then begin AData:=0;CData1:=CData1+1;end else
        if(AData=3)then begin AData:=1;CData1:=CData1+1;end;
      end;
    end;

    CData0:=CData0+CData1;
    if(AData=1)then self.BitPosAddSetArr(n1PosCount,numResult);
    self.IncBitPos(n1PosCount);
    if(self.IsBitPosEqual(n1PosF1,n1PosF2)=False)then self.IncBitPos(n1PosF1);
    if(self.IsBitPosEqual(n2PosF1,n2PosF2)=False)then self.IncBitPos(n2PosF1);
    self.CopyBitPos(n1PosF1,n1Pos);
    if(bool2=False)then self.SetBitPosZero(n2Pos)else
    if(bool2=True)and(self.IsBitPosEqual(n2PosF3,n2PosF2)=False)then begin
      self.IncBitPos(n2PosF3);
      self.CopyBitPos(n2PosF3,n2Pos);
    end;
  end;

  if(CData0=1)then self.BitPosAddSetArr(n1PosCount,numResult);
end;

class procedure ArrMath.DivInt(num1, num2: IntArr; var numResult: IntArr);
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

class procedure ArrMath.MulDivInt(num1, num2: IntArr; var numResult: IntArr;
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
    //if(doMul=True)then self.MulInt(num1,num2,numResult) else
    if(doMul=True)then self.MulIntBit(num1,num2,numResult) else
    //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
    if(doMul=False)then self.DivInt(num1,num2,numResult);
    self.Shift(False,True,numResult);
  end else
  if(bool1=True)and(bool2=False)then begin
    //if(doMul=True)then self.MulInt(num1,num2,numResult) else
    if(doMul=True)then self.MulIntBit(num1,num2,numResult) else
    //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
    if(doMul=False)then self.DivInt(num1,num2,numResult);
    self.Shift(False,False,numResult);
  end else
  if(bool1=False)and(bool2=True)then begin
    //if(doMul=True)then self.MulInt(num1,num2,numResult) else
    if(doMul=True)then self.MulIntBit(num1,num2,numResult) else
    //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
    if(doMul=False)then self.DivInt(num1,num2,numResult);
    self.Shift(False,False,numResult);
  end else
  if(bool1=True)and(bool2=True)then begin
    //if(doMul=True)then self.MulInt(num1,num2,numResult) else
    if(doMul=True)then self.MulIntBit(num1,num2,numResult) else
    //if(doMul=True)then self.MulIntSum(num1,num2,numResult) else
    if(doMul=False)then self.DivInt(num1,num2,numResult);
    self.Shift(False,True,numResult);
  end;
  if(Length(numResult)>1)then begin
    self.CutSome(numResult,num1);
    self.SetInt(num1,numResult);
  end;
end;

class procedure ArrMath.xPowerIntArr(Base, Power: IntArr; var numResult: IntArr
  );
var
  TArr1,TArr2:IntArr;
  ByteA:Byte;
begin
  SetLength(numResult,0);
  numResult:=InitInt('1');

  ByteA:=0;
  if(StrMath.ConditionInt(Power,'=',InitInt('0'))=True)then Exit;
  if(StrMath.ConditionInt(Power,'<',InitInt('0'))=True)then ByteA:=1;
  TArr1:=nil;
  TArr2:=nil;

  if(ByteA=0)then begin
    TArr1:=InitInt('1');
    While(StrMath.ConditionInt(TArr1,'<=',Power)=True)do begin
      numResult:=StrMath.MulDivInt(numResult,Base);
      TArr1:=StrMath.SumSubInt(TArr1,InitInt('1'));
    end;
  end else begin
    TArr1:=InitInt('-1');
    TArr2:=StrMath.AssignNum(Base);
    While(StrMath.ConditionInt(TArr1,'>=',Power)=True)do begin
      TArr2:=StrMath.MulDivInt(TArr2,Base);
      TArr1:=StrMath.SumSubInt(TArr1,InitInt('-1'));
    end;
    numResult:=StrMath.MulDivInt(Base,TArr2,False);
  end;

  SetLength(TArr1,0);
  SetLength(TArr2,0);
end;

class procedure ArrMath.StrToIntArr(AStr: String; var numResult: IntArr);
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

class procedure ArrMath.IntArrToStr(num: IntArr; var AStr: String);
var
  n1Str,n2Str:String;
  n1Pos,n1PosF1:TBitPos;
  ByteA:Byte;
begin
  AStr:='nil';
  if(Length(num)=0)then Exit;
  ByteA:=isPositiveIntAdvance(num);  // 0 = False, 1 = True, 2 = Zero, 3 = Error
  if(ByteA=3)then Exit;
  self.Shift(True,False,num);

  AStr:='0.0';
  n1Str:='1';
  n2Str:='0';

  self.SetBitPosZero(n1Pos);
  self.GetLastBit(n1PosF1,num);

  While(self.IsBitPosEqual(n1Pos,n1PosF1)=False)do begin
    n1Str:=StringMath.SumSub(n1Str,n2Str);
    if(self.IsBitPosSet(n1Pos,num)=True)then AStr:=StringMath.SumSub(AStr,n1Str);
    n2Str:=n1Str;
    self.IncBitPos(n1Pos);
  end;
  if(self.IsBitPosSet(n1Pos,num)=True)then begin
    n1Str:=StringMath.SumSub(n1Str,n2Str);
    AStr:=StringMath.SumSub(AStr,n1Str);
  end;

  AStr:=StringMath.RR(AStr,False);
  if(ByteA=0)then AStr:='-'+AStr;
end;

class procedure ArrMath.IntArrToStr_Old1(num: IntArr; var AStr: String);
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

class procedure ArrMath.IntArrMod(num1, num2: IntArr; var numResult: IntArr);
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

class function StringMath.RR(const x: Real): Integer;
begin
  Result:=Round(x);
  if(Round(x)>x)then Result:=Round(x)-1;
end;

class function StringMath.unNum(const x: Integer): Integer;
begin
  if(x<0)then Result:=x*(-1) else Result:=x;
end;

class procedure StringMath.MoveDeciDiv(var Num1, Num2: String);
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

class procedure StringMath.getWholeDeci(const NumV: String; out AWhole,
  ADeci: String);
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

class function StringMath.isPositiveAd(const NumV: String): Byte;
begin
  Result:=2;
  if(NumV='0')or(NumV='0.0')then Exit;
  if(Copy(NumV,1,1)='-')then Result:=0
  else Result:=1;
end;

class function StringMath.isPositive(const NumV: String): Boolean;
begin
  if(Copy(NumV,1,1)='-')then Result:=False
  else Result:=True;
end;

class function StringMath.CleanNum(const NumV: String): String;
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

class procedure StringMath.GetAlign(var num1, num2: String;
  const StrPlace: String; const isRight: Boolean);
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

class function StringMath.isNum1Bigger(const num1, num2: String): Byte;
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

class procedure StringMath.Carrying(const num1, num2: String; var TArr1,
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

class function StringMath.Reverse(const Num1: String): String;
var
  i:Integer;
begin
  Result:='';
  for i:=1 to Length(Num1)do Result:=Num1[i]+Result;
end;

class function StringMath.RR(x: String; const WithDeci: Boolean): String;
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

class function StringMath.RD(x: String; const WithDeci: Boolean): String;
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

class function StringMath.RX(x: String; const WithDeci: Boolean): String;
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

class function StringMath.GetDeciCountBaseOne(num: String): Integer;
var
  Str1,Str2:String;
begin
  Str1:='';
  Str2:='';
  self.getWholeDeci(num,Str1,Str2);
  Result:=Length(Str2);
end;

class procedure StringMath.RealCutDeciCountBaseOne(var num: String;
  CutAt: Integer);
var
  TArr1:RealArr;
begin
  TArr1:=nil;
  TArr1:=InitReal(num);
  RealMath.RealCutDeciCountBaseOne(TArr1,CutAt);
  num:=RealStr(TArr1);
  SetLength(TArr1,0);
end;

class procedure StringMath.RealCutDeciCountBaseOneR(var num: String;
  CutAt: Integer);
var
  TArr1:RealArr;
begin
  TArr1:=nil;
  TArr1:=InitReal(num);
  RealMath.RealCutDeciCountBaseOneR(TArr1,CutAt);
  num:=RealStr(TArr1);
  SetLength(TArr1,0);
end;

class function StringMath.Sum(const num1, num2: String): String;
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

class function StringMath.Sub(const num1, num2: String): String;
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

class function StringMath.SumSub(const num1, num2: String): String;
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

class function StringMath.Mul(const num1, num2: String): String;
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

class function StringMath.DivA(const num1, num2: String;
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

class function StringMath.MulDiv(const num1, num2: String;
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

class function StringMath.xPowerInt(Abase, Apower: String;
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

class function StringMath.lyn(x: String; const ADeciDigitCountBaseOne: Integer
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

class function StringMath.lnx(x: String; ADeciDigitCountBaseOne: Integer
  ): String;
var
  n1,n2,n3:String;
begin
  n1:=x;
  n2:='0';
  n3:='';
  while(Condition(StrMath.ToInt(n1,False),'<>','1')=True)do begin
    n1:=StrMath.MulDiv(n1,'2',ADeciDigitCountBaseOne,False);
    n2:=StrMath.SumSub(n2,'1',ADeciDigitCountBaseOne);
  end;
  n3:='0.693147180559945309417232121458176568075500134360255254120680009493393621969694715605863326996418687542001481';
  if(ADeciDigitCountBaseOne<=100)then n3:=Copy(n3,1,ADeciDigitCountBaseOne);
  n3:=StrMath.MulDiv(n2,n3,ADeciDigitCountBaseOne,True);
  n1:=self.lyn(n1,ADeciDigitCountBaseOne);
  Result:=StrMath.SumSub(n1,n3,ADeciDigitCountBaseOne);
end;

class function StringMath.log(num, base: String; ADeciDigitCountBaseOne: Integer
  ): String;
var
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
  n1:=StrMath.ln(num,ADeciDigitCountBaseOne);
  n2:=StrMath.ln(base,ADeciDigitCountBaseOne);
  Result:=StrMath.MulDiv(n1,n2,ADeciDigitCountBaseOne,False);
end;

class function StringMath.SqrRoot(x: String;
  const ADeciDigitCountBaseOne: Integer): String;
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

class function StringMath.Sine(Degrees: String;
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

class function StringMath.Cosine(Degrees: String;
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

class function StringMath.Tangent(Degrees: String;
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

class function StringMath.InSine(SineX: String;
  const ADeciDigitCountBaseOne: Integer): String;
begin
  SineX:=self.CleanNum(SineX);
  if(SineX='nan')then begin
    Result:='nan';
    Exit;
  end;
  Result:=self.MulDiv(self.xPowerInt(SineX,'2',ADeciDigitCountBaseOne),'90',
  ADeciDigitCountBaseOne);
end;

class function StringMath.InCosine(CosineX: String;
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

class function StringMath.InTangent(TangentX: String;
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

class function StringMath.FactorialInt(x: String;
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

class function StringMath.ePower(x: String; ADeciDigitCountBaseOne: Integer
  ): String;
var
  n1,n2,n3:String;
  i:Integer;
begin
  Result:='1';
  n1:='1';
  n2:='1';
  n3:='';
  for i:=1 to ADeciDigitCountBaseOne do n3:=n3+'0';
  if(n3='')then n3:='0';
  n3:='0.'+n3+'1';
  While(True)do begin
    if(Condition(StrMath.unNum(n1),'<',n3)=True)then break;
    n1:=StrMath.MulDiv(n1,StrMath.MulDiv(x,n2,ADeciDigitCountBaseOne,False),ADeciDigitCountBaseOne);
    Result:=StrMath.SumSub(Result,n1,ADeciDigitCountBaseOne);
    n2:=StrMath.SumSub(n2,'1',ADeciDigitCountBaseOne);
  end;
end;

class function StringMath.ePowerX(x: String; ADeciDigitCountBaseOne: Integer
  ): String;
var
  n1,n2,n3:String;
begin
  x:=self.CleanNum(x);
  if(x='nan')then begin
    Result:='nan';
    Exit;
  end;
  n1:='';
  n2:='';
  n3:='';
  n1:=StrMath.MulDiv(x,StrMath.ln('2',ADeciDigitCountBaseOne),ADeciDigitCountBaseOne,False);
  n1:=StrMath.ToRound(n1,False);
  n2:=StrMath.MulDiv(n1,StrMath.ln('2',ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);
  n2:=StrMath.SumSub(x,StrMath.MulDiv(n2,'-1',ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);
  n3:=self.xPowerInt('2',n1,ADeciDigitCountBaseOne);
  Result:=StrMath.MulDiv(n3,self.ePower(n2,ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);
end;

class function StringMath.xPower(Abase, Apower: String;
  ADeciDigitCountBaseOne: Integer): String;
var
  n1,n2:String;
begin
  n1:=StrMath.ToInt(Apower,False);
  n2:=StrMath.SumSub(Apower,StrMath.MulDiv(n1,'-1',ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);

  n1:=self.xPowerInt(Abase,n1,ADeciDigitCountBaseOne);
  n2:=StrMath.ePower(StrMath.MulDiv(n2,StrMath.ln(Abase,ADeciDigitCountBaseOne),ADeciDigitCountBaseOne),ADeciDigitCountBaseOne);

  Result:=StrMath.MulDiv(n1,n2,ADeciDigitCountBaseOne);
end;

class procedure StringMath.xPowerDiv2(var Abase, Apower: String;
  ADeciDigitCountBaseOne: Integer);
var
  n1,n2,n3:String;
begin
  n1:='';
  n2:='';
  n3:='';
  if(StrMath.isInt(Apower)=False)then Exit;
  n1:=Abase;
  n2:=Apower;
  While(Condition(Abase,'<=',Apower)=True)do begin
    n3:=StrMath.MulDiv(n2,'2',ADeciDigitCountBaseOne,False);
    if(Condition(n3,'=','0.0')=True)then Exit else
    if(StrMath.isInt(n3)=False)then Exit;
    n1:=self.xPowerInt(n1,'2',ADeciDigitCountBaseOne);
    n2:=n3;
    Abase:=n1;
    Apower:=n2;
  end;
  //End...
end;

class function StringMath.xPowerX(Abase, Apower: String;
  ADeciDigitCountBaseOne: Integer): String;
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
  self.xPowerDiv2(Abase,Apower,ADeciDigitCountBaseOne);
  Result:=self.xPower(Abase,Apower,ADeciDigitCountBaseOne);
end;

class function StringMath.xModX(num1, num2: String): String;
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

end.

