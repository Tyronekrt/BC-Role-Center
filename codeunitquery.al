codeunit 50109 MyCodeunit
{
    trigger OnRun()
    begin
        CustQuery.SetFilter(Quantity, '>10');
        CustQuery.OPEN;
        while CustQuery.READ do begin
            Message(Textbox, CustQuery.CustName, CustQuery.Quantity);
        end;
        CustQuery.CLOSE;
    end;

    var
        CustQuery: Query "Customer sales by quantity";
        Textbox: TextConst ENU = 'Custoner name = %1, Quantity = %2';
}