tableextension 50001 "Sales Line Ext" extends "Sales Line"
{
    fields
    {
        field(50020; "Prod. Order No."; Code[250])
        {
            Editable = true;
        }

        field(50021; "Prod. Order No.2"; Code[250])
        {
            Editable = true;
        }

        field(50034; "Inbound Weight"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }

        field(50110; "No. Of Bins"; Integer)
        {
            // Critical for Split Logic
        }

        field(50301; "EPC"; Boolean)
        {
            Editable = false;
        }

        field(50303; "Qty. Mechanical (Base)"; Decimal)
        {
        }

        field(50305; "Mechanical No. of Loads"; Integer)
        {
        }

        field(50309; "Mechanical No of Bins"; Integer)
        {
        }

        field(50310; "Plant Id"; Code[10])
        {
            TableRelation = Facility."Plant Id";
            Editable = false;
        }

        field(50311; "Master SO No."; Code[20])
        {
        }

        field(50312; "Master SO Line No."; Integer)
        {
        }

        field(50313; "Bin Qty Control"; Boolean)
        {
            Editable = false;
        }

        field(50314; "Min. Charge Applied"; Boolean)
        {
        }

        field(50316; "Original Sales Line"; Integer)
        {
            // Critical for Split Logic
        }

        field(50319; "Splitted Lines"; Boolean)
        {
            // Critical for Split Logic
        }

        field(50321; "Original Bin Count"; Integer)
        {
        }

        field(50322; "Splitted Sequence"; Integer)
        {
        }

        field(50327; "Ship-to Plant"; Code[10])
        {
        }

        field(50328; "Alternate Loading Item"; Boolean)
        {
        }

        field(50332; "Order Date"; Date)
        {
            Editable = false;
        }

        field(50333; "Tooling Required"; Boolean)
        {
            Editable = true;
        }
    }
}
