table 50100 employe
{
    Caption = 'Employee table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "emp code"; Code[10])
        {
            DataClassification = ToBeClassified;

        }

        field(10; "emp name"; text[20])
        {
            DataClassification = ToBeClassified;

        }
        field(20; "emp salary"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(30; "DOJ"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(40; "City"; Option)
        {
            OptionMembers = Nairobi,Mombasa,Kisumu,Nakuru;
            DataClassification = ToBeClassified;
        }
        field(50; Gender; Option)
        {
            OptionMembers = Male,Female,NA;
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(Key1; "emp code", "emp name")
        {
            Clustered = true;
        }
        key(sk; "city")
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        value1: Integer;

        value2: Integer;

    trigger OnInsert()
    begin
        Message('Data inserted');
    end;

    trigger OnModify()
    begin
        Message('Data modified');
    end;

    trigger OnDelete()
    begin
        Message('Data deleted');
    end;

    trigger OnRename()
    begin
        Message('Data renamed');
    end;

}