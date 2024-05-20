page 50103 addtwo
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(processing)
        {
            action(Addition)
            {
                ApplicationArea = All;


                trigger OnAction()
                begin
                    Mycode.run()
                end;
            }
        }
    }
    var
        Mycode: Codeunit MyNewCodeunit;
}