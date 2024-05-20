page 50111 "Student Details Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(RegistrationNumber; Rec."Registration Number")
                {
                    ApplicationArea = All;
                }
                field(name; Rec.name)
                {
                    ApplicationArea = All;
                }
                field(DateOfBirth; Rec.DOB)
                {
                    ApplicationArea = All;
                }
            }
            group("More Information")
            {
                field(yearOfStudy; Rec.YOS)
                {
                    ApplicationArea = All;
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                }
                field(CountyResidence; Rec."County Residencce")
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Test)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                    Message('Student Details inserted successfully to the table');
                end;
            }
        }
    }

    var
        myInt: Integer;

}