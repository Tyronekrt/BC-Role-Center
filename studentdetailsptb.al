table 50111 Student
{
    Caption = 'Student Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Registration Number"; code[13])
        {
            DataClassification = ToBeClassified;

        }
        field(2; name; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; DOB; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; YOS; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Grade; Text[2])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "County Residencce"; Option)
        {
            OptionMembers = Mombasa,Kwale,Kilifi,"Tana River",Lamu,"Taita/Taveta",Garissa,Wajir,Mandera,Marsabit,Isiolo,Meru,"Tharaka-Nithi",Embu,Kitui,Machakos,Makueni,Nyandarua,Nyeri,Kirinyaga,Murang,Kiambu,Turkana,"West Pokot",Samburu,"Trans Nzoia","Uasin Gishu","Elgeyo/Marakwet",Nandi,Baringo,Laikipia,Nakuru,Narok,Kajiado,Kericho,Bomet,Kakamega,Vihiga,Bungoma,Busia,Siaya,Kisumu,"Homa Bay",Migori,Kisii,Nyamira,Nairobi;
            DataClassification = ToBeClassified;
        }
        field(7; Gender; option)
        {
            OptionMembers = M,F,T;
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(key1; "Registration Number")
        {
            Clustered = true;
        }
        key(key2; name)
        {

        }
        key(key3; DOB)
        {

        }
        key(key4; YOS)
        {

        }
        key(key5; Grade)
        {

        }
        key(key6; "County Residencce")
        {

        }
        key(key7; Gender)
        {

        }

    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('Data Inserted');
    end;

    trigger OnModify()
    begin
        Message('Data modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;

    trigger OnRename()
    begin
        Message('Data renamed');
    end;

}