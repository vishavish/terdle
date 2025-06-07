program Todo;
  
uses StrUtils, sysutils;

const
  FILENAME: string = './file1.txt';
  MAX_TRIES: Integer = 3;

type
  GameState = (Win = 0, Lose = 1);

var
  fileIn: TextFile;
  placeholder: array[0..4] of char;
  line: string[5] = '';
  words: array of AnsiString;
  guessWord: string = '';
  i: Integer;
  

function GetRandomWord(): AnsiString;
begin
  GetRandomWord := words[Random(High(words))];
end;

function HasMatch(guess: char): boolean;
begin
  HasMatch := Pos(guess, guessWord) > 0;  
end;

function GetIndex(guess: char): Integer;
begin
  GetIndex := Pos(guess, guessword);
end;

function IsComplete():boolean;
var
  i: Integer;
begin
  for i := 0 to Length(placeholder) - 1 do
  begin
    if placeholder[i] = #0 then Exit(False);
  end;    
  IsComplete := True;
end;

function ConfirmDialog(message: string): boolean;
var
  Answer: char;
begin
  Write(message, '[Y/N] ');
  while true do
  begin
    ReadLn(Answer); 
    case Answer of
      'Y', 'y', ' ', chr(10):
        begin
          Exit(True);
        end;
      'N', 'n', chr(27):
        begin
          Exit(False);
        end;
      else
        WriteLn('Invalid option.');
        Exit();
      end;
  end;
end;

procedure ReadLines();
begin
  Assign(fileIn, FILENAME);
  Reset(fileIn);
  SetLength(words, 0);
  
  i := 0;
  while not Eof(fileIn) do
  begin
    ReadLn(fileIn, line);
    SetLength(words, Length(words) + 1);
    words[i] := line;
    Inc(i);
  end;  
  
  Close(fileIn);
end;  

procedure Reset();
var
  i: Integer;
begin
  for i := 0 to Length(placeholder) - 1 do
    placeholder[i] := #0;
end;

procedure ShowMatches(guess: char);
var
  i: Integer;
begin
  for i := 0 to Length(placeholder) - 1 do
  begin
    if guessWord[i + 1] = guess then
      placeholder[i] := guess;
  end; 
  
  for i := 0 to Length(placeholder) - 1 do
    Write(PadRight(placeholder[i], 2));
    
  WriteLn;
end;

procedure BeginGame();
  var
    tries: Integer;
    guessChar: char;
begin
  tries := 0;
  guessWord := GetRandomWord();
  
  WriteLn('You are allowed to guess the word 3 times.');
  repeat
    WriteLn('Guess a letter: ');
    ReadLn(guessChar);
    
    if HasMatch(guessChar) then
    begin
      WriteLn('Good guess.');
      ShowMatches(guessChar);
    end
    else
    begin
      WriteLn('You guessed wrong. Tries Left: ', MAX_TRIES - (tries + 1));
      Inc(tries);
    end;
    if IsComplete() then
    begin
      WriteLn('Congrats! You win!');
      if ConfirmDialog('Do you want to try again?') = false then Exit();

      Reset();
      guessWord := GetRandomWord();
    end;
  until tries = MAX_TRIES;

  WriteLn('You lost!');
  WriteLn('Correct word is: [', guessWord,']');
  
end;

begin
  if ConfirmDialog('Start the game?') = False then Exit();
  
  Randomize;
  ReadLines();  
  
  WriteLn('Welcome to terdle!!!');
  BeginGame();
end.
