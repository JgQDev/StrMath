# StrMath for FreePascal

A FreePascal Unit for String Number Calculation and Accurate Results.

## Extra
### IntArr-Math
- ConditionInt(Num1,Symbol,Num2):Boolean
- isNaNInt(num):Boolean
- IntBitToStr(num):String
- Shift(isLeft,isSet,num)
- Shift(isLeft,num)
- ShiftLeft(num)
- ShiftRight(num)
- isIntZero(num):Boolean
- isPositiveIntAdvance(num):Byte
- isPositiveInt(num):Boolean
- SetZero(num)
- AssignInt(num):IntArr 
- InitInt(num):IntArr
- InitStr(num):String
### String-Math
- Condition(Num1,Symbol,Num2):Boolean
- CleanNum(NumV):String
- isPositive(NumV):Boolean
- isPositiveAdvance(NumV):Byte
- ToInt(NumV,WithDeci=True):String
- ToDeci(NumV,WithDeci=True):String
- ToRound(NumV,WithDeci=True):String
- isInt(NumV):boolean
- isNumber(NumV):Boolean
- SetDeciCountDefault
- SetDeciCount(CountBaseOne)
- GetDeciCount:Integer
- CutDeciCount(NumV,DeciCountBaseOne):String
- isNaN(NumV):Boolean
- isBinary(Num):Boolean;

## Basic Number Calcus
### IntArr-Math
- SumSubInt(num1,num2):IntArr
- MulDivInt(num1,num2,doMul=True):IntArr
### String-Math
- SumSub(Num1,Num2):String
- MulDiv(Num1,Num2,doMul=True):String

## Advance Number Calcus
- ln(x):String
- log(num):String
- log(num,Base):String
- SqrRoot(x):String
- Sine(Degrees):String
- Cosine(Degrees):String
- Tangent(Degrees):String
- InSine(SineX):String
- InCosine(CosineX):String
- InTangent(TangentX):String
- ePower(Power):String
- xPower(Base,Power):String

## Binary Calcus
- IntToBinary(Num):String;
- BinaryToInt(Num):String;
