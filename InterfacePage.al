pageextension 50123 CustInterfacePageExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field("Interface Values"; Rec."Interface Values")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addafter(WordTemplate)
        {
            action(CheckInterface)
            {
                Caption = 'Check Interface';
                Image = UserInterface;
                trigger OnAction()
                begin
                    case Rec."Interface Values" of
                        Rec."Interface Values"::Customer:
                            Message(InterfaceCU1.PrintMessage());
                        Rec."Interface Values"::Vendor:
                            Message(InterfaceCU2.PrintMessage());
                    end;
                end;
            }
        }
        // Add changes to page actions here
    }

    var
        InterfaceCU1: Codeunit PrintCustomer;
        InterfaceCU2: Codeunit PrintVendor;
}
