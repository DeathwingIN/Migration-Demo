pageextension 50001 "Item Ext " extends "Item Card"
{
    layout
    {
        addafter("Replenishment System")
        {
            group("Custom Fields")
            {
                field("Block Sales Order"; Rec."Block Sales Order")
                {
                    ApplicationArea = All;
                }
                field("Min Charge"; Rec."Min Charge")
                {
                    ApplicationArea = All;
                }
                field("EPC"; Rec."EPC")
                {
                    ApplicationArea = All;
                }
                field("Bake Tag Required"; Rec."Bake Tag Required")
                {
                    ApplicationArea = All;
                }
                field("CRM Quote No"; Rec."CRM Quote No")
                {
                    ApplicationArea = All;
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                }
                field("Plant Id"; Rec."Plant Id")
                {
                    ApplicationArea = All;
                }
                field("Multi-Process Item"; Rec."Multi-Process Item")
                {
                    ApplicationArea = All;
                }
                field("Mechanical BOM No."; Rec."Mechanical BOM No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
