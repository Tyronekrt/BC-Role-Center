report 50114 "Item report"
{
    ApplicationArea = All;
    Caption = 'Item report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Item Report.RDL';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Item; Item)
        {
            column(Id; Id)
            {
            }
            column(NoofSubstitutes; "No. of Substitutes")
            {
            }
            column(Profit; "Profit %")
            {
            }
            column(UnitCost; "Unit Cost")
            {
            }
            column(PurchasesQty; "Purchases (Qty.)")
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
