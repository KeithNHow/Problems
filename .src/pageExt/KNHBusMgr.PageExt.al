namespace KNHProblems;
using Microsoft.Finance.RoleCenters;

pageextension 70000 "KNH Bus. Mgr." extends "Business Manager Role Center"

{
    actions
    {
        addafter(Reports)
        {
            action(KNHProblems)
            {
                ApplicationArea = All;
                ToolTip = 'KNH Greet';
                Caption = 'KNH Greet';
                RunObject = codeunit "KNH Greet";
            }
        }
    }
}