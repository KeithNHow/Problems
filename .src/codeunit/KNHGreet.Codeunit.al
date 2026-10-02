namespace KNHProblems;

codeunit 70000 "KNH Greet"
{
    trigger OnRun()
    var
        name: Text;
        selection: Integer;
        options: Text;
        functionLbl: Label 'Keith, Mark, Paul';
        selectionLbl: Label 'Choose one of the following options:';
    begin
        options := functionLbl;
        selection := Dialog.StrMenu(options, 1, selectionLbl);
        case selection of
            1:
                name := 'Keith';
            2:
                name := 'Mark';
            3:
                name := 'Paul';
            4:
                name := '';
        end;
        Greet(name);
    end;

    procedure Greet(Name: Text): Text
    var
        MyMsg: Label 'Hello, %1!', comment = '%1 = Selected name';
    begin
        if Name = '' then
            Message('Hello world')
        else
            Message(MyMsg, Name);
    end;
}