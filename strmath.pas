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

function isNaN(const NumV:String):Boolean;
function GetDeciCount:Integer;
procedure SetDeciCountDefault;
procedure SetDeciCount(const CountBaseOne:Integer);
procedure CleanNum(var NumV:String);
function CleanNum(const NumV:String):String;
function ToInt(const NumV:String):String;
function isPositiveAdvance(const NumV:String):Byte;
function isPositive(const NumV:String):Boolean;
function isNum1Bigger(const Num1,Num2:String):Byte;
function SumSub(const Num1,Num2:String):String;
function MulDiv(const Num1,Num2:String;const doMul:Boolean = True):String;

implementation

type

  TNumArr = Array of Integer;

  { StringMath }

  StringMath = class(TObject)
  public
    TDeciDigitCountBaseOne:Integer;
    constructor Create;
    destructor Destroy; override;
    function RR(const x:Real):Integer;
    function unNum(const x:Integer):Integer;
    procedure MoveDeciDiv(var Num1,Num2:String);
    procedure getWholeDeci(const NumV:String;out AWhole,ADeci:String);
    function isDigit(const NumV:String):Boolean;
    function isPositiveAd(const NumV:String):Byte;
    function isPositive(const NumV:String):Boolean;
    function CleanNum(const NumV:String):String;
    procedure GetAlign(var num1,num2:String;const StrPlace:String;
      const isRight:Boolean);
    function isNum1Bigger(const num1,num2:String):Byte;
    procedure Carrying(const num1,num2:String;var TArr1,TArr2:TNumArr);
    function Reverse(const Num1:String):String;
    function Sum(const num1,num2:String):String;
    function Sub(const num1,num2:String):String;
    function SumSub(const num1,num2:String):String;
    function Mul(const num1,num2:String):String;
    function DivA(const num1,num2:String;const DeciDigitCountBaseOne:Integer):String;
    function MulDiv(const num1,num2:String;const doMul:Boolean = True):String;
  end;

var AStrMath:StringMath;

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
  Result:=AStrMath.TDeciDigitCountBaseOne;
end;

procedure SetDeciCountDefault;
begin
  AStrMath.TDeciDigitCountBaseOne:=5;
end;

procedure SetDeciCount(const CountBaseOne: Integer);
begin
  AStrMath.TDeciDigitCountBaseOne:=CountBaseOne;
end;

procedure CleanNum(var NumV: String);
var
  NV:String;
begin
  NV:=AStrMath.CleanNum(NumV);
  NumV:=NV;
end;

function CleanNum(const NumV: String): String;
begin
  Result:=AStrMath.CleanNum(NumV);
end;

function ToInt(const NumV: String): String;
var
  NV:String;
  Wh,Dc:String;
begin
  Result:='nan';
  NV:=AStrMath.CleanNum(NumV);
  if(NV='nan')then Exit;
  AStrMath.getWholeDeci(NV,Wh,Dc);
  Result:=Wh;
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

function isNum1Bigger(const Num1, Num2: String): Byte;
var
  N1,N2:String;
begin
  Result:=3;
  N1:=AStrMath.CleanNum(Num1);
  N2:=AStrMath.CleanNum(Num2);
  if(N1='nan')then Exit;
  if(N2='nan')then Exit;
  Result:=AStrMath.isNum1Bigger(N1,N2);
end;

function SumSub(const Num1, Num2: String): String;
begin
  Result:=AStrMath.SumSub(Num1,Num2);
end;

function MulDiv(const Num1, Num2: String; const doMul: Boolean): String;
begin
  Result:=AStrMath.MulDiv(Num1,Num2,doMul);
end;

{ StringMath }

constructor StringMath.Create;
begin
  //nothing...
  self.TDeciDigitCountBaseOne:=5;
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
  n1,n2:String;
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

function StringMath.isDigit(const NumV: String): Boolean;
begin
  Result:=False;
  if(Length(NumV)>1)then Exit;
  if(NumV='0')then Result:=True else
  if(NumV='1')then Result:=True else
  if(NumV='2')then Result:=True else
  if(NumV='3')then Result:=True else
  if(NumV='4')then Result:=True else
  if(NumV='5')then Result:=True else
  if(NumV='6')then Result:=True else
  if(NumV='7')then Result:=True else
  if(NumV='8')then Result:=True else
  if(NumV='9')then Result:=True;
end;

function StringMath.isPositiveAd(const NumV: String): Byte;
begin
  Result:=2;
  if(NumV='0')then Exit;
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
    if(isDigit(AWhole[i])=False)then begin
      Result:='nan';
      Exit;
    end;
  end;

  for i:=1 to Length(ADeci)do begin
    if(isDigit(ADeci[i])=False)then begin
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
  TArr1:Array of String;
  BIx,BIy:Integer;
begin
  getWholeDeci(num1,AWhole1,ADeci1);
  getWholeDeci(num2,AWhole2,ADeci2);
  n1:=AWhole1+ADeci1;
  n2:=AWhole2+ADeci2;
  Cr:=0;
  nf1:=0;
  nf2:=0;
  Result:='';
  BIx:=Length(n1);
  BIy:=Length(n2);
  TArr1:=nil;
  SetLength(TArr1,Length(TArr1)+1);
  for i:=1 to (Length(n1)*Length(n2))do begin
    if(BIy=0)then break;
    nf1:=(StrToInt(n1[BIx])*StrToInt(n2[BIy]))+Cr;
    nf2:=(nf1-(RR(nf1/10)*10));
    TArr1[Length(TArr1)-1]:=IntToStr(nf2)+TArr1[Length(TArr1)-1];
    Cr:=RR(nf1/10);
    BIx:=BIx-1;
    if(BIx=0)then begin
      BIx:=Length(n1);
      BIy:=BIy-1;
      if(Cr<>0)then TArr1[Length(TArr1)-1]:=IntToStr(Cr)+TArr1[Length(TArr1)-1];
      TArr1[Length(TArr1)-1]:=TArr1[Length(TArr1)-1]+Result;
      if(BIy<>0)then SetLength(TArr1,Length(TArr1)+1);
      Result:=Result+'0';
      Cr:=0;
      nf1:=0;
      nf2:=0;
    end;
  end;
  if(Cr<>0)then TArr1[Length(TArr1)-1]:=IntToStr(Cr)+TArr1[Length(TArr1)-1];
  Result:='0';
  for i:=0 to (Length(TArr1)-1)do Result:=Sum(Result,TArr1[i]);
  Result:=Reverse(Copy(Result,1,Length(Result)-2));
  Result:=Copy(Result,1,Length(ADeci1+ADeci2))+'.'+
  Copy(Result,Length(ADeci1+ADeci2)+1,Length(Result));
  Result:=Reverse(Result);
  SetLength(TArr1,0);
end;

function StringMath.DivA(const num1, num2: String;
  const DeciDigitCountBaseOne: Integer): String;
var
  numv1,numv2:String;
  AWhole1,ADeci1,AWhole2,ADeci2:String;
  n1,n2:String;
  i:Integer;
  Ct,nf1,nf2:Integer;
  n2V:Integer;
procedure AddUp(var nf2,Ct:Integer;const n2V:Integer);
begin
  nf2:=nf2+n2V;
  Ct:=Ct+1;
end;
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
  Ct:=0;
  nf1:=0;
  nf2:=0;
  n2V:=StrToInt(n2);
  Result:='';
  for i:=1 to Length(n1) do begin
    nf1:=StrToInt(IntToStr(nf1)+n1[i]);
    if(nf1>=n2V)then begin
      while(nf2<=nf1)do AddUp(nf2,Ct,n2V);
      nf2:=nf2-n2V;
      Ct:=Ct-1;
      Result:=Result+IntToStr(Ct);
      nf1:=nf1-nf2;
      Ct:=0;
      nf2:=0;
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
end;

initialization
  AStrMath:=StringMath.Create;
finalization
  AStrMath.Free;

end.

