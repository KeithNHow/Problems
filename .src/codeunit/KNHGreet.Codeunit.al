namespace KNHProblems;

codeunit 70000 "KNH Greet"
{
    trigger OnRun()
    var
        name: Text;
    Begin
        if confirm('What name do you want to be greeted by?', True, 'Keith', 'Mark', 'Paul') then
            Greet(name);
    End;

    procedure Greet(Name: Text): Text
    begin
        if Name = '' then
            Message('Hello world')
        else
            Message('Hello, ' + Name);
    end;
}