page 50110 Facilities
{
    ApplicationArea = All;
    Caption = 'Facilities';
    Editable = false;
    PageType = List;
    SourceTable = Facility;
    //CardPageID = "Facility Card"; //TODO: Create Facility Card Page
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Plant Id"; Rec."Plant Id")
                {
                    ApplicationArea = All;
                }

                field("Facility Name"; Rec."Facility Name")
                {
                    ApplicationArea = All;
                }

                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }

                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }

                field(Province; Rec.Province)
                {
                    ApplicationArea = All;
                }

                field("Postal Code"; Rec."Postal Code")
                {
                    ApplicationArea = All;
                }

                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }

                field(Fax; Rec.Fax)
                {
                    ApplicationArea = All;
                }

                field("NAV Customer Id"; Rec."NAV Customer Id")
                {
                    ApplicationArea = All;
                }

                field("Facility Code"; Rec."Facility Code")
                {
                    ApplicationArea = All;
                }

                field(Company; Rec.Company)
                {
                    ApplicationArea = All;
                }

                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }

                field("Quality Supervisor"; Rec."Quality Supervisor")
                {
                    ApplicationArea = All;
                }

                field("Sales G/L Account"; Rec."Sales G/L Account")
                {
                    ApplicationArea = All;
                }
            }
        }
        //TODO:
        // area(factboxes)
        // {
        //     part(RecordLinks; "Record Links")
        //     {
        //         ApplicationArea = RecordLinks;
        //         Visible = false;
        //     }

        //     part(Notes; "Notes")
        //     {
        //         ApplicationArea = Notes;
        //     }
        // }
    }

    actions
    {
        area(processing)
        {
            group(BankAccount)
            {
                Caption = 'Bank Account';
                Image = Bank;

                action(Comments)
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
                    Image = ViewComments;
                    ToolTip = 'Create a comment attached to the selected facility.';
                    RunObject = page 124;
                }
            }
        }
    }
}
