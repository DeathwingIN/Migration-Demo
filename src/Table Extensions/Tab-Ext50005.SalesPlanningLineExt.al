tableextension 50005 "Sales Planning Line Ext" extends "Sales Planning Line"
{
    fields
    {
        field(50010; "Multi Prod. Sales Line No"; Integer)
        {
        }

        field(50034; "Inbound Weight"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }

        field(50040; "Sales Line Bin Number"; Integer)
        {
        }

        field(50060; "Conversion Qty"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
    }
}
