
tableextension 50123 CustInterfaceExt extends Customer
{
    fields
    {
        field(50000; "Interface Values"; Enum InterfaceEnum)
        {
            DataClassification = ToBeClassified;
        }
    }

    // Add changes to table fields here

    var
        myInt: Integer;
}
