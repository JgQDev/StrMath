# StrMath for FreePascal

A FreePascal Unit for String Number Calculation and Accurate Results.

## Extra
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
