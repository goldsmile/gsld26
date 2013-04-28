{$i xpc.inc}
unit game;
interface uses xpc, ng,
  {$IFDEF SDL}
    rxgl in 'b4/ng/rxgl_sdl.pas'
  {$ELSE}
    rxgl in 'b4/ng/rxgl_zen.pas'
  {$ENDIF}
  ;

procedure Main;

implementation

procedure Main;
var vm : TRetroVM;
begin
  vm := TRetroVM.Create( 'b4/lib/retro/retroImage', false, 262144 ); // 1 mb
  rxgl.main( vm );
end;

end.

