report 50111 "report customer"
{
    ApplicationArea = All;
    Caption = 'report customer';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'Customer Report.docx';
    DefaultLayout = Word;
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {
            }
            column(City; City)
            {
            }
            column(Balance; Balance)
            {
            }
            column(PartnerType; "Partner Type")
            {
            }
            column(Contact; Contact)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
