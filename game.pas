{$i xpc.inc}
unit game;
interface uses xpc, ng, rxgl_sdl;

procedure Main;

implementation

procedure Main;
var vm : TRetroVM;
begin
  vm := TRetroVM.Create( 'b4/lib/retro/retroImage', false, 262144 ); // 1 mb
  rxgl_sdl.main( vm );
end;

end.

