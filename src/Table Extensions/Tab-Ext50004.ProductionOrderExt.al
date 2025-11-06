tableextension 50004 "Production Order Ext" extends "Production Order"
{
    fields
    {
        field(50012; "External"; Boolean)
        {
            Editable = false;
        }

        field(50015; "Sales Line Doc. No."; Code[20])
        {
        }

        field(50016; "Sales Line Line No."; Integer)
        {
        }

        field(50034; "Inbound Weight"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }

        field(50040; "Sales Line Bin Number"; Integer)
        {
        }

        field(50042; "Customer No."; Code[20])
        {
        }

        field(50043; "Cross Reference No."; Code[20])
        {
        }

        field(50060; "Conversion Qty"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }

        field(50069; "Plant Id"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Header"."Plant Id" where("No." = field("Sales Line Doc. No."), "Document Type" = const(Order)));
        }

        field(50075; "DeliveryStatus"; Option)
        {
            OptionMembers = Partial,Complete;
        }
    }
}
