program aligncolumns;

uses
   strings;

var
   StrList:TStringList;
   maxLen,LineLen:Longint;

Begin
   StrList.Init();
   StrList.SetDelimiter('$');
   StrList.SetDelimitedText("Given$a$text$file$of$many$lines,$where$fields$within$a$line$"+
      "are$delineated$by$a$single$'dollar'$character,$write$a$program"+
      "that$aligns$each$column$of$fields$by$ensuring$that$words$in$each$"+
      "column$are$separated$by$at$least$one$space."+
      "Further,$allow$for$each$word$in$a$column$to$be$either$left$"+
      "justified,$right$justified,$or$center$justified$within$its$column.");
   Writeln(Strlist.Getcount,' items');
   maxLen:=3; // at least 1 space on each side
   For var loop:=0 to Strlist.GetCount-1 do
      if Length(StrList.getStrings(loop))>maxLen then maxLen:=Length(StrList.getStrings(loop));
   Inc(maxLen,2);
   Writeln('Right justified listing:');
// Right Justify Columns:
   LineLen:=0;
   For loop:=0 to StrList.GetCount-1 do begin
      Write(PadL(StrList.getStrings(Loop),maxLen));
      Inc(LineLen,maxLen);
      If (LineLen+MaxLen>=81) then begin
         Writeln();
         LineLen:=0;
      End;
   End;
   Writeln();
   Writeln('Left justified listing:');
// Left Justify Columns:
   LineLen:=0;
   For loop:=0 to StrList.GetCount-1 do begin
      Write(PadR(StrList.getStrings(Loop),maxLen));
      Inc(LineLen,maxLen);
      If (LineLen+MaxLen>=81) then begin
         Writeln();
         LineLen:=0;
      End;
   End;
   Writeln();
   StrList.Free;
end.
