var
 x1, y1, x2, y2, x3, y3 : longint;
 d : int64;
function k(x1,y1,x2,y2: longint):longint;
 var a,b,c: longint;
begin
 a:=abs(x2-x1); b:=abs(y2-y1);
 if a=0 then k:=b else
 if b=0 then k:=a else
 begin
 while b>0 do
 begin c:=a mod b; a:=b; b:=c end;
 k:=a
 end
end;
begin
 assign(input,'input.txt'); reset(input);
 assign(output,'output.txt'); rewrite(output);
 read(x1,y1,x2,y2,x3,y3);
 d:=0; d:=d+k(x1,y1,x2,y2)+k(x2,y2,x3,y3)+k(x3,y3,x1,y1);
 write(d);
 close(output)
end. 