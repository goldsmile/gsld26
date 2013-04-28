unit appstuff;

interface
uses app,views;

const
     apzcolor = 3;
     CZcolor =
           #$19#$07#$08#$0F#$4E#$48#$4F#$17#$1F#$1A#$31#$31#$1E#$71#$00 +
       #$37#$3F#$3A#$13#$13#$3E#$21#$00#$70#$7F#$7A#$13#$13#$70#$7F#$00 +
       #$70#$7F#$7A#$13#$13#$70#$70#$7F#$7E#$20#$2B#$2F#$78#$2E#$70#$30 +
       #$3F#$3E#$1F#$2F#$1A#$20#$72#$31#$31#$30#$2F#$3E#$31#$13#$00#$00;

type
    Zapplication = object( Tapplication )
      procedure initscreen; virtual;
      function getpalette : ppalette; virtual;
    end;



implementation

   procedure zapplication.initscreen;
     begin
       tapplication.initscreen;
       apppalette := apzcolor;
     end;

   function zapplication.getpalette : ppalette;
     const
       P: array[apColor..apZColor] of string[Length(CColor)] =
         (CColor, CBlackWhite, CMonochrome,CZcolor);
     begin
       GetPalette := @P[AppPalette];
     end;

end.