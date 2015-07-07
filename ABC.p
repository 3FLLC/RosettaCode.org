Const
   Blocks=[[ 'B', 'O' ],    [ 'X', 'K' ],    [ 'D', 'Q' ],    [ 'C', 'P' ],    [ 'N', 'A' ],
    [ 'G', 'T' ],    [ 'R', 'E' ],    [ 'T', 'G' ],    [ 'Q', 'D' ],    [ 'F', 'S' ],
    [ 'J', 'W' ],    [ 'H', 'U' ],    [ 'V', 'I' ],    [ 'A', 'N' ],    [ 'O', 'B' ],
    [ 'E', 'R' ],    [ 'F', 'S' ],    [ 'L', 'Y' ],    [ 'P', 'C' ],    [ 'Z', 'M' ]];

var
   Used : array [0..19] of boolean;

function SolveABC(Target : string) : boolean;

  function FindUnused(TargetChr : char) : boolean;  // Nested routine
  var
    iBlock : integer;
  begin
    Result := FALSE;
    for iBlock := low(Blocks) to high(Blocks) do
      if (not Used[iBlock]) and ( (TargetChr=Blocks[iBlock][0]) or (TargetChr=Blocks[iBlock][1]) ) then begin
        Result := TRUE;
        Used[iBlock] := TRUE;
        Break;
      end;
  end;

begin
  FillByte(Used, 20, 0);
  for var iChr:=1 to length(Target) do
    if not FindUnused(Target[iChr]) then begin
       Result := FALSE;
       exit;
    end;
  Result := TRUE;
end;

procedure CheckABC(Target : string);
begin
  if SolveABC(uppercase(Target)) then
    writeln('Can make ' + Target)
  else
    writeln('Can NOT make ' + Target);
end;

begin
  CheckABC('A');
  CheckABC('BARK');
  CheckABC('BOOK');
  CheckABC('TREAT');
  CheckABC('COMMON');
  CheckABC('SQUAD');
  CheckABC('CONFUSE');
end.
