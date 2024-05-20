page 50110 "BC Cue"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {

            cuegroup(Group1)
            {
                caption = 'Cue Group 1';
                field("Debit Amount"; Rec."Debit Amount")
                {
                    ApplicationArea = All;
                    Caption = 'Balance';
                }
                field("Inv. Amounts (LCY)"; Rec."Inv. Amounts (LCY)")
                {
                    ApplicationArea = All;
                    Caption = 'Balance Due';
                    style = Attention;
                }
                field(MyNumber; MyNumber)
                {
                    ApplicationArea = All;
                    Caption = 'Number';
                    styleExpr = 'Red';
                    trigger OnDrillDown()
                    begin
                        message('Yes, you are a legend')
                    end;

                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage()
    begin
        MyNumber := 100;
    end;

    var
        MyNumber: Integer;
}