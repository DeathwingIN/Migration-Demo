pageextension 50003 "User Setup Ext" extends "User Setup"
{
    layout
    {
        addlast(Content)
        {
            group("Custom User Settings")
            {
                field("Enable Force Delete"; Rec."Enable Force Delete")
                {
                }
                field("Supervisor"; Rec."Supervisor")
                {
                }
                field("EPC Notifications"; Rec."EPC Notifications")
                {
                }
                field("Notification Enable"; Rec."Notification Enable")
                {
                }
                field("Delete SO Line"; Rec."Delete SO Line")
                {
                }
                field("Sales User"; Rec."Sales User")
                {
                }
                field("Receive Tooling Notifications"; Rec."Receive Tooling Notifications")
                {
                }
            }
        }
    }
}
