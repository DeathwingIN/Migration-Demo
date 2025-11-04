pageextension 50100 "Customer Card Ext" extends "customer card"
{
    layout
    {
        addlast("General")
        {
            field("Master Lot Scan"; Rec."Master Lot Scan")
            {
                ApplicationArea = All;
                Editable = true;
            }
            field("Automatic 4 X 6"; Rec."Automatic 4 X 6")
            {
                ApplicationArea = All;
                Editable = true;
            }
            field("CMP Automatic 4 X 6"; Rec."CMP Automatic 4 X 6")
            {
                ApplicationArea = All;
                Editable = true;
            }
            field("Master Label"; Rec."Master Label")
            {
                ApplicationArea = All;
                Editable = true;
            }
            field("Grey Bin"; Rec."Grey Bin")
            {
                ApplicationArea = All;
                Editable = true;
            }
            field("Enable Split Order"; Rec."Enable Split Order")
            {
                ApplicationArea = All;
                Editable = true;
            }
            field("Lot based Invoicing"; Rec."Lot based Invoicing")
            {
                ApplicationArea = All;
                Editable = true;
            }

        }
    }
}
