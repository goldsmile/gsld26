unit tststuff; { test questons and stuff }

{---------------------------------------------------------

  This unit contains simple objects for use in asking and
  answering questions. Object types are:

  Question : simple question, prompts for a typed answer.

----------------------------------------------------------}


interface

  const

   correct = 0;
   incorrect = 1;

  type

    question = object

      score : byte;
      answer : string;
      prompt : string;

      constructor init( _prompt, _answer : string );
      procedure ask;

    end;

implementation

{-----------------------------------}
{----- The Question object -------- }
{-----------------------------------}

  constructor question.init( _prompt; _answer : string );
    begin

      prompt := _prompt;
      answer := _answer;

    end;

  procedure question.ask;
    var
      response : string;

    begin

      cwrite( prompt );
      readln( response );

      boolean( score ) := (upstr( response ) = upstr( answer ));

    end;


end.