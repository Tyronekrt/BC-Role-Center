interface InterfaceExam
{
    procedure PrintMessage(): Text;
}

codeunit 50121 PrintCustomer implements InterfaceExam
{
    procedure PrintMessage(): Text;
    begin
        exit('Customer')
    end;
}
codeunit 50122 PrintVendor implements InterfaceExam
{
    procedure PrintMessage(): Text;
    begin
        exit('Vendor')
    end;
}