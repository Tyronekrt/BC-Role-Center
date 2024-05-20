pageextension 50104 "My ow headline" extends "Headline RC Business Manager"
{
    layout
    {
        addbefore(Control1)
        {

            field(HeadlineTxt; HeadlineTxt)
            {
                ApplicationArea = All;
                trigger Ondrilldown()
                begin
                    Hyperlink('https://tyronewebdevodoocom.odoo.com/');
                end;
            }
        }
    }
    trigger OnOpenpage()
    begin
        HeadlineTxt := 'Hello <emphasize>User!</emphasize> and Welcome my name is Tyrone';
    end;

    var
        HeadlineTxt: Text;
}