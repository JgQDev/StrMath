# StrMath for FreePascal

A FreePascal Unit for String Number Calculation and Accurate Results.

## Extra
### Extra-Math
- function isNaNNumber(const num: Number): Boolean;
- procedure Shift (const isLeft, isSet: Boolean; var num: Number);
- procedure Shift (const isLeft: Boolean; var num: Number);
- procedure ShiftPace (const isLeft: Boolean; const PaceBaseOne: Integer; var num: Number);
- procedure ShiftLeft (var num: Number);
- procedure ShiftRight (var num: Number);
- procedure ShiftPaceLeft (const PaceBaseOne: Integer; var num: Number);
- procedure ShiftPaceRight (const PaceBaseOne: Integer; var num: Number);
- function AssignNum (const num: Number): Number; 
### IntArr-Math
- function ConditionInt (Num1: IntArr; Symbol: String; Num2: IntArr): Boolean;
- function InRangeInt (var varNum: IntArr; fromNum, ToNum, PaceNum: IntArr): Boolean;
- function InRangeInt (var varNum: IntArr; fromNum, ToNum: IntArr): Boolean;
- function IntToBitStr (const num: IntArr): String;
- function isIntZero (const num: IntArr): Boolean;
- function isPositiveIntAdvance (const num: IntArr): Byte; 
- function isPositiveInt (const num: IntArr): Boolean;
- procedure SetZeroInt (var num: IntArr); 
- function InitInt (const num: String): IntArr;
- function IntStr (const num: IntArr): String;
- function IntMod (const num1, num2: IntArr): IntArr; 
### RealArr-Math
- function ConditionReal (Num1: RealArr; Symbol: String; Num2: RealArr): Boolean;
- function InRangeReal (var varNum: RealArr; fromNum, ToNum, PaceNum: RealArr): Boolean;
- function InRangeReal (var varNum: RealArr; fromNum, ToNum: RealArr): Boolean;
- function RealToBitStr (const num: RealArr): String;
- function IntReal (const num: IntArr): RealArr;
- function RoundReal (const num: RealArr): IntArr;
- function RoundRealR (const num: RealArr): IntArr;
- function RealDeciCountBaseOne (const num: RealArr): Integer;
- function CutRealDeciCountBaseOne (const num: RealArr; const CutAt: Integer): RealArr;
- function CutRealDeciCountBaseOneR (const num: RealArr; const CutAt: Integer): RealArr;
- function isPositiveRealAdvance (const num: RealArr): Byte; 
- function isPositiveReal (const num: RealArr): Boolean; 
- function InitReal (const num: String): RealArr;
- function RealStr (const num: RealArr): String;
- function RealMod (const num1, num2: RealArr): RealArr; 
### String-Math
- function Condition (Num1, Symbol, Num2: String): Boolean;
- function InRange (var varNum: String; fromNum, ToNum, PaceNum: String): Boolean;
- function InRange (var varNum: String; fromNum, ToNum: String): Boolean;
- function isNaN (const NumV: String): Boolean;function xMod(const num1,num2:String):String;  
- function CutDeciCount (const NumV: String; const DeciCountBaseOne: Integer): String;
- function isNumber (const NumV: String): Boolean;
- function isInt (const NumV: String): boolean;
- function CleanNum (const NumV: String): String;
- function ToRound (const NumV: String; const WithDeci: Boolean = True): String;
- function ToRound (const NumV: String; out AAnswer: String; const WithDeci: Boolean = True): Boolean;
- function ToInt (const NumV: String; const WithDeci: Boolean = True): String;
- function ToInt (const NumV: String; out AAnswer: String; const WithDeci: Boolean = True): Boolean;
- function ToDeci (const NumV: String; const WithDeci: Boolean = True): String;
- function ToDeci (const NumV: String; out AAnswer:String; const WithDeci: Boolean = True): Boolean;
- function isPositiveAdvance (const NumV: String): Byte; 
- function isPositive (const NumV: String): Boolean;
- function Num1Bigger (const Num1, Num2: String): Byte;
- function xMod (const num1, num2: String): String;

## Basic Number Calcus
### IntArr-Math
- function SumSubInt (const num1, num2: IntArr): IntArr;
- procedure SumSubInt (const num1, num2: IntArr; var AAnswer: IntArr);
- function MulDivInt (const num1, num2: IntArr; const doMul: Boolean = True): IntArr;
- procedure MulDivInt (const num1, num2: IntArr; var AAnswer: IntArr; const doMul: Boolean = True);
### RealArr-Math
- function SumSubRealO (const num1, num2: RealArr): RealArr;
- procedure SumSubRealO (const num1, num2: RealArr; var AAnswer: RealArr);
- function SumSubRealO (const num1, num2: RealArr; const DeciCountBaseOne: Integer): RealArr;
- procedure SumSubRealO (const num1, num2: RealArr; var AAnswer: RealArr; const DeciCountBaseOne: Integer);
- function MulDivRealO (const num1, num2: RealArr; const doMul: Boolean = True): RealArr;
- procedure MulDivRealO (const num1, num2: RealArr; var AAnswer: RealArr; const doMul: Boolean = True);
- function MulDivRealO (const num1, num2: RealArr; const DeciCountBaseOne: Integer; const doMul: Boolean = True): RealArr;
- procedure MulDivRealO (const num1, num2: RealArr; var AAnswer: RealArr; const DeciCountBaseOne: Integer; const doMul: Boolean = True);
- function SumSubReal (const num1, num2: RealArr): RealArr;
- procedure SumSubReal (const num1, num2: RealArr; var AAnswer: RealArr);
- function SumSubReal (const num1, num2: RealArr; const DeciCountBaseOne: Integer): RealArr;
- procedure SumSubReal (const num1, num2: RealArr; var AAnswer: RealArr; const DeciCountBaseOne: Integer);
- function MulDivReal (const num1, num2: RealArr; const doMul: Boolean = True): RealArr;
- procedure MulDivReal (const num1, num2: RealArr; var AAnswer: RealArr; const doMul: Boolean = True);
- function MulDivReal (const num1, num2: RealArr; const DeciCountBaseOne: nteger; const doMul: Boolean = True): RealArr;
- procedure MulDivReal (const num1, num2: RealArr; var AAnswer: RealArr; const DeciCountBaseOne: Integer; const doMul: Boolean = True);
### String-Math
- function SumSub (const Num1, Num2: String): String;
- function MulDiv (const Num1, Num2: String; const doMul: Boolean = True): String;
- function SumSub (const Num1, Num2: String; out AAnswer: String): Boolean;
- function MulDiv (const Num1, Num2: String; out AAnswer: String; const doMul: Boolean = True): Boolean;
- function SumSub (const Num1, Num2: String; const DeciCountBaseOne: Integer): String;
- function MulDiv (const Num1, Num2: String; const DeciCountBaseOne: Integer; const doMul: Boolean = True): String;
- function SumSub (const Num1, Num2: String; out AAnswer: String; const DeciCountBaseOne: Integer): Boolean;
- function MulDiv (const Num1, Num2: String; out AAnswer: String; const DeciCountBaseOne: Integer; const doMul: Boolean = True): Boolean; 

## Advance Number Calcus
### RealArr-Math
- function lnReal (const num: RealArr): RealArr;
- procedure lnReal (const num: RealArr; var AAnswer: RealArr);
- function logReal (const num: RealArr): RealArr;
- procedure logReal (const num: RealArr; var AAnswer: RealArr);
- function logReal (const num, base: RealArr): RealArr;
- procedure logReal (const num, base: RealArr; var AAnswer: RealArr);
- function SqrRootReal (const num: RealArr): RealArr;
- procedure SqrRootReal (const num: RealArr; var AAnswer: RealArr);
- function SineReal (const Degrees: RealArr): RealArr;
- procedure SineReal (const Degrees: RealArr; var AAnswer: RealArr);
- function CosineReal (const Degrees: RealArr): RealArr;
- procedure CosineReal (const Degrees: RealArr; var AAnswer: RealArr);
- function TangentReal (const Degrees: RealArr): RealArr;
- procedure TangentReal (const Degrees: RealArr; var AAnswer: RealArr);
- function InSineReal (const SineX: RealArr): RealArr;
- procedure InSineReal (const SineX: RealArr; var AAnswer: RealArr);
- function InCosineReal (const CosineX: RealArr): RealArr;
- procedure InCosineReal (const CosineX: RealArr; var AAnswer: RealArr);
- function InTangentReal (const TangentX: RealArr): RealArr;
- procedure InTangentReal (const TangentX: RealArr; var AAnswer: RealArr);
- function ePowerReal (const Power: RealArr): RealArr;
- procedure ePowerReal (const Power: RealArr; var AAnswer: RealArr);
- function xPowerReal (const Base, Power: RealArr): RealArr;
- procedure xPowerReal (const Base, Power: RealArr; var AAnswer: RealArr);
### String-Math
- function ln (const x: String): String;
- function ln (const x: String; out AAnswer: String): Boolean;
- function log (const num: String): String;
- function log (const num: String; out AAnswer: String): Boolean;
- function log (const num, Base: String): String;
- function log (const num, Base: String; out AAnswer: String): Boolean;
- function SqrRoot (const x: String): String;
- function SqrRoot (const x: String; out AAnswer: String): Boolean;
- function Sine (const Degrees: String): String;
- function Sine (const Degrees: String; out AAnswer: String): Boolean;
- function Cosine (const Degrees: String): String;
- function Cosine (const Degrees: String; out AAnswer: String): Boolean;
- function Tangent (const Degrees: String): String;
- function Tangent (const Degrees: String; out AAnswer: String): Boolean;
- function InSine (const SineX: String): String;
- function InSine (const SineX: String; out AAnswer: String): Boolean;
- function InCosine (const CosineX: String): String;
- function InCosine (const CosineX: String; out AAnswer: String): Boolean;
- function InTangent (const TangentX: String): String;
- function InTangent (const TangentX: String; out AAnswer: String): Boolean;
- function ePower (const Power: String): String;
- function ePower (const Power: String; out AAnswer: String): Boolean;
- function xPower (const Base, Power: String): String;
- function xPower (const Base, Power: String; out AAnswer: String): Boolean; 

## Binary Calcus
- function isBinary (const Num: String): Boolean;
- function IntToBinary (const Num: String): String;
- function IntToBinary (const Num: String; out AAnswer: String): Boolean;
- function BinaryToInt (const Num: String): String;
- function BinaryToInt (const Num: String; out AAnswer: String): Boolean;


## Code-Example
```freepascal
procedure TForm1.Test;
var
  StrResult: String;
  Int1, Int2, Int3, Int4: IntArr;
  Real1, Real2, Real3, Real4: RealArr;
  Str1, Str2, Str3, Str4: String;
begin
  StrResult := '';

  Int1 := nil;
  Int2 := nil;
  Int3 := nil;
  Int4 := nil;

  Real1 := nil;
  Real2 := nil;
  Real3 := nil;
  Real4 := nil;

  Int1 := InitInt ('1');                           // Declaring Variable
  Int2 := InitInt ('1');                           // Declaring Variable
  Int4 := InitInt ('-1');                          // Declaring Variable
  Int3 := SumSubInt (Int1, Int2);                  // (Int1 + Int2) = Int3
  Int3 := SumSubInt (Int1, Int4);                  // (Int1 - Int4) = Int3
  Int3 := MulDivInt (Int1, Int2);                  // (Int1 * Int2) = Int3
  Int3 := MulDivInt (Int1, Int2, False);           // (Int1 / Int2) = Int3
  StrResult := IntStr (Int3);                      // Int3 to String

  Real1 := InitReal ('1.0');                       // Declaring Variable
  Real2 := InitReal ('1.0');                       // Declaring Variable
  Real4 := InitReal ('-1.0');                      // Declaring Variable
  Real3 := SumSubReal (Real1, Real2);              // (Real1 + Real2) = Real3
  Real3 := SumSubReal (Real1, Real4);              // (Real1 - Real4) = Real3
  Real3 := MulDivReal (Real1, Real2);              // (Real1 * Real2) = Real3
  Real3 := MulDivReal (Real1, Real2, False);       // (Real1 / Real2) = Real3
  StrResult := RealStr (Real3);                    // Real3 to String

  Str1 := '1.0';                                   // Declaring Variable
  Str2 := '1.0';                                   // Declaring Variable
  Str4 := '-1.0';                                  // Declaring Variable
  Str3 := SumSub (Str1, Str2);                     // (Str1 + Str2) = Str3
  Str3 := SumSub (Str1, Str4);                     // (Str1 - Str4) = Str3
  Str3 := MulDiv (Str1, Str2);                     // (Str1 * Str2) = Str3
  Str3 := MulDiv (Str1, Str2, False);              // (Str1 / Str2) = Str3
end; 
```
