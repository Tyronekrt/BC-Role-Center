page 50118 "Actionn"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Initialamount; Initialamount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Initial Amount';
                    Caption = 'Enter Initial Amount';
                }
                field(NoOfYears; NoOfYears)
                {
                    ApplicationArea = All;
                    ToolTip = 'No of years';
                    Caption = 'Enter the No of years';
                }
                field(RateOfInterest; RateOfInterest)
                {
                    ApplicationArea = All;
                    ToolTip = 'Rate in Percentage';
                    Caption = 'Enter the rate in Percentage';
                }
            }

            group(Output)
            {
                Caption = 'Output';
                field(FinalAmount; FinalAmount)
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
            action("CalculateSimpleInterest")
            {
                ApplicationArea = All;
                Caption = 'Calculate the Interest';
                Image = ExecuteBatch;
                ToolTip = 'Interest Calculation';
                trigger OnAction()
                begin
                    FinalAmount := Initialamount + (Initialamount * RateOfInterest / 100 * NoOfYears);
                    Message('%1', FinalAmount);
                end;
            }
        }
        area(Navigation)
        {
            action(Customer)
            {
                ApplicationArea = All;
                Caption = 'Customer Details';
                RunObject = Page "Customer Card";
            }

            action(Sales)
            {
                ApplicationArea = All;
                Caption = 'Sales Details';
                RunObject = Page "Sales Analysis Report";
            }
        }
        area(Creation)
        {
            action("New Document")
            {
                ApplicationArea = All;
                RunObject = page "Customer Card";
                Image = Post;

            }
        }
    }

    var
        Initialamount: Decimal;
        NoOfYears: Integer;
        RateOfInterest: Decimal;
        FinalAmount: Decimal;
}
