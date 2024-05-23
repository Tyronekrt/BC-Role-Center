page 50116 "Actions"
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
            action("Calculate Simple Interest")
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

    }

    var
        Initialamount: Decimal;
        NoOfYears: Integer;
        RateOfInterest: Decimal;

        FinalAmount: Decimal;
}