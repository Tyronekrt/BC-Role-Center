page 50101 MyRoleCenter
{
    Caption = 'MyRoleCenter';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(part1; "Approvals Activities")
                {
                    ApplicationArea = All;

                }
                part(part2; "Accountant Activities")
                {
                    ApplicationArea = All;
                }
                part(part3; "Acc. Payables Activities")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
profile MyProfile
{
    ProfileDescription = 'sample profile';
    RoleCenter = MyRoleCenter;
    Caption = 'my profile';
}
