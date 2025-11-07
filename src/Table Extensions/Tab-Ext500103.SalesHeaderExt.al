tableextension 50103 "Sales Header Ext" extends "Sales header"
{
    fields
    {
        field(50005; "Sales Comment"; Text[50])
        {
        }

        field(50006; "Shipment On Hold"; Boolean)
        {
        }

        field(50007; "No. of Shipments"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Count("Sales Shipment Header" WHERE("Order No." = FIELD("No.")));
        }
        field(50009; "Total Qty"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Sales Line".Quantity WHERE("Document Type" = field("Document Type"), "Document No." = field("No.")));
            DecimalPlaces = 0 : 5;
            Editable = false;
        }

        field(50010; "Total Bin Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Sales Line"."No. of Bins" WHERE("Document Type" = field("Document Type"), "Document No." = field("No.")));
            Editable = false;
        }

        field(50012; "External"; Boolean)
        {
            Editable = false;
        }

        field(50014; "Source IC Sales Order"; Code[20])
        {
            Editable = false;
        }

        field(50019; "Plant Id"; Code[10])
        {
            TableRelation = Facility."Plant Id";
        }

        field(50021; "Invoice Price Calculated"; Boolean)
        {
        }

        field(50023; "Customer PO No"; Code[100])
        {
            Editable = true;
        }

        field(50025; "Master SO No."; Code[20])
        {
        }

        field(50026; "Mechanical Items"; Boolean)
        {
        }

        field(50027; "Mechanical Total Bin Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Sales Line"."Mechanical No of Bins" WHERE("Document Type" = field("Document Type"), "Document No." = field("No.")));
            Editable = false;
        }

        field(50028; "Ship-to Plant"; Code[10])
        {
        }

        field(50029; "Unquoted Parts"; Boolean)
        {
        }

        field(50030; "IC Sales Order"; Boolean)
        {
            Editable = false;
        }

        field(50032; "SO Created User ID"; Text[50])
        {
        }

        field(50011; "For testing"; Boolean)
        {

        }
        field(50031; "Override Amount"; Boolean)
        {
        }

    }
}
