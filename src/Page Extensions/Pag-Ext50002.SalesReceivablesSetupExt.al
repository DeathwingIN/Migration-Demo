pageextension 50002 "Sales & Receivables Setup Ext" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(Content)
        {
            group("Custom Settings")
            {
                field("Bake Tag Print"; Rec."Bake Tag Print")
                {
                }
                field("Plant ID Mandatory"; Rec."Plant ID Mandatory")
                {
                }
                field("Mechanical Load Size Tolerance"; Rec."Mechanical Load Size Tolerance")
                {
                }
                field("Bin Quantity Tolarence %"; Rec."Bin Quantity Tolarence %")
                {
                }
            }
        }
    }
}
