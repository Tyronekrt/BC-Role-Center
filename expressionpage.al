page 50100 ExpressionPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Logical expression Page';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Take the input from the user';
                field(number1; number1)
                {
                    ApplicationArea = All;

                }
                field(number2; number2)
                {
                    ApplicationArea = All;

                }
            }
            group(Output)
            {
                Caption = 'George, your data id here';
                field(res; res)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Run)
            {
                ApplicationArea = All;
                Caption = 'Run';
                Image = ExecuteBatch;
                trigger OnAction()
                begin
                    res := number1 < number2
                end;
            }
        }
    }

    var
        number1: Integer;
        number2: Integer;
        res: Boolean;

}