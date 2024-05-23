query 50107 "Top 5 customers"
{
    QueryType = Normal;
    Caption = 'Top 5 customers';
    TopNumberOfRows = 5;
    OrderBy = descending(Sales__LCY_sum);

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")

        {
            filter(Posting_Date; "Posting Date")
            {

            }
            column(Customer_No_; "Customer No.")
            {

            }
            column(Sales__LCY_sum; "Sales (LCY)")
            {
                Method = Sum;
            }
            column(Customer_Name; "Customer Name")
            {

            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}