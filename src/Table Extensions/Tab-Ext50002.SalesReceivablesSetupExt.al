tableextension 50002 "Sales & Receivables Setup Ext" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50014; "Bake Tag Print"; Boolean)
        {
        }

        field(50017; "Plant ID Mandatory"; Boolean)
        {
        }

        field(50019; "Mechanical Load Size Tolerance"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            MinValue = 0;
            MaxValue = 100;
        }

        field(50025; "Mechanical Salse Order Nos."; Code[10])
        {
            TableRelation = "No. Series";
        }

        field(50026; "Bin Quantity Tolarence %"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
    }
}
