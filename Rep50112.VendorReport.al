report 50112 "Vendor Report"
{
    ApplicationArea = All;
    Caption = 'Vendor Report';
    UsageCategory = ReportsAndAnalysis;
    ExcelLayout = 'Vendor Report.xlsx';
    DefaultLayout = Excel;
    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(Name; Name)
            {
            }
            column(City; City)
            {
            }
            column(PartnerType; "Partner Type")
            {
            }
            column(Balance; Balance)
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
